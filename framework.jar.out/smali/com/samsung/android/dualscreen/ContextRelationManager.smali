.class public Lcom/samsung/android/dualscreen/ContextRelationManager;
.super Ljava/lang/Object;
.source "ContextRelationManager.java"


# static fields
.field static final BOTTOM_OF_DUMP_CALL_STACK:Ljava/lang/String; = "android.os.Handler.dispatchMessage"

.field public static final DEBUG:Z

.field public static final DEBUG_VERBOSE:Z

.field public static FEATURE_ENABLED:Z

.field public static final SAFE_DEBUG:Z

.field public static final TAG:Ljava/lang/String;

.field public static final TIME_STAMP_FORMAT:Ljava/text/SimpleDateFormat;

.field private static mContextRelationGraph:Lcom/samsung/android/dualscreen/datastructure/ContextRelationGraph;

.field private static final sInstance:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Lcom/samsung/android/dualscreen/ContextRelationManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContextRelatedInstanceHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-class v0, Lcom/samsung/android/dualscreen/ContextRelationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/dualscreen/ContextRelationManager;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/dualscreen/ContextRelationManager;->SAFE_DEBUG:Z

    sget-boolean v0, Lcom/samsung/android/dualscreen/ContextRelationManager;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/dualscreen/ContextRelationManager;->DEBUG:Z

    sget-boolean v0, Lcom/samsung/android/dualscreen/ContextRelationManager;->DEBUG:Z

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/samsung/android/dualscreen/ContextRelationManager;->DEBUG_VERBOSE:Z

    sput-boolean v2, Lcom/samsung/android/dualscreen/ContextRelationManager;->FEATURE_ENABLED:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/dualscreen/ContextRelationManager;->TIME_STAMP_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v0, Lcom/samsung/android/dualscreen/ContextRelationManager$1;

    invoke-direct {v0}, Lcom/samsung/android/dualscreen/ContextRelationManager$1;-><init>()V

    sput-object v0, Lcom/samsung/android/dualscreen/ContextRelationManager;->sInstance:Landroid/util/Singleton;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/dualscreen/datastructure/ContextRelationGraph;

    invoke-direct {v1}, Lcom/samsung/android/dualscreen/datastructure/ContextRelationGraph;-><init>()V

    sput-object v1, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelationGraph:Lcom/samsung/android/dualscreen/datastructure/ContextRelationGraph;

    iget-object v1, p0, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    const-class v2, Landroid/view/WindowManagerImpl;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/dualscreen/datastructure/WindowManagerImplInstanceHandler;

    invoke-direct {v3}, Lcom/samsung/android/dualscreen/datastructure/WindowManagerImplInstanceHandler;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    const-class v2, Landroid/view/Display;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/dualscreen/datastructure/DisplayInstanceHandler;

    invoke-direct {v3}, Lcom/samsung/android/dualscreen/datastructure/DisplayInstanceHandler;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    const-class v2, Landroid/content/res/Resources;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/dualscreen/datastructure/ResourcesInstanceHandler;

    invoke-direct {v3}, Lcom/samsung/android/dualscreen/datastructure/ResourcesInstanceHandler;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isSystemThread()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/dualscreen/ContextRelationManager;->FEATURE_ENABLED:Z

    :cond_0
    sget-object v1, Lcom/samsung/android/dualscreen/ContextRelationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContextRelationManager() : FEATURE_ENABLED="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/dualscreen/ContextRelationManager;->FEATURE_ENABLED:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/dualscreen/ContextRelationManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/dualscreen/ContextRelationManager;-><init>()V

    return-void
.end method

