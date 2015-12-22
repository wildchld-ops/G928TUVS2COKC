.class public abstract Lcom/sec/daliviews/views/PeerBase;
.super Ljava/lang/Object;
.source "PeerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDestroyListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mNPeer:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/daliviews/views/PeerBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/views/PeerBase;->TAG:Ljava/lang/String;

    const-string v0, "daliapp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/PeerBase;->mDestroyListeners:Ljava/util/HashSet;

    iput-wide v2, p0, Lcom/sec/daliviews/views/PeerBase;->mNPeer:J

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PeerBase;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/daliviews/views/PeerBase;->mNPeer:J

    iget-wide v0, p0, Lcom/sec/daliviews/views/PeerBase;->mNPeer:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/daliviews/views/NativeApp;->registerPeerObject(Lcom/sec/daliviews/views/PeerBase;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/PeerBase;->mDestroyListeners:Ljava/util/HashSet;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/daliviews/views/PeerBase;->mNPeer:J

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PeerBase;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/daliviews/views/PeerBase;->mNPeer:J

    :cond_0
    invoke-static {p0}, Lcom/sec/daliviews/views/NativeApp;->registerPeerObject(Lcom/sec/daliviews/views/PeerBase;)V

    return-void
.end method

.method public static native gettid()I
.end method


# virtual methods
.method protected abstract create()J
.end method

.method public destroy()V
    .locals 12

    const-wide/16 v10, 0x0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PeerBase;->notifyDestroy()V

    const-string v2, "RK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to destroy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mnPeer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0x%x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v8, p0, Lcom/sec/daliviews/views/PeerBase;->mNPeer:J

    long-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/sec/daliviews/views/PeerBase;->mNPeer:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lcom/sec/daliviews/views/PeerBase;->mNPeer:J

    iput-wide v10, p0, Lcom/sec/daliviews/views/PeerBase;->mNPeer:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/daliviews/views/PeerBase;->destroy(J)V

    :cond_0
    return-void
.end method

.method protected native destroy(J)V
.end method

.method public destroyNow()V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PeerBase;->notifyDestroy()V

    iget-wide v2, p0, Lcom/sec/daliviews/views/PeerBase;->mNPeer:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lcom/sec/daliviews/views/PeerBase;->mNPeer:J

    iput-wide v4, p0, Lcom/sec/daliviews/views/PeerBase;->mNPeer:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/daliviews/views/PeerBase;->destroyNow(J)V

    :cond_0
    return-void
.end method

.method protected native destroyNow(J)V
.end method

.method public getPeer()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/sec/daliviews/views/PeerBase;->mNPeer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/daliviews/views/PeerBase;->TAG:Ljava/lang/String;

    const-string v1, "Getting NULL peer reference"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/sec/daliviews/views/PeerBase;->mNPeer:J

    return-wide v0
.end method

.method protected getmNPeer()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lcom/sec/daliviews/views/PeerBase;->mNPeer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/daliviews/views/PeerBase;->TAG:Ljava/lang/String;

    const-string v1, "Getting NULL peer reference"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/sec/daliviews/views/PeerBase;->mNPeer:J

    return-wide v0
.end method

.method public isValidPeer()Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/daliviews/views/PeerBase;->mNPeer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyDestroy()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/daliviews/views/PeerBase;->mDestroyListeners:Ljava/util/HashSet;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/daliviews/views/PeerBase;->mDestroyListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;

    invoke-interface {v1, p0}, Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;->onPeerDestroyed(Lcom/sec/daliviews/views/PeerBase;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/daliviews/views/PeerBase;->mDestroyListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public registerDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/daliviews/views/PeerBase;->mDestroyListeners:Ljava/util/HashSet;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/PeerBase;->mDestroyListeners:Ljava/util/HashSet;

    :cond_1
    iget-object v0, p0, Lcom/sec/daliviews/views/PeerBase;->mDestroyListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected resetPeer()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PeerBase;->notifyDestroy()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/daliviews/views/PeerBase;->mNPeer:J

    return-void
.end method

.method protected setPeer(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/daliviews/views/PeerBase;->mNPeer:J

    return-void
.end method

.method public unregisterDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/daliviews/views/PeerBase;->mDestroyListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/daliviews/views/PeerBase;->mDestroyListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
