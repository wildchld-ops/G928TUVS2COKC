.class public Lcom/android/server/epm/overlay/ThemeManagerService;
.super Lcom/android/server/epm/overlay/OverlayManagerService;
.source "ThemeManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/epm/overlay/ThemeManagerService$CallBackDead;,
        Lcom/android/server/epm/overlay/ThemeManagerService$LocaleChangeBroadCastReceiver;,
        Lcom/android/server/epm/overlay/ThemeManagerService$MyEventBroadCastReceiver;,
        Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;,
        Lcom/android/server/epm/overlay/ThemeManagerService$ThemeUninstallObserver;,
        Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;,
        Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;,
        Lcom/android/server/epm/overlay/ThemeManagerService$CoverListener;,
        Lcom/android/server/epm/overlay/ThemeManagerService$MasterDeleteObserver;,
        Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;,
        Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;,
        Lcom/android/server/epm/overlay/ThemeManagerService$ThirdPartyInstallObserver;,
        Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;
    }
.end annotation


# static fields
.field private static final COMPONENT_PREFERENCES:Ljava/lang/String; = "samsung.andorid.themes.component_preference"

.field private static final DEBUG_ELASTIC:Z = true

.field private static final LAUNCHER_TOUCHWIZ:Ljava/lang/String; = "com.sec.android.app.launcher"

.field private static final MYEVENT_PREFERENCES:Ljava/lang/String; = "samsung.andorid.themes.myevent_preference"

.field private static final PREF_ACTIVE_COMPONENTS:Ljava/lang/String; = "samsung.andorid.themes.pref_active_component"

.field private static final PREF_FONT_COMPONENTS:Ljava/lang/String; = "pref_themefont"

.field private static final TAG:Ljava/lang/String;

.field public static final THEME_FONT_CLOCK:Ljava/lang/String; = "theme_font_clock"

.field private static final THEME_FONT_EMPTY:Ljava/lang/String; = "theme_font_empty"

.field public static final THEME_FONT_NUMERIC:Ljava/lang/String; = "theme_font_numeric"

.field private static final THEME_FONT_RESTORE:Ljava/lang/String; = "theme_font_restore"

.field private static final THEME_FONT_SIZE_EMPTY:I = -0x58

.field private static final THEME_FONT_SIZE_RESTORE:I = -0x63

.field public static final THEME_FONT_SYSTEM:Ljava/lang/String; = "theme_font_system"

.field public static final THEME_PREV_FONT_SYSTEM:Ljava/lang/String; = "theme_prev_font_system"

.field static isVisible:Z


# instance fields
.field final ACTION_EASY_MODE:Ljava/lang/String;

.field final ACTION_EVENT_ENDED:Ljava/lang/String;

.field final ACTION_EVENT_OCCUR:Ljava/lang/String;

.field final ACTION_EVENT_OCCURRED_APPLY:Ljava/lang/String;

.field final ACTION_EVENT_OCCURRED_CANCEL:Ljava/lang/String;

.field final ACTION_LOCALE_CHANGED:Ljava/lang/String;

.field final ACTION_SCOVER_BROADCAST:Ljava/lang/String;

.field private KEY_VALUE:Ljava/lang/String;

.field private final SCROLL_THRESHOLD:F

