.class Landroid/app/ApplicationLoaders;
.super Ljava/lang/Object;
.source "ApplicationLoaders.java"


# static fields
.field private static final gApplicationLoaders:Landroid/app/ApplicationLoaders;

.field private static openArtFile_M:Ljava/lang/reflect/Method;


# instance fields
.field private final isElasticEnabled:Z

.field private final mLoaders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sput-object v0, Landroid/app/ApplicationLoaders;->openArtFile_M:Ljava/lang/reflect/Method;

    :try_start_0
    const-class v0, Ldalvik/system/PathClassLoader;

    const-string v1, "openArtFile"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/ClassLoader;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/app/ApplicationLoaders;->openArtFile_M:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/app/ApplicationLoaders;

    invoke-direct {v0}, Landroid/app/ApplicationLoaders;-><init>()V

    sput-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ApplicationLoaders;->isElasticEnabled:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    return-void
.end method

.method public static getDefault()Landroid/app/ApplicationLoaders;
    .locals 1

    sget-object v0, Landroid/app/ApplicationLoaders;->gApplicationLoaders:Landroid/app/ApplicationLoaders;

    return-object v0
.end method

.method private static openArtFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;
    .locals 6

    const/4 v2, 0x0

    sget-object v1, Landroid/app/ApplicationLoaders;->openArtFile_M:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/ApplicationLoaders;->openArtFile_M:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldalvik/system/PathClassLoader;

    check-cast v1, Ldalvik/system/PathClassLoader;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "ApplicationLoaders"

    const-string v3, "openArtFile"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ApplicationLoaders"

    const-string v3, "openArtFile"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "ApplicationLoaders"

    const-string v3, "openArtFile"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v1, "ApplicationLoaders"

    const-string v2, "openArtFile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method


# virtual methods
.method public getClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/ClassLoader;
    .locals 8

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v4, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    monitor-enter v4

    if-nez p3, :cond_0

    move-object p3, v0

    :cond_0
    if-ne p3, v0, :cond_3

    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    if-eqz v1, :cond_1

    monitor-exit v4

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_1
    const-wide/16 v6, 0x40

    invoke-static {v6, v7, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz p4, :cond_2

    new-instance v2, Landroid/app/im/FeaturePathClassLoader;

    invoke-direct {v2, p1, p2, p3}, Landroid/app/im/FeaturePathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :goto_1
    const-wide/16 v6, 0x40

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v3, p0, Landroid/app/ApplicationLoaders;->mLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    invoke-static {p1, p2, p3}, Landroid/app/ApplicationLoaders;->openArtFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;

    move-result-object v2

    goto :goto_1

    :cond_3
    const-wide/16 v6, 0x40

    invoke-static {v6, v7, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz p4, :cond_4

    new-instance v2, Landroid/app/im/FeaturePathClassLoader;

    invoke-direct {v2, p1, p3}, Landroid/app/im/FeaturePathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :goto_2
    const-wide/16 v6, 0x40

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    invoke-static {p1, v3, p3}, Landroid/app/ApplicationLoaders;->openArtFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_2
.end method
