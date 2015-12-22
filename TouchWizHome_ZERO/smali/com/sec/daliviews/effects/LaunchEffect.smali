.class public abstract Lcom/sec/daliviews/effects/LaunchEffect;
.super Lcom/sec/daliviews/views/PeerBase;
.source "LaunchEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/effects/LaunchEffect$LaunchEffectListener;
    }
.end annotation


# static fields
.field public static final LAUNCH_EFFECT_STATE_FRESH:I = 0x0

.field public static final LAUNCH_EFFECT_STATE_PERFORMED:I = 0x2

.field public static final LAUNCH_EFFECT_STATE_RUNNING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LaunchEffect"


# instance fields
.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/daliviews/effects/LaunchEffect$LaunchEffectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/daliviews/views/PeerBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/effects/LaunchEffect;->mState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/effects/LaunchEffect;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/daliviews/views/PeerBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/effects/LaunchEffect;->mState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/effects/LaunchEffect;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private native perform(JJI)Z
.end method

.method private native revert(J)Z
.end method

.method private native setDelay(JF)V
.end method

.method private native setDuration(JF)V
.end method


# virtual methods
.method public addListener(Lcom/sec/daliviews/effects/LaunchEffect$LaunchEffectListener;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/daliviews/effects/LaunchEffect;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/daliviews/effects/LaunchEffect;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/effects/LaunchEffect;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/effects/LaunchEffect;->mState:I

    return v0
.end method

.method public onPerformComplete()V
    .locals 5

    const/4 v3, 0x2

    iput v3, p0, Lcom/sec/daliviews/effects/LaunchEffect;->mState:I

    iget-object v4, p0, Lcom/sec/daliviews/effects/LaunchEffect;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/daliviews/effects/LaunchEffect;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/effects/LaunchEffect$LaunchEffectListener;

    invoke-interface {v1}, Lcom/sec/daliviews/effects/LaunchEffect$LaunchEffectListener;->onPerformCompleted()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public onRevertComplete()V
    .locals 5

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/daliviews/effects/LaunchEffect;->mState:I

    iget-object v4, p0, Lcom/sec/daliviews/effects/LaunchEffect;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/daliviews/effects/LaunchEffect;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/effects/LaunchEffect$LaunchEffectListener;

    invoke-interface {v1}, Lcom/sec/daliviews/effects/LaunchEffect$LaunchEffectListener;->onRevertCompleted()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public perform(Lcom/sec/daliviews/views/NativeViewBase;I)V
    .locals 7

    const-string v1, "LaunchEffect"

    const-string v2, "[JAVA] perform() call."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/LaunchEffect;->getmNPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/effects/LaunchEffect;->perform(JJI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/daliviews/effects/LaunchEffect;->mState:I

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/sec/daliviews/effects/LaunchEffect$LaunchEffectListener;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/daliviews/effects/LaunchEffect;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/daliviews/effects/LaunchEffect;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public revert()V
    .locals 4

    const-string v1, "LaunchEffect"

    const-string v2, "[JAVA] revert() call."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/LaunchEffect;->getmNPeer()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/sec/daliviews/effects/LaunchEffect;->revert(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/daliviews/effects/LaunchEffect;->mState:I

    :cond_0
    return-void
.end method

.method public setDelay(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/LaunchEffect;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/effects/LaunchEffect;->setDelay(JF)V

    return-void
.end method

.method public setDuration(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/LaunchEffect;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/effects/LaunchEffect;->setDuration(JF)V

    return-void
.end method
