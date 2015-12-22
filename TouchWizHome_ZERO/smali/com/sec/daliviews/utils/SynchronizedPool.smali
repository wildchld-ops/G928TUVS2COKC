.class public Lcom/sec/daliviews/utils/SynchronizedPool;
.super Lcom/sec/daliviews/utils/PoolBase;
.source "SynchronizedPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sec/daliviews/utils/IPoolable;",
        ">",
        "Lcom/sec/daliviews/utils/PoolBase;"
    }
.end annotation


# static fields
.field static sPool:Lcom/sec/daliviews/utils/SynchronizedPool;


# instance fields
.field private mAllObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mFreeObjects:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mIsMarked:Z

.field private final mLocker:Ljava/lang/Object;

.field private mMarkObjects:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/daliviews/utils/SynchronizedPool;->sPool:Lcom/sec/daliviews/utils/SynchronizedPool;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/utils/PoolBase;-><init>()V

    iput-object v1, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mFreeObjects:Ljava/util/ArrayDeque;

    iput-object v1, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mMarkObjects:Ljava/util/ArrayDeque;

    iput-object v1, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mAllObjects:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mClass:Ljava/lang/Class;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mLocker:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mIsMarked:Z

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/daliviews/utils/SynchronizedPool;->ConstructImpl(Ljava/lang/Object;Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/utils/PoolBase;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mFreeObjects:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mMarkObjects:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mAllObjects:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mClass:Ljava/lang/Class;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mLocker:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mIsMarked:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/daliviews/utils/SynchronizedPool;->ConstructImpl(Ljava/lang/Object;Ljava/lang/Class;I)V

    return-void
.end method

.method private ConstructImpl(Ljava/lang/Object;Ljava/lang/Class;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;I)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mClass:Ljava/lang/Class;

    new-instance v6, Ljava/util/ArrayDeque;

    invoke-direct {v6, p3}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v6, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mFreeObjects:Ljava/util/ArrayDeque;

    new-instance v6, Ljava/util/ArrayDeque;

    invoke-direct {v6, p3}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v6, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mMarkObjects:Ljava/util/ArrayDeque;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mAllObjects:Ljava/util/ArrayList;

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->isMemberClass()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    if-eqz v5, :cond_2

    if-nez p1, :cond_2

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Invalid argument! Static nested class used and no parent!"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v6, "APPL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception dammit!: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    if-eqz v5, :cond_3

    const/4 v6, 0x1

    :try_start_1
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p2, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p3, :cond_1

    if-eqz v5, :cond_4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/daliviews/utils/IPoolable;

    move-object v4, v6

    :goto_2
    iget-object v6, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mFreeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v6, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mAllObjects:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {p2, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/daliviews/utils/IPoolable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v6

    goto :goto_2
.end method

.method static Get()Lcom/sec/daliviews/utils/SynchronizedPool;
    .locals 1

    sget-object v0, Lcom/sec/daliviews/utils/SynchronizedPool;->sPool:Lcom/sec/daliviews/utils/SynchronizedPool;

    return-object v0
.end method


# virtual methods
.method public Alloc()Lcom/sec/daliviews/utils/IPoolable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mFreeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mFreeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/utils/IPoolable;

    iget-boolean v1, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mIsMarked:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mMarkObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_1
    iput-object p0, v0, Lcom/sec/daliviews/utils/IPoolable;->mOwnerPool:Lcom/sec/daliviews/utils/PoolBase;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/sec/daliviews/utils/IPoolable;->onAlloc()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public Dealloc(Lcom/sec/daliviews/utils/IPoolable;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/daliviews/utils/IPoolable;->onDealloc()V

    iget-object v0, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mFreeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public GetFreeSize()I
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mFreeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    return v0
.end method

.method public GetTotalCapacity()I
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mAllObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public Mark()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mIsMarked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mMarkObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mIsMarked:Z

    goto :goto_0
.end method

.method public Reset()V
    .locals 4

    iget-object v3, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mAllObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/utils/IPoolable;

    invoke-virtual {v1}, Lcom/sec/daliviews/utils/IPoolable;->onReset()V

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

.method public Rollback()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mIsMarked:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mMarkObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mMarkObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/utils/IPoolable;

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/utils/SynchronizedPool;->Dealloc(Lcom/sec/daliviews/utils/IPoolable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/utils/SynchronizedPool;->mIsMarked:Z

    goto :goto_0
.end method
