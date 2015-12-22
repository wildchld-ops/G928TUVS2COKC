.class public Lcom/sec/android/app/launcher/activities/LauncherApp;
.super Landroid/app/Application;
.source "LauncherApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/LauncherApp$LauncherAppsCallback;
    }
.end annotation


# static fields
.field public static PERFORMANCE_TAG:Ljava/lang/String; = null

.field public static final PREFERENCES_FIRST_RUN:Ljava/lang/String; = "FirstRunVersion"

.field public static final PREFERENCES_HOME_ONLY_MODE:Ljava/lang/String; = "home_only_mode"

.field static final PREFERENCES_OPTIMIZATION_MODE:Ljava/lang/String; = "homescreen_optimization_mode"

.field static final PREFERENCES_SCREENINDEX:Ljava/lang/String; = "homescreenindex"

.field public static final PREFERENCES_UPDATE_FOTA:Ljava/lang/String; = "ExtraUpdateByFotaVersion"

.field public static RemovablePreloadEnabled:I = 0x0

.field public static SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD:Z = false

.field public static SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE:Z = false

.field private static TAG:Ljava/lang/String; = null

.field public static ZERO_PAGENUM:I = 0x0

.field private static mAppsDynamicGridChangeEnabled:Z = false

.field public static mAppsMemoryOptimiseLevel:I = 0x0

.field private static mBlurWallpaperModeEnabled:Z = false

.field private static mConnection:Landroid/content/ServiceConnection; = null

.field private static mDVFSEnabled:Z = false

.field private static mDynamicGridChangeEnabled:Z = false

.field private static mEventThemeManager:Lcom/sec/android/app/launcher/theme/EventThemeManager; = null

.field private static mEventThemeReceiver:Lcom/sec/android/app/launcher/receivers/EventThemeReceiver; = null

.field private static mFingerSwipeFeatureEnabled:Z = false

.field public static mHomeMemoryOptimiseLevel:I = 0x0

.field private static mHomeOnlyModeEnabled:Z = false

.field private static mIsSafeMode:Z = false

.field private static mIsServiceConnected:Z = false

.field static mLauncherService:Lcom/sec/android/app/launcher/services/LauncherService; = null

.field public static mLiveIconEnabled:Z = false

.field public static mMemoryOptimiseLevel:I = 0x0

.field private static mPackageChangeReceiver:Lcom/sec/android/app/launcher/receivers/PackageChangeReceiver; = null

.field private static mParallaxEffectModeEnabled:Z = false

.field private static mPowerSavingModeEnabled:Z = false

.field private static mRotationEnabled:Z = false

.field private static mService:Landroid/os/IBinder; = null

.field private static mTabletLayoutEnabled:Z = false

.field private static mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager; = null

.field private static final mUseLauncherAppsCallback:Z = true

.field private static mWeatherEffectModeEnabled:Z

.field private static mZeroPageFeatureEnabled:Z

.field private static mZeroPageListEnabled:Z

.field public static pendingServiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private static sInst:Lcom/sec/android/app/launcher/activities/LauncherApp;

.field private static sScreenIndex:I


# instance fields
.field private mHomeModeObserver:Landroid/database/ContentObserver;

.field private final mLauncherAppsCallback:Landroid/content/pm/LauncherApps$Callback;

.field private mLocale:Ljava/util/Locale;

.field private mSpanCalculator:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

