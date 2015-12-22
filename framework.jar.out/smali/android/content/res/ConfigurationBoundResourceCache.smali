.class public Landroid/content/res/ConfigurationBoundResourceCache;
.super Ljava/lang/Object;
.source "ConfigurationBoundResourceCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ConstantState",
            "<TT;>;>;>;>;"
        }
    .end annotation
.end field

.field final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ConfigurationBoundResourceCache;->mCache:Landroid/util/ArrayMap;

    iput-object p1, p0, Landroid/content/res/ConfigurationBoundResourceCache;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private onConfigurationChangeInt(Landroid/util/LongSparseArray;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ConstantState",
            "<TT;>;>;>;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ConstantState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ConstantState;->getChangingConfigurations()I

    move-result v4

    invoke-static {p2, v4}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources$Theme;",
            ")TT;"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/res/Resources$Theme;->getKey()Ljava/lang/String;

    move-result-object v1

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/content/res/ConfigurationBoundResourceCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    if-nez v2, :cond_2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    return-object v4

    :cond_1
    const-string v1, ""

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ConstantState;

    if-eqz v0, :cond_3

    iget-object v4, p0, Landroid/content/res/ConfigurationBoundResourceCache;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v4, p3}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_3
    monitor-enter p0

    :try_start_3
    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method public onConfigurationChange(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/content/res/ConfigurationBoundResourceCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Landroid/content/res/ConfigurationBoundResourceCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    invoke-direct {p0, v2, p1}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChangeInt(Landroid/util/LongSparseArray;I)V

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/content/res/ConfigurationBoundResourceCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public put(JLandroid/content/res/Resources$Theme;Landroid/content/res/ConstantState;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources$Theme;",
            "Landroid/content/res/ConstantState",
            "<TT;>;)V"
        }
    .end annotation

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p3, :cond_2

    const-string v0, ""

    :goto_1
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/content/res/ConfigurationBoundResourceCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/LongSparseArray;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    iget-object v2, p0, Landroid/content/res/ConfigurationBoundResourceCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    invoke-virtual {p3}, Landroid/content/res/Resources$Theme;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
