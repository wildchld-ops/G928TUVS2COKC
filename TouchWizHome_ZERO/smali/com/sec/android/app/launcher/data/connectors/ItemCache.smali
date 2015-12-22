.class public Lcom/sec/android/app/launcher/data/connectors/ItemCache;
.super Ljava/lang/Object;
.source "ItemCache.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mIdItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ItemCache"

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mPackageNameMap:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mIdItemMap:Ljava/util/HashMap;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mIdItemMap:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;-><init>(Z)V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mPackageNameMap:Ljava/util/HashMap;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addItem(JLcom/sec/daliviews/views/Item;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mIdItemMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mIdItemMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mPackageNameMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->addItemForPackageName(Lcom/sec/daliviews/views/Item;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addItemForPackageName(Lcom/sec/daliviews/views/Item;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/LauncherItem;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/LauncherItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mPackageNameMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mPackageNameMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized deleteItem(J)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mIdItemMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/Item;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mPackageNameMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->removeItemFromPackage(Lcom/sec/daliviews/views/Item;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/daliviews/views/Item;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try to remove a none existing item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public declared-synchronized destroy()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mIdItemMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mIdItemMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mPackageNameMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mPackageNameMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getItem(J)Lcom/sec/daliviews/views/Item;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mIdItemMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getItemIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mIdItemMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mIdItemMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getItemsForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mPackageNameMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mPackageNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeItem(J)Lcom/sec/daliviews/views/Item;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mIdItemMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/Item;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mPackageNameMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->removeItemFromPackage(Lcom/sec/daliviews/views/Item;)V

    :cond_0
    if-nez v0, :cond_1

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try to remove a none existing item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeItemFromPackage(Lcom/sec/daliviews/views/Item;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    instance-of v4, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-nez v4, :cond_0

    instance-of v4, p1, Lcom/sec/android/app/launcher/data/WidgetListItem;

    if-eqz v4, :cond_1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/LauncherItem;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/LauncherItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mPackageNameMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->mPackageNameMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