.field public pendingIntentList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-class v0, Lcom/sec/android/app/launcher/activities/LauncherApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->TAG:Ljava/lang/String;

    const-string v0, "LauncherPerformance"

    sput-object v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->PERFORMANCE_TAG:Ljava/lang/String;

    sput v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mMemoryOptimiseLevel:I

    sput v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mHomeMemoryOptimiseLevel:I

    sput v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mAppsMemoryOptimiseLevel:I

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mDVFSEnabled:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mPowerSavingModeEnabled:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mBlurWallpaperModeEnabled:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mParallaxEffectModeEnabled:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mWeatherEffectModeEnabled:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mDynamicGridChangeEnabled:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mAppsDynamicGridChangeEnabled:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mZeroPageFeatureEnabled:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mFingerSwipeFeatureEnabled:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mZeroPageListEnabled:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLiveIconEnabled:Z

    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->sScreenIndex:I

    const-string v0, "ro.config.rm_preload_enabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->RemovablePreloadEnabled:I

    sput-object v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->mEventThemeReceiver:Lcom/sec/android/app/launcher/receivers/EventThemeReceiver;

    sput-object v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->mPackageChangeReceiver:Lcom/sec/android/app/launcher/receivers/PackageChangeReceiver;

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mRotationEnabled:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mTabletLayoutEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->pendingServiceList:Ljava/util/List;

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mHomeOnlyModeEnabled:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mIsSafeMode:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mIsServiceConnected:Z

    sput-object v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->mService:Landroid/os/IBinder;

    sput-object v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLauncherService:Lcom/sec/android/app/launcher/services/LauncherService;

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherApp$1;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/LauncherApp$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mSpanCalculator:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLocale:Ljava/util/Locale;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherApp;->pendingIntentList:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherApp$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/launcher/activities/LauncherApp$2;-><init>(Lcom/sec/android/app/launcher/activities/LauncherApp;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mHomeModeObserver:Landroid/database/ContentObserver;

    sput-object p0, Lcom/sec/android/app/launcher/activities/LauncherApp;->sInst:Lcom/sec/android/app/launcher/activities/LauncherApp;

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherApp$LauncherAppsCallback;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/launcher/activities/LauncherApp$LauncherAppsCallback;-><init>(Lcom/sec/android/app/launcher/activities/LauncherApp;Lcom/sec/android/app/launcher/activities/LauncherApp$1;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLauncherAppsCallback:Landroid/content/pm/LauncherApps$Callback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    sput-object p0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mService:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mIsServiceConnected:Z

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mHomeOnlyModeEnabled:Z

    return v0
.end method

.method public static getEventThemeManager()Lcom/sec/android/app/launcher/theme/EventThemeManager;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mEventThemeManager:Lcom/sec/android/app/launcher/theme/EventThemeManager;

    return-object v0
.end method

.method public static getExtraWorkspaceVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ExtraUpdateByFotaVersion"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFistRunVersion(Landroid/content/Context;)Z
    .locals 3

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FirstRunVersion"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getHomeScreenIndex()I
    .locals 2

    sget v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->sScreenIndex:I

    sget v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->ZERO_PAGENUM:I

    if-ge v0, v1, :cond_0

    sget v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->ZERO_PAGENUM:I

    sput v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->sScreenIndex:I

    :cond_0
    sget v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->sScreenIndex:I

    return v0
.end method

.method public static getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->sInst:Lcom/sec/android/app/launcher/activities/LauncherApp;

    return-object v0
.end method

.method public static getOptimizationMode()I
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    const-string v2, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "homescreen_optimization_mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getSmallestWidth()I
    .locals 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    return v0
.end method

.method public static getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    return-object v0
.end method

.method public static isAppsDynamicGridChangeEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mAppsDynamicGridChangeEnabled:Z

    return v0
.end method

.method public static isBlurWallpaperEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mBlurWallpaperModeEnabled:Z

    return v0
.end method

.method public static isDVFSEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mDVFSEnabled:Z

    return v0
.end method

.method public static isDynamicGridChangeEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mDynamicGridChangeEnabled:Z

    return v0
.end method

.method public static isFingeSwipeFeatureEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mFingerSwipeFeatureEnabled:Z

    return v0
.end method

.method public static isHomeOnlyModeEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mHomeOnlyModeEnabled:Z

    return v0
.end method

.method public static isParallaxEffectEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mParallaxEffectModeEnabled:Z

    return v0
.end method

.method public static isPowerSavingModeEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mPowerSavingModeEnabled:Z

    return v0
.end method

.method public static isRotationEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mRotationEnabled:Z

    return v0
.end method

.method public static isSafeMode()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mIsSafeMode:Z

    return v0
.end method

.method public static isTabletLayoutEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mTabletLayoutEnabled:Z

    return v0
.end method

.method public static isWeatherEffectEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mWeatherEffectModeEnabled:Z

    return v0
.end method

.method public static isZeroPageFeatureEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mZeroPageFeatureEnabled:Z

    return v0
.end method

.method public static isZeroPageListEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mZeroPageListEnabled:Z

    return v0
.end method

.method public static setExtraWorkspaceVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ExtraUpdateByFotaVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setFistRunVersion(Landroid/content/Context;Z)V
    .locals 3

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "FirstRunVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setHomeScreenIndex(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->setHomeScreenIndex(Landroid/content/Context;IZ)V

    return-void
.end method

.method private static setHomeScreenIndex(Landroid/content/Context;IZ)V
    .locals 4

    sget v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->sScreenIndex:I

    if-eq v2, p1, :cond_0

    sput p1, Lcom/sec/android/app/launcher/activities/LauncherApp;->sScreenIndex:I

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "homescreenindex"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setOptimizationMode(Landroid/content/Context;I)V
    .locals 4

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "homescreen_optimization_mode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setThemeManager(Lcom/sec/android/app/launcher/theme/ThemeManager;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    return-void
.end method


# virtual methods
.method public forceRefresh()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/launcher/services/LauncherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.sec.android.intent.action.FORCE_REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->startLauncherService(Landroid/content/Intent;)V

    return-void
.end method

.method public getSpanCalculater()Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mSpanCalculator:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mSpanCalculator:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mSpanCalculator:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_4

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->recreate()V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isRTLLayout()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ContainerView;->setLayoutDirection(I)V

    :cond_0
    :goto_0
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLocale:Ljava/util/Locale;

    sget-object v3, Lcom/sec/android/app/launcher/activities/LauncherApp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Locale changed! new Locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLocale:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/app/launcher/utils/Utils;->isNetworkCodeChanged(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/launcher/utils/Utils;->setNetworkCode(Landroid/content/Context;)V

    :cond_1
    :goto_1
    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->clearSelectionArea()V

    :cond_2
    return-void

    :cond_3
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ContainerView;->setLayoutDirection(I)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/sec/android/app/launcher/utils/Utils;->isNetworkCodeChanged(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/launcher/utils/Utils;->setNetworkCode(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->forceRefresh()V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->recreate()V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, -0x1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sget-object v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->TAG:Ljava/lang/String;

    const-string v8, "onCreate()"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/sec/android/app/launcher/services/LauncherService;

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v8, Lcom/sec/android/app/launcher/activities/LauncherApp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v5, v8, v6}, Lcom/sec/android/app/launcher/activities/LauncherApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-static {p0}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/sec/android/app/launcher/utils/Utils;->setIconDpi(Lcom/sec/android/app/launcher/activities/LauncherApp;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLocale:Ljava/util/Locale;

    invoke-static {p0}, Lcom/sec/android/app/launcher/utils/Utils;->setNetworkCode(Landroid/content/Context;)V

    const v5, 0x7f0c0026

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->mMemoryOptimiseLevel:I

    const v5, 0x7f0c001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->mHomeMemoryOptimiseLevel:I

    const v5, 0x7f0c0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->mAppsMemoryOptimiseLevel:I

    const v5, 0x7f080006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->mDVFSEnabled:Z

    const v5, 0x7f080010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->mPowerSavingModeEnabled:Z

    const v5, 0x7f080015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->mBlurWallpaperModeEnabled:Z

    const v5, 0x7f080016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->mWeatherEffectModeEnabled:Z

    const v5, 0x7f080007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->mDynamicGridChangeEnabled:Z

    const v5, 0x7f080003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->mAppsDynamicGridChangeEnabled:Z

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->getCscFeatureZeroPageEnable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isKnoxMode()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->checkDualScreen()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    sput-boolean v7, Lcom/sec/android/app/launcher/activities/LauncherApp;->mZeroPageFeatureEnabled:Z

    :goto_0
    const v5, 0x7f080019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->mZeroPageListEnabled:Z

    const v5, 0x7f080018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->mFingerSwipeFeatureEnabled:Z

    sget-boolean v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->mZeroPageFeatureEnabled:Z

    if-eqz v5, :cond_5

    move v5, v6

    :goto_1
    sput v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->ZERO_PAGENUM:I

    const v5, 0x7f080011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->mRotationEnabled:Z

    const v5, 0x7f080014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->mTabletLayoutEnabled:Z

    new-instance v5, Lcom/sec/android/app/launcher/theme/EventThemeManager;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/sec/android/app/launcher/theme/EventThemeManager;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->mEventThemeManager:Lcom/sec/android/app/launcher/theme/EventThemeManager;

    sget-object v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->mEventThemeManager:Lcom/sec/android/app/launcher/theme/EventThemeManager;

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FESTIVAL"

    invoke-virtual {v5, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->mEventThemeManager:Lcom/sec/android/app/launcher/theme/EventThemeManager;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->setEventSettingObserver(Z)V

    :cond_1
    const-string v5, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "homescreenindex"

    invoke-interface {v3, v5, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->sScreenIndex:I

    sget v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->sScreenIndex:I

    if-ne v5, v10, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_Launcher_DefaultPageNumber"

    invoke-virtual {v5, v8, v10}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->sScreenIndex:I

    sget v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->sScreenIndex:I

    if-ne v5, v10, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a00ad

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->sScreenIndex:I

    :cond_2
    sget v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->sScreenIndex:I

    sget v8, Lcom/sec/android/app/launcher/activities/LauncherApp;->ZERO_PAGENUM:I

    add-int/2addr v5, v8

    sput v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->sScreenIndex:I

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "homescreenindex"

    sget v8, Lcom/sec/android/app/launcher/activities/LauncherApp;->sScreenIndex:I

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v5

    sput-boolean v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->mIsSafeMode:Z

    const-string v5, "launcherapps"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLauncherAppsCallback:Landroid/content/pm/LauncherApps$Callback;

    invoke-virtual {v2, v5}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;)V

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->checkA8Device()Z

    move-result v5

    if-eqz v5, :cond_6

    sput-boolean v7, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE:Z

    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v5, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD:Z

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "home_and_apps_mode"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mHomeModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_4
    const v5, 0x7f080017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->mZeroPageFeatureEnabled:Z

    goto/16 :goto_0

    :cond_5
    move v5, v7

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v7, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v5, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE:Z

    goto :goto_2
.end method

.method public onTerminate()V
    .locals 3

    sget-object v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mPackageChangeReceiver:Lcom/sec/android/app/launcher/receivers/PackageChangeReceiver;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mPackageChangeReceiver:Lcom/sec/android/app/launcher/receivers/PackageChangeReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/LauncherApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    sget-object v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mEventThemeReceiver:Lcom/sec/android/app/launcher/receivers/EventThemeReceiver;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mEventThemeReceiver:Lcom/sec/android/app/launcher/receivers/EventThemeReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/LauncherApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    sget-object v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mEventThemeManager:Lcom/sec/android/app/launcher/theme/EventThemeManager;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FESTIVAL"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mEventThemeManager:Lcom/sec/android/app/launcher/theme/EventThemeManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->setEventSettingObserver(Z)V

    :cond_2
    sget-object v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/LauncherApp;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mSpanCalculator:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mHomeModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public declared-synchronized registerPackageReceiver()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->mPackageChangeReceiver:Lcom/sec/android/app/launcher/receivers/PackageChangeReceiver;

    if-nez v2, :cond_0

    new-instance v2, Lcom/sec/android/app/launcher/receivers/PackageChangeReceiver;

    invoke-direct {v2}, Lcom/sec/android/app/launcher/receivers/PackageChangeReceiver;-><init>()V

    sput-object v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->mPackageChangeReceiver:Lcom/sec/android/app/launcher/receivers/PackageChangeReceiver;

    sget-object v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->TAG:Ljava/lang/String;

    const-string v3, "new PackageChangeReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.STK_TITLE_IS_LOADED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->mPackageChangeReceiver:Lcom/sec/android/app/launcher/receivers/PackageChangeReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/launcher/activities/LauncherApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FESTIVAL"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->mEventThemeReceiver:Lcom/sec/android/app/launcher/receivers/EventThemeReceiver;

    if-nez v2, :cond_1

    new-instance v2, Lcom/sec/android/app/launcher/receivers/EventThemeReceiver;

    invoke-direct {v2}, Lcom/sec/android/app/launcher/receivers/EventThemeReceiver;-><init>()V

    sput-object v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->mEventThemeReceiver:Lcom/sec/android/app/launcher/receivers/EventThemeReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.theme.MYEVENT_FESTIVAL"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.theme.FESTIVAL_SETTING_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->mEventThemeReceiver:Lcom/sec/android/app/launcher/receivers/EventThemeReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setHomeOnlyModeEnabled(Z)V
    .locals 0

    sput-boolean p1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mHomeOnlyModeEnabled:Z

    return-void
.end method

.method public startLauncherService(Landroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLauncherService:Lcom/sec/android/app/launcher/services/LauncherService;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mIsServiceConnected:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startService(), service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->mService:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/LauncherApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->TAG:Ljava/lang/String;

    const-string v1, "startLauncherService pending..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->pendingServiceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLauncherService:Lcom/sec/android/app/launcher/services/LauncherService;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/services/LauncherService;->onStart(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public writeHomeOnlyModeEnabled(Z)V
    .locals 3

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "home_only_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sput-boolean p1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mHomeOnlyModeEnabled:Z

    return-void
.end method
