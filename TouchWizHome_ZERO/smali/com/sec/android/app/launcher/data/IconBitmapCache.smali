.class public Lcom/sec/android/app/launcher/data/IconBitmapCache;
.super Ljava/lang/Object;
.source "IconBitmapCache.java"


# static fields
.field private static final DEBUGGABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "IconBitmapCache"

.field public static USE_CACHE:Z

.field private static sInstance:Lcom/sec/android/app/launcher/data/IconBitmapCache;


# instance fields
.field private mBitmapList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->USE_CACHE:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->mBitmapList:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/launcher/data/IconBitmapCache;
    .locals 2

    const-class v1, Lcom/sec/android/app/launcher/data/IconBitmapCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->sInstance:Lcom/sec/android/app/launcher/data/IconBitmapCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/data/IconBitmapCache;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/data/IconBitmapCache;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->sInstance:Lcom/sec/android/app/launcher/data/IconBitmapCache;

    :cond_0
    sget-object v0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->sInstance:Lcom/sec/android/app/launcher/data/IconBitmapCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUniqKey(JLjava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addBitmap(JLjava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v1, 0x0

    sget-boolean v2, Lcom/sec/android/app/launcher/data/IconBitmapCache;->USE_CACHE:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->mBitmapList:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->getUniqKey(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->mBitmapList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->mBitmapList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->mBitmapList:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    sget-boolean v3, Lcom/sec/android/app/launcher/data/IconBitmapCache;->USE_CACHE:Z

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->mBitmapList:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->mBitmapList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->mBitmapList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->mBitmapList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getBitmap(JLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    sget-boolean v2, Lcom/sec/android/app/launcher/data/IconBitmapCache;->USE_CACHE:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->mBitmapList:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->getUniqKey(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->mBitmapList:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->mBitmapList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeBitmap(JLjava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    sget-boolean v3, Lcom/sec/android/app/launcher/data/IconBitmapCache;->USE_CACHE:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz p3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->mBitmapList:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->getUniqKey(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->mBitmapList:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->mBitmapList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public removeBitmapByPackage(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->mBitmapList:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->mBitmapList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "@"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    if-le v5, v10, :cond_3

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {p0, v8, v9, v5}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->removeBitmap(JLjava/lang/String;)Z

    goto :goto_2

    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateBitmap(JLjava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v5, Lcom/sec/android/app/launcher/data/IconBitmapCache;->USE_CACHE:Z

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p3, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->mBitmapList:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->getUniqKey(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->mBitmapList:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->mBitmapList:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-ne v0, p4, :cond_3

    if-eqz v0, :cond_2

    move v3, v4

    :cond_2
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/sec/android/app/launcher/data/IconBitmapCache;->mBitmapList:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->addBitmap(JLjava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_5

    move v3, v4

    :cond_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
