.class public final Lcom/sec/android/app/launcher/migrators/DatabaseMigratorFactory;
.super Ljava/lang/Object;
.source "DatabaseMigratorFactory.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# static fields
.field private static mMigratorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/app/launcher/migrators/DatabaseMigrator;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x11

    const/16 v2, 0xe

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/migrators/DatabaseMigratorFactory;->mMigratorMap:Ljava/util/Map;

    const-class v0, Lcom/sec/android/app/launcher/migrators/Launcher14To15;

    const-string v1, "launcher.db"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/migrators/DatabaseMigratorFactory;->registerMigrator(Ljava/lang/Class;Ljava/lang/String;II)V

    const-class v0, Lcom/sec/android/app/launcher/migrators/PageSettings14To15;

    const-string v1, "pagesettings.db"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/migrators/DatabaseMigratorFactory;->registerMigrator(Ljava/lang/Class;Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized destroy()V
    .locals 2

    const-class v1, Lcom/sec/android/app/launcher/migrators/DatabaseMigratorFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/launcher/migrators/DatabaseMigratorFactory;->mMigratorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getMigrator(Ljava/lang/String;II)Lcom/sec/android/app/launcher/migrators/DatabaseMigrator;
    .locals 7

    const/4 v5, 0x0

    const-class v6, Lcom/sec/android/app/launcher/migrators/DatabaseMigratorFactory;

    monitor-enter v6

    if-nez p0, :cond_0

    move-object v4, v5

    :goto_0
    monitor-exit v6

    return-object v4

    :cond_0
    :try_start_0
    sget-object v4, Lcom/sec/android/app/launcher/migrators/DatabaseMigratorFactory;->mMigratorMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_1

    move-object v4, v5

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_2

    move-object v4, v5

    goto :goto_0

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/launcher/migrators/DatabaseMigrator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4
.end method

.method private static registerMigrator(Ljava/lang/Class;Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/app/launcher/migrators/DatabaseMigrator;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/sec/android/app/launcher/migrators/DatabaseMigratorFactory;->mMigratorMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/sec/android/app/launcher/migrators/DatabaseMigratorFactory;->mMigratorMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
