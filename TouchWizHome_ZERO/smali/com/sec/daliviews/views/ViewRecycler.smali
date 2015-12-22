.class public abstract Lcom/sec/daliviews/views/ViewRecycler;
.super Lcom/sec/daliviews/views/PeerBase;
.source "ViewRecycler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mRecycleBin:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/daliviews/views/NativeViewBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/daliviews/views/ViewRecycler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/views/ViewRecycler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/daliviews/views/PeerBase;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/ViewRecycler;->mRecycleBin:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method protected cleanup()V
    .locals 4

    iget-object v3, p0, Lcom/sec/daliviews/views/ViewRecycler;->mRecycleBin:Ljava/util/Vector;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/daliviews/views/ViewRecycler;->mRecycleBin:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->destroy()V

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

.method protected native create()J
.end method

.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->destroy()V

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ViewRecycler;->cleanup()V

    return-void
.end method

.method protected abstract getItemView(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/NativeViewBase;)Lcom/sec/daliviews/views/NativeViewBase;
.end method

.method protected getRecycledView(Lcom/sec/daliviews/views/Item;)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 4

    iget-object v3, p0, Lcom/sec/daliviews/views/ViewRecycler;->mRecycleBin:Ljava/util/Vector;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/daliviews/views/ViewRecycler;->mRecycleBin:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {p1, v1}, Lcom/sec/daliviews/views/Item;->isCompatable(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/daliviews/views/ViewRecycler;->mRecycleBin:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    monitor-exit v3

    :goto_0
    return-object v1

    :cond_1
    monitor-exit v3

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected getView(J)J
    .locals 7

    invoke-static {p1, p2}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/ViewRecycler;->getRecycledView(Lcom/sec/daliviews/views/Item;)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/daliviews/views/ViewRecycler;->getItemView(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/NativeViewBase;)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/sec/daliviews/views/ViewRecycler;->mRecycleBin:Ljava/util/Vector;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/daliviews/views/ViewRecycler;->mRecycleBin:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v4

    :goto_0
    return-wide v4

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method protected recycleView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->isRecyclable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->recycle()V

    iget-object v1, p0, Lcom/sec/daliviews/views/ViewRecycler;->mRecycleBin:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/daliviews/views/ViewRecycler;->mRecycleBin:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->destroy()V

    goto :goto_0
.end method

.method protected recycleViews([Lcom/sec/daliviews/views/NativeViewBase;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/ViewRecycler;->recycleView(Lcom/sec/daliviews/views/NativeViewBase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected resetPeer()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ViewRecycler;->cleanup()V

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->resetPeer()V

    return-void
.end method
