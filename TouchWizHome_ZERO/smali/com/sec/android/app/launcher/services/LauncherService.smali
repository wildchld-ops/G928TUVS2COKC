.class public Lcom/sec/android/app/launcher/services/LauncherService;
.super Landroid/app/Service;
.source "LauncherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/services/LauncherService$SimpleItem;,
        Lcom/sec/android/app/launcher/services/LauncherService$ServiceHandler;,
        Lcom/sec/android/app/launcher/services/LauncherService$LocalLauncherServiceBinder;
    }
.end annotation


# static fields
.field public static final ACTION_FORCE_REFRESH:Ljava/lang/String; = "com.sec.android.intent.action.FORCE_REFRESH"

.field private static final CLAUSE_DESKTOP:Ljava/lang/String;

.field private static final DEBUGGABLE:Z

.field public static final EXTRA_CUE:Ljava/lang/String; = "extra_cue"

.field public static final EXTRA_PACKAGENAME:Ljava/lang/String; = "extra_packagename"

.field public static final EXTRA_USERHANDLE:Ljava/lang/String; = "extra_user"

.field private static final INTERVAL_WIDGET_CHECK:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "LauncherService"

.field public static final WHERECLASE_APPORDER:Ljava/lang/String; = "profileId=? AND componentName like ?"

.field public static final WHERECLASE_FAVORITE:Ljava/lang/String; = "profileId=? AND intent like ?"

.field public static final WHERECLASE_WIDGET:Ljava/lang/String; = "profileId=? AND componentName like ?"


# instance fields
.field private final mBinder:Landroid/os/Binder;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private volatile mServiceHandler:Lcom/sec/android/app/launcher/services/LauncherService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mUserManager:Landroid/os/UserManager;

