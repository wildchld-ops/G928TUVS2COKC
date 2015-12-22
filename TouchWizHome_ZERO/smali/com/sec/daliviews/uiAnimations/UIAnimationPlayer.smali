.class public Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;
.super Lcom/sec/daliviews/views/PeerBase;
.source "UIAnimationPlayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UIAnimationPlayer"


# instance fields
.field private mIsRunning:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(F)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/daliviews/views/PeerBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->mListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->mIsRunning:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->configure(JF)V

    return-void
.end method

.method private native add(JJJ)V
.end method

.method private native configure(JF)V
.end method

.method private setIsRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->mIsRunning:Z

    return-void
.end method

.method private native start(J)V
.end method

.method private native stop(J)V
.end method


# virtual methods
.method public Configure(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->configure(JF)V

    return-void
.end method

.method public add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->getPeer()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(JJJ)V

    return-void
.end method

.method public animationFinished()V
    .locals 4

    iget-object v3, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;->handleUIAnimEvent(I)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->setIsRunning(Z)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public animationStarted()V
    .locals 4

    iget-object v3, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->setIsRunning(Z)V

    iget-object v2, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;->handleUIAnimEvent(I)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public animationStopped()V
    .locals 4

    iget-object v3, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;->handleUIAnimEvent(I)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->setIsRunning(Z)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public connectToUIAnimationSignal(Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected native create()J
.end method

.method public isAnimationRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->mIsRunning:Z

    return v0
.end method

.method public start()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start(J)V

    return-void
.end method

.method public stop()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop(J)V

    return-void
.end method