.method static getImpl(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    :goto_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static getInstance()Lcom/samsung/android/dualscreen/ContextRelationManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/dualscreen/ContextRelationManager;->sInstance:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/ContextRelationManager;

    return-object v0
.end method

.method public static trimCallStack(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const-string v3, ""

    if-nez p0, :cond_0

    move-object v4, v3

    :goto_0
    return-object v4

    :cond_0
    const-string v6, "android.os.Handler.dispatchMessage"

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :cond_1
    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v4, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public createContext(Landroid/content/Context;Landroid/content/Context;)V
    .locals 7

    const/4 v5, -0x1

    sget-boolean v6, Lcom/samsung/android/dualscreen/ContextRelationManager;->FEATURE_ENABLED:Z

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "context is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/4 v3, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    :goto_1
    invoke-virtual {p2}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq v2, v5, :cond_2

    if-ne v2, v0, :cond_2

    move-object v3, p1

    :cond_2
    invoke-static {v3}, Lcom/samsung/android/dualscreen/ContextRelationManager;->getImpl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    invoke-static {p2}, Lcom/samsung/android/dualscreen/ContextRelationManager;->getImpl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    sget-object v6, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelationGraph:Lcom/samsung/android/dualscreen/datastructure/ContextRelationGraph;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelationGraph:Lcom/samsung/android/dualscreen/datastructure/ContextRelationGraph;

    invoke-virtual {v5, v4, v1}, Lcom/samsung/android/dualscreen/datastructure/ContextRelationGraph;->createContext(Landroid/content/Context;Landroid/content/Context;)Z

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_3
    move v2, v5

    goto :goto_1
.end method

.method public createDisplay(Landroid/content/Context;Landroid/view/Display;)V
    .locals 4

    sget-boolean v2, Lcom/samsung/android/dualscreen/ContextRelationManager;->FEATURE_ENABLED:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "creator is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-nez p2, :cond_3

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "display is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/dualscreen/ContextRelationManager;->getImpl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    const-class v3, Landroid/view/Display;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;

    if-eqz v1, :cond_0

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;->createContextRelatedInstance(Landroid/content/Context;Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public createResources(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 4

    sget-boolean v2, Lcom/samsung/android/dualscreen/ContextRelationManager;->FEATURE_ENABLED:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "creator is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-nez p2, :cond_3

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "res is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/dualscreen/ContextRelationManager;->getImpl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    const-class v3, Landroid/content/res/Resources;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;

    if-eqz v1, :cond_0

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;->createContextRelatedInstance(Landroid/content/Context;Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public createWindowManager(Landroid/content/Context;Landroid/view/WindowManagerImpl;)V
    .locals 4

    sget-boolean v2, Lcom/samsung/android/dualscreen/ContextRelationManager;->FEATURE_ENABLED:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "creator is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-nez p2, :cond_3

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "wm is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/dualscreen/ContextRelationManager;->getImpl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    const-class v3, Landroid/view/WindowManagerImpl;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;

    if-eqz v1, :cond_0

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;->createContextRelatedInstance(Landroid/content/Context;Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V
    .locals 6

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/samsung/android/dualscreen/ContextRelationManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Context Ref. size="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/dualscreen/ContextRelationManager;->getContextRefSize()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    sget-object v4, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelationGraph:Lcom/samsung/android/dualscreen/datastructure/ContextRelationGraph;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelationGraph:Lcom/samsung/android/dualscreen/datastructure/ContextRelationGraph;

    invoke-virtual {v3, p1, v0, p3, p4}, Lcom/samsung/android/dualscreen/datastructure/ContextRelationGraph;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v4, p0, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;

    if-eqz v1, :cond_0

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1, p1, v0, p3, p4}, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    :catchall_2
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3

    :cond_1
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void
.end method

.method public getContextRefSize()I
    .locals 2

    sget-object v1, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelationGraph:Lcom/samsung/android/dualscreen/datastructure/ContextRelationGraph;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelationGraph:Lcom/samsung/android/dualscreen/datastructure/ContextRelationGraph;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/datastructure/ContextRelationGraph;->getRelationGraph()Lcom/samsung/android/dualscreen/datastructure/RelationGraph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->getGraph()Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->numVertices()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public propagateChangedContextDisplay(Landroid/content/Context;I)V
    .locals 7

    sget-boolean v3, Lcom/samsung/android/dualscreen/ContextRelationManager;->FEATURE_ENABLED:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    sget-object v4, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelationGraph:Lcom/samsung/android/dualscreen/datastructure/ContextRelationGraph;

    monitor-enter v4

    :try_start_0
    sget-boolean v3, Lcom/samsung/android/dualscreen/ContextRelationManager;->DEBUG_VERBOSE:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/samsung/android/dualscreen/ContextRelationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "propagate new display to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelationGraph:Lcom/samsung/android/dualscreen/datastructure/ContextRelationGraph;

    invoke-virtual {v6, p1}, Lcom/samsung/android/dualscreen/datastructure/ContextRelationGraph;->toString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". new displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " callers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    if-ne v3, p2, :cond_4

    sget-boolean v3, Lcom/samsung/android/dualscreen/ContextRelationManager;->DEBUG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/samsung/android/dualscreen/ContextRelationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "stop propagating display to a Context has same displayId"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_4
    :try_start_1
    sget-object v3, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelationGraph:Lcom/samsung/android/dualscreen/datastructure/ContextRelationGraph;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/dualscreen/datastructure/ContextRelationGraph;->propagateChangedDisplay(Landroid/content/Context;I)V

    sget-object v3, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelationGraph:Lcom/samsung/android/dualscreen/datastructure/ContextRelationGraph;

    invoke-virtual {v3, p1}, Lcom/samsung/android/dualscreen/datastructure/ContextRelationGraph;->getDescendantVertices(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/dualscreen/ContextRelationManager;->mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;

    if-eqz v1, :cond_5

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;->propagateChangedRelationInfo(Ljava/util/ArrayList;I)V

    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v3

    :catchall_2
    move-exception v3

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method