.field private activeComponentMasterPackageArr:[Ljava/lang/String;

.field private activeComponentPackageArr:[Ljava/lang/String;

.field applyInProgress:Z

.field buggy:Z

.field private componentOrder:[Ljava/lang/String;

.field public componentPackageMap:Ljava/util/HashMap;
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

.field private currentPackageToBeDeleted:Ljava/lang/String;

.field private currentPackageToBeInstalled:Ljava/lang/String;

.field eventCategory:Ljava/lang/String;

.field eventIndex:I

.field eventMasterPackageName:Ljava/lang/String;

.field private expiryTime:I

.field inProgress:Z

.field isAppStyleChanged:Z

.field private isLiveWallpaper:Z

.field private mActiveCategory:Ljava/lang/String;

.field private mActiveEventIndex:I

.field private mActiveEventPackage:Ljava/lang/String;

.field private mActiveFestivalPackage:Ljava/lang/String;

.field private mActiveMasterPackage:Ljava/lang/String;

.field private mActivityManager:Landroid/app/ActivityManager;

.field mAppStylePackages:I

.field private mCallbackList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/app/epm/IPluginManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentCount:I

.field private mContext:Landroid/content/Context;

.field private final mCoverListener:Lcom/android/server/epm/overlay/ThemeManagerService$CoverListener;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field mCoverPackage:Ljava/lang/String;

.field private mCoverPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentActiveEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCategory:Ljava/lang/String;

.field mDisabledPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mEnabledPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mInitX:F

.field private mInitY:F

.field private mIsCoverAttached:Z

.field mLocaleChangeReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$LocaleChangeBroadCastReceiver;

.field private mMasterDeleteObserver:Lcom/android/server/epm/overlay/ThemeManagerService$MasterDeleteObserver;

.field private mMasterInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;

.field private mMasterPackageName:Ljava/lang/String;

.field mMyEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$MyEventBroadCastReceiver;

.field private mNoOfOverlays:I

.field private mObserverEasyMode:Landroid/database/ContentObserver;

.field private mOverlay:Ljava/io/File;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mPreLoadedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPreviousToCoverPackage:Ljava/lang/String;

.field public mSelectedEventDetails:Ljava/util/HashMap;
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

.field private mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemeUninstallObserver;

.field private mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;

.field private mThirdPartyInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThirdPartyInstallObserver;

.field private mTimer:Ljava/util/Timer;

.field private mTotalComponentCount:I

.field private mTrialInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;

.field private mTrialPackage:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private mViewClicked:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private masterDetailsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;",
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

.field private masterInstallErrorCode:I

.field private masterPackageName:Ljava/lang/String;

.field private masterStatus:Z

.field private masterThemesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
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
            ">;>;>;>;>;"
        }
    .end annotation
.end field

.field private masterVersion:Ljava/lang/String;

.field public myEventPackageMap:Ljava/util/HashMap;
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

.field private myEventStructure:Ljava/util/HashMap;
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

.field private myEventTitlePackageMap:Ljava/util/HashMap;
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

.field public notificationManager:Landroid/app/NotificationManager;

.field private overlayCount:I

.field private overlaysForuninstall:I

.field private restoreSoundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private savePreviousPackage:Ljava/lang/String;

.field private trialMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private wallManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/epm/overlay/ThemeManagerService;->isVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    const/16 v10, 0x9

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/OverlayManagerService;-><init>(Landroid/content/Context;)V

    iput-boolean v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->isLiveWallpaper:Z

    iput-boolean v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mIsCoverAttached:Z

    iput-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPreviousToCoverPackage:Ljava/lang/String;

    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v6, "themes"

    aput-object v6, v5, v9

    const/4 v6, 0x1

    const-string/jumbo v7, "lock"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "wallpaper"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "appicon"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "Event"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string/jumbo v7, "font"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "sound"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "appstyle"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string/jumbo v7, "home"

    aput-object v7, v5, v6

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    new-array v5, v10, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    new-array v5, v10, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    const-string v5, "android.intent.action.LOCALE_CHANGED"

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->ACTION_LOCALE_CHANGED:Ljava/lang/String;

    const-string/jumbo v5, "theme.installer.action"

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->ACTION_EVENT_OCCUR:Ljava/lang/String;

    const-string/jumbo v5, "theme.uninstaller.action"

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->ACTION_EVENT_ENDED:Ljava/lang/String;

    const-string/jumbo v5, "theme.installer.action.apply"

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->ACTION_EVENT_OCCURRED_APPLY:Ljava/lang/String;

    const-string/jumbo v5, "theme.installer.action.cancel"

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->ACTION_EVENT_OCCURRED_CANCEL:Ljava/lang/String;

    const-string v5, "com.samsung.android.scover.themecenter.COVER_THEME_APPLY"

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->ACTION_SCOVER_BROADCAST:Ljava/lang/String;

    const-string v5, "com.samsung.android.action.EASY_MODE"

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->ACTION_EASY_MODE:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mObserverEasyMode:Landroid/database/ContentObserver;

    iput-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->savePreviousPackage:Ljava/lang/String;

    iput v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mNoOfOverlays:I

    iput v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->overlayCount:I

    iput v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterInstallErrorCode:I

    iput-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

    iput-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mMyEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$MyEventBroadCastReceiver;

    iput-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mLocaleChangeReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$LocaleChangeBroadCastReceiver;

    iput-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveCategory:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveMasterPackage:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveFestivalPackage:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveEventPackage:Ljava/lang/String;

    iput v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveEventIndex:I

    iput-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCurrentCategory:Ljava/lang/String;

    const/high16 v5, 0x41200000    # 10.0f

    iput v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->SCROLL_THRESHOLD:F

    iput-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterPackageName:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterVersion:Ljava/lang/String;

    iput v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->expiryTime:I

    const-string/jumbo v5, "value"

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->KEY_VALUE:Ljava/lang/String;

    iput v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->overlaysForuninstall:I

    iput-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    iput-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPreLoadedPackages:Ljava/util/ArrayList;

    iput v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    iput v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTotalComponentCount:I

    iput-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeDeleted:Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mEnabledPackages:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mDisabledPackages:Ljava/util/ArrayList;

    iput v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mAppStylePackages:I

    iput-boolean v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->isAppStyleChanged:Z

    iput-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventCategory:Ljava/lang/String;

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventIndex:I

    iput-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCoverPackage:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCurrentActiveEventList:Ljava/util/ArrayList;

    iput-boolean v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    iput-boolean v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->buggy:Z

    iput-boolean v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->applyInProgress:Z

    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActivityManager:Landroid/app/ActivityManager;

    sget-object v5, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string v6, "ThemeManagerService constructor"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCoverPackageList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    :cond_0
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCallbackList:Ljava/util/Vector;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCallbackList:Ljava/util/Vector;

    :cond_1
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->myEventTitlePackageMap:Ljava/util/HashMap;

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->myEventTitlePackageMap:Ljava/util/HashMap;

    :cond_2
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPreLoadedPackages:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPreLoadedPackages:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPreLoadedPackages:Ljava/util/ArrayList;

    const-string v6, "com.samsung.festival.MyEventBirthday"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPreLoadedPackages:Ljava/util/ArrayList;

    const-string v6, "com.samsung.festival.MyEventThankyou"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPreLoadedPackages:Ljava/util/ArrayList;

    const-string v6, "com.samsung.festival.MyEventcongrat"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPreLoadedPackages:Ljava/util/ArrayList;

    const-string v6, "com.samsung.festival.chinadefault"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    if-nez v5, :cond_4

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    :cond_4
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCurrentActiveEventList:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCurrentActiveEventList:Ljava/util/ArrayList;

    :cond_5
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

    if-nez v5, :cond_6

    new-instance v5, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

    invoke-direct {v5, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

    :cond_6
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mMyEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$MyEventBroadCastReceiver;

    if-nez v5, :cond_7

    new-instance v5, Lcom/android/server/epm/overlay/ThemeManagerService$MyEventBroadCastReceiver;

    invoke-direct {v5, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$MyEventBroadCastReceiver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mMyEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$MyEventBroadCastReceiver;

    :cond_7
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mLocaleChangeReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$LocaleChangeBroadCastReceiver;

    if-nez v5, :cond_8

    new-instance v5, Lcom/android/server/epm/overlay/ThemeManagerService$LocaleChangeBroadCastReceiver;

    invoke-direct {v5, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$LocaleChangeBroadCastReceiver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mLocaleChangeReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$LocaleChangeBroadCastReceiver;

    :cond_8
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    if-nez v5, :cond_9

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    :cond_9
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mSelectedEventDetails:Ljava/util/HashMap;

    if-nez v5, :cond_a

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mSelectedEventDetails:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mSelectedEventDetails:Ljava/util/HashMap;

    const-string v6, "MyEvent"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mSelectedEventDetails:Ljava/util/HashMap;

    const-string/jumbo v6, "open_theme"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mSelectedEventDetails:Ljava/util/HashMap;

    const-string v6, "Festival"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->myEventPackageMap:Ljava/util/HashMap;

    if-nez v5, :cond_b

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->myEventPackageMap:Ljava/util/HashMap;

    :cond_b
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    if-nez v5, :cond_c

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    :cond_c
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    :cond_d
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mMasterInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;

    if-nez v5, :cond_e

    new-instance v5, Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;

    invoke-direct {v5, p0, v8}, Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mMasterInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;

    :cond_e
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mMasterDeleteObserver:Lcom/android/server/epm/overlay/ThemeManagerService$MasterDeleteObserver;

    if-nez v5, :cond_f

    new-instance v5, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDeleteObserver;

    invoke-direct {v5, p0, v8}, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDeleteObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mMasterDeleteObserver:Lcom/android/server/epm/overlay/ThemeManagerService$MasterDeleteObserver;

    :cond_f
    new-instance v5, Lcom/samsung/android/cover/CoverManager;

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    new-instance v5, Lcom/android/server/epm/overlay/ThemeManagerService$CoverListener;

    invoke-direct {v5, p0, v8}, Lcom/android/server/epm/overlay/ThemeManagerService$CoverListener;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCoverListener:Lcom/android/server/epm/overlay/ThemeManagerService$CoverListener;

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCoverListener:Lcom/android/server/epm/overlay/ThemeManagerService$CoverListener;

    invoke-virtual {v5, v6}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mObserverEasyMode:Landroid/database/ContentObserver;

    if-nez v5, :cond_12

    new-instance v5, Lcom/android/server/epm/overlay/ThemeManagerService$1;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/server/epm/overlay/ThemeManagerService$1;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mObserverEasyMode:Landroid/database/ContentObserver;

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "easy_mode_switch"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mObserverEasyMode:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4, v9, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v5, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "registerContentObserver - mObserverEasyMode is now registered"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;

    if-nez v5, :cond_10

    new-instance v5, Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;

    invoke-direct {v5, p0, v8}, Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;

    :cond_10
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->restoreSoundMap:Ljava/util/HashMap;

    if-nez v5, :cond_11

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->restoreSoundMap:Ljava/util/HashMap;

    :cond_11
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v5, "theme.installer.action"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "theme.uninstaller.action"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.samsung.android.scover.themecenter.COVER_THEME_APPLY"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v5, "theme.installer.action.apply"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "theme.installer.action.cancel"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mMyEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$MyEventBroadCastReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mLocaleChangeReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$LocaleChangeBroadCastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_12
    sget-object v5, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "registerContentObserver - mObserverEasyMode already exists"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$1100(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCurrentCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/epm/overlay/ThemeManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterInstallErrorCode:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/epm/overlay/ThemeManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterInstallErrorCode:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/epm/overlay/ThemeManagerService;->onMasterInstalled(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/ThemeManagerService;->isPackageExisted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeComponents(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCoverPackageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/epm/overlay/ThemeManagerService;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/epm/overlay/ThemeManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mIsCoverAttached:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/epm/overlay/ThemeManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->expiryTime:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->myEventTitlePackageMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/ThemeManagerService;->showEventBubble(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/epm/overlay/ThemeManagerService;->changeRingtoneTitle(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCallbackList:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/epm/overlay/ThemeManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    return v0
.end method

.method static synthetic access$3210(Lcom/android/server/epm/overlay/ThemeManagerService;)I
    .locals 2

    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    return v0
.end method

.method static synthetic access$3220(Lcom/android/server/epm/overlay/ThemeManagerService;I)I
    .locals 1

    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/epm/overlay/ThemeManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTotalComponentCount:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/epm/overlay/ThemeManagerService;->onEventPassed(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->onEventOccur()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/epm/overlay/ThemeManagerService;->setDeleteMyEvents(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/ThemeManagerService;->setFestivalPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/ThemeManagerService;->isDefaultApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->savePreviousPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->savePreviousPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveMasterPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private applyDefaultWallpaper()V
    .locals 7

    sget-object v5, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string v6, "applyDefaultWallpaper"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->isLiveWallpaper:Z

    if-eqz v5, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "/data/overlays/defalut.png"

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v4, v2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private applyNewWallpaper()V
    .locals 8

    sget-object v2, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string v3, "applyNewWallpaper"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->wallManager:Landroid/app/WallpaperManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->wallManager:Landroid/app/WallpaperManager;

    :cond_0
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWallpaperName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWallpaperName:Ljava/lang/String;

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWallpaperName:Ljava/lang/String;

    const-string v6, "drawable"

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->wallManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2, v1}, Landroid/app/WallpaperManager;->setResource(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v2, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " WRONG RESOURCE ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private changeRingtoneTitle(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 11

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->restoreSoundMap:Ljava/util/HashMap;

    invoke-virtual {v8, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;

    :cond_0
    if-nez v2, :cond_1

    sget-object v8, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string v9, "changeRingtoneTitle rinfo == null"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v8, v2, Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;->mFilePath:Ljava/lang/String;

    invoke-static {v8}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v8, v2, Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v8, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->isRingToneEntryExist(Ljava/lang/String;Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v8, "title"

    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->getSoundTitleLocale()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private cleanSoundDataInfo(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanSoundDataInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->restoreDefaultRingtone(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->restoreDefaultRingtone(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->restoreDefaultRingtone(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v0, "theme_touch_sound"

    invoke-direct {p0, p1, v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->cleanSoundSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "default_key_sound_path"

    invoke-direct {p0, p1, v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->cleanSoundSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "backspace_key_sound_path"

    invoke-direct {p0, p1, v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->cleanSoundSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dialer_sound_theme_path"

    invoke-direct {p0, p1, v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->cleanSoundSettingDB(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->restoreSoundMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private cleanSoundSettingDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "theme_touch_sound"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    const-string v3, "/data/overlays/sound/"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string/jumbo v3, "theme_touch_sound"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "/"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "input sound settingDB null: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "theme_touch_sound"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p2, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p2, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method private copySoundFiles(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/res/AssetManager;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/overlays/sound/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "#"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    sget-object v5, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string v6, "copySoundFiles length is not 2"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v5, 0x0

    aget-object v5, v3, v5

    const-string/jumbo v6, "screen_touch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "TW_Touch.ogg"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sound/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string v6, "IO Exception while copying Sound Files"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :try_start_1
    aget-object v5, v3, v5

    const-string/jumbo v6, "hw_touch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "S_HW_Touch.ogg"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sound/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    goto/16 :goto_0

    :cond_3
    const/4 v5, 0x1

    aget-object v5, v3, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sound/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private deleteFile(Ljava/io/File;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->deleteFile(Ljava/io/File;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v5

    goto :goto_0
.end method

.method private deleteRingtoneEntry(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 7

    const/4 v6, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Lcom/android/server/epm/overlay/ThemeManagerService;->isRingToneEntryExist(Ljava/lang/String;Landroid/net/Uri;)J

    move-result-wide v0

    sget-object v3, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ringtone id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, -0x1

    cmp-long v3, v4, v0

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ringtone entry exist deleting it :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    :cond_0
    return v2
.end method

.method private disableComponent(Ljava/lang/String;IZ)Z
    .locals 16

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v1, v1, p2

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v3, v1, p2

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    :goto_2
    return v1

    :sswitch_0
    const-string/jumbo v4, "home"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "wallpaper"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "appstyle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v4, "font"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v4, "appicon"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v4, "sound"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v4, "Event"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v3, v3, p2

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "current_sec_home_theme_package"

    const-string v4, ""

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Stop Launcher ~~~ HOME - DISABLE"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActivityManager:Landroid/app/ActivityManager;

    const-string v3, "com.sec.android.app.launcher"

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v1, p2

    const/4 v1, 0x1

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v3, v3, p2

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v1, p2

    const/4 v1, 0x1

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v3, v3, p2

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "current_sec_wallpaper_theme_package"

    const-string v4, ""

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "opne_theme_effect_lockscreen_wallpaper"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "opne_theme_effect_lockscreen_wallpaper"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wallpaper"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/WallpaperManager;

    invoke-virtual {v15}, Landroid/app/WallpaperManager;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "lockscreen_wallpaper_path"

    const-string v4, ""

    const/4 v5, -0x2

    invoke-static {v1, v3, v4, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v1, p2

    const/4 v1, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v9

    const-string v1, "ThemeCoverManager"

    const-string v3, "exception in disabling"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_3
    const/4 v13, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v1, v1, p2

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x1

    aget-object v1, v7, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sget-object v1, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "categoryyyy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v3, v7, v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mDisabledPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mDisabledPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManager;->setApplicationEnabledSettingWithList(Ljava/util/List;IIZZ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v1, p2

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->isAppStyleChanged:Z

    const/4 v1, 0x1

    goto/16 :goto_2

    :pswitch_4
    new-instance v11, Landroid/content/Intent;

    const-string v1, "FONT_THEME_CHANGED"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "savedefault"

    const-string v3, "-1"

    invoke-virtual {v11, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "size"

    const-string v3, "-100"

    invoke-virtual {v11, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v1, p2

    const-string/jumbo v1, "theme_font_restore"

    const/16 v3, -0x63

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeFontPath(Ljava/lang/String;I)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v3, v3, p2

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "current_sec_appicon_theme_package"

    const-string v4, ""

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Stop Launcher ~~~ ICON - DISABLE"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActivityManager:Landroid/app/ActivityManager;

    const-string v3, "com.sec.android.app.launcher"

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v1, p2

    const/4 v1, 0x1

    goto/16 :goto_2

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/epm/PluginManager;->getInstance(Landroid/content/Context;)Landroid/app/epm/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/epm/PluginManager;->getCurrentThemePackage()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->cleanSoundDataInfo(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_2

    :pswitch_7
    const-string/jumbo v1, "open_theme"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mSelectedEventDetails:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x2f4941e6 -> :sswitch_5
        0x300c4f -> :sswitch_4
        0x30f4df -> :sswitch_0
        0x32c52b -> :sswitch_1
        0x403827a -> :sswitch_7
        0x688c90f -> :sswitch_6
        0x46b5d030 -> :sswitch_3
        0x57e60e02 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "installOverlays... apkFile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p0, p2, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    const/16 v3, 0x1e5

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {p3, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    const/16 v3, 0x1e5

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v1, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_4
    throw v3
.end method

.method private enableComponent(Ljava/lang/String;IIZLjava/lang/String;)Z
    .locals 29

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v27, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/util/SparseArray;

    move-object/from16 v27, v0

    sget-object v4, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "----->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v4, p2

    const/4 v4, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_1
    const/4 v4, 0x0

    :goto_2
    return v4

    :sswitch_0
    const-string/jumbo v7, "home"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_1
    const-string v7, "cover"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v7, "lock"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v7, "wallpaper"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x3

    goto :goto_0

    :sswitch_4
    const-string v7, "appstyle"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v7, "font"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    :sswitch_6
    const-string v7, "appicon"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v7, "sound"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x7

    goto :goto_0

    :sswitch_8
    const-string v7, "Event"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "current_sec_home_theme_package"

    move-object/from16 v0, v23

    invoke-static {v4, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string v6, "Stop Launcher ~~~ HOME - ENABLE"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActivityManager:Landroid/app/ActivityManager;

    const-string v6, "com.sec.android.app.launcher"

    invoke-virtual {v4, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aput-object v23, v4, p2

    const/4 v4, 0x1

    goto/16 :goto_2

    :pswitch_1
    const-string v4, "cover"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v13

    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v13, :cond_1

    if-eqz v14, :cond_1

    :try_start_1
    invoke-interface {v13, v14}, Lcom/samsung/android/cover/ICoverManager;->setCoverPackage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v15

    :try_start_2
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v15

    const-string v4, "ThemeCoverManager"

    const-string v6, "exception in enabling"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_2
    :try_start_3
    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aput-object v23, v4, p2

    const/4 v4, 0x1

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "current_sec_wallpaper_theme_package"

    move-object/from16 v0, v23

    invoke-static {v4, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v4, "homescreen_wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->getItemBitmap(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    const-string v7, "_"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".png"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v21, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/overlays/lockwallpaper/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "lockscreen_wallpaper_path"

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v11, -0x2

    invoke-static {v4, v6, v7, v11}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "lockscreen_wallpaper"

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aput-object v23, v4, p2

    const/4 v4, 0x1

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mEnabledPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    sget-object v4, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enabled package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mEnabledPackages:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSettingWithList(Ljava/util/List;IIZZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, p2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->isAppStyleChanged:Z

    const/4 v4, 0x1

    goto/16 :goto_2

    :pswitch_5
    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v20, Landroid/content/Intent;

    const-string v4, "FONT_THEME_CHANGED"

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v25, "theme_font_empty"

    const-string/jumbo v12, "theme_font_empty"

    const-string/jumbo v22, "theme_font_empty"

    const/16 v26, -0x58

    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/overlays/font/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v4, "#"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/4 v4, 0x0

    aget-object v4, v16, v4

    const-string/jumbo v6, "system"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "system"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "sip"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/DroidSans.ttf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v25, v17

    :cond_5
    :goto_5
    const-string/jumbo v4, "savedefault"

    const-string v6, "1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "sending Broadcast......"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sending Broadcast..confirmed...."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_6
    const/4 v4, 0x0

    aget-object v4, v16, v4

    const-string v6, "clock"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "clock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v16, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v6, v16, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    aget-object v4, v16, v4

    const-string/jumbo v6, "numeric"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "numeric"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v16, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v6, v16, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_5

    :cond_8
    const/4 v4, 0x0

    aget-object v4, v16, v4

    const-string/jumbo v6, "size"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "size"

    const/4 v6, 0x1

    aget-object v6, v16, v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    aget-object v4, v16, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    goto/16 :goto_5

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    move/from16 v3, v26

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeFontPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, p2

    const/4 v4, 0x1

    goto/16 :goto_2

    :pswitch_6
    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "current_sec_appicon_theme_package"

    move-object/from16 v0, v23

    invoke-static {v4, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v4, :cond_a

    sget-object v4, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string v6, "Stop Launcher ~~~ ICON - ENABLE"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActivityManager:Landroid/app/ActivityManager;

    const-string v6, "com.sec.android.app.launcher"

    invoke-virtual {v4, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aput-object v23, v4, p2

    const/4 v4, 0x1

    goto/16 :goto_2

    :pswitch_7
    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSoundDataInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v7, v7, p2

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->setSoundDataInfo(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aput-object p1, v4, p2

    const/4 v4, 0x1

    goto/16 :goto_2

    :pswitch_8
    const/4 v10, 0x0

    const/16 v18, 0x0

    :goto_6
    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_c

    if-nez v18, :cond_b

    const-string/jumbo v4, "open_theme"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    :cond_b
    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string/jumbo v6, "starttime"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v6, "endtime"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Lcom/android/server/epm/overlay/ThemeManagerService;->setAlarmForEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v10, v10, 0x2

    goto :goto_7

    :cond_c
    const-string/jumbo v4, "open_theme"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aput-object p1, v4, p2

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mSelectedEventDetails:Ljava/util/HashMap;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v4, 0x1

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x2f4941e6 -> :sswitch_6
        0x300c4f -> :sswitch_5
        0x30f4df -> :sswitch_0
        0x32c52b -> :sswitch_2
        0x403827a -> :sswitch_8
        0x5a753b7 -> :sswitch_1
        0x688c90f -> :sswitch_7
        0x46b5d030 -> :sswitch_4
        0x57e60e02 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getCurRingtoneList(I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/media/RingtoneManager;

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/media/RingtoneManager;->setType(I)V

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private getSoundTitleLocale()Ljava/lang/String;
    .locals 7

    const-string v3, "Current theme"

    :try_start_0
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.android.themecenter"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "current_theme"

    const-string/jumbo v5, "string"

    const-string v6, "com.samsung.android.themecenter"

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isDefaultApp(Ljava/lang/String;)Z
    .locals 8

    const/4 v5, 0x1

    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v2, v4, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    :goto_0
    return v5

    :cond_0
    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v4, v7}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isPackageExisted(Ljava/lang/String;)Z
    .locals 3

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRingToneEntryExist(Ljava/lang/String;Landroid/net/Uri;)J
    .locals 12

    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRingToneEntryExist : whereClause :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-wide v8

    :catch_0
    move-exception v6

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private onEventOccur()V
    .locals 9

    const/4 v8, 0x4

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v7, v0

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v7, :cond_1

    if-eq v2, v8, :cond_0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveCategory:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(Ljava/lang/String;IZ)Z

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventIndex:I

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventCategory:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/epm/overlay/ThemeManagerService;->enableComponent(Ljava/lang/String;IIZLjava/lang/String;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    aput-object v1, v0, v8

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventCategory:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveCategory:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveMasterPackage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveEventPackage:Ljava/lang/String;

    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventIndex:I

    iput v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveEventIndex:I

    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "current_sec_theme_package_event_title"

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventCategory:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    iget v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventIndex:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v5, "title"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveCategory:Ljava/lang/String;

    const-string v1, "MyEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveCategory:Ljava/lang/String;

    const-string v1, "Festival"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.samsung.android.theme.MYEVENT_FESTIVAL"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EventTitle"

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventCategory:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventIndex:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Type"

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveCategory:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "IsEnabled"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method private onEventPassed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveEventPackage:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveEventPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v6, v0

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v6, :cond_1

    const/4 v0, 0x4

    if-eq v2, v0, :cond_0

    invoke-direct {p0, p3, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(Ljava/lang/String;IZ)Z

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v1, v0, v2

    const-string/jumbo v5, "open_theme"

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/epm/overlay/ThemeManagerService;->enableComponent(Ljava/lang/String;IIZLjava/lang/String;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveEventPackage:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveEventPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveEventPackage:Ljava/lang/String;

    iput v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveEventIndex:I

    const-string/jumbo v0, "open_theme"

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveCategory:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveMasterPackage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V

    :cond_2
    return-void
.end method

.method private onMasterInstalled(Ljava/lang/String;Z)V
    .locals 33

    sget-object v3, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onMasterInstalled , thread id is "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "--->"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThirdPartyInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThirdPartyInstallObserver;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/server/epm/overlay/ThemeManagerService$ThirdPartyInstallObserver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/epm/overlay/ThemeManagerService$ThirdPartyInstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThirdPartyInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThirdPartyInstallObserver;

    :cond_1
    new-instance v24, Ljava/io/File;

    const-string v3, "/data/overlays"

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->mkdir()Z

    :cond_2
    new-instance v32, Ljava/io/File;

    const-string v3, "/data/overlays/lockwallpaper"

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->mkdir()Z

    const/16 v3, 0x1e5

    const/4 v4, -0x1

    const/4 v8, -0x1

    move-object/from16 v0, v32

    invoke-static {v0, v3, v4, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    :cond_3
    new-instance v25, Ljava/io/File;

    const-string v3, "/data/overlays/preview"

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->mkdir()Z

    const/16 v3, 0x1e5

    const/4 v4, -0x1

    const/4 v8, -0x1

    move-object/from16 v0, v25

    invoke-static {v0, v3, v4, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    :cond_4
    new-instance v22, Ljava/io/File;

    const-string v3, "/data/overlays/jsonfiles"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdir()Z

    const/16 v3, 0x1e5

    const/4 v4, -0x1

    const/4 v8, -0x1

    move-object/from16 v0, v22

    invoke-static {v0, v3, v4, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    :cond_5
    new-instance v31, Ljava/io/File;

    const-string v3, "/data/overlays/jsonfiles/userjson"

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->mkdir()Z

    :cond_6
    new-instance v30, Ljava/io/File;

    const-string v3, "/data/overlays/jsonfiles/trialjson"

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->mkdir()Z

    :cond_7
    new-instance v19, Ljava/io/File;

    const-string v3, "/data/overlays/font"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdir()Z

    const/16 v3, 0x1e5

    const/4 v4, -0x1

    const/4 v8, -0x1

    move-object/from16 v0, v19

    invoke-static {v0, v3, v4, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    :cond_8
    new-instance v28, Ljava/io/File;

    const-string v3, "/data/overlays/sound"

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->mkdirs()Z

    :cond_9
    const/16 v3, 0x1e5

    const/4 v4, -0x1

    const/4 v8, -0x1

    move-object/from16 v0, v28

    invoke-static {v0, v3, v4, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->parseJson(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mCurrentCategory:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const/16 v29, 0x0

    if-nez p2, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "themes.json"

    invoke-virtual {v6, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v8, "/data/overlays/jsonfiles/userjson"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v8}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/util/SparseArray;

    if-eqz p2, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v4, "themes"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v4, "themes"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v4, "themes"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_a
    if-eqz p2, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v4, "Event"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v4, "Event"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v4, "Event"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_b
    const-string/jumbo v3, "preview"

    invoke-virtual {v6, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/overlays/preview/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v3, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XXX installOverlays... previewMasterPath = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v27, Ljava/io/File;

    move-object/from16 v0, v27

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->mkdir()Z

    :cond_c
    sget-object v3, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "XXX installOverlays... previewMasterPathDir = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v26

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_f

    aget-object v5, v16, v20

    new-instance v9, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/epm/overlay/ThemeManagerService$2;

    move-object/from16 v4, p0

    move-object/from16 v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/epm/overlay/ThemeManagerService$2;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "themes.json"

    invoke-virtual {v6, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v8, "/data/overlays/jsonfiles/trialjson"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v8}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_e
    :goto_2
    return-void

    :cond_f
    const/16 v21, 0x0

    :goto_3
    :try_start_1
    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_e

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    move/from16 v14, v21

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz p2, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_10
    new-instance v3, Ljava/lang/Thread;

    new-instance v8, Lcom/android/server/epm/overlay/ThemeManagerService$3;

    move-object/from16 v9, p0

    move-object/from16 v11, p1

    invoke-direct/range {v8 .. v14}, Lcom/android/server/epm/overlay/ThemeManagerService$3;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)V

    invoke-direct {v3, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_1
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_11
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    :catch_2
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private removeComponents(Ljava/lang/String;)V
    .locals 32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemeUninstallObserver;

    move-object/from16 v27, v0

    if-nez v27, :cond_0

    new-instance v27, Lcom/android/server/epm/overlay/ThemeManagerService$ThemeUninstallObserver;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService$ThemeUninstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemeUninstallObserver;

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v15, 0x0

    const-string/jumbo v5, "open_theme"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    const-string/jumbo v28, "trial_theme"

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    if-eqz v27, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    const-string/jumbo v28, "trial_theme"

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/HashMap;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    const/4 v15, 0x1

    const-string/jumbo v5, "trial_theme"

    :cond_2
    const/4 v8, 0x0

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialPackage:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_3

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeTrialPackage(Z)V

    :cond_3
    if-eqz v15, :cond_a

    new-instance v8, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "/data/overlays/jsonfiles/trialjson/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ".json"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_4
    sget-object v27, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "onPluginUninstalled -- masterOverlaysMap = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v25, 0x0

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    const-string/jumbo v28, "trial_theme"

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/HashMap;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/util/SparseArray;

    :cond_5
    :goto_2
    sget-object v27, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "removeThemePackageAA-- componentMap = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v25, :cond_24

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v27

    if-lez v27, :cond_24

    const/4 v12, 0x0

    :goto_3
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v12, v0, :cond_1d

    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v18, 0x0

    add-int/lit8 v27, v7, 0x1

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    const-wide/high16 v30, 0x4059000000000000L    # 100.0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v23, v0

    const/16 v27, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p1

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->sendCallBack(ILjava/lang/String;I)V

    add-int/lit8 v7, v7, 0x1

    const/16 v27, -0x1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->hashCode()I

    move-result v28

    sparse-switch v28, :sswitch_data_0

    :cond_7
    :goto_5
    packed-switch v27, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    if-eqz v18, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_6

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget-object v27, v27, v28

    if-eqz v27, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    const/16 v29, 0x0

    aput-object v29, v27, v28

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget-object v27, v27, v28

    if-eqz v27, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    const-string/jumbo v27, "open_theme"

    const/16 v28, 0x1

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(Ljava/lang/String;IZ)Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemeUninstallObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_a
    new-instance v8, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "/data/overlays/jsonfiles/userjson/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ".json"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    const-string/jumbo v28, "open_theme"

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    const-string/jumbo v28, "open_theme"

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/HashMap;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/util/SparseArray;

    goto/16 :goto_2

    :sswitch_0
    const-string/jumbo v28, "lock"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    const/16 v27, 0x0

    goto/16 :goto_5

    :sswitch_1
    const-string/jumbo v28, "home"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    const/16 v27, 0x1

    goto/16 :goto_5

    :sswitch_2
    const-string/jumbo v28, "wallpaper"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    const/16 v27, 0x2

    goto/16 :goto_5

    :sswitch_3
    const-string v28, "appstyle"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    const/16 v27, 0x3

    goto/16 :goto_5

    :sswitch_4
    const-string/jumbo v28, "font"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    const/16 v27, 0x4

    goto/16 :goto_5

    :sswitch_5
    const-string v28, "appicon"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    const/16 v27, 0x5

    goto/16 :goto_5

    :sswitch_6
    const-string/jumbo v28, "sound"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    const/16 v27, 0x6

    goto/16 :goto_5

    :pswitch_1
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    if-eqz v18, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_6

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    aget-object v27, v27, v28

    if-eqz v27, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    const/16 v29, 0x0

    aput-object v29, v27, v28

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    aget-object v27, v27, v28

    if-eqz v27, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    const-string/jumbo v27, "open_theme"

    const/16 v28, 0x8

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(Ljava/lang/String;IZ)Z

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemeUninstallObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_2
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    if-eqz v18, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_6

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    aget-object v27, v27, v28

    if-eqz v27, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    const/16 v29, 0x0

    aput-object v29, v27, v28

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    aget-object v27, v27, v28

    if-eqz v27, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f

    const-string/jumbo v27, "open_theme"

    const/16 v28, 0x2

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(Ljava/lang/String;IZ)Z

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemeUninstallObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "."

    const-string v29, "_"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ".png"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    new-instance v17, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "/data/overlays/lockwallpaper/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_10

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x7

    aget-object v27, v27, v28

    if-eqz v27, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x7

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x7

    const/16 v29, 0x0

    aput-object v29, v27, v28

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x7

    aget-object v27, v27, v28

    if-eqz v27, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x7

    aget-object v27, v27, v28

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "#"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_12

    const-string/jumbo v27, "open_theme"

    const/16 v28, 0x7

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(Ljava/lang/String;IZ)Z

    :cond_12
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_13

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemeUninstallObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    goto :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x5

    aget-object v27, v27, v28

    if-eqz v27, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x5

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x5

    const/16 v29, 0x0

    aput-object v29, v27, v28

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x5

    aget-object v27, v27, v28

    if-eqz v27, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x5

    aget-object v27, v27, v28

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_15

    const-string/jumbo v27, "open_theme"

    const/16 v28, 0x5

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(Ljava/lang/String;IZ)Z

    :cond_15
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "/data/overlays/font/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_17

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v0, v4

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_7
    move/from16 v0, v16

    if-ge v14, v0, :cond_16

    aget-object v11, v4, v14

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_16
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_5
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    if-eqz v18, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_6

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    aget-object v27, v27, v28

    if-eqz v27, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    const/16 v29, 0x0

    aput-object v29, v27, v28

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    aget-object v27, v27, v28

    if-eqz v27, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_19

    const-string/jumbo v27, "open_theme"

    const/16 v28, 0x3

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(Ljava/lang/String;IZ)Z

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemeUninstallObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/server/epm/overlay/ThemeManagerService;->cleanSoundDataInfo(Ljava/lang/String;)V

    new-instance v27, Ljava/io/File;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "/data/overlays/sound/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->deleteFile(Ljava/io/File;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x6

    aget-object v27, v27, v28

    if-eqz v27, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x6

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x6

    const/16 v29, 0x0

    aput-object v29, v27, v28

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x6

    aget-object v27, v27, v28

    if-eqz v27, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x6

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1b

    const-string/jumbo v27, "open_theme"

    const/16 v28, 0x6

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(Ljava/lang/String;IZ)Z

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_1c
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    :cond_1d
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "/data/overlays/preview/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_1f

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v0, v4

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_8
    move/from16 v0, v16

    if-ge v13, v0, :cond_1e

    aget-object v11, v4, v13

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_1e
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    aget-object v27, v27, v28

    if-eqz v27, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    const/16 v29, 0x0

    aput-object v29, v27, v28

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    const-string v28, "Event"

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    if-eqz v27, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    const-string v28, "Event"

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    const-string v28, "Event"

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    if-eqz v27, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput-object v29, v27, v28

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    if-eqz v27, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    if-eqz v27, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/HashMap;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeDeleted:Ljava/lang/String;

    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x2f4941e6 -> :sswitch_5
        0x300c4f -> :sswitch_4
        0x30f4df -> :sswitch_1
        0x32c52b -> :sswitch_0
        0x688c90f -> :sswitch_6
        0x46b5d030 -> :sswitch_3
        0x57e60e02 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private removeTrialPackage(Z)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveEventPackage:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v1, v3

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "packageName"

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "isTrial"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "order"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialPackage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->saveTrialPackage()V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveEventPackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveEventIndex:I

    iput v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventIndex:I

    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->onEventOccur()V

    goto :goto_0
.end method

.method private restoreDefaultRingtone(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 12

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->restoreSoundMap:Ljava/util/HashMap;

    invoke-virtual {v9, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v8, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;

    :cond_0
    if-nez v5, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v9, v5, Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;->mFilePath:Ljava/lang/String;

    invoke-static {v9}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v9, v5, Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v9, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->isRingToneEntryExist(Ljava/lang/String;Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p1, p3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v9, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "restore current sound to default: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-direct {p0, p3}, Lcom/android/server/epm/overlay/ThemeManagerService;->getCurRingtoneList(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v5, Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v2, v5, Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;->mUri:Landroid/net/Uri;

    :cond_2
    :goto_1
    invoke-static {p1, p3, v2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_3
    iget-object v9, v5, Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v9, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->deleteRingtoneEntry(Ljava/lang/String;Landroid/net/Uri;)I

    goto :goto_0

    :cond_4
    sget-object v9, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ringtone not exist. choice last one: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    goto :goto_1
.end method

.method private saveDefaultWallpaper()V
    .locals 3

    sget-object v1, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "saveDefaultWallpaper"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/epm/overlay/ThemeManagerService$5;

    invoke-direct {v2, p0, v0}, Lcom/android/server/epm/overlay/ThemeManagerService$5;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/app/WallpaperManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->isLiveWallpaper:Z

    goto :goto_0
.end method

.method private savePrevRingtone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;
    .locals 10

    invoke-static {p1, p4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    sget-object v6, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "savePrevRingtone type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " uri:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;

    invoke-direct {v4, p3, v1}, Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v7, "com.samsung.android.themecenter"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v6, "samsung.andorid.themes.component_preference"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_sound_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v4

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private saveTrialPackage()V
    .locals 6

    :try_start_0
    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.themecenter"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "samsung.andorid.themes.component_preference"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "TrialPackage"

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialPackage:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setAlarmForEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 14

    const-string v8, "USER_EVENT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USER_EVENT -- startTimerForEventThemeUninstall pkgName= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const-string v8, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    sget-object v8, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "value of splits year--->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Month --->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Day-->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",hours --->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",minutes--->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x4

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/4 v8, 0x5

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xb

    const/4 v9, 0x3

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xc

    const/4 v9, 0x4

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    const-string/jumbo v8, "open_theme"

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, ":"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    const/4 v8, 0x2

    invoke-virtual {v2, v8, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/4 v8, 0x5

    const/4 v9, 0x2

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xb

    const/4 v9, 0x3

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xc

    const/4 v9, 0x4

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    sget-object v9, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setting alarmaa "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move/from16 v0, p4

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "--->"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move/from16 v0, p4

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    invoke-virtual {v9, v10, v12, v13, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    add-int/lit8 p4, p4, 0x1

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move/from16 v0, p4

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    invoke-virtual {v9, v10, v12, v13, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto/16 :goto_0
.end method

.method private setDeleteMyEvents(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside setDeleteMyEvents adding values"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.myeventcenter"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v0, "samsung.andorid.themes.myevent_preference"

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {v10, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v0, "#"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v11, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v2, v11, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v2, v11, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->myEventTitlePackageMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v0, "true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x2

    aget-object v2, v11, v0

    const/4 v0, 0x0

    aget-object v3, v11, v0

    const/4 v0, 0x1

    aget-object v4, v11, v0

    move-object v0, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/epm/overlay/ThemeManagerService;->setTimeForMyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, "false"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->myEventTitlePackageMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private setFestivalPackage(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mSelectedEventDetails:Ljava/util/HashMap;

    const-string v1, "Festival"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveFestivalPackage:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    const-string v1, "Festival"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    sget-object v0, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "chinese festival ka"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v1, "starttime"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "endtime"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "Festival"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/epm/overlay/ThemeManagerService;->setAlarmForEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mSelectedEventDetails:Ljava/util/HashMap;

    const-string v1, "Festival"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V

    return-void
.end method

.method private setSoundDataInfo(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/overlays/sound/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v8, "#"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    sget-object v8, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "setSoundDataInfo length is not 2"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->restoreSoundMap:Ljava/util/HashMap;

    invoke-virtual {v8, p2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_2
    const/4 v8, 0x0

    aget-object v8, v5, v8

    const-string/jumbo v9, "ringtone"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    invoke-direct {p0, p1, p2, v1, v8}, Lcom/android/server/epm/overlay/ThemeManagerService;->savePrevRingtone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;

    move-result-object v3

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-direct {p0, p1, v8, p2, v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->setThemeRingtone(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v5, v8

    const-string/jumbo v9, "notification"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x2

    invoke-direct {p0, p1, p2, v1, v8}, Lcom/android/server/epm/overlay/ThemeManagerService;->savePrevRingtone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;

    move-result-object v3

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x2

    invoke-direct {p0, p1, v8, p2, v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->setThemeRingtone(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x0

    aget-object v8, v5, v8

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x4

    invoke-direct {p0, p1, p2, v1, v8}, Lcom/android/server/epm/overlay/ThemeManagerService;->savePrevRingtone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;

    move-result-object v3

    const/4 v8, 0x4

    invoke-virtual {v7, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x4

    invoke-direct {p0, p1, v8, p2, v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->setThemeRingtone(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    const/4 v8, 0x0

    aget-object v8, v5, v8

    const-string/jumbo v9, "screen_touch"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x0

    aget-object v8, v5, v8

    const-string/jumbo v9, "hw_touch"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "theme_touch_sound"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_7
    const/4 v8, 0x0

    aget-object v8, v5, v8

    const-string/jumbo v9, "keyboard"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "default_key_sound_path"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_8
    const/4 v8, 0x0

    aget-object v8, v5, v8

    const-string/jumbo v9, "keyboard_back"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "backspace_key_sound_path"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_9
    const/4 v8, 0x0

    aget-object v8, v5, v8

    const-string v9, "dial"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dialer_sound_theme_path"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private setSoundMapData(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const-string v0, "_sound_"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    if-eqz v3, :cond_0

    const-string v6, "#"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    if-ne v6, v9, :cond_0

    new-instance v1, Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;

    aget-object v6, v2, v10

    aget-object v7, v2, v8

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v6, "#"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    if-ne v6, v9, :cond_1

    new-instance v1, Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;

    aget-object v6, v2, v10

    aget-object v7, v2, v8

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v6, "#"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    if-ne v6, v9, :cond_2

    new-instance v1, Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;

    aget-object v6, v2, v10

    aget-object v7, v2, v8

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/android/server/epm/overlay/ThemeManagerService$RingtoneInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v12, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->restoreSoundMap:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setStoredActiveComponents()V
    .locals 22

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "com.samsung.android.themecenter"

    const/16 v21, 0x2

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v19, "samsung.andorid.themes.component_preference"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v14, v0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v8

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v19, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "active"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v8

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v19, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const-string v19, "activeCategory"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveCategory:Ljava/lang/String;

    const-string v19, "activeEventPackage"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveEventPackage:Ljava/lang/String;

    const-string v19, "activeMasterPackage"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveMasterPackage:Ljava/lang/String;

    const-string v19, "activeFestivalPackage"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveFestivalPackage:Ljava/lang/String;

    const-string v19, "activeEventIndex"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveEventIndex:I

    const-string v19, "coverPackage"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mCoverPackage:Ljava/lang/String;

    const-string v19, "currentPackageToBeInstalled"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    const-string/jumbo v19, "previousToCoverPackage"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mPreviousToCoverPackage:Ljava/lang/String;

    const-string/jumbo v19, "isCoverAttached"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mIsCoverAttached:Z

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v11, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "MyEvent"

    aput-object v20, v11, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "open_theme"

    aput-object v20, v11, v19

    const/16 v19, 0x2

    const-string v20, "Festival"

    aput-object v20, v11, v19

    move-object v3, v11

    array-length v12, v3

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v12, :cond_2

    aget-object v5, v3, v10

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1

    const-string v19, "#"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v4, v18

    array-length v13, v4

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v13, :cond_1

    aget-object v15, v4, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mSelectedEventDetails:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_1

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method private setThemeRingtone(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V
    .locals 14

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->getSoundTitleLocale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    if-lez p4, :cond_0

    invoke-static {v3}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    invoke-direct {p0, v3, v8}, Lcom/android/server/epm/overlay/ThemeManagerService;->deleteRingtoneEntry(Ljava/lang/String;Landroid/net/Uri;)I

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "_data"

    invoke-virtual {v9, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "title"

    invoke-virtual {v9, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "_size"

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v10, "mime_type"

    const-string v11, "audio/*"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "artist"

    const-string v11, "elastic"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "is_ringtone"

    const/4 v10, 0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_2

    const/4 v10, 0x1

    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v11, "is_notification"

    const/4 v10, 0x2

    move/from16 v0, p4

    if-ne v0, v10, :cond_3

    const/4 v10, 0x1

    :goto_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v11, "is_alarm"

    const/4 v10, 0x4

    move/from16 v0, p4

    if-ne v0, v10, :cond_4

    const/4 v10, 0x1

    :goto_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v10, "is_music"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v11, "is_ringtone_theme"

    const/4 v10, 0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_5

    const/4 v10, 0x1

    :goto_4
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v11, "is_notification_theme"

    const/4 v10, 0x2

    move/from16 v0, p4

    if-ne v0, v10, :cond_6

    const/4 v10, 0x1

    :goto_5
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v11, "is_alarm_theme"

    const/4 v10, 0x4

    move/from16 v0, p4

    if-ne v0, v10, :cond_7

    const/4 v10, 0x1

    :goto_6
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    goto :goto_6

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method private showEventBubble(Ljava/lang/String;)V
    .locals 23

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "com.samsung.android.themecenter"

    const/16 v21, 0x2

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "event_header_notification"

    const-string/jumbo v21, "layout"

    const-string v22, "com.samsung.android.themecenter"

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    new-instance v17, Landroid/widget/RemoteViews;

    const-string v19, "com.samsung.android.themecenter"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "button1"

    const-string/jumbo v21, "id"

    const-string v22, "com.samsung.android.themecenter"

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "button2"

    const-string/jumbo v21, "id"

    const-string v22, "com.samsung.android.themecenter"

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const-string v20, "com.samsung.android.themecenter"

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "event_header_noti_textView1"

    const-string/jumbo v21, "id"

    const-string v22, "com.samsung.android.themecenter"

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string/jumbo v20, "noti_msg"

    const-string/jumbo v21, "string"

    const-string v22, "com.samsung.android.themecenter"

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "notification"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/NotificationManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->notificationManager:Landroid/app/NotificationManager;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v19, "theme.installer.action.apply"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v19, "theme.installer.action.cancel"

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v15}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object p1, v20, v21

    const/16 v21, 0x1

    aput-object p1, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v19, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v19

    const v20, 0x1080024

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v19

    const-string v20, "Event Theme"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    move-object/from16 v0, v17

    iput-object v0, v12, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    move-object/from16 v0, v17

    iput-object v0, v12, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iget v0, v12, Landroid/app/Notification;->flags:I

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x110

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v12, Landroid/app/Notification;->flags:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->notificationManager:Landroid/app/NotificationManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startTimerForTrial(Ljava/lang/String;)V
    .locals 6

    const-string v2, "USER_TRIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USER_TRIAL -- startTimerForTrial pkgName= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/epm/overlay/ThemeManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$4;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;

    iget-object v1, v2, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dev_only"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v0, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    const-wide/32 v4, 0x124f80

    invoke-virtual {v2, v0, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method private storeActiveComponents()V
    .locals 13

    :try_start_0
    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v11, "com.samsung.android.themecenter"

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v10, "samsung.andorid.themes.component_preference"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v6, v10

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_0

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v11, v11, v2

    iget-object v12, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v12, v12, v2

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "active"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v12, v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v12, v12, v2

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "activeCategory"

    iget-object v12, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveCategory:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "activeMasterPackage"

    iget-object v12, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveMasterPackage:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "activeFestivalPackage"

    iget-object v12, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveFestivalPackage:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "currentPackageToBeInstalled"

    iget-object v12, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "coverPackage"

    iget-object v12, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCoverPackage:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "activeEventPackage"

    iget-object v12, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveEventPackage:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "activeEventIndex"

    iget v12, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveEventIndex:I

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string/jumbo v11, "previousToCoverPackage"

    iget-object v12, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPreviousToCoverPackage:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string/jumbo v11, "isCoverAttached"

    iget-boolean v12, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mIsCoverAttached:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mSelectedEventDetails:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, ""

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mSelectedEventDetails:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v7, v8

    goto :goto_2

    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method private storeFontPath(Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo v0, "theme_font_empty"

    const-string/jumbo v1, "theme_font_empty"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeFontPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private storeFontPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_themefont"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v15, "default"

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string/jumbo v18, "persist.sys.flipfontpath"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_0

    const-string/jumbo v18, "persist.sys.flipfontpath"

    const-string v19, "default#default"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v18, "OpenThemeFontSize"

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const-string v18, "OpenThemeFontSize"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "font_size"

    const/16 v21, 0x2

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    const-string/jumbo v18, "theme_font_restore"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, -0x63

    move/from16 v0, p4

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    const-string/jumbo v18, "persist.sys.flipfontpath"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v18, "/data/overlays/"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "theme_prev_font_system"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_6

    const-string/jumbo v18, "persist.sys.flipfontpath"

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v18, "#"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v16, v18, 0x1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v18

    sub-int v19, v7, v16

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v15

    const/4 v5, 0x1

    :goto_0
    const-string v18, "OpenThemeFontSize"

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    const/16 v18, -0x1

    move/from16 v0, p4

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "font_size"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v5, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "theme_font_system"

    const-string v20, ""

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "theme_font_clock"

    const-string v20, ""

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "theme_font_numeric"

    const-string v20, ""

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    :goto_1
    if-eqz v5, :cond_5

    :try_start_0
    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    if-nez p4, :cond_e

    const v9, 0x3f570a3d    # 0.84f

    :cond_4
    :goto_2
    iput v9, v10, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v10, Landroid/content/res/Configuration;->FlipFont:I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "theme_font_system"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_8

    :cond_7
    const-string/jumbo v18, "persist.sys.flipfontpath"

    const-string v19, "default#default"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v18, "persist.sys.flipfontpath"

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v18, "persist.sys.flipfontpath"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v18, "#"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v16, v18, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v18

    sub-int v19, v7, v16

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v18, "theme_font_empty"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    const-string/jumbo v18, "persist.sys.flipfontpath"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "theme_prev_font_system"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "#Theme"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v18, "persist.sys.flipfontpath"

    move-object/from16 v0, v18

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "Theme"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "theme_font_system"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/DroidSans.ttf"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v5, 0x1

    :cond_b
    const-string/jumbo v18, "theme_font_empty"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "theme_font_clock"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_c
    const-string/jumbo v18, "theme_font_empty"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "theme_font_numeric"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "font_size"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/16 v18, -0x58

    move/from16 v0, p4

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    move/from16 v0, p4

    if-eq v14, v0, :cond_3

    const-string v18, "OpenThemeFontSize"

    move-object/from16 v0, v18

    invoke-interface {v6, v0, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "font_size"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_e
    const/16 v18, 0x1

    move/from16 v0, p4

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    const v9, 0x3f666666    # 0.9f

    goto/16 :goto_2

    :cond_f
    const/16 v18, 0x2

    move/from16 v0, p4

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_2

    :cond_10
    const/16 v18, 0x3

    move/from16 v0, p4

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    const v9, 0x3f947ae1    # 1.16f

    goto/16 :goto_2

    :cond_11
    const/16 v18, 0x4

    move/from16 v0, p4

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    const v9, 0x3fa28f5c    # 1.27f

    goto/16 :goto_2

    :cond_12
    const/16 v18, 0x5

    move/from16 v0, p4

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    const v9, 0x3faf5c29    # 1.37f

    goto/16 :goto_2

    :cond_13
    const/16 v18, 0x6

    move/from16 v0, p4

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const v9, 0x3fc147ae    # 1.51f

    goto/16 :goto_2

    :catch_0
    move-exception v18

    goto/16 :goto_3
.end method


# virtual methods
.method public changeThemeState(Ljava/lang/String;IZ)V
    .locals 11

    if-nez p3, :cond_8

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialPackage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->saveTrialPackage()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCoverPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPreviousToCoverPackage:Ljava/lang/String;

    :goto_0
    const-string v0, "ThemeCoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "--->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_6

    const/4 v2, 0x1

    :goto_1
    const/16 v0, 0x9

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveCategory:Ljava/lang/String;

    invoke-direct {p0, v0, v2, p3}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(Ljava/lang/String;IZ)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPreviousToCoverPackage:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_2
    const/16 v0, 0x9

    if-ge v2, v0, :cond_4

    const/4 v3, 0x0

    const-string/jumbo v5, "open_theme"

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/epm/overlay/ThemeManagerService;->enableComponent(Ljava/lang/String;IIZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aput-object p1, v0, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    goto :goto_3

    :cond_4
    const-string v0, "ThemeCoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCoverPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-->>>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ThemeCoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "--"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    :goto_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveEventPackage:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveEventIndex:I

    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveMasterPackage:Ljava/lang/String;

    const-string/jumbo v0, "open_theme"

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveCategory:Ljava/lang/String;

    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mEnabledPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mDisabledPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mAppStylePackages:I

    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveMasterPackage:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x8

    iput v0, v10, Landroid/os/Message;->what:I

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "packageName"

    invoke-virtual {v9, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveCategory:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(Ljava/lang/String;IZ)Z

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aput-object p1, v0, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "open_theme"

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/epm/overlay/ThemeManagerService;->enableComponent(Ljava/lang/String;IIZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aput-object p1, v0, p2

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialPackage:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_9
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialPackage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->saveTrialPackage()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/ThemeManagerService;->startTimerForTrial(Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_6
    const/16 v0, 0x9

    if-ge v2, v0, :cond_b

    const/4 v0, 0x4

    if-eq v2, v0, :cond_a

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveCategory:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->disableComponent(Ljava/lang/String;IZ)Z

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x1

    :goto_7
    const/16 v0, 0x9

    if-ge v2, v0, :cond_d

    const/4 v0, 0x4

    if-eq v2, v0, :cond_c

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "trial_theme"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/epm/overlay/ThemeManagerService;->enableComponent(Ljava/lang/String;IIZLjava/lang/String;)Z

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_d
    const-string/jumbo v0, "trial_theme"

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveCategory:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveMasterPackage:Ljava/lang/String;

    goto/16 :goto_5
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

.method public extractWallpaper()V
    .locals 2

    sget-object v0, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string v1, "extractWallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->saveDefaultWallpaper()V

    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->applyNewWallpaper()V

    return-void
.end method

.method public getActiveComponents()[Ljava/lang/String;
    .locals 6

    const/16 v3, 0x9

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;

    iget-object v3, v3, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    aput-object v3, v2, v0

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public getActiveFestivalPackage()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveFestivalPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;

    iget-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mTitle:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveFestivalPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getActiveMyEvents()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v11, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v12, "com.samsung.android.myeventcenter"

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v11, "samsung.andorid.themes.myevent_preference"

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    sget-object v11, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Inside getActiveMyEvents"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const-string v12, "AnshulMapValues"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ": "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v11, "count"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "afterreboot"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "#"

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    aget-object v11, v9, v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v11, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "parseplugins11 separated[0]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, v9, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "fillList sepratedDate[0]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "fillList sepratedDate[1]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "fillList sepratedDate[2]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x2

    aget-object v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "fillList separated[3]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x3

    aget-object v13, v9, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v7
.end method

.method public getCategory()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getChineseFestivalList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    const-string v5, "Festival"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    const-string v5, "Festival"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;

    iget-object v3, v4, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mTitle:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getComponentPackageMap()Ljava/util/HashMap;
    .locals 9
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

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;

    iget-object v6, v7, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    const-string/jumbo v8, "trial_theme"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    const-string/jumbo v8, "trial_theme"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "dev_only"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "[Trial]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;

    iget-object v7, v7, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mVersion:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;

    iget-object v7, v7, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mVersion:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCoverPackageList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;

    iget-object v7, v7, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mVersion:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "[Cover]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;

    iget-object v7, v7, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mVersion:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    return-object v5
.end method

.method public getCoverAttachStatus(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCoverPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mIsCoverAttached:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentThemePackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveMasterPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getItemBitmap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    :try_start_0
    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v6, "wallpaper"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/WallpaperManager;

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    sget-object v6, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getItemBitmap bitmapId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", r = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    const-string v6, "drawable"

    invoke-virtual {v2, p1, v6, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    :try_start_1
    sget-object v6, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setResource resId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v3}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    const-string v6, "animation"

    const-string/jumbo v7, "xml"

    invoke-virtual {v2, v6, v7, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "opne_theme_effect_lockscreen_wallpaper"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "current_sec_theme_package_open_theme"

    invoke-static {v6, v7, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    sget-object v6, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string v7, "blaah = "

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getPreviousToCoverPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPreviousToCoverPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getStateThemePackage(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "trial_theme"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "trial_theme"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public installThemePackage(Landroid/net/Uri;Z)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    const/16 v1, 0x182

    sget-object v2, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "installThemePackage -- packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v1, v4}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mMasterInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v1, v4}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    const/16 v4, -0x232a

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->sendCallBack(ILjava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected installThemes(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const/16 v11, 0x182

    const/4 v15, -0x1

    :try_start_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v15, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    return-void

    :sswitch_0
    const-string/jumbo v16, "home"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/4 v15, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v16, "lock"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v16, "wallpaper"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/4 v15, 0x2

    goto :goto_0

    :sswitch_3
    const-string v16, "cover"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/4 v15, 0x3

    goto :goto_0

    :sswitch_4
    const-string v16, "appstyle"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/4 v15, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v16, "thirdparty"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/4 v15, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v16, "font"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/4 v15, 0x6

    goto :goto_0

    :sswitch_7
    const-string v16, "appicon"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/4 v15, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v16, "sound"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/16 v15, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string v16, "Event"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/16 v15, 0x9

    goto/16 :goto_0

    :pswitch_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".apk"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ".apk"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    const-string v17, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v15, v0, v1, v11, v2}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v4

    sget-object v15, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "exception in component :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    const-string v15, "appstyle"

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v15

    iput v15, v12, Landroid/os/Message;->arg1:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_2
    :try_start_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".apk"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ".apk"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    const-string v17, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v15, v0, v1, v11, v2}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".apk"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ".apk"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    const-string v17, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v15, v0, v1, v11, v2}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".apk"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ".apk"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    const-string v17, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v15, v0, v1, v11, v2}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    const/4 v9, 0x0

    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v15

    if-ge v9, v15, :cond_1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".apk"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ".apk"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    const-string v17, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v15, v0, v1, v11, v2}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :pswitch_6
    const/4 v9, 0x0

    :goto_4
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v15

    if-ge v9, v15, :cond_1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".apk"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ".apk"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    const-string v17, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThirdPartyInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThirdPartyInstallObserver;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v15, v0, v1, v11, v2}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :pswitch_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "/data/overlays/font/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p5

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    :cond_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v15, "#"

    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    aget-object v15, v6, v15

    const-string/jumbo v16, "system"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    const-string v15, "DroidSans.ttf"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "font/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v17, v6, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v8}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    const-string v15, "DroidSans-Bold.ttf"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "font/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v17, v6, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v8}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    goto :goto_5

    :cond_4
    const/4 v15, 0x0

    aget-object v15, v6, v15

    const-string/jumbo v16, "size"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    const/4 v15, 0x1

    aget-object v15, v6, v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "font/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v17, v6, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v8}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    goto/16 :goto_5

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :pswitch_8
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".apk"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ".apk"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    const-string v17, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v15, v0, v1, v11, v2}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "/data/overlays/sound/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_6

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->copySoundFiles(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_7
    const/4 v15, 0x1

    iput v15, v12, Landroid/os/Message;->arg1:I

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x380d2221 -> :sswitch_5
        -0x2f4941e6 -> :sswitch_7
        0x300c4f -> :sswitch_6
        0x30f4df -> :sswitch_0
        0x32c52b -> :sswitch_1
        0x403827a -> :sswitch_9
        0x5a753b7 -> :sswitch_3
        0x688c90f -> :sswitch_8
        0x46b5d030 -> :sswitch_4
        0x57e60e02 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method public isOnTrialMode(Ljava/lang/String;)Z
    .locals 8

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.android.themecenter"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v5, "samsung.andorid.themes.component_preference"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "TrialPackage"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isThemePackageExist(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeDeleted:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    const-string/jumbo v3, "open_theme"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    const-string/jumbo v3, "open_theme"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    const-string/jumbo v3, "trial_theme"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    const-string/jumbo v3, "trial_theme"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public normalMasterInstallation(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->onMasterInstalled(Ljava/lang/String;Z)V

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

.method public parseJson(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 55
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/16 v23, 0x0

    const/16 v44, 0x0

    const/16 v24, 0x0

    const/16 v17, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTotalComponentCount:I

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "themes.json"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v23

    new-instance v24, Ljava/io/InputStreamReader;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v44, Ljava/io/BufferedReader;

    move-object/from16 v0, v44

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual/range {v44 .. v44}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_2

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v18, 0x0

    if-eqz p3, :cond_1

    new-instance v18, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/overlays/jsonfiles/trialjson/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_2
    new-instance v17, Ljava/io/FileInputStream;

    invoke-direct/range {v17 .. v18}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v24, Ljava/io/InputStreamReader;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v44, Ljava/io/BufferedReader;

    move-object/from16 v0, v44

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    :cond_1
    new-instance v18, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/overlays/jsonfiles/userjson/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-eqz v44, :cond_3

    sget-object v2, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseJson --> Closing Buffered Reader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v44 .. v44}, Ljava/io/BufferedReader;->close()V

    :cond_3
    if-eqz v23, :cond_4

    sget-object v2, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseJson --> Closing Input Stream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v24, :cond_5

    sget-object v2, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseJson --> Closing Input Stream Reader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStreamReader;->close()V

    :cond_5
    if-eqz v17, :cond_6

    sget-object v2, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseJson --> Closing File Input Stream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    :cond_6
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    new-instance v27, Lorg/json/JSONObject;

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v38, Landroid/util/SparseArray;

    invoke-direct/range {v38 .. v38}, Landroid/util/SparseArray;-><init>()V

    const-string/jumbo v2, "opentheme_version"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v2, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "opentheme_version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "header"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    move-object/from16 v54, v0

    new-instance v2, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;

    const-string/jumbo v3, "title"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "description"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v54

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v2, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "category = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_7

    const-string v2, "MyEvent"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "Festival"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    const-string/jumbo v10, "open_theme"

    :cond_8
    if-eqz p3, :cond_9

    const-string/jumbo v10, "trial_theme"

    :cond_9
    if-nez p1, :cond_b

    const-string v2, "MyEvent"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "Festival"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "themes"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "themes"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    sget-object v2, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "category = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MyEvent"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "Festival"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "themes"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "themes"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "themes"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v30

    const/16 v20, 0x0

    :goto_3
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_4e

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v28

    const-string/jumbo v2, "lock"

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    if-eqz v15, :cond_11

    if-nez p1, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/epm/overlay/ThemeManagerService;->isPackageExisted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    if-eqz p1, :cond_e

    :cond_d
    move-object/from16 v0, v47

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    const-string/jumbo v2, "lock"

    move-object/from16 v0, v47

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "open_theme"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "lock"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "lock"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    const-string/jumbo v2, "open_theme"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "lock"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "lock"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    :cond_11
    const-string/jumbo v2, "home"

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_15

    if-nez p1, :cond_12

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/epm/overlay/ThemeManagerService;->isPackageExisted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_12
    if-eqz p1, :cond_14

    :cond_13
    move-object/from16 v0, v47

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    const-string/jumbo v2, "home"

    move-object/from16 v0, v47

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    :cond_15
    const-string v2, "appstyle"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v31

    if-eqz v31, :cond_21

    const-string v2, "applications"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_19

    const/16 v25, 0x0

    :goto_4
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_19

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v43

    if-nez p1, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->isPackageExisted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_16
    if-eqz p1, :cond_18

    :cond_17
    move-object/from16 v0, v47

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    :cond_19
    const-string/jumbo v2, "framework"

    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1c

    if-nez p1, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->isPackageExisted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_1a
    if-eqz p1, :cond_1c

    :cond_1b
    move-object/from16 v0, v47

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    const-string/jumbo v2, "twframework"

    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    if-eqz v53, :cond_1f

    if-nez p1, :cond_1d

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->isPackageExisted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1d
    if-eqz p1, :cond_1f

    :cond_1e
    move-object/from16 v0, v47

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    const-string v2, "appstyle"

    move-object/from16 v0, v47

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    :cond_20
    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    :cond_21
    const-string/jumbo v2, "wallpaper"

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_27

    if-nez p1, :cond_22

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/epm/overlay/ThemeManagerService;->isPackageExisted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    :cond_22
    if-eqz p1, :cond_24

    :cond_23
    move-object/from16 v0, v47

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    const-string/jumbo v2, "wallpaper"

    move-object/from16 v0, v47

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "open_theme"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "wallpaper"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "wallpaper"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    const-string/jumbo v2, "open_theme"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "wallpaper"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "wallpaper"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_27

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    :cond_27
    const-string v2, "appicon"

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2d

    if-nez p1, :cond_28

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/epm/overlay/ThemeManagerService;->isPackageExisted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    :cond_28
    if-eqz p1, :cond_2a

    :cond_29
    move-object/from16 v0, v47

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    const-string v2, "appicon"

    move-object/from16 v0, v47

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "open_theme"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "appicon"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "appicon"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    const-string/jumbo v2, "open_theme"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "appicon"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v3, "appicon"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    :cond_2d
    const-string/jumbo v2, "title"

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v51, v15

    if-eqz v15, :cond_2e

    move-object/from16 v0, v47

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "title"

    move-object/from16 v0, v47

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    :cond_2e
    const-string/jumbo v2, "font"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    if-eqz v26, :cond_33

    const-string/jumbo v2, "system"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    if-eqz v49, :cond_2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "system#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v47

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    const-string v2, "clock"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clock#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v47

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    const-string/jumbo v2, "numeric"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "numeric#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v47

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_31
    const-string/jumbo v2, "size"

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    if-eqz v46, :cond_32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    const-string/jumbo v2, "font"

    move-object/from16 v0, v47

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_33

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    :cond_33
    const-string v2, "cover"

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_37

    if-nez p1, :cond_34

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/epm/overlay/ThemeManagerService;->isPackageExisted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    :cond_34
    if-eqz p1, :cond_36

    :cond_35
    move-object/from16 v0, v47

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_36
    const-string v2, "cover"

    move-object/from16 v0, v47

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ThemeCoverManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cover package is there"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCoverPackageList:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_37

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    :cond_37
    const-string/jumbo v2, "sound"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v32

    if-eqz v32, :cond_40

    const-string/jumbo v2, "ringtone"

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    if-eqz v45, :cond_38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ringtone#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_38
    const-string/jumbo v2, "notification"

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    if-eqz v36, :cond_39

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notification#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v47

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39
    const-string v2, "alarm"

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alarm#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v47

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3a
    const-string/jumbo v2, "screen_touch"

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    if-eqz v52, :cond_3b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "screen_touch#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v47

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    const-string/jumbo v2, "hw_touch"

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    if-eqz v52, :cond_3c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hw_touch#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v47

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c
    const-string/jumbo v2, "keyboard"

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    if-eqz v52, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "keyboard#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v47

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    const-string/jumbo v2, "keyboard_back"

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    if-eqz v52, :cond_3e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "keyboard_back#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v47

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    const-string v2, "dial"

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dial#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v47

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3f
    const-string/jumbo v2, "sound"

    move-object/from16 v0, v47

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_40

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    :cond_40
    const-string/jumbo v2, "thirdparty"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v34

    if-eqz v34, :cond_48

    const/16 v25, 0x0

    :goto_5
    invoke-virtual/range {v34 .. v34}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_44

    move-object/from16 v0, v34

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-nez p1, :cond_41

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/epm/overlay/ThemeManagerService;->isPackageExisted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    :cond_41
    if-eqz p1, :cond_43

    :cond_42
    move-object/from16 v0, v47

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v25, v25, 0x1

    goto :goto_5

    :cond_44
    const-string/jumbo v2, "thirdparty"

    move-object/from16 v0, v47

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "thirdparty"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_45

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "thirdparty"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "thirdparty"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v3, "thirdparty"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_46
    if-eqz p1, :cond_47

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    :cond_47
    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    :cond_48
    if-nez v20, :cond_49

    const-string v2, "Festival"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    :cond_49
    const-string/jumbo v2, "notifyuser"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4a

    move-object/from16 v0, v47

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "notifyuser"

    move-object/from16 v0, v47

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    :cond_4a
    const-string/jumbo v2, "starttime"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v50

    if-eqz v50, :cond_4b

    const/16 v25, 0x0

    :goto_6
    invoke-virtual/range {v50 .. v50}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_4b

    move-object/from16 v0, v50

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v48

    invoke-interface/range {v47 .. v48}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v25, v25, 0x1

    goto :goto_6

    :cond_4b
    const-string/jumbo v2, "starttime"

    move-object/from16 v0, v47

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v2, "theme.installer.action"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "category"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "index"

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "endtime"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v50

    if-eqz v50, :cond_4c

    const/16 v25, 0x0

    :goto_7
    invoke-virtual/range {v50 .. v50}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_4c

    move-object/from16 v0, v50

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v47

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v25, v25, 0x1

    goto :goto_7

    :cond_4c
    const-string v2, "endtime"

    move-object/from16 v0, v47

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v21, Landroid/content/Intent;

    const-string/jumbo v2, "theme.uninstaller.action"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "category"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "index"

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    move-object/from16 v0, v38

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    :cond_4e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4f

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "open_theme"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->myEventPackageMap:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_50

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->myEventPackageMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->myEventPackageMap:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_51
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTotalComponentCount:I

    return-object v10
.end method

.method public parsePlugins()V
    .locals 30

    :try_start_0
    new-instance v21, Ljava/io/File;

    const-string v3, "/data/overlays/jsonfiles/userjson"

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.themecenter"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v3, "samsung.andorid.themes.component_preference"

    const/4 v5, 0x0

    invoke-virtual {v12, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    const-string v3, "TrialPackage"

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const/16 v18, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v9, v16

    array-length v0, v9

    move/from16 v20, v0

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    aget-object v28, v9, v17

    const/4 v3, 0x0

    const-string v5, ".json"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPreLoadedPackages:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPreLoadedPackages:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1, v5}, Lcom/android/server/epm/overlay/ThemeManagerService;->parseJson(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->setSoundMapData(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_1
    new-instance v21, Ljava/io/File;

    const-string v3, "/data/overlays/jsonfiles/trialjson"

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v9, v16

    array-length v0, v9

    move/from16 v20, v0

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    aget-object v28, v9, v17

    const/4 v3, 0x0

    const-string v5, ".json"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1, v5}, Lcom/android/server/epm/overlay/ThemeManagerService;->parseJson(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->setSoundMapData(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPreLoadedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->isPackageExisted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    const/16 v3, 0xd

    move-object/from16 v0, v22

    iput v3, v0, Landroid/os/Message;->what:I

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "packageName"

    move-object/from16 v0, v24

    invoke-virtual {v10, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    iput-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v14

    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_3
    return-void

    :cond_5
    if-eqz v29, :cond_6

    :try_start_1
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialPackage:Ljava/lang/String;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->startTimerForTrial(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.myeventcenter"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v13

    if-eqz v13, :cond_4

    const-string/jumbo v3, "samsung.andorid.themes.myevent_preference"

    const/4 v5, 0x0

    invoke-virtual {v13, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_7
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    sget-object v5, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v3, "afterreboot"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v3, "#"

    invoke-virtual {v11, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    sget-object v3, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseplugins11 separated[0]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v27, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseplugins11 separated[1]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v27, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "afterreboot"

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v3, 0x3

    aget-object v3, v27, v3

    const-string v5, "enabled"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x2

    aget-object v5, v27, v3

    const/4 v3, 0x0

    aget-object v6, v27, v3

    const/4 v3, 0x1

    aget-object v7, v27, v3

    move-object/from16 v3, p0

    move-object v8, v4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/epm/overlay/ThemeManagerService;->setTimeForMyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v14

    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    :cond_8
    :try_start_4
    sget-object v3, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseplugins after reboot set again"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "afterreboot"

    const/4 v7, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "afterreboot"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v3, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseplugins after reboot set again ahahha"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "afterreboot"

    const/4 v7, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3
.end method

.method public removeThemePackage(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPluginUninstalled -- packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeDeleted:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mMasterDeleteObserver:Lcom/android/server/epm/overlay/ThemeManagerService$MasterDeleteObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "themes"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "themes"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "themes"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$6;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    const-string v1, "TMS Before Looper.loop - call parsePlugin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->setStoredActiveComponents()V

    invoke-virtual {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->parsePlugins()V

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeThemePackage(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V

    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public sendCallBack(ILjava/lang/String;I)V
    .locals 8

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCallbackList:Ljava/util/Vector;

    monitor-enter v5

    packed-switch p1, :pswitch_data_0

    :cond_0
    :try_start_0
    monitor-exit v5

    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCallbackList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/epm/IPluginManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v4, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "packageDeleted --> common = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", returnCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p2, p3}, Landroid/app/epm/IPluginManagerCallback;->onUninstallCompleted(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :pswitch_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCallbackList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/epm/IPluginManagerCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v0, p2, p3}, Landroid/app/epm/IPluginManagerCallback;->onUninstallProgress(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCallbackList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/epm/IPluginManagerCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-interface {v0, p2, p3}, Landroid/app/epm/IPluginManagerCallback;->onInstallCompleted(Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :pswitch_3
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCallbackList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/epm/IPluginManagerCallback;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-interface {v0, p2, p3}, Landroid/app/epm/IPluginManagerCallback;->onInstallProgress(Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :catch_3
    move-exception v1

    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :pswitch_4
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCallbackList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/epm/IPluginManagerCallback;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    const-string/jumbo v4, "themes"

    invoke-interface {v0, p2, v4, p3}, Landroid/app/epm/IPluginManagerCallback;->onStateChangeCompleted(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    :catch_4
    move-exception v1

    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :pswitch_5
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCallbackList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/epm/IPluginManagerCallback;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-interface {v0, p2, p3}, Landroid/app/epm/IPluginManagerCallback;->onStateChangeProgress(Ljava/lang/String;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    :catch_5
    move-exception v1

    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCallback(Landroid/app/epm/IPluginManagerCallback;)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mCallbackList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/server/epm/overlay/ThemeManagerService$CallBackDead;

    invoke-direct {v1, p0, p1}, Lcom/android/server/epm/overlay/ThemeManagerService$CallBackDead;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/app/epm/IPluginManagerCallback;)V

    :try_start_0
    invoke-interface {p1}, Landroid/app/epm/IPluginManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setStateThemePackage(Ljava/lang/String;I)I
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    const-string/jumbo v6, "trial_theme"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/overlays/jsonfiles/trialjson/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/data/overlays/jsonfiles/userjson"

    invoke-direct {p0, v5, v1, v6}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v5, p1, v6}, Lcom/android/server/epm/overlay/ThemeManagerService;->parseJson(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    const-string/jumbo v6, "trial_theme"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    sget-object v5, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialPackage:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialPackage:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v5}, Ljava/util/Timer;->cancel()V

    iput-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialPackage:Ljava/lang/String;

    const-string/jumbo v5, "open_theme"

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveCategory:Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    const/16 v5, 0x9

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aput-object p1, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v5, v5, v8

    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveMasterPackage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V

    :cond_2
    return v8
.end method

.method public setTimeForMyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.myeventcenter"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v2, "samsung.andorid.themes.myevent_preference"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    const-string v2, "afterreboot"

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "enabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->myEventTitlePackageMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Anshul"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inside setTimeForMyEventChanged ==>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    const-string v5, "MyEvent"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    const-string v3, "MyEvent"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "Anshul"

    const-string v3, "Inside setTimeForMyEvent inside first_if"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    const-string v3, "MyEvent"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v2, "theme.installer.action"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    move-object/from16 v0, p1

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "index"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "category"

    const-string v3, "MyEvent"

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "title"

    move-object/from16 v0, p5

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v12, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v2, "theme.uninstaller.action"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    move-object/from16 v0, p1

    invoke-virtual {v11, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "index"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "category"

    const-string v3, "MyEvent"

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "title"

    move-object/from16 v0, p5

    invoke-virtual {v11, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v11, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mSelectedEventDetails:Ljava/util/HashMap;

    const-string v3, "MyEvent"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "MyEvent"

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/epm/overlay/ThemeManagerService;->setAlarmForEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
