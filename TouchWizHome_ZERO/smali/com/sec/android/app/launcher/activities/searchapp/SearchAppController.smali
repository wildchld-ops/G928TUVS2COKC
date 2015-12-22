.class public Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;
.super Ljava/lang/Object;
.source "SearchAppController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$1;,
        Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;,
        Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$MyComparator;
    }
.end annotation


# static fields
.field public static ACTION_UPDATE_DATA:Ljava/lang/String; = null

.field public static final SEC_LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.launcher"

.field public static final TAG:Ljava/lang/String; = "Searchapp.SearchAppController"

.field public static mCurrentLanguage:Ljava/lang/String;

.field public static mIconDpi:I

.field public static mListIconDpi:I

.field private static mSAController:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

.field static reRunTask:Z

.field private static sCollator:Ljava/text/Collator;


# instance fields
.field private APPS_LOADING_COUNT_FIRST:I

.field private cpuBooster:Landroid/os/DVFSHelper;

.field private doesMoreApps_exist:Z

.field private final mContext:Landroid/content/Context;

.field mLoadApplication:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;

.field private mLoadingCount:I

.field mOtherAppsList:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mQueryAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mQueryAppsListOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UPdateListData"

    sput-object v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->ACTION_UPDATE_DATA:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->reRunTask:Z

    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mCurrentLanguage:Ljava/lang/String;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->sCollator:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mQueryAppsListOrder:Ljava/util/List;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mQueryAppsList:Ljava/util/List;

    iput v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mQueryCount:I

    iput v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mLoadingCount:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->APPS_LOADING_COUNT_FIRST:I

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->doesMoreApps_exist:Z

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->cpuBooster:Landroid/os/DVFSHelper;

    sput-object p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mSAController:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->setIconDpi()I

    move-result v0

    sput v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mIconDpi:I

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    new-instance v1, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$MyComparator;

    invoke-direct {v1}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$MyComparator;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mOtherAppsList:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mCurrentLanguage:Ljava/lang/String;

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->cpuBooster:Landroid/os/DVFSHelper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mQueryAppsListOrder:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100()Ljava/text/Collator;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;Landroid/content/Context;Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->getApplicationsWithClass(Landroid/content/Context;Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mQueryCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mLoadingCount:I

    return v0
.end method

.method private getApplicationsWithClass(Landroid/content/Context;Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ConcurrentSkipListMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    move-object/from16 v3, p3

    if-nez v3, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->getQueryAppsList()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mQueryAppsList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mQueryAppsList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mQueryCount:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mQueryAppsList:Ljava/util/List;

    :cond_2
    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mLoadingCount:I

    :goto_1
    if-ge v7, v13, :cond_5

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    :try_start_0
    iget-object v2, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v12

    new-instance v11, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;

    invoke-direct {v11}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;-><init>()V

    iget-object v14, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v14}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->setPackageName(Ljava/lang/String;)V

    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->setComponentName(Landroid/content/ComponentName;)V

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->setClassName(Ljava/lang/String;)V

    iget-object v14, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v14}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->setIntent(Landroid/content/Intent;)V

    iget v14, v2, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v14, :cond_6

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getClassName()Ljava/lang/String;

    move-result-object v14

    :goto_2
    invoke-virtual {v10, v14}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v11, v5}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x0

    :cond_3
    :goto_3
    invoke-virtual {v2, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->setAppName(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.sec.android.app.launcher"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v11}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->isCancelled()Z

    move-result v14

    if-eqz v14, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mLoadingCount:I

    add-int/2addr v14, v4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mLoadingCount:I

    goto/16 :goto_0

    :cond_6
    :try_start_1
    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->setLiveIcon(Landroid/content/Context;Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v8}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v14

    invoke-virtual {v11, v12, v14}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->setListAppIcon(Landroid/content/res/Resources;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mLoadingCount:I

    if-nez v14, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->APPS_LOADING_COUNT_FIRST:I

    if-gt v4, v14, :cond_5

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1
.end method

.method public static getInstance()Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mSAController:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

    return-object v0
.end method

.method private getQueryAppsList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mLoadApplication:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mLoadApplication:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mLoadApplication:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mLoadApplication:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mLoadApplication:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mLoadApplication:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public getCpuBoosterObject()Landroid/os/DVFSHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->cpuBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method public getMoreAppsListState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->doesMoreApps_exist:Z

    return v0
.end method

.method loadApps(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mOtherAppsList:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mQueryAppsList:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->getApplicationsWithClass(Landroid/content/Context;Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;-><init>(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$1;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mLoadApplication:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mLoadApplication:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public sendUpdateDataIntent()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->ACTION_UPDATE_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setIconDpi()I
    .locals 9

    const/16 v2, 0xf0

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v7, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mListIconDpi:I

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    const v7, 0x7f0a009b

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/high16 v7, 0x1050000

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-ne v6, v3, :cond_1

    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0

    :cond_1
    int-to-float v7, v6

    int-to-float v8, v3

    div-float/2addr v7, v8

    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v5, v7

    const/16 v7, 0x78

    if-gt v5, v7, :cond_2

    const/16 v2, 0x78

    goto :goto_0

    :cond_2
    const/16 v7, 0xa0

    if-gt v5, v7, :cond_3

    const/16 v2, 0xa0

    goto :goto_0

    :cond_3
    if-gt v5, v2, :cond_4

    const/16 v2, 0xf0

    goto :goto_0

    :cond_4
    const/16 v7, 0x140

    if-gt v5, v7, :cond_5

    const/16 v2, 0x140

    goto :goto_0

    :cond_5
    const/16 v7, 0x1e0

    if-gt v5, v7, :cond_6

    const/16 v2, 0x1e0

    goto :goto_0

    :cond_6
    const/16 v2, 0x280

    goto :goto_0
.end method

.method public setLiveIcon(Landroid/content/Context;Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;)Z
    .locals 4

    const-string v2, "com.android.calendar"

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.sec.android.app.clockpackage"

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->setAppIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v2, "Searchapp.SearchAppController"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setMoreAppsListState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->doesMoreApps_exist:Z

    return-void
.end method

.method public startAsyncTask()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mLoadApplication:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mLoadApplication:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mLoadApplication:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    sput-boolean v2, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->reRunTask:Z

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;-><init>(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$1;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mLoadApplication:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mLoadApplication:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController$LoadApplicationLists;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
