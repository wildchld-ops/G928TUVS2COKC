.class public Lcom/android/server/epm/overlay/OverlayManagerService;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"

# interfaces
.implements Lcom/android/server/epm/IPluginHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;
    }
.end annotation


# static fields
.field private static final DEBUG_ELASTIC:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field final ACTION_EVENT_OCCUR:Ljava/lang/String;

.field final ACTION_EVEN_ENDED:Ljava/lang/String;

.field private KEY_VALUE:Ljava/lang/String;

.field private final SCROLL_THRESHOLD:F

.field private activeComponentMasterPackageArr:[Ljava/lang/String;

.field private activeComponentPackageArr:[Ljava/lang/String;

.field private componentOrder:[Ljava/lang/String;

.field private eventPackage:Ljava/lang/String;

.field public eventThemeMasterPackageName:Ljava/lang/String;

.field private expiryTime:I

.field mAlarmManager:Landroid/app/AlarmManager;

.field mCallback:Landroid/app/epm/IPluginManagerCallback;

.field private mContext:Landroid/content/Context;

.field private mInitX:F

.field private mInitY:F

.field private mMasterPackageName:Ljava/lang/String;

.field private mNoOfOverlays:I

.field private mOverlay:Ljava/io/File;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mView:Landroid/view/View;

.field private mViewClicked:Z

.field public mWallpaperName:Ljava/lang/String;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private masterDetailsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;",
            ">;"
        }
    .end annotation
.end field

.field private masterEventTimeDetails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;>;"
        }
    .end annotation
.end field

.field private masterPackageName:Ljava/lang/String;

.field private masterStatus:Z

.field private masterThemesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private masterVersion:Ljava/lang/String;

.field private overlayCount:I

.field private overlayTargetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private overlaysForuninstall:I

.field private phoneStyleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private selectedComponentPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/epm/overlay/OverlayManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/epm/overlay/OverlayManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/16 v5, 0x9

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "themes"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string/jumbo v2, "lock"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "home"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "lockscreenwallpaper"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "phonestyle"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "appicon"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "font"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "sound"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "event"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->componentOrder:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->eventPackage:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    const-string/jumbo v0, "theme.installer.action"

    iput-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->ACTION_EVENT_OCCUR:Ljava/lang/String;

    const-string/jumbo v0, "theme.uninstaller.action"

    iput-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->ACTION_EVEN_ENDED:Ljava/lang/String;

    iput v4, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->mNoOfOverlays:I

    iput v4, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->overlayCount:I

    iput-object v3, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->mOverlay:Ljava/io/File;

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->SCROLL_THRESHOLD:F

    iput-object v3, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->masterPackageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->masterVersion:Ljava/lang/String;

    iput v4, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->expiryTime:I

    const-string/jumbo v0, "value"

    iput-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->KEY_VALUE:Ljava/lang/String;

    iput v4, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->overlaysForuninstall:I

    iput-object v3, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->eventThemeMasterPackageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    sget-object v0, Lcom/android/server/epm/overlay/OverlayManagerService;->TAG:Ljava/lang/String;

    const-string v1, "OverlayManagerService constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/epm/overlay/OverlayManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->expiryTime:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/epm/overlay/OverlayManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/epm/overlay/OverlayManagerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->KEY_VALUE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/epm/overlay/OverlayManagerService;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private startExpiryTimerForUninstall(Ljava/lang/String;)V
    .locals 6

    const-string v2, "USER_TRIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USER_TRIAL -- startExpiryTimerForUninstall pkgName= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/android/server/epm/overlay/OverlayManagerService$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/epm/overlay/OverlayManagerService$1;-><init>(Lcom/android/server/epm/overlay/OverlayManagerService;Ljava/lang/String;Ljava/util/Timer;)V

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public changeThemeState(Ljava/lang/String;IZ)V
    .locals 0

    return-void
.end method

.method public copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x400

    new-array v0, v2, [B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getActiveComponents()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveFestivalPackage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveMyEvents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChineseFestivalList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponentPackageMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCoverAttachStatus(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentThemePackage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getData(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "store"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getDependencies(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPluginList()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v6, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->masterDetailsMap:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->masterDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->masterDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->masterDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mDesc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v2, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mStatus:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mCategory:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v2, Lcom/android/server/epm/overlay/OverlayManagerService$MasterDetails;->mStatus:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPreviousToCoverPackage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStateThemePackage(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTargetAppList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public installThemePackage(Landroid/net/Uri;Z)V
    .locals 0

    return-void
.end method

.method public isOnTrialMode(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isThemePackageExist(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBootCompleted()V
    .locals 0

    return-void
.end method

.method public onPluginDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPluginEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPluginInstalled(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPluginUninstalled(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public parseMetaData(Landroid/content/pm/PackageInfo;Z)V
    .locals 0

    return-void
.end method

.method public parsePlugins()V
    .locals 0

    return-void
.end method

.method public removeThemePackage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCallback(Landroid/app/epm/IPluginManagerCallback;)V
    .locals 3

    sget-object v0, Lcom/android/server/epm/overlay/OverlayManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCallback callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->mCallback:Landroid/app/epm/IPluginManagerCallback;

    return-void
.end method

.method public setStateThemePackage(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public storeData(Landroid/content/Context;I)V
    .locals 4

    const-string/jumbo v2, "store"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/epm/overlay/OverlayManagerService;->KEY_VALUE:Ljava/lang/String;

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