.field private mWidgetUpdateItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWidgetUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/launcher/services/LauncherService;->DEBUGGABLE:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "containerFilter in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/services/LauncherService;->CLAUSE_DESKTOP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "LauncherService"

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/services/LauncherService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/sec/android/app/launcher/services/LauncherService$LocalLauncherServiceBinder;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/services/LauncherService$LocalLauncherServiceBinder;-><init>(Lcom/sec/android/app/launcher/services/LauncherService;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mBinder:Landroid/os/Binder;

    iput-object v1, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mServiceLooper:Landroid/os/Looper;

    iput-object v1, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mWidgetUpdateItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/launcher/services/LauncherService$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/services/LauncherService$3;-><init>(Lcom/sec/android/app/launcher/services/LauncherService;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mWidgetUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/services/LauncherService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mWidgetUpdateItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/services/LauncherService;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getInstalledWidgets()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/services/LauncherService;Ljava/util/List;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/services/LauncherService;->doPackageUpdateWidget(Ljava/util/List;Landroid/util/Pair;)V

    return-void
.end method

.method private addAppsDb(Landroid/content/ContentResolver;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 6

    const/4 v3, 0x0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x81

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v4, "itemType"

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "container"

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "hidden"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "title"

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "componentName"

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "color"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "isSystemApp"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "profileId"

    iget-object v4, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private addComponent(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/ArrayList;JZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;JZ)V"
        }
    .end annotation

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    invoke-direct {p0, p1, v1, p6}, Lcom/sec/android/app/launcher/services/LauncherService;->addHomeDb(Landroid/content/ContentResolver;Landroid/content/pm/LauncherActivityInfo;Z)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/launcher/services/LauncherService;->addAppsDb(Landroid/content/ContentResolver;Landroid/content/pm/LauncherActivityInfo;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v1, p4, p5}, Lcom/sec/android/app/launcher/services/LauncherService;->addWidgetsDb(Landroid/content/ContentResolver;Ljava/lang/Object;J)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private addHomeDb(Landroid/content/ContentResolver;Landroid/content/pm/LauncherActivityInfo;Z)V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x81

    if-eqz v6, :cond_0

    move v2, v4

    :goto_0
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v6, 0x10200000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v7

    invoke-static {v6, v4, v7}, Lcom/sec/android/app/launcher/services/LauncherService;->findVacantCell(Landroid/content/Context;ZZ)[I

    move-result-object v0

    if-nez v0, :cond_1

    const-string v4, "LauncherService"

    const-string v5, "insertFavoriteDataBase(), cellInfo is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    move v2, v5

    goto :goto_0

    :cond_1
    const-string v6, "itemType"

    sget-object v7, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "container"

    const-string v7, "0"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "containerId"

    aget v7, v0, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "cellX"

    aget v7, v0, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "cellY"

    const/4 v7, 0x2

    aget v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "spanX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "spanY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "show"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "title"

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "intent"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "isSystemApp"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "profileId"

    iget-object v6, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p3, :cond_2

    const-string v5, "newCue"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_1
.end method

.method private addManagedProfile()V
    .locals 21

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isKnoxMode()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/services/LauncherService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v14

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v9, 0x0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v3

    const-string v20, "profileId=? AND componentName=?"

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v14, :cond_0

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/UserHandle;

    if-eqz v17, :cond_3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/services/LauncherService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v18

    const-string v3, "LauncherService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addManagedProfile - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/services/LauncherService;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v5, v0}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    const/4 v3, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    const-string v5, "profileId=? AND componentName=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_7

    :cond_5
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v11, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_packagename"

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v17, :cond_6

    const-string v3, "extra_user"

    move-object/from16 v0, v17

    invoke-virtual {v11, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_6
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "LauncherService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Managed App ADD : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/launcher/services/LauncherService;->onHandleIntent(Landroid/content/Intent;)V

    :cond_7
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method private addWidgetsDb(Landroid/content/ContentResolver;Ljava/lang/Object;J)V
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    instance-of v6, p2, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v6, :cond_1

    move-object v2, p2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getSpanCalculater()Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v0

    const-string v6, "shortcut"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "spanX"

    aget v7, v0, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "spanY"

    aget v7, v0, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "componentName"

    iget-object v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "title"

    iget-object v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v6, v2, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-eqz v6, :cond_0

    const-string v6, "themeName"

    check-cast v2, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-virtual {v2}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getThemeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v6, "profileId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v6, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v6, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void

    :cond_1
    instance-of v6, p2, Landroid/content/pm/ResolveInfo;

    if-eqz v6, :cond_0

    move-object v4, p2

    check-cast v4, Landroid/content/pm/ResolveInfo;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "title"

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/sec/android/app/launcher/utils/Utils;->getTitle(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "shortcut"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "spanX"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "spanY"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "componentName"

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private backupHomescreen(Landroid/content/Intent;)V
    .locals 4

    const-string v3, "SAVE_PATH"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "SOURCE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SESSION_KEY"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v2, v1}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->XmlGenerator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private bindWidget(Landroid/content/Intent;)V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "componentName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    const-string v3, "spanX"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v3, "spanY"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v12, :cond_1

    if-lez v5, :cond_1

    if-gtz v6, :cond_2

    :cond_1
    const-string v3, "LauncherService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " cn is null or span is invalid : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v16, Landroid/appwidget/AppWidgetHost;

    const/16 v3, 0x400

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v9

    invoke-virtual/range {v16 .. v16}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v8

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v15

    const/4 v3, 0x0

    invoke-virtual {v9, v8, v15, v12, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/launcher/services/LauncherService;->findVacantCell(Landroid/content/Context;ZZIIZ)[I

    move-result-object v10

    if-nez v10, :cond_3

    const-string v3, "LauncherService"

    const-string v4, "installWidgetToHomescreen(), cellInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0

    :cond_3
    sget-object v14, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "itemType"

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "container"

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "intent"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "containerId"

    const/4 v4, 0x0

    aget v4, v10, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cellX"

    const/4 v4, 0x1

    aget v4, v10, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cellY"

    const/4 v4, 0x2

    aget v4, v10, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "spanX"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "spanY"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "appWidgetId"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "profileId"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/services/LauncherService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v15}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "show"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v14, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    :cond_4
    const-string v3, "LauncherService"

    const-string v4, "Problem allocating appWidgetId; bindAppWidgetIdIfAllowed returned"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto/16 :goto_0
.end method

.method public static buildOccupiedCellList(Landroid/content/Context;Ljava/util/ArrayList;)[[Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/launcher/services/LauncherService$SimpleItem;",
            ">;)[[Z"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageColumns()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageRows()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/launcher/services/LauncherService$SimpleItem;

    iget v3, v5, Lcom/sec/android/app/launcher/services/LauncherService$SimpleItem;->cellX:I

    :goto_0
    iget v7, v5, Lcom/sec/android/app/launcher/services/LauncherService$SimpleItem;->cellX:I

    iget v8, v5, Lcom/sec/android/app/launcher/services/LauncherService$SimpleItem;->spanX:I

    add-int/2addr v7, v8

    if-ge v3, v7, :cond_0

    iget v6, v5, Lcom/sec/android/app/launcher/services/LauncherService$SimpleItem;->cellY:I

    :goto_1
    iget v7, v5, Lcom/sec/android/app/launcher/services/LauncherService$SimpleItem;->cellY:I

    iget v8, v5, Lcom/sec/android/app/launcher/services/LauncherService$SimpleItem;->spanY:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_2

    if-ge v3, v0, :cond_1

    if-ge v6, v1, :cond_1

    aget-object v7, v2, v3

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private deletePackageFromDb(Landroid/net/Uri;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 12

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v6, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, p3}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v4

    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->getInstance()Lcom/sec/android/app/launcher/data/IconBitmapCache;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->removeBitmapByPackage(Ljava/lang/String;)V

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    invoke-virtual {p1, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const-string v7, "profileId=? AND intent like ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const-string v7, "itemType =? and iconPackage =?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    sget-object v10, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SHORTCUT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v6, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "profileId=? AND componentName like ?"

    invoke-virtual {v0, v6, v7, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    invoke-virtual {p1, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    const-string v7, "profileId=? AND componentName like ?"

    invoke-virtual {v0, v6, v7, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_HOMEAPPS:Landroid/net/Uri;

    invoke-virtual {p1, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_HOMEAPPS:Landroid/net/Uri;

    const-string v7, "profileId=? AND intent like ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_HOMEAPPS:Landroid/net/Uri;

    const-string v7, "itemType =? and iconPackage =?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    sget-object v10, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SHORTCUT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "LauncherService"

    const-string v7, "This log is not bug"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doPackageUpdate(Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 44

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/launcher/services/LauncherService;->mLauncherApps:Landroid/content/pm/LauncherApps;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/launcher/services/LauncherService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v14

    new-instance v43, Ljava/util/HashMap;

    invoke-direct/range {v43 .. v43}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const/4 v9, 0x3

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-string v10, "intent"

    aput-object v10, v6, v9

    const/4 v9, 0x2

    const-string v10, "profileId"

    aput-object v10, v6, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "profileId=? AND intent like ? AND itemType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x2

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v11, 0x25

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/16 v29, 0x0

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    if-eqz v29, :cond_5

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_5

    const/16 v38, -0x1

    const/16 v37, -0x1

    sget-object v9, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    invoke-virtual {v5, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    const-string v9, "intent"

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    :goto_2
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v37

    invoke-direct {v0, v5, v1, v2}, Lcom/sec/android/app/launcher/services/LauncherService;->getComponentName(Landroid/net/Uri;Landroid/database/Cursor;I)Landroid/content/ComponentName;

    move-result-object v28

    if-eqz v28, :cond_2

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/services/LauncherService;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v9

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v9

    :catch_0
    move-exception v30

    const-string v9, "LauncherService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot retrieve activities for unrelated profile UserHandl : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v30

    const-string v9, "LauncherService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doPackageUpdate Error from activity list : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    const/4 v9, 0x3

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-string v10, "componentName"

    aput-object v10, v6, v9

    const/4 v9, 0x2

    const-string v10, "profileId"

    aput-object v10, v6, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "profileId=? AND componentName like ? AND itemType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x2

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto/16 :goto_1

    :cond_4
    :try_start_2
    const-string v9, "_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    const-string v9, "componentName"

    move-object/from16 v0, v29

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    goto/16 :goto_2

    :cond_5
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_9

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_6
    :goto_3
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    move-object/from16 v0, v41

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_7
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/ComponentName;

    invoke-virtual/range {v39 .. v39}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v41

    invoke-virtual {v13, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v40, 0x1

    :cond_8
    if-nez v40, :cond_6

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_9
    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->getInstance()Lcom/sec/android/app/launcher/data/IconBitmapCache;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->removeBitmapByPackage(Ljava/lang/String;)V

    const-string v9, "LauncherService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doPackageUpdate, isHomeOnlyMode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "LauncherService"

    const-string v10, "doPackageUpdate  add"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v4, v5, v1}, Lcom/sec/android/app/launcher/services/LauncherService;->removeComponent(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/HashMap;)V

    :cond_a
    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "LauncherService"

    const-string v10, "doPackageUpdate  update"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v10, p0

    move-object v11, v4

    move-object v12, v5

    invoke-direct/range {v10 .. v15}, Lcom/sec/android/app/launcher/services/LauncherService;->updateComponent(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/HashMap;J)V

    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "LauncherService"

    const-string v10, "doPackageUpdate  add"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_c

    sget-object v9, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    invoke-virtual {v5, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_4
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v39, v42

    check-cast v39, Landroid/content/pm/LauncherActivityInfo;

    const-string v7, "profileId=? AND intent like ? "

    const/4 v9, 0x2

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "%component="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v39 .. v39}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";end"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v5, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    :cond_c
    move-object/from16 v16, p0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-wide/from16 v20, v14

    move/from16 v22, p3

    invoke-direct/range {v16 .. v22}, Lcom/sec/android/app/launcher/services/LauncherService;->addComponent(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/ArrayList;JZ)V

    :cond_d
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    const/16 v27, 0x0

    move-object/from16 v21, p0

    move-object/from16 v22, v4

    move-object/from16 v23, p1

    move-wide/from16 v24, v14

    invoke-direct/range {v21 .. v27}, Lcom/sec/android/app/launcher/services/LauncherService;->updateHomeDb(Landroid/content/ContentResolver;Ljava/lang/String;JLjava/util/List;Z)V

    goto/16 :goto_0
.end method

.method private doPackageUpdateWidget(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.sec.android.widget.myeventwidget"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mWidgetUpdateItems:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mWidgetUpdateItems:Ljava/util/ArrayList;

    :cond_2
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mWidgetUpdateItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mWidgetUpdateItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mServiceHandler:Lcom/sec/android/app/launcher/services/LauncherService$ServiceHandler;

    iget-object v2, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mWidgetUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/services/LauncherService$ServiceHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mServiceHandler:Lcom/sec/android/app/launcher/services/LauncherService$ServiceHandler;

    iget-object v2, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mWidgetUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/android/app/launcher/services/LauncherService$ServiceHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private doPackageUpdateWidget(Ljava/util/List;Landroid/util/Pair;)V
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/launcher/services/LauncherService;->findMatchWidgets(Ljava/util/List;Landroid/util/Pair;)Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/launcher/services/LauncherService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/os/UserHandle;

    invoke-virtual {v7, v5}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v14

    new-instance v41, Ljava/util/HashMap;

    invoke-direct/range {v41 .. v41}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v5

    const/4 v5, 0x1

    const-string v7, "componentName"

    aput-object v7, v6, v5

    const/4 v5, 0x2

    const-string v7, "themeName"

    aput-object v7, v6, v5

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v5

    const/4 v7, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/%"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v7

    const/16 v29, 0x0

    :try_start_0
    sget-object v5, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "profileId=? AND componentName like ?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    if-eqz v29, :cond_3

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_3

    const-string v5, "_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    const-string v5, "componentName"

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    const-string v5, "themeName"

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    :goto_1
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/launcher/services/LauncherService;->findWidget(Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v41

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v5

    :cond_3
    :try_start_1
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_4
    :goto_2
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    const/16 v39, 0x0

    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_5
    :goto_3
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/ComponentName;

    move-object/from16 v0, v40

    instance-of v5, v0, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-eqz v5, :cond_6

    move-object/from16 v0, v40

    check-cast v0, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v34

    :goto_4
    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v13, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v39, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, v40

    instance-of v5, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v5, :cond_7

    move-object/from16 v0, v40

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    move-object v5, v0

    iget-object v0, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v34, v0

    goto :goto_4

    :cond_7
    new-instance v34, Landroid/content/ComponentName;

    move-object/from16 v0, v40

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v40

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-direct {v0, v7, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    if-nez v39, :cond_4

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :cond_9
    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-virtual/range {v41 .. v41}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "LauncherService"

    const-string v7, "WidgetsProvider  remove"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v4, v5, v1}, Lcom/sec/android/app/launcher/services/LauncherService;->removeComponent(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/HashMap;)V

    :cond_a
    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "LauncherService"

    const-string v7, "WidgetsProvider  update"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v12, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v10, p0

    move-object v11, v4

    invoke-direct/range {v10 .. v15}, Lcom/sec/android/app/launcher/services/LauncherService;->updateComponent(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/HashMap;J)V

    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "LauncherService"

    const-string v7, "WidgetsProvider  add"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v18, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->CONTENT_URI:Landroid/net/Uri;

    const/16 v22, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, v4

    move-wide/from16 v20, v14

    invoke-direct/range {v16 .. v22}, Lcom/sec/android/app/launcher/services/LauncherService;->addComponent(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/ArrayList;JZ)V

    :cond_c
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    const/16 v27, 0x1

    move-object/from16 v21, p0

    move-object/from16 v22, v4

    move-wide/from16 v24, v14

    invoke-direct/range {v21 .. v27}, Lcom/sec/android/app/launcher/services/LauncherService;->updateHomeDb(Landroid/content/ContentResolver;Ljava/lang/String;JLjava/util/List;Z)V

    goto/16 :goto_0
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Landroid/content/pm/LauncherActivityInfo;

    if-eqz v4, :cond_2

    move-object v1, v2

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static findEmptyCell(Landroid/content/Context;Landroid/graphics/Point;IIZ[[Z)Landroid/graphics/Point;
    .locals 11

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageColumns()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageRows()I

    move-result v1

    if-eqz p4, :cond_3

    const/4 v8, -0x1

    const/4 v9, -0x1

    mul-int v10, v0, v1

    add-int/lit8 v7, v10, -0x1

    const/4 v2, 0x0

    move v2, v7

    :goto_0
    const/4 v10, -0x1

    if-le v2, v10, :cond_0

    rem-int v8, v2, v0

    div-int v9, v2, v0

    aget-object v10, p5, v8

    aget-boolean v10, v10, v9

    if-eqz v10, :cond_1

    :cond_0
    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    mul-int v10, v9, v0

    add-int/2addr v10, v8

    add-int/lit8 v6, v10, 0x1

    if-le v6, v7, :cond_2

    const/4 v10, 0x0

    :goto_1
    return-object v10

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    rem-int v10, v6, v0

    iput v10, p1, Landroid/graphics/Point;->x:I

    div-int v10, v6, v0

    iput v10, p1, Landroid/graphics/Point;->y:I

    :cond_3
    iget v9, p1, Landroid/graphics/Point;->y:I

    :goto_2
    sub-int v10, v1, p3

    if-gt v9, v10, :cond_a

    iget v8, p1, Landroid/graphics/Point;->x:I

    :goto_3
    sub-int v10, v0, p2

    if-gt v8, v10, :cond_9

    aget-object v10, p5, v8

    aget-boolean v10, v10, v9

    if-nez v10, :cond_8

    const/4 v4, 0x0

    move v3, v8

    :goto_4
    add-int v10, v8, p2

    if-ge v3, v10, :cond_5

    move v5, v9

    :goto_5
    add-int v10, v9, p3

    if-ge v5, v10, :cond_4

    aget-object v10, p5, v3

    aget-boolean v10, v10, v5

    if-eqz v10, :cond_6

    const/4 v4, 0x1

    :cond_4
    if-eqz v4, :cond_7

    :cond_5
    if-nez v4, :cond_8

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_a
    const/4 v10, 0x0

    goto :goto_1
.end method

.method private findMatchWidgets(Ljava/util/List;Landroid/util/Pair;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ">;)",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v6, v3, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-eqz v6, :cond_1

    move-object v6, v3

    check-cast v6, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-virtual {v6}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_0

    iget-object v6, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v6, :cond_0

    iget-object v6, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/os/UserHandle;

    invoke-virtual {v6, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v6, v3, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v6, :cond_2

    move-object v6, v3

    check-cast v6, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v6, v3

    check-cast v6, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v5

    iget-object v6, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_0

    iget-object v6, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v6, :cond_0

    iget-object v6, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/os/UserHandle;

    invoke-virtual {v6, v5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v6, v3

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_0

    iget-object v6, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v6, :cond_0

    iget-object v6, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/os/UserHandle;

    invoke-virtual {v6, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-object v1
.end method

.method public static findVacantCell(Landroid/content/Context;ZZ)[I
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/launcher/services/LauncherService;->findVacantCell(Landroid/content/Context;ZZIIZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized findVacantCell(Landroid/content/Context;ZZIIZ)[I
    .locals 34

    const-class v33, Lcom/sec/android/app/launcher/services/LauncherService;

    monitor-enter v33

    const/4 v2, 0x3

    :try_start_0
    new-array v0, v2, [I

    move-object/from16 v19, v0

    const/16 v17, 0x0

    const/16 v30, -0x1

    const/16 v18, -0x1

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getContainerMap(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v15

    if-eqz p2, :cond_6

    invoke-virtual {v15}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v24

    :goto_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getHomeScreenIndex()I

    move-result v16

    move/from16 v20, v16

    if-eqz p5, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v25

    if-eqz v25, :cond_1

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v20

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->ZERO_PAGENUM:I

    add-int v20, v20, v2

    :cond_0
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move/from16 v20, v16

    :cond_1
    if-nez p2, :cond_3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v30, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/services/LauncherService;->getItemsInLocalCoordinates(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/services/LauncherService;->buildOccupiedCellList(Landroid/content/Context;Ljava/util/ArrayList;)[[Z

    move-result-object v7

    new-instance v3, Landroid/graphics/Point;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/launcher/services/LauncherService;->findEmptyCell(Landroid/content/Context;Landroid/graphics/Point;IIZ[[Z)Landroid/graphics/Point;

    move-result-object v17

    if-nez v17, :cond_2

    const/16 v30, -0x1

    :cond_2
    if-gez v30, :cond_3

    move/from16 v0, v20

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v30, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/services/LauncherService;->getItemsInLocalCoordinates(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/services/LauncherService;->buildOccupiedCellList(Landroid/content/Context;Ljava/util/ArrayList;)[[Z

    move-result-object v7

    new-instance v3, Landroid/graphics/Point;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/launcher/services/LauncherService;->findEmptyCell(Landroid/content/Context;Landroid/graphics/Point;IIZ[[Z)Landroid/graphics/Point;

    move-result-object v17

    if-nez v17, :cond_3

    const/16 v30, -0x1

    :cond_3
    if-gez v30, :cond_8

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_4
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v26

    if-eqz p2, :cond_5

    move/from16 v0, v26

    move/from16 v1, v16

    if-le v0, v1, :cond_4

    :cond_5
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v30, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/services/LauncherService;->getItemsInLocalCoordinates(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v23

    if-eqz p2, :cond_7

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_7

    move/from16 v18, v22

    goto :goto_1

    :cond_6
    invoke-virtual {v15}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v24

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/services/LauncherService;->buildOccupiedCellList(Landroid/content/Context;Ljava/util/ArrayList;)[[Z

    move-result-object v7

    new-instance v3, Landroid/graphics/Point;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/launcher/services/LauncherService;->findEmptyCell(Landroid/content/Context;Landroid/graphics/Point;IIZ[[Z)Landroid/graphics/Point;

    move-result-object v17

    if-nez v17, :cond_8

    if-eqz p2, :cond_4

    :cond_8
    const/4 v15, 0x0

    if-nez v17, :cond_d

    if-eqz p2, :cond_9

    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_9

    const/4 v2, 0x0

    aput v18, v19, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v19, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v19, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    monitor-exit v33

    return-object v19

    :cond_9
    if-eqz p1, :cond_c

    const/4 v14, 0x0

    const/16 v31, 0x0

    :try_start_1
    sget-object v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "0,1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    :try_start_2
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v10, 0x0

    sget-object v11, Lcom/sec/android/app/launcher/services/LauncherService;->CLAUSE_DESKTOP:Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "pageOrder DESC"

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, v32

    invoke-static {v14, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_a
    :try_start_4
    invoke-static {v14}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    if-eqz v32, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v2, "pageOrder"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v27

    const-string v2, "_id"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v2, "name"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v2, "bufferSize"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v2, "channel"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v2, "emptyPage"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "pageOrder"

    add-int/lit8 v3, v27, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v29

    if-nez v29, :cond_b

    const-string v2, "LauncherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findVacantCell createPage. result is null. pageOrder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    :goto_3
    invoke-static {v14}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v33

    throw v2

    :cond_b
    const/4 v2, 0x0

    :try_start_5
    invoke-static/range {v29 .. v29}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    long-to-int v3, v4

    aput v3, v19, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v19, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v19, v2

    goto/16 :goto_2

    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v2, 0x0

    aput v30, v19, v2

    const/4 v2, 0x1

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Point;->x:I

    aput v3, v19, v2

    const/4 v2, 0x2

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Point;->y:I

    aput v3, v19, v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    :catchall_2
    move-exception v2

    move-object/from16 v31, v32

    goto :goto_3
.end method

.method private static findWidget(Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    move v4, v6

    :goto_0
    return v4

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-virtual {v4}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    check-cast v3, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-virtual {v3}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getThemeName()Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_3

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v2, :cond_2

    move v4, v5

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_4
    instance-of v4, v3, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v4, :cond_5

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_5
    new-instance v1, Landroid/content/ComponentName;

    move-object v4, v3

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v4, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_6
    move v4, v6

    goto :goto_0
.end method

.method private forceRefreshTitleAndIcon()V
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v7}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, v4, v5, v8}, Lcom/sec/android/app/launcher/services/LauncherService;->loadAllItems(Landroid/content/ContentResolver;JZ)Ljava/util/HashMap;

    move-result-object v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/services/LauncherService;->updateComponent(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/HashMap;J)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v4, v5, v0}, Lcom/sec/android/app/launcher/services/LauncherService;->loadAllItems(Landroid/content/ContentResolver;JZ)Ljava/util/HashMap;

    move-result-object v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/services/LauncherService;->updateComponent(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/HashMap;J)V

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, v4, v5, v8}, Lcom/sec/android/app/launcher/services/LauncherService;->loadAllItems(Landroid/content/ContentResolver;JZ)Ljava/util/HashMap;

    move-result-object v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/services/LauncherService;->updateComponent(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/HashMap;J)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/services/LauncherService;->updateTitleChangeInWidgetList()V

    return-void
.end method

.method private getComponentName(Landroid/net/Uri;Landroid/database/Cursor;I)Landroid/content/ComponentName;
    .locals 5

    const/4 v3, 0x0

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v2, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_0
.end method

.method private static getContainerMap(Landroid/content/Context;)Ljava/util/TreeMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "pageOrder"

    aput-object v4, v2, v3

    sget-object v3, Lcom/sec/android/app/launcher/services/LauncherService;->CLAUSE_DESKTOP:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "pageOrder ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v0, "pageOrder"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v9

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getInstalledWidgets()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v10}, Lcom/sec/android/app/launcher/utils/Utils;->getInstalledProviders(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v11, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->INST:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->getWidgetItems(Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v5, v7, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.appwidget.action.EASY_MODE"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x80

    invoke-virtual {v5, v3, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    :goto_0
    if-ltz v2, :cond_4

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v11, v4, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v11, :cond_3

    move-object v8, v4

    check-cast v8, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0, v1, v8}, Lcom/sec/android/app/launcher/services/LauncherService;->isWidgetInResolveList(Ljava/util/List;Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v9, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget v11, v8, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-lez v11, :cond_2

    iget v11, v8, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-gtz v11, :cond_0

    :cond_2
    invoke-interface {v9, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    instance-of v11, v4, Landroid/content/pm/ResolveInfo;

    if-eqz v11, :cond_0

    move-object v6, v4

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v11, :cond_0

    invoke-interface {v9, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-object v9
.end method

.method private static getItemsInLocalCoordinates(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/launcher/services/LauncherService$SimpleItem;",
            ">;"
        }
    .end annotation

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "itemType"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "cellX"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "cellY"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "spanX"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "spanY"

    aput-object v4, v2, v3

    const-string v3, "(show=1 or show is null) and container=? and containerId=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v14, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v14}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const-string v1, "cellX"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v1, "cellY"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v1, "spanX"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v1, "spanY"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v10, Lcom/sec/android/app/launcher/services/LauncherService$SimpleItem;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lcom/sec/android/app/launcher/services/LauncherService$SimpleItem;-><init>(Lcom/sec/android/app/launcher/services/LauncherService$1;)V

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v10, Lcom/sec/android/app/launcher/services/LauncherService$SimpleItem;->cellX:I

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v10, Lcom/sec/android/app/launcher/services/LauncherService$SimpleItem;->cellY:I

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v10, Lcom/sec/android/app/launcher/services/LauncherService$SimpleItem;->spanX:I

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v10, Lcom/sec/android/app/launcher/services/LauncherService$SimpleItem;->spanY:I

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v11

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getThemeName(Landroid/net/Uri;Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v2, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "com.samsung.sec.android.SURFACE_WIDGET.themename"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method private isWidgetInResolveList(Ljava/util/List;Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ")Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private loadAllItems(Landroid/content/ContentResolver;JZ)Ljava/util/HashMap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "JZ)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p4, :cond_1

    :try_start_0
    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v13, v2

    const/4 v2, 0x1

    const-string v6, "intent"

    aput-object v6, v13, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "profileId="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "itemType"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x3d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    move-object v4, v13

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    :try_start_2
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v12, -0x1

    const/4 v11, -0x1

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    invoke-virtual {v3, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v2, "intent"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    :cond_0
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9, v11}, Lcom/sec/android/app/launcher/services/LauncherService;->getComponentName(Landroid/net/Uri;Landroid/database/Cursor;I)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v14, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :goto_2
    invoke-static {v9}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v2

    :cond_1
    :try_start_3
    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v13, v2

    const/4 v2, 0x1

    const-string v6, "componentName"

    aput-object v6, v13, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "profileId="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "itemType"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x3d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v5

    move-object v4, v13

    goto/16 :goto_0

    :cond_2
    :try_start_5
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v2, "componentName"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v11

    goto :goto_1

    :cond_3
    invoke-static {v9}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    return-object v14

    :catchall_1
    move-exception v2

    move-object v4, v13

    goto :goto_2
.end method

.method private removeComponent(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ","

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id in ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, p2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private removeManagedProfile()V
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isKnoxMode()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mUserManager:Landroid/os/UserManager;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    invoke-virtual {v6, v5}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_1

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "profileId not in ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "profileId not in ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v5, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "profileId not in ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private restoreHomescreen(Landroid/content/Intent;)V
    .locals 4

    const-string v3, "SAVE_PATH"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "SOURCE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SESSION_KEY"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v2, v1}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->RestoreLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unbindWidget(Landroid/content/Intent;)V
    .locals 6

    const-string v3, "appWidgetId"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appWidgetId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v2, Landroid/appwidget/AppWidgetHost;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    :cond_0
    return-void
.end method

.method private updateComponent(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/HashMap;J)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    sget-object v10, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "packageUpdate"

    const-string v12, "true"

    invoke-virtual {v10, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    const-string v10, "profileId"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    instance-of v10, v6, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v10, :cond_0

    move-object v4, v6

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getSpanCalculater()Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v1

    const-string v10, "spanX"

    const/4 v11, 0x0

    aget v11, v1, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "spanY"

    const/4 v11, 0x1

    aget v11, v1, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v10, "_id=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateHomeDb(Landroid/content/ContentResolver;Ljava/lang/String;JLjava/util/List;Z)V
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<*>;Z)V"
        }
    .end annotation

    const/4 v7, 0x0

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const/4 v9, 0x4

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v38, "_id"

    aput-object v38, v6, v9

    const/4 v9, 0x1

    const-string v38, "intent"

    aput-object v38, v6, v9

    const/4 v9, 0x2

    const-string v38, "profileId"

    aput-object v38, v6, v9

    const/4 v9, 0x3

    const-string v38, "appWidgetId"

    aput-object v38, v6, v9

    if-eqz p6, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "profileId=? AND intent like ? AND itemType IN ("

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v38, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v38

    move/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v38, ","

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v38, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SURFACE_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v38

    move/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v38, ","

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v38, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_WIDGET_CLOCK:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v38

    move/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v38, ","

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v38, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_WIDGET_SEARCH:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v38

    move/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v38, ","

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v38, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_WIDGET_PHOTO_FRAME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v38

    move/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v38, ")"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    const/4 v9, 0x2

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v38

    aput-object v38, v8, v9

    const/4 v9, 0x1

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v39, 0x25

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "/%"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    aput-object v38, v8, v9

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v13, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    if-eqz v13, :cond_8

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_8

    const-string v9, "_id"

    invoke-interface {v13, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    const-string v9, "intent"

    invoke-interface {v13, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    const-string v9, "appWidgetId"

    invoke-interface {v13, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    :cond_0
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_8

    move/from16 v0, v23

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v0, v24

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v5, v13, v1}, Lcom/sec/android/app/launcher/services/LauncherService;->getComponentName(Landroid/net/Uri;Landroid/database/Cursor;I)Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_0

    if-eqz p6, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v5, v13, v1}, Lcom/sec/android/app/launcher/services/LauncherService;->getThemeName(Landroid/net/Uri;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p5

    move-object/from16 v1, v31

    invoke-static {v0, v12, v1}, Lcom/sec/android/app/launcher/services/LauncherService;->findWidget(Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "com.samsung.android.snote/.control.ui.quickmemo.quickmemowidget.PushAndAttachWidget"

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v10, Landroid/content/Intent;

    const-string v9, "ACTION_FOR_PUSH_AND_ATTACH_WIDGET"

    invoke-direct {v10, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v38, 0x80

    move/from16 v0, v38

    invoke-virtual {v9, v10, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    const/16 v35, 0x0

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object/from16 v0, v25

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v35, 0x1

    :cond_2
    if-nez v35, :cond_3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v12, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v38

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v9

    invoke-static {v13}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v9

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "profileId=? AND intent like ? AND itemType IN ("

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v38, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v38

    move/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v38, 0x2c

    move/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v38, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SHORTCUT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v38

    move/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v38, 0x29

    move/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object/from16 v0, p5

    invoke-static {v0, v12}, Lcom/sec/android/app/launcher/services/LauncherService;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-nez v9, :cond_3

    const/4 v15, 0x0

    const/16 v33, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/launcher/services/LauncherService;->mUserManager:Landroid/os/UserManager;

    move-wide/from16 v0, p3

    invoke-virtual {v9, v0, v1}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v33

    if-eqz v33, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/launcher/services/LauncherService;->mLauncherApps:Landroid/content/pm/LauncherApps;

    move-object/from16 v0, v33

    invoke-virtual {v9, v12, v0}, Landroid/content/pm/LauncherApps;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v15

    :cond_7
    :goto_3
    if-nez v15, :cond_3

    :try_start_3
    const-string v9, "LauncherService"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " disabled. remove~"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :catch_0
    move-exception v14

    const-string v9, "LauncherService"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "updateHomeDb Cannot retrieve activities for unrelated profile UserHandle : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v14

    const-string v9, "LauncherService"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "updateHomeDb Error from activity list : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " - "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_e

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_a
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/util/Pair;

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/ComponentName;

    const/16 v20, 0x0

    move-object/from16 v0, v26

    instance-of v9, v0, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-eqz v9, :cond_c

    :cond_b
    :goto_5
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v38

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_c
    move-object/from16 v0, v26

    instance-of v9, v0, Landroid/content/pm/ResolveInfo;

    if-nez v9, :cond_b

    move-object/from16 v0, v26

    instance-of v9, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v9, :cond_d

    move-object/from16 v0, v26

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    move-object v9, v0

    iget-object v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    goto :goto_5

    :cond_d
    move-object/from16 v0, v26

    instance-of v9, v0, Landroid/content/pm/LauncherActivityInfo;

    if-eqz v9, :cond_b

    move-object/from16 v0, v26

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v20

    goto :goto_5

    :cond_e
    invoke-static {v13}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_f

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    const-string v9, "_id=?"

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v9, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_6

    :cond_f
    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_12

    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v37

    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_10
    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/util/Pair;

    if-eqz v29, :cond_10

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v29

    iget-object v9, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move-object/from16 v0, v27

    instance-of v9, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v9, :cond_11

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v25

    if-nez v25, :cond_10

    const-string v9, "LauncherService"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "updateHomeDb, dbId : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " widgetId : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " will be deleted."

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "_id=?"

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v9, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_11
    move-object/from16 v0, v27

    instance-of v9, v0, Landroid/content/pm/LauncherActivityInfo;

    if-eqz v9, :cond_10

    invoke-virtual/range {v34 .. v34}, Landroid/content/ContentValues;->clear()V

    const-string v9, "profileId"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "LauncherService"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "updateHomeDb, dbId : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " will be updated."

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_UPDATE:Landroid/net/Uri;

    const-string v38, "_id=?"

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v41

    aput-object v41, v39, v40

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_12
    return-void
.end method


# virtual methods
.method public deleteShortcutInfo(Landroid/content/Intent;)V
    .locals 19

    const-string v3, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/content/Intent;

    const-string v3, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v8, ","

    if-eqz v15, :cond_2

    if-eqz v17, :cond_2

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "intent"

    aput-object v6, v4, v5

    const-string v5, "title=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v17, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    const-string v3, "intent"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    const-string v3, "_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :try_start_1
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    if-lez v12, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id in ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    return-void

    :catchall_0
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public doPackageDelete(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/launcher/services/LauncherService;->deletePackageFromDb(Landroid/net/Uri;Ljava/lang/String;Landroid/os/UserHandle;)V

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/launcher/services/LauncherService;->deletePackageFromDb(Landroid/net/Uri;Ljava/lang/String;Landroid/os/UserHandle;)V

    sget-object v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/launcher/services/LauncherService;->deletePackageFromDb(Landroid/net/Uri;Ljava/lang/String;Landroid/os/UserHandle;)V

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_HOMEAPPS:Landroid/net/Uri;

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/launcher/services/LauncherService;->deletePackageFromDb(Landroid/net/Uri;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public insertShortcutInfo(Landroid/content/Intent;)V
    .locals 20

    const-string v6, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/content/Intent;

    const-string v6, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v6, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v14, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->RESOURCE:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    instance-of v6, v8, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    sget-object v14, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->BITMAP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    check-cast v8, Landroid/graphics/Bitmap;

    invoke-static {v8, v2}, Lcom/sec/android/app/launcher/utils/Utils;->createIconBitmapToShortcut(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v7, v0}, Lcom/sec/android/app/launcher/services/LauncherService;->findVacantCell(Landroid/content/Context;ZZ)[I

    move-result-object v11

    if-nez v11, :cond_2

    const-string v6, "LauncherService"

    const-string v7, "insertShortcutInfo(), findVacantCell is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    sget-object v14, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->RESOURCE:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    const-string v6, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    instance-of v6, v10, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v6, :cond_0

    move-object v13, v10

    check-cast v13, Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_0
    iget-object v6, v13, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget-object v6, v13, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v4, v6, v7, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Utils;->getIconWidth(Landroid/content/Context;)I

    move-result v6

    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Utils;->getIconHeight(Landroid/content/Context;)I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/launcher/utils/Utils;->loadBitmap(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    sget-object v18, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "itemType"

    sget-object v7, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SHORTCUT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "container"

    sget-object v7, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "containerId"

    const/4 v7, 0x0

    aget v7, v11, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "cellX"

    const/4 v7, 0x1

    aget v7, v11, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "cellY"

    const/4 v7, 0x2

    aget v7, v11, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "spanX"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "spanY"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "title"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "intent"

    if-nez v15, :cond_4

    const/4 v6, 0x0

    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "iconType"

    invoke-virtual {v14}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->RESOURCE:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    if-ne v14, v6, :cond_3

    if-eqz v13, :cond_3

    const-string v6, "iconPackage"

    iget-object v7, v13, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "iconResource"

    iget-object v7, v13, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v12, :cond_5

    const-string v6, "icon"

    invoke-static {v12}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :goto_3
    const-string v6, "show"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const/4 v6, 0x0

    sput-object v6, Lcom/sec/android/app/launcher/receivers/InstallShortcutReceiver;->PrevShortcutName:Ljava/lang/String;

    const/4 v6, 0x0

    sput-object v6, Lcom/sec/android/app/launcher/receivers/InstallShortcutReceiver;->PrevShortcutIntent:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_5
    const-string v6, "icon"

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mBinder:Landroid/os/Binder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LauncherService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mServiceLooper:Landroid/os/Looper;

    new-instance v1, Lcom/sec/android/app/launcher/services/LauncherService$ServiceHandler;

    iget-object v2, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/launcher/services/LauncherService$ServiceHandler;-><init>(Lcom/sec/android/app/launcher/services/LauncherService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mServiceHandler:Lcom/sec/android/app/launcher/services/LauncherService$ServiceHandler;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14

    const/4 v13, 0x0

    if-nez p1, :cond_1

    const-string v10, "LauncherService"

    const-string v11, "onHandleIntent(), intent is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez v10, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "launcherapps"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/LauncherApps;

    iput-object v10, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mLauncherApps:Landroid/content/pm/LauncherApps;

    :cond_2
    iget-object v10, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mUserManager:Landroid/os/UserManager;

    if-nez v10, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    iput-object v10, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mUserManager:Landroid/os/UserManager;

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v10, "LauncherService"

    const-string v11, "onHandleIntent(), action is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "extra_user"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "extra_user"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserHandle;

    :cond_5
    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isKnoxMode()Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v9, :cond_6

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "LauncherService"

    const-string v11, "onHandleIntent(), user is not knox user"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    if-nez v9, :cond_8

    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_7
    const-string v10, "LauncherService"

    const-string v11, "onHandleIntent(), user is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string v10, "extra_packagename"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-boolean v10, Lcom/sec/android/app/launcher/services/LauncherService;->DEBUGGABLE:Z

    if-eqz v10, :cond_9

    const-string v10, "LauncherService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LauncherService.onHandleIntent("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v10, "com.sec.android.launcher.action.BIND_WIDGET"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/services/LauncherService;->bindWidget(Landroid/content/Intent;)V

    :cond_a
    :goto_1
    const-string v10, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-direct {p0}, Lcom/sec/android/app/launcher/services/LauncherService;->addManagedProfile()V

    goto/16 :goto_0

    :cond_b
    const-string v10, "com.sec.android.launcher.action.UNBIND_WIDGET"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/services/LauncherService;->unbindWidget(Landroid/content/Intent;)V

    goto :goto_1

    :cond_c
    const-string v10, "com.sec.android.intent.action.FORCE_REFRESH"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-direct {p0}, Lcom/sec/android/app/launcher/services/LauncherService;->forceRefreshTitleAndIcon()V

    goto :goto_1

    :cond_d
    const-string v10, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/services/LauncherService;->deleteShortcutInfo(Landroid/content/Intent;)V

    goto :goto_1

    :cond_e
    const-string v10, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/services/LauncherService;->insertShortcutInfo(Landroid/content/Intent;)V

    goto :goto_1

    :cond_f
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    :cond_10
    if-eqz v5, :cond_11

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_12

    :cond_11
    const-string v10, "LauncherService"

    const-string v11, "ACTION_PACKAGE_ADDED, ACTION_PACKAGE_CHANGED, but packageName is null, empty"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_12
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v8

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_13

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "extra_cue"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "extra_cue"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :cond_13
    invoke-direct {p0, v5, v9, v8}, Lcom/sec/android/app/launcher/services/LauncherService;->doPackageUpdate(Ljava/lang/String;Landroid/os/UserHandle;Z)V

    invoke-direct {p0, v5, v9}, Lcom/sec/android/app/launcher/services/LauncherService;->doPackageUpdateWidget(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    :cond_14
    const-string v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    const-string v10, "extra_packagename"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v9}, Lcom/sec/android/app/launcher/services/LauncherService;->doPackageDelete(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    :cond_15
    const-string v10, "com.android.launcher.action.EVENT_THEME"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    const-string v10, "EVENT_THEME_ENABLE"

    invoke-virtual {p1, v10, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v10, "EVENT_THEME_PRELOAD"

    invoke-virtual {p1, v10, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getEventThemeManager()Lcom/sec/android/app/launcher/theme/EventThemeManager;

    move-result-object v10

    invoke-virtual {v10, v2, v7}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->createEventTheme(ZZ)V

    goto/16 :goto_1

    :cond_16
    const-string v10, "com.sec.sprextension.FORCE_LAUNCHER_REFRESH"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->setSystemPropertyForSprintExt()V

    const-string v10, "LauncherService"

    const-string v11, "Launcher killProcess"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v10, Lcom/sec/android/app/launcher/services/LauncherService$1;

    invoke-direct {v10, p0}, Lcom/sec/android/app/launcher/services/LauncherService$1;-><init>(Lcom/sec/android/app/launcher/services/LauncherService;)V

    invoke-virtual {v4, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_17
    const-string v10, "com.sec.android.intent.action.REQUEST_BACKUP_HOMESCREEN"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/services/LauncherService;->backupHomescreen(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_18
    const-string v10, "com.sec.android.intent.action.REQUEST_RESTORE_HOMESCREEN"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/services/LauncherService;->restoreHomescreen(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_19
    const-string v10, "com.samsung.intent.action.CSC_CHAMELEON_UPDATE_LAUNCHER"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    const-string v10, "LauncherService"

    const-string v11, "Delete DB and restart due to receiving Chameleon update"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "launcher.db"

    invoke-virtual {v10, v11}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "pagesettings.db"

    invoke-virtual {v10, v11}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v10, Lcom/sec/android/app/launcher/services/LauncherService$2;

    invoke-direct {v10, p0}, Lcom/sec/android/app/launcher/services/LauncherService$2;-><init>(Lcom/sec/android/app/launcher/services/LauncherService;)V

    invoke-virtual {v4, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_1a
    const-string v10, "android.intent.action.STK_TITLE_IS_LOADED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    sget-boolean v10, Lcom/sec/android/app/launcher/services/LauncherService;->DEBUGGABLE:Z

    if-eqz v10, :cond_1b

    const-string v10, "LauncherService"

    const-string v11, "STK Refresh : intent recieved by launcher model"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Launcher_FixedStkTitleAs"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "gsm.STK_SETUP_MENU"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1c

    const-string v10, "NoSIM%"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    :cond_1c
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_1d

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    :cond_1d
    invoke-direct {p0}, Lcom/sec/android/app/launcher/services/LauncherService;->forceRefreshTitleAndIcon()V

    goto/16 :goto_1

    :cond_1e
    const-string v10, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/services/LauncherService;->removeManagedProfile()V

    goto/16 :goto_0
.end method

.method public declared-synchronized onStart(Landroid/content/Intent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mServiceHandler:Lcom/sec/android/app/launcher/services/LauncherService$ServiceHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/services/LauncherService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, -0x3e8

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mServiceHandler:Lcom/sec/android/app/launcher/services/LauncherService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/services/LauncherService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mServiceHandler:Lcom/sec/android/app/launcher/services/LauncherService$ServiceHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/services/LauncherService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/launcher/services/LauncherService;->mServiceHandler:Lcom/sec/android/app/launcher/services/LauncherService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/services/LauncherService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateTitleChangeInWidgetList()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/services/LauncherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "updateLanguage"

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
