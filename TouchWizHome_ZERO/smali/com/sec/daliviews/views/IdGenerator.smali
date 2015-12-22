.class public Lcom/sec/daliviews/views/IdGenerator;
.super Ljava/lang/Object;
.source "IdGenerator.java"


# static fields
.field private static mItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mNextId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/sec/daliviews/views/IdGenerator;->mNextId:J

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/daliviews/views/IdGenerator;->mItemMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getId(Lcom/sec/daliviews/views/Item;)J
    .locals 6

    const-class v3, Lcom/sec/daliviews/views/IdGenerator;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/sec/daliviews/views/IdGenerator;->mItemMap:Ljava/util/HashMap;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sec/daliviews/views/IdGenerator;->mItemMap:Ljava/util/HashMap;

    :cond_0
    sget-wide v0, Lcom/sec/daliviews/views/IdGenerator;->mNextId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    sput-wide v4, Lcom/sec/daliviews/views/IdGenerator;->mNextId:J

    sget-object v2, Lcom/sec/daliviews/views/IdGenerator;->mItemMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-wide v0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getItemById(J)Lcom/sec/daliviews/views/Item;
    .locals 4

    const/4 v1, 0x0

    const-class v2, Lcom/sec/daliviews/views/IdGenerator;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/sec/daliviews/views/IdGenerator;->mItemMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    return-object v1

    :cond_1
    :try_start_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v3, Lcom/sec/daliviews/views/IdGenerator;->mItemMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v1, Lcom/sec/daliviews/views/IdGenerator;->mItemMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
