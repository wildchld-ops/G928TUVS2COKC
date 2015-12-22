.class public Lcom/android/server/im/InjectionManagerService;
.super Landroid/app/im/IInjectionManager$Stub;
.source "InjectionManagerService.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_ELASTIC:Z = false

.field public static TAG:Ljava/lang/String; = null

.field private static final THREAD_COUNT:I = 0x3

.field private static final XML_META_DATA:Ljava/lang/String; = "samsung.injection"


# instance fields
.field private final FEATURE_PERMISSION:Ljava/lang/String;

.field private featureAppReplacing:Z

.field private isBootAllParsingDone:Z

.field private isBootComplete:Z

.field private mAppFeature:Lcom/android/server/im/AppFeature;

.field private mBlockingQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mFutureTask:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "InjectionManagerService"

    sput-object v0, Lcom/android/server/im/InjectionManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/im/IInjectionManager$Stub;-><init>()V

    const-string v1, "com.samsung.android.permission.FEATURE_INJECTION"

    iput-object v1, p0, Lcom/android/server/im/InjectionManagerService;->FEATURE_PERMISSION:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/android/server/im/InjectionManagerService;->mBlockingQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/im/InjectionManagerService;->mFutureTask:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/android/server/im/InjectionManagerService;->isBootComplete:Z

    iput-boolean v3, p0, Lcom/android/server/im/InjectionManagerService;->isBootAllParsingDone:Z

    iput-boolean v3, p0, Lcom/android/server/im/InjectionManagerService;->featureAppReplacing:Z

    new-instance v1, Lcom/android/server/im/InjectionManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/im/InjectionManagerService$1;-><init>(Lcom/android/server/im/InjectionManagerService;)V

    iput-object v1, p0, Lcom/android/server/im/InjectionManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/im/InjectionManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/im/InjectionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/im/InjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/android/server/im/InjectionManagerService;->mBlockingQueue:Ljava/util/concurrent/BlockingQueue;

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/android/server/im/InjectionManagerService;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v9, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Lcom/android/server/im/AppFeature;

    iget-object v2, p0, Lcom/android/server/im/InjectionManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v9}, Lcom/android/server/im/AppFeature;-><init>(Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v1, p0, Lcom/android/server/im/InjectionManagerService;->mAppFeature:Lcom/android/server/im/AppFeature;

    iget-object v1, p0, Lcom/android/server/im/InjectionManagerService;->mAppFeature:Lcom/android/server/im/AppFeature;

    invoke-virtual {v1}, Lcom/android/server/im/AppFeature;->start()V

    :try_start_0
    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/im/InjectionManagerService;->parseFeatureAppPackages()V

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/im/InjectionManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/im/InjectionManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/server/im/InjectionManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/im/InjectionManagerService;->isBootComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/im/InjectionManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/im/InjectionManagerService;->isBootAllParsingDone:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/im/InjectionManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/im/InjectionManagerService;->killAllParent()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/im/InjectionManagerService;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/im/InjectionManagerService;->doAdd(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/im/InjectionManagerService;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/im/InjectionManagerService;->doRemove(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/im/InjectionManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/im/InjectionManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private doAdd(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/android/server/im/InjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v9, 0x1000

    invoke-virtual {v8, p2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v1, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v5, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v7, v1, v3

    const-string v8, "com.samsung.android.permission.FEATURE_INJECTION"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_2

    const/4 v4, 0x1

    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    const/4 v0, 0x0

    :try_start_1
    iget-object v8, p0, Lcom/android/server/im/InjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v9, 0x80

    invoke-virtual {v8, p2, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, v11}, Lcom/android/server/im/InjectionManagerService;->packageAdded(Landroid/content/pm/ApplicationInfo;Z)V

    iget-boolean v8, p0, Lcom/android/server/im/InjectionManagerService;->featureAppReplacing:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/im/InjectionManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Feature app "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " replaced"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    iput-boolean v11, p0, Lcom/android/server/im/InjectionManagerService;->featureAppReplacing:Z

    :cond_1
    :goto_3
    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/android/server/im/InjectionManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New feature app "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " installed."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method

.method private doRemove(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5

    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, p2}, Lcom/android/server/im/InjectionManagerService;->packageRemoved(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/server/im/InjectionManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Feature app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " removed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private killAllParent()V
    .locals 3

    iget-object v2, p0, Lcom/android/server/im/InjectionManagerService;->mAppFeature:Lcom/android/server/im/AppFeature;

    invoke-virtual {v2}, Lcom/android/server/im/AppFeature;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private parseFeatureAppPackages()V
    .locals 10

    const/4 v9, 0x1

    iget-object v5, p0, Lcom/android/server/im/InjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-array v6, v9, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "com.samsung.android.permission.FEATURE_INJECTION"

    aput-object v8, v6, v7

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v5, v9}, Lcom/android/server/im/InjectionManagerService;->packageAdded(Landroid/content/pm/ApplicationInfo;Z)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/im/InjectionManagerService;->mFutureTask:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_2
    iput-boolean v9, p0, Lcom/android/server/im/InjectionManagerService;->isBootAllParsingDone:Z

    iget-boolean v5, p0, Lcom/android/server/im/InjectionManagerService;->isBootComplete:Z

    if-ne v5, v9, :cond_3

    invoke-direct {p0}, Lcom/android/server/im/InjectionManagerService;->killAllParent()V

    :cond_3
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public getClassLibPath(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/im/InjectionManagerService;->mAppFeature:Lcom/android/server/im/AppFeature;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/im/AppFeature;->getCoreFeaturePkgList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v14, 0x0

    const/4 v12, 0x0

    if-eqz v16, :cond_a

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/im/InjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    const/16 v23, 0x480

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    array-length v13, v4

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v13, :cond_0

    aget-object v19, v4, v11

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v12, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v12, v0, :cond_2

    const-string v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v12, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v12, v0, :cond_4

    const-string v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v14

    const-string v22, "#"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v12, v0, :cond_6

    const-string v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    invoke-virtual {v15}, Ljava/util/HashSet;->size()I

    move-result v14

    const-string v22, "#"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v12, v0, :cond_8

    const-string v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v20
.end method

.method public bridge synthetic getClassLibPath(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/im/InjectionManagerService;->getClassLibPath(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/im/InjectionManagerService;->mAppFeature:Lcom/android/server/im/AppFeature;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/im/AppFeature;->getCategorisedPackageFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPackageFeatures(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/im/InjectionManagerService;->mAppFeature:Lcom/android/server/im/AppFeature;

    invoke-virtual {v2, p1}, Lcom/android/server/im/AppFeature;->getPackageFeatures(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/im/InjectionManagerService;->mAppFeature:Lcom/android/server/im/AppFeature;

    invoke-virtual {v2, p1}, Lcom/android/server/im/AppFeature;->getCorePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/im/InjectionManagerService;->mAppFeature:Lcom/android/server/im/AppFeature;

    invoke-virtual {v2, v0}, Lcom/android/server/im/AppFeature;->getPackageFeatures(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public bridge synthetic getPackageFeatures(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/im/InjectionManagerService;->getPackageFeatures(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public packageAdded(Landroid/content/pm/ApplicationInfo;Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/im/InjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v3, "samsung.injection"

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/im/FeatureInfoParser;

    iget-object v2, p0, Lcom/android/server/im/InjectionManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/im/InjectionManagerService;->mAppFeature:Lcom/android/server/im/AppFeature;

    invoke-virtual {v3}, Lcom/android/server/im/AppFeature;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/server/im/FeatureInfoParser;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/res/XmlResourceParser;Z)V

    iget-object v2, p0, Lcom/android/server/im/InjectionManagerService;->mFutureTask:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/im/InjectionManagerService;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public packageRemoved(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/im/InjectionManagerService;->mAppFeature:Lcom/android/server/im/AppFeature;

    invoke-virtual {v0, p1}, Lcom/android/server/im/AppFeature;->removeFeatureFromList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
