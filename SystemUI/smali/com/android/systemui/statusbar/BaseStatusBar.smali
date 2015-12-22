.class public abstract Lcom/android/systemui/statusbar/BaseStatusBar;
.super Lcom/android/systemui/SystemUI;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;
.implements Lcom/android/systemui/RecentsComponent$Callbacks;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
.implements Lcom/android/systemui/statusbar/NotificationData$Environment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/BaseStatusBar$19;,
        Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;,
        Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;,
        Lcom/android/systemui/statusbar/BaseStatusBar$H;,
        Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;,
        Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;
    }
.end annotation


# static fields
.field private static final ACTION_RCP_POLICY_CHANGED:Ljava/lang/String; = "samsung.knox.intent.action.RCP_POLICY_CHANGED"

.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final BANNER_ACTION_CANCEL:Ljava/lang/String; = "com.android.systemui.statusbar.banner_action_cancel"

.field private static final BANNER_ACTION_SETUP:Ljava/lang/String; = "com.android.systemui.statusbar.banner_action_setup"

.field public static final BRIDGE_COMPONENT:Ljava/lang/String; = "com.sec.knox.bridge/com.sec.knox.bridge.activity.SwitchB2BActivity"

.field public static final DEBUG:Z

.field protected static final ENABLE_HEADS_UP:Z = true

.field public static final EXPANDED_FULL_OPEN:I = -0x2711

.field public static final EXPANDED_LEAVE_ALONE:I = -0x2710

.field private static final HIDDEN_NOTIFICATION_ID:I = 0x2710

.field protected static final INTERRUPTION_THRESHOLD:I = 0xa

.field public static final KEEP:I = 0x3131d

.field protected static final KNOX_DEBUG:Z

.field public static final KNOX_EXPORT_DATA:I = 0x2

.field public static final KNOX_IMPORT_DATA:I = 0x1

.field public static final KNOX_NO_SANITIZING:I = 0x8

.field public static final KNOX_SANITIZING:I = 0x4

.field public static final KNOX_SANITIZING_LOCKSCREEN:I = 0x10

.field protected static final KNOX_TAG:Ljava/lang/String; = "KnoxNotification"

.field public static final MAGIC_NUMBER_HIDE_NOTIFICATION:I = -0x7f7f7f80

.field public static final MAGIC_NUMBER_HIDE_NOTIFICATION_ICON:I = 0x10101010

.field protected static final MSG_CANCEL_PRELOAD_RECENT_APPS:I = 0x3ff

.field protected static final MSG_CLOSE_SEARCH_PANEL:I = 0x403

.field protected static final MSG_DECAY_HEADS_UP:I = 0x407

.field protected static final MSG_ENABLE_SIGNAL:I = 0x408

.field protected static final MSG_ESCALATE_HEADS_UP:I = 0x406

.field protected static final MSG_HIDE_HEADS_UP:I = 0x405

.field protected static final MSG_HIDE_RECENT_APPS:I = 0x3fc

.field protected static final MSG_PRELOAD_RECENT_APPS:I = 0x3fe

.field protected static final MSG_SHOW_HEADS_UP:I = 0x404

.field protected static final MSG_SHOW_NEXT_AFFILIATED_TASK:I = 0x400

.field protected static final MSG_SHOW_PREV_AFFILIATED_TASK:I = 0x401

.field protected static final MSG_SHOW_RECENT_APPS:I = 0x3fb

.field protected static final MSG_TICKER_HALT:I = 0x409

.field protected static final MSG_TOGGLE_RECENTS_APPS:I = 0x3fd

.field public static final MULTIUSER_DEBUG:Z = false

.field public static final MYKNOX_PKG:Ljava/lang/String; = "com.samsung.knoxpb.mdm"

.field public static final NONE:I = 0x0

.field protected static final SETTING_HEADS_UP_TICKER:Ljava/lang/String; = "ticker_gets_heads_up"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field public static final TAG:Ljava/lang/String; = "StatusBar"

.field public static isAutoBrightBoxChecked:Z

.field public static isAutoBrightBoxCheckingChanged:Z

.field public static isNetworkAvailable:Z

.field private static final mExportDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mImportDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mIs3LMAllowed:Z

.field public static mIsNavigationBarHidden:Z

.field public static mIsStatusBarHidden:Z

.field protected static final mKnoxInLockMode:Landroid/util/SparseBooleanArray;

.field protected static final mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

.field protected static mLayoutDirection:I

.field private static final mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSystemSignature:[Landroid/content/pm/Signature;


# instance fields
.field containerObserver:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field public isUniversalLockBoolean:Z

.field protected mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mActivated:Z

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mBouncerShowing:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field protected final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentUserId:I

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field protected mDisableNotificationAlerts:Z

.field protected mDismissView:Lcom/android/systemui/statusbar/DismissView;

.field protected mDisplay:Landroid/view/Display;

.field protected mDreamManager:Landroid/service/dreams/IDreamManager;

.field protected mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

.field private mFastOutLinearIn:Landroid/animation/TimeInterpolator;

.field private mFontScale:F

.field protected mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

.field protected mHeadsUpNotificationDecay:I

.field protected mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

.field protected mHeadsUpTicker:Z

.field private mHideAppNotificationList:[Ljava/lang/String;

.field private mIsMobileKeyboard:Z

.field public mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

.field private mLocale:Ljava/util/Locale;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenKnoxMode:Z

.field private mLockscreenPublicMode:Z

.field private final mLockscreenSettingsObserver:Landroid/database/ContentObserver;

.field protected mMaxKeyguardNotifications:I

.field private mNMS:Landroid/app/INotificationManager;

.field protected mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field protected mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field private mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

.field private final mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field public mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field protected mPanelSlightlyVisible:Z

.field private mPm:Landroid/os/PersonaManager;

.field mPowerManager:Landroid/os/PowerManager;

.field protected mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

.field private final mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

.field public mReasonClear:I

.field protected mRecents:Lcom/android/systemui/RecentsComponent;

.field protected mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected mRowMaxHeight:I

.field protected mRowMinHeight:I

.field public mScreen:Lcom/samsung/android/dualscreen/DualScreen;

.field protected mScrollView:Landroid/widget/ScrollView;

.field protected mSearchPanelView:Lcom/android/systemui/SearchPanelView;

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field protected mShowLockscreenNotifications:Z

.field public mShowSFinderQConnectView:Z

.field public mSingleLine:Z

.field protected mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field protected mState:I

.field protected mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field protected mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

.field protected mUseHeadsUp:Z

.field private mUserManager:Landroid/os/UserManager;

.field private final mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected mWindowManagerService:Landroid/view/IWindowManager;

.field protected mZenMode:I

.field protected panelRevealedByUser:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "StatusBar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    sput-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNavigationBarHidden:Z

    const-string v0, "eng"

    const-string v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iput v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    iput-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpTicker:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisableNotificationAlerts:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->panelRevealedByUser:Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenKnoxMode:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSingleLine:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->isUniversalLockBoolean:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mActivated:Z

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$3;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$4;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$5;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$6;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsMobileKeyboard:Z

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$13;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMaxKeyguardNotifications:I

    return-void
.end method

.method private FlipFontSwitched()V
    .locals 4

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->FlipFont:I

    iget v3, v2, Landroid/content/res/Configuration;->FlipFont:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    iget v3, v2, Landroid/content/res/Configuration;->FlipFont:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/content/res/Configuration;->FlipFont:I

    :goto_0
    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    :goto_1
    return-void

    :cond_0
    iget v3, v2, Landroid/content/res/Configuration;->FlipFont:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/content/res/Configuration;->FlipFont:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static IsDualFolderType(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/BaseStatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/BaseStatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->startAppNotificationSettingsActivity(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/content/Intent;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/BaseStatusBar;->startAppOwnNotificationSettingsActivity(Landroid/content/Intent;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->doBlock(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/BaseStatusBar;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->knoxContainerInLockMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/os/PersonaManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->FlipFontSwitched()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/BaseStatusBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->registerPersonaObserver(I)V

    return-void
.end method

.method static synthetic access$600()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$700()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$800()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$900()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method private alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doBlock(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNMS:Landroid/app/INotificationManager;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNMS:Landroid/app/INotificationManager;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->showUnlockHintToast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private findPackageInfo(Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;)Landroid/content/pm/PackageInfo;
    .locals 6

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    array-length v0, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, v4, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x40

    :try_start_0
    invoke-virtual {p1, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_1
    return-object v5

    :catch_0
    move-exception v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIsAutoBrightBoxChecked()Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->isAutoBrightBoxCheckingChanged:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->isAutoBrightBoxChecked:Z

    return v0
.end method

.method public static getIsNetworkAvailable()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkAvailable:Z

    return v0
.end method

.method private getKnoxName(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/os/PersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPolicy(ILjava/lang/String;I)Z
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v1, "true"

    const-string v0, "false"

    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v6

    if-nez v6, :cond_1

    move v8, v7

    :cond_0
    :goto_0
    return v8

    :cond_1
    const/4 v2, 0x0

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;

    :goto_1
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_4

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v9, "persona"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaManager;

    iput-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    const-string v9, "persona_policy"

    invoke-virtual {v6, v9}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaPolicyManager;

    if-eqz v4, :cond_0

    const-string v6, "Notifications"

    invoke-virtual {v4, p1, v6, p2}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "false"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    invoke-virtual {v2, p1, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    sget-boolean v6, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "KnoxNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPolicy: policy value returned = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    :goto_3
    move v8, v6

    goto :goto_0

    :sswitch_1
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;

    goto :goto_1

    :sswitch_2
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;

    goto :goto_1

    :sswitch_3
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v6, "KnoxNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPolicy: threw an exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_6
    move v6, v8

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-ltz p2, :cond_0

    array-length v3, v2

    if-ge p2, v3, :cond_0

    aget-object v3, v2, p2

    if-eqz v3, :cond_0

    aget-object v1, v2, p2

    :cond_0
    if-nez v1, :cond_1

    :goto_0
    return-object p3

    :cond_1
    move-object p3, v1

    goto :goto_0
.end method

.method private getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;
    .locals 3

    :try_start_0
    const-string v1, "android"

    const/16 v2, 0x40

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasKnoxTitleChanged(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    new-instance v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-direct {v0, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMyKnoxAdmin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v1, :cond_1

    const-string v7, "com.samsung.knoxpb.mdm"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move-object v3, v2

    :goto_0
    return-object v3

    :cond_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v5

    invoke-virtual {v5, p1, v8}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v6, v4, v8

    invoke-virtual {v5, v6, v8}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v3, v2

    goto :goto_0
.end method

.method private hideExistingBadgeOfBigContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V
    .locals 3

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KnoxNotification"

    const-string v2, "----- Inside hideExistingBadgeOfBigContentView -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v1, 0x10203d7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "KnoxNotification"

    const-string v2, "----- hideExistingBadgeOfBigContentView: Hiding badgeLarge  -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V

    return-void
.end method

.method private hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V
    .locals 5

    const/16 v4, 0x8

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KnoxNotification"

    const-string v3, "----- Inside hideExistingBadgeOfContentView -----"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v2, 0x10203e7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "KnoxNotification"

    const-string v3, "----- hideExistingBadgeOfContentView: Hiding badgeLine2  -----"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const v2, 0x10203ea

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "KnoxNotification"

    const-string v3, "----- hideExistingBadgeOfContentView: Hiding badgeLine3  -----"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private inflateGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 28

    const v23, 0x7f0e03eb

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewStub;

    if-eqz v22, :cond_0

    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    const v23, 0x7f0e0250

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v10, v17

    const/16 v18, 0x0

    const/4 v9, 0x0

    const/4 v7, -0x1

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v23

    sget-object v24, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual/range {v23 .. v24}, Landroid/os/PersonaManager$KnoxContainerVersion;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    const/4 v15, 0x1

    :goto_0
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v23

    sget-object v24, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual/range {v23 .. v24}, Landroid/os/PersonaManager$KnoxContainerVersion;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    const/16 v16, 0x1

    :goto_1
    const/16 v23, 0x2200

    :try_start_0
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    if-eqz v13, :cond_1

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    iget v7, v13, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v23

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v23, v0

    new-instance v24, Landroid/os/UserHandle;

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v25

    invoke-direct/range {v24 .. v25}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :goto_3
    if-eqz v12, :cond_3

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v23

    if-eqz v23, :cond_2

    if-nez v15, :cond_3

    if-nez v16, :cond_3

    :cond_2
    const v23, 0x1020006

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v23

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-nez v23, :cond_7

    const v23, 0x7f0e0252

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/DateTimeView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Landroid/widget/DateTimeView;->setTime(J)V

    :goto_4
    const v23, 0x7f0e0251

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v23, 0x7f0e0255

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const v23, 0x7f0e0254

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-ltz v7, :cond_9

    move v8, v7

    new-instance v23, Lcom/android/systemui/statusbar/BaseStatusBar$9;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v8}, Lcom/android/systemui/statusbar/BaseStatusBar$9;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v23, Landroid/content/Intent;

    const-string v24, "android.intent.action.MAIN"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v24, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_8

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0d02dc

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v10, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v24, Landroid/content/Intent;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    new-instance v23, Lcom/android/systemui/statusbar/BaseStatusBar$10;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v5, v2, v8}, Lcom/android/systemui/statusbar/BaseStatusBar$10;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/content/Intent;Landroid/service/notification/StatusBarNotification;I)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    return-void

    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v11

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    goto/16 :goto_2

    :cond_6
    move-object/from16 v9, v18

    goto/16 :goto_3

    :cond_7
    const v23, 0x7f0e0252

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/DateTimeView;

    invoke-virtual/range {v20 .. v20}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v24

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Landroid/widget/DateTimeView;->setTime(J)V

    goto/16 :goto_4

    :cond_8
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_9
    const/16 v23, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method private inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    move-result v0

    return v0
.end method

.method private inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z
    .locals 57

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRowMaxHeight:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->PRIVATE_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->reimposeBadgeAtBottomRight(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->BIG_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->reimposeBadgeAtBottomRight(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_0
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v0, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v16, v0

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v13, v7, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz p3, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0306

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->HEADSUP_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->reimposeBadgeAtBottomRight(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_1
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v13, v7, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_2
    if-nez v16, :cond_3

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_3
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "publicNotification: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-object v9, v9, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v0, v7, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v45, v0

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v45, :cond_5

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    sget-object v8, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->PUBLIC_CONTENT_VIEW:Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->reimposeBadgeAtBottomRight(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_5
    const/16 v27, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v7, :cond_20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v27

    invoke-virtual/range {v47 .. v47}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v54

    invoke-virtual/range {v47 .. v47}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v55

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->reset()V

    if-eqz v27, :cond_6

    move-object/from16 v0, v47

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    :cond_6
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->workAroundBadLayerDrawableOpacity(Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f0d029a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v56

    invoke-virtual {v0, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v7, 0x7f0e03e7

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/statusbar/NotificationContentView;

    const v7, 0x7f0e03e8

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/NotificationContentView;

    const v7, 0x7f0e03e9

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/NotificationContentView;

    const/high16 v7, 0x60000

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseEventNotification:Z

    if-eqz v7, :cond_7

    const-string v7, "com.sec.android.app.eventnotification"

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0497

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setMinHeight(I)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRowMinHeight:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setMinHeight(I)V

    :cond_7
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v15, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v15, :cond_21

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v15, v7, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v34

    move-object/from16 v0, v47

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    const v7, 0x7f0e03e0

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v36

    new-instance v7, Lcom/android/systemui/statusbar/BaseStatusBar$15;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$15;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f0e03e6

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v37

    new-instance v7, Lcom/android/systemui/statusbar/BaseStatusBar$16;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$16;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v17, 0x0

    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v7, v1, v8}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v17

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v24

    invoke-virtual {v13, v7, v0, v8}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    :cond_8
    if-eqz v17, :cond_a

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V

    :cond_9
    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    :cond_a
    if-eqz v14, :cond_c

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfBigContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    :cond_b
    const/4 v7, 0x1

    invoke-virtual {v14, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    :cond_c
    if-eqz v17, :cond_10

    if-eqz v14, :cond_d

    const v7, 0x10203d9

    invoke-virtual {v14, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_10

    :cond_d
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v49

    move-object/from16 v0, v49

    instance-of v7, v0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v7, :cond_e

    move-object/from16 v0, v49

    instance-of v7, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v7, :cond_f

    :cond_e
    move-object/from16 v0, v24

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setBackgroundForDragDown(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {v47 .. v47}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->changeBackgroundForDragDown()V

    :cond_f
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v7, :cond_10

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_22

    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sq76 Drawable : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "pkg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_3
    const/16 v46, 0x0

    if-eqz v45, :cond_12

    :try_start_1
    move-object/from16 v0, v45

    iget-object v7, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v26

    invoke-virtual {v7, v8, v0, v9}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v46

    if-eqz v46, :cond_12

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V

    :cond_11
    const/4 v7, 0x1

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_12
    :goto_4
    :try_start_2
    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v32

    move-object/from16 v0, v32

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, p1

    iput v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v7, :cond_13

    const-string v7, "KnoxNotification"

    const-string v8, "-----------------------BaseStatusBar--------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "KnoxNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notification - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "KnoxNotification"

    const-string v8, "-----------------------BaseStatusBar--------------------------------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/16 v19, 0x0

    if-nez v46, :cond_18

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_23

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040057

    const/4 v9, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    const v7, 0x7f0e01c8

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04006b

    const/4 v9, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v46

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    :goto_6
    const-string v7, "KnoxNotification"

    const-string v8, "----- inflateViews : modified publicViewLocal -----"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v7, 0x7f0e00c0

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/TextView;

    const/4 v7, 0x5

    :try_start_3
    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextDirection(I)V

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_7
    const v7, 0x7f0e00bf

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_24

    if-eqz v19, :cond_24

    const v7, 0x7f0e01c9

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    :goto_8
    check-cast v7, Landroid/widget/ImageView;

    move-object/from16 v43, v7

    check-cast v43, Landroid/widget/ImageView;

    new-instance v6, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget v10, v10, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget v11, v11, Landroid/app/Notification;->number:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_14

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_15

    :cond_14
    const v7, 0x10805cc

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105005b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v38

    move-object/from16 v0, v28

    move/from16 v1, v38

    move/from16 v2, v38

    move/from16 v3, v38

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget v7, v7, Landroid/app/Notification;->color:I

    if-eqz v7, :cond_15

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->color:I

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_15
    if-eqz v43, :cond_16

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v44

    if-eqz v44, :cond_25

    invoke-virtual/range {v43 .. v44}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_16
    :goto_9
    const v7, 0x102008e

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    const v7, 0x7f0e0258

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/DateTimeView;

    if-eqz v42, :cond_17

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_17

    const/4 v7, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v7}, Landroid/widget/DateTimeView;->setVisibility(I)V

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v8, v7, Landroid/app/Notification;->when:J

    move-object/from16 v0, v50

    invoke-virtual {v0, v8, v9}, Landroid/widget/DateTimeView;->setTime(J)V

    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSensitiveTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v7, v8, v9}, Landroid/app/Notification$Builder;->calculateTopPadding(Landroid/content/Context;ZF)I

    move-result v53

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v7, 0x1

    move-object/from16 v0, p1

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    :cond_18
    const/16 v18, 0x0

    if-nez v18, :cond_1d

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040057

    const/4 v9, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    const v7, 0x7f0e01c8

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x109008c

    const/4 v9, 0x1

    move-object/from16 v0, v39

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v33

    const-string v7, "KnoxNotification"

    const-string v8, "----- inflateViews : modified KnoxViewLocal -----"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v7, 0x1020016

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/TextView;

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_26

    if-eqz v19, :cond_26

    move-object/from16 v7, v19

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationTitleForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Landroid/view/View;)V

    const v7, 0x1020006

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    const v7, 0x7f0e01c9

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/ImageView;

    new-instance v6, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget v10, v10, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget v11, v11, Landroid/app/Notification;->number:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-object v12, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_19

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_1a

    :cond_19
    const v7, 0x10805cc

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105005b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v38

    move-object/from16 v0, v28

    move/from16 v1, v38

    move/from16 v2, v38

    move/from16 v3, v38

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_1a
    if-eqz v43, :cond_1b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v44

    if-eqz v44, :cond_27

    invoke-virtual/range {v43 .. v44}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1b
    :goto_b
    const v7, 0x102008e

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    if-eqz v42, :cond_1c

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1c

    const v7, 0x102008e

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v51

    const/4 v7, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    const v7, 0x102008e

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/DateTimeView;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v8, v7, Landroid/app/Notification;->when:J

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Landroid/widget/DateTimeView;->setTime(J)V

    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSanitizedTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v7, v8, v9}, Landroid/app/Notification$Builder;->calculateTopPadding(Landroid/content/Context;ZF)I

    move-result v53

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v7, 0x1

    move-object/from16 v0, p1

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    :cond_1d
    move-object/from16 v0, v47

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRowMinHeight:I

    move/from16 v0, v35

    invoke-virtual {v7, v8, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeightRange(II)V

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v7

    if-eqz v7, :cond_28

    if-eqz v19, :cond_28

    :goto_c
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedPublic:Landroid/view/View;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setBigContentView(Landroid/view/View;)V

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseEventNotification:Z

    if-eqz v7, :cond_1e

    const-string v7, "com.sec.android.app.eventnotification"

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0497

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mUseEventNotification eventNotiHeight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    add-int/lit8 v8, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeightRange(II)V

    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    if-eqz v27, :cond_1f

    move-object/from16 v0, v47

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    :cond_1f
    move-object/from16 v0, v47

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/LayoutInflater;

    const v7, 0x7f0400c9

    const/4 v8, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v47

    check-cast v47, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionLogger(Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_21
    new-instance v7, Lcom/android/systemui/statusbar/BaseStatusBar$14;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$14;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :catch_0
    move-exception v21

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t inflate view for notification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_22
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sq76 Drawable : null pkg : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_1
    move-exception v21

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t inflate public view for notification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v46, 0x0

    goto/16 :goto_4

    :catch_2
    move-exception v23

    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed looking up ApplicationInfo for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v48 .. v48}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :cond_23
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04006b

    const/4 v9, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v46

    const/4 v7, 0x1

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Landroid/view/View;->setIsRootNamespace(Z)V

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    goto/16 :goto_6

    :catch_3
    move-exception v21

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_24
    const v7, 0x7f0e0259

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    goto/16 :goto_8

    :cond_25
    const/16 v7, 0x8

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    :cond_26
    move-object/from16 v7, v46

    goto/16 :goto_a

    :cond_27
    const/16 v7, 0x8

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b

    :cond_28
    move-object/from16 v19, v46

    goto/16 :goto_c
.end method

.method public static isCoveredState(I)Z
    .locals 2

    and-int/lit8 v0, p0, 0xa

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFolderOpen(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isForceSanitizationRequired(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    const/4 v0, 0x0

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget-object v1, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget-boolean v8, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "KnoxNotification"

    const-string v9, "----- Our attached knox_content_view is found -----"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    const v9, 0x10203d5

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_4

    :cond_1
    sget-boolean v8, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "KnoxNotification"

    const-string v9, "----- Application provided RemoteView, so forcing sanitization -----"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v8

    sget-object v9, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v8, v9}, Landroid/os/PersonaManager$KnoxContainerVersion;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v2, v6

    :goto_0
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v8

    sget-object v9, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v8, v9}, Landroid/os/PersonaManager$KnoxContainerVersion;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v3, v6

    :goto_1
    if-nez v2, :cond_3

    if-eqz v3, :cond_7

    :cond_3
    iget v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    if-eq v5, v6, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_2
    return v0

    :cond_5
    move v2, v7

    goto :goto_0

    :cond_6
    move v3, v7

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public static isKeyguardState(I)Z
    .locals 2

    const/4 v0, 0x1

    and-int/lit8 v1, p0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLayoutDirectionRTL()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isPersona(I)Z
    .locals 1

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPersonaInKioskMode(I)Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSIMandOperatorMatched()Z
    .locals 13

    const/4 v12, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "gsm.sim.operator.numeric"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "ril.currentplmn"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Framework_ReplaceDataTypeIconAsOpBrand"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "ORANGE"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    const-string v9, "StatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSIMandOperatorMatched  currentPlmn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperatorSIM()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "StatusBar"

    const-string v10, "isSIMandOperatorMatched SIM is matched!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "domestic"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v8

    goto :goto_0

    :cond_2
    const-string v9, "StatusBar"

    const-string v10, "isSIMandOperatorMatched SIM is NOT matched!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "20801"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "20802"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_3
    const-string v9, "gsm.sim.operator.numeric"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "gsm.operator.numeric"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "StatusBar"

    const-string v10, "isSIMandOperatorMatched SIM is matched for Orange!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v6, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v8

    goto :goto_0
.end method

.method public static isShadeLockedState(I)Z
    .locals 2

    and-int/lit8 v0, p0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemPackage(Landroid/service/notification/StatusBarNotification;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->findPackageInfo(Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/statusbar/BaseStatusBar;->sSystemSignature:[Landroid/content/pm/Signature;

    if-nez v4, :cond_0

    new-array v4, v2, [Landroid/content/pm/Signature;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v5

    aput-object v5, v4, v3

    sput-object v4, Lcom/android/systemui/statusbar/BaseStatusBar;->sSystemSignature:[Landroid/content/pm/Signature;

    :cond_0
    sget-object v4, Lcom/android/systemui/statusbar/BaseStatusBar;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v4, v4, v3

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/systemui/statusbar/BaseStatusBar;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v4, v4, v3

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private knoxContainerInLockMode(I)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KnoxNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get KnoxInLockMode for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_2

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KnoxNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get KnoxInLockMode for container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get KnoxInLockMode for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    goto :goto_0
.end method

.method private static queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/android/systemui/statusbar/BaseStatusBar;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private reSanitizePendingIntentIfNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----- reSanitizePendingIntentIfNeeded : contentIntent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_3

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----- reSanitizePendingIntentIfNeeded : entry.isSanitizedPendingIntent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->sanitizePendingIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "KnoxNotification"

    const-string v2, "----- reSanitizePendingIntentIfNeeded : But doing un-sanitize -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    goto :goto_0
.end method

.method private registerPersonaObserver(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/content/Context;II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register container observer for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private reimposeBadgeAtBottomRight(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;)Landroid/widget/RemoteViews;
    .locals 9

    const v8, 0x7f0e01c8

    const-string v5, "KnoxNotification"

    const-string v6, "----- Inside reimposeBadgeAtBottomRight -----"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v5, Lcom/android/systemui/statusbar/BaseStatusBar$19;->$SwitchMap$com$android$systemui$statusbar$BaseStatusBar$RemoteViewType:[I

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/BaseStatusBar$RemoteViewType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :goto_0
    const/4 v1, 0x0

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_1
    return-object v3

    :pswitch_0
    iget-object v5, v2, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v3, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_0

    :pswitch_1
    iget-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_0

    :pswitch_2
    iget-object v3, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto :goto_0

    :pswitch_3
    iget-object v3, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f040057

    invoke-direct {v1, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    const v5, 0x7f0e01c9

    invoke-virtual {v1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v1, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    invoke-virtual {v1, v8, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    const-string v5, "KnoxNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "----- returning contentView = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v3, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setIsAutoBrightBoxChecked(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->isAutoBrightBoxChecked:Z

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->isAutoBrightBoxCheckingChanged:Z

    :cond_0
    sput-boolean p0, Lcom/android/systemui/statusbar/BaseStatusBar;->isAutoBrightBoxChecked:Z

    return-void
.end method

.method public static setIsNetworkAvailable(Z)V
    .locals 3

    sput-boolean p0, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkAvailable:Z

    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsNetworkAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private shouldExpandOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    const/16 v1, 0x102

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowOnShadeLocked(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showUnlockHintToast()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0565

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startAppNotificationSettingsActivity(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "app_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method private startAppOwnNotificationSettingsActivity(Landroid/content/Intent;ILjava/lang/String;I)V
    .locals 1

    const-string v0, "notification_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "notification_tag"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method private startNotificationGutsIntent(Landroid/content/Intent;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isInstantDismiss()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->goToKeyguard()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$8;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$8;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isInstantDismiss()Z

    move-result v2

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZZ)V

    return-void
.end method

.method private unregisterPersonaObserver(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar$PersonaObserver;->unregisterPersonaObserver()V

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister container observer for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateCurrentProfilesCache()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private updateHeadsUpViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V

    return-void
.end method

.method private updateKnoxNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 11

    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    if-eqz v9, :cond_1

    const v1, 0x1020006

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->icon:I

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->iconLevel:I

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->number:I

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-virtual {v1, v8}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x10805cc

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v7, v10, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_0
    iput-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    :cond_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfBigContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    :cond_2
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideExistingBadgeOfContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Z)V

    :cond_3
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedPublic:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSensitiveTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSanitizedTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedPublic:Landroid/view/View;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationTitleForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private updateNotificationTitleForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Landroid/view/View;)V
    .locals 10

    const v8, 0x1020016

    if-eqz p2, :cond_4

    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object v6, v2

    :try_start_0
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_0
    if-eqz v2, :cond_2

    const-string v7, "com.samsung.android.email.provider"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "KnoxNotification"

    const-string v8, "----- updateNotificationTitleForKnox: EmailProvider found -----"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p3, :cond_2

    const v7, 0x7f0e00c0

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :cond_2
    :goto_0
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "KnoxNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----- updateNotificationTitleForKnox: titleString - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -----"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void

    :cond_5
    const v7, 0x1020016

    :try_start_1
    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_6
    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "KnoxNotification"

    const-string v8, "----- updateNotificationTitleForKnox: did not find title view -----"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "KnoxNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateNotificationTitleForKnox: threw an exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V

    return-void
.end method

.method private updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 9

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v2, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v0, v6, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :goto_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v5, v6, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v5, :cond_4

    iget-object v4, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v2, v6, v7, v8}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v0, v6, v7, v8}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v4, v6, v7, v8}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    :cond_1
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateKnoxNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V

    :cond_2
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v1, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6, p3}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v3

    :goto_2
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyContentUpdated()V

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetHeight()V

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v0, v6, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    new-instance v3, Lcom/android/systemui/statusbar/BaseStatusBar$18;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$18;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    goto :goto_2
.end method

.method private updateSanitizedTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V
    .locals 9

    const v8, 0x7f0d0365

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    const v4, 0x1020077

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->getKnoxName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "KNOX"

    aput-object v6, v5, v7

    invoke-virtual {v4, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    const-string v4, "KNOX"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    const-string v5, "com.sec.knox.switchknoxI"

    invoke-virtual {v4, v5, v2}, Landroid/os/PersonaManager;->getKnoxNameChanged(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    const-string v5, "com.sec.knox.bridge/com.sec.knox.bridge.activity.SwitchB2BActivity"

    invoke-virtual {v4, v5, v2}, Landroid/os/PersonaManager;->getKnoxNameChanged(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-virtual {v4, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    const-string v5, "com.sec.knox.switchknoxII"

    invoke-virtual {v4, v5, v2}, Landroid/os/PersonaManager;->getKnoxNameChanged(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    const-string v5, "com.sec.knox.bridge/com.sec.knox.bridge.activity.SwitchB2BActivity2"

    invoke-virtual {v4, v5, v2}, Landroid/os/PersonaManager;->getKnoxNameChanged(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v4, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSensitiveTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V
    .locals 2

    if-eqz p2, :cond_0

    const v1, 0x7f0e025a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f0d0363

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto :goto_0
.end method

.method public animateCollapsePanels(IZ)V
    .locals 0

    return-void
.end method

.method protected applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 5

    const v2, 0x10203d5

    const/16 v4, 0x15

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_1
    iget v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_2

    iget v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-ge v1, v4, :cond_2

    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    iput-boolean v3, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    :cond_2
    :goto_0
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v1, :cond_3

    iget v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-lt v1, v4, :cond_6

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v0, v1, Landroid/app/Notification;->color:I

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :cond_5
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTintColor(I)V

    goto :goto_0

    :cond_6
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method public applyEDMPolicy()V
    .locals 0

    return-void
.end method

.method public canChildBeBlocked(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 15

    const/4 v4, 0x0

    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v13, "launcherapps"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/LauncherApps;

    iput-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLauncherApps:Landroid/content/pm/LauncherApps;

    :cond_0
    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_3

    if-nez v4, :cond_3

    const-string v12, "StatusBar"

    const-string v13, "canChildBeBlocked-R1"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :goto_1
    return v12

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "StatusBar"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "canChildBeBlocked-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, ","

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHideAppNotificationList:[Ljava/lang/String;

    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHideAppNotificationList:[Ljava/lang/String;

    if-nez v12, :cond_5

    :cond_4
    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSystemPackage(Landroid/service/notification/StatusBarNotification;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "StatusBar"

    const-string v13, "canChildBeBlocked-R3"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHideAppNotificationList:[Ljava/lang/String;

    array-length v6, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_4

    aget-object v2, v0, v3

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v12, "StatusBar"

    const-string v13, "canChildBeBlocked-R2"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v12, 0x1

    goto :goto_1
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    const/16 v0, 0x3ff

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected cancelPreloadingRecents()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->cancelPreloadingRecents()V

    :cond_0
    return-void
.end method

.method protected clickNotificationLeftButton(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected clickNotificationRightButton(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected abstract createAndAddWindows()V
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method protected createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 11

    const/4 v10, 0x0

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createNotificationViews(notification="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    new-instance v8, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v1, v2, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget v3, v9, Landroid/app/Notification;->icon:I

    iget v4, v9, Landroid/app/Notification;->iconLevel:I

    iget v5, v9, Landroid/app/Notification;->number:I

    iget-object v6, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    if-gez v1, :cond_3

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "StatusBar"

    const-string v2, "The original notification was cancelled before the synced one was posted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    move-object v7, v10

    :cond_2
    :goto_1
    return-object v7

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v7, p1, v8}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0, v7, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v10

    goto :goto_1
.end method

.method public destroy()V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->containerObserver:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->unregisterPersonaObserver(I)V

    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "KnoxNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "counting container observer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " total size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZZ)V
    .locals 0

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    return-void
.end method

.method public dismissPopups()V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getRight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getTop()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getActualHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    int-to-float v4, v2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFastOutLinearIn:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/android/systemui/statusbar/BaseStatusBar$12;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$12;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public filterOutForKnoxContainer(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 12

    if-nez p1, :cond_0

    const/4 v10, 0x1

    :goto_0
    return v10

    :cond_0
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v9

    iget-object v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget v10, v10, Lcom/android/systemui/statusbar/NotificationData;->isKnoxKioskMode:I

    if-gez v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "persona"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PersonaManager;

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    :cond_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v10}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_1
    iput v10, v11, Lcom/android/systemui/statusbar/NotificationData;->isKnoxKioskMode:I

    :cond_2
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget v10, v10, Lcom/android/systemui/statusbar/NotificationData;->isKnoxKioskMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    if-nez v9, :cond_4

    const-string v10, "com.android.incallui"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "com.android.server.telecom"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "com.samsung.android.SettingsReceiver"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "com.android.mms"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "com.android.settings"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "com.android.phone"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, 0x1

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget v10, v10, Lcom/android/systemui/statusbar/NotificationData;->isKnoxKioskMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    const/4 v1, -0x1

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "persona"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PersonaManager;

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    :cond_5
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x0

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PersonaInfo;

    iget v1, v10, Landroid/content/pm/PersonaInfo;->id:I

    :cond_6
    const/4 v10, -0x1

    if-eq v1, v10, :cond_8

    if-nez v9, :cond_8

    const-string v10, "com.android.mms"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->knoxContainerInSuperLockMode(I)Z

    move-result v10

    if-eqz v10, :cond_8

    sget-boolean v10, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v10, :cond_7

    const-string v10, "KnoxNotification"

    const-string v11, "----- filterOutForKnoxContainer:  Skipping com.android.mms notif for COM + ADMIN_LOCKED case"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_9
    if-eqz v4, :cond_a

    const-string v10, "com.sec.knox.bridge"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v0

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget v10, v10, Landroid/app/Notification;->visibility:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_c

    if-eqz v0, :cond_c

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->knoxContainerInSuperLockMode(I)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-static {v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v10

    if-eqz v10, :cond_e

    if-eqz v4, :cond_e

    const-string v10, "com.android.settings"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    :cond_d
    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v10, 0x0

    invoke-virtual {p0, p1, v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKnoxNotificationSanitizeNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z

    move-result v10

    if-eqz v10, :cond_12

    iget v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    iget v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v10, v10, -0x4

    iput v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v10, v10, Lcom/android/systemui/statusbar/NotificationData;->mSanitizingToCollapse:Landroid/util/ArrayMap;

    invoke-virtual {v10, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v8, :cond_11

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v10, v10, Lcom/android/systemui/statusbar/NotificationData;->mSanitizingToCollapse:Landroid/util/ArrayMap;

    invoke-virtual {v10, v3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget-boolean v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    if-nez v10, :cond_10

    invoke-virtual {p0, p1, v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->sanitizePendingIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iput-object v6, v10, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p0, v6, v10, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v2

    iget-object v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v10, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    :goto_2
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_11
    iget-object v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v11, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_12
    iget-boolean v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_13

    iget-object v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    const/4 v11, 0x0

    iput-object v11, v10, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const/4 v10, 0x0

    iput-boolean v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    iget-object v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    iget v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    or-int/lit8 v10, v10, 0x3

    iput v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    iget v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v10, v10, -0x9

    iput v10, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    goto :goto_2
.end method

.method public getCurrentMediaNotificationKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentUserId()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    return v0
.end method

.method protected getMaxCoverNotifications()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract getMaxKeyguardNotifications()I
.end method

.method protected getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$11;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method protected getNotificationTickerText(Landroid/service/notification/StatusBarNotification;)Ljava/lang/CharSequence;
    .locals 7

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v2, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedKnox:Landroid/view/View;

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "KnoxNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "----- getNotificationTickerText : tickerText(When Sanitize) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -----"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "KnoxNotification"

    const-string v5, "----- NotificationData does not contain specified entry !!! -----"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected getNumberOfActiveSim()I
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNumberOfActiveSim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const-string v2, "StatusBar"

    const-string v3, "getNumberOfActiveSim: 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getPackageManagerForUser(I)Landroid/content/pm/PackageManager;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getPolicyExternal(ILjava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPolicy(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method protected getReadySimCount()I
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mIsDGGDuos:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mIsUseIPC:Z

    if-eqz v7, :cond_6

    :cond_0
    new-array v3, v10, [I

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone1_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    aput v7, v3, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone2_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    aput v7, v3, v9

    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "9,9"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    if-eq v7, v10, :cond_1

    :goto_0
    return v6

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->hasSlotSwiching()Z

    move-result v6

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mIsDCGSCTC:Z

    if-eqz v6, :cond_3

    const-string v6, "3"

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mIsUseIPC:Z

    if-eqz v6, :cond_4

    aget v6, v3, v5

    if-ne v6, v9, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const-string v6, "3"

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget v6, v3, v5

    if-ne v6, v9, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v6, v2

    goto :goto_0

    :cond_6
    const-string v4, "NOT_READY"

    const/4 v5, 0x0

    :goto_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v5, v6, :cond_8

    const-string v6, "gsm.sim.state"

    const-string v7, "NOT_READY"

    invoke-direct {p0, v6, v5, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "READY"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v2, v2, 0x1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    move v6, v2

    goto :goto_0
.end method

.method protected abstract getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
.end method

.method protected abstract getStatusBarView()Landroid/view/View;
.end method

.method public goToCover()V
    .locals 2

    const-string v0, "StatusBar"

    const-string v1, "goToCover() called on BaseStatusBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public goToKeyguard()V
    .locals 2

    const-string v0, "StatusBar"

    const-string v1, "goToKeyguard() called on BaseStatusBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract haltTicker()V
.end method

.method handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    move-object v6, p2

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public hideRecentApps(ZZ)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x3fc

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v4, v0, v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected hideRecents(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/RecentsComponent;->hideRecents(ZZ)V

    :cond_0
    return-void
.end method

.method public hideSearchPanel()V
    .locals 2

    const/16 v0, 0x403

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected inflateViewsForHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    move-result v0

    return v0
.end method

.method public isBouncerShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerShowing:Z

    return v0
.end method

.method public isCoverViewShowing()Z
    .locals 2

    const-string v0, "StatusBar"

    const-string v1, "isCoverViewShowing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isCoveredState()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    and-int/lit8 v0, v0, 0xa

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    and-int/lit8 v0, v0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method public isHeadsUp(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->isShowing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInstantDismiss()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDCMModel()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotClicked:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotClicked:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mActivated:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mBlockLaunchingActivityonLockScreen:Z

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isShadeLockedState()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isKeyguardSecure()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v0, :cond_0

    const-string v0, "StatusBar"

    const-string v1, "isKeyguardSecure() called before startKeyguard(), returning false"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    goto :goto_0
.end method

.method public isKeyguardState()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKnoxNotificationSanitizeNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z
    .locals 13

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v8

    if-eqz p2, :cond_1

    invoke-static {v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return v11

    :cond_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v12, "persona"

    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PersonaManager;

    iput-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    :cond_2
    const/4 v5, 0x0

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v9, v8}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v5

    :cond_3
    const-string v9, "knox-sanitize-data"

    const/4 v12, 0x4

    invoke-direct {p0, v8, v9, v12}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPolicy(ILjava/lang/String;I)Z

    move-result v6

    const-string v9, "knox-sanitize-data-lockscreen"

    const/16 v12, 0x10

    invoke-direct {p0, v8, v9, v12}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPolicy(ILjava/lang/String;I)Z

    move-result v7

    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->knoxContainerInLockMode(I)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isForceSanitizationRequired(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v9

    sget-object v12, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v9, v12}, Landroid/os/PersonaManager$KnoxContainerVersion;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v2, v10

    :goto_1
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v9

    sget-object v12, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v9, v12}, Landroid/os/PersonaManager$KnoxContainerVersion;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    move v3, v10

    :goto_2
    if-nez v2, :cond_4

    if-eqz v3, :cond_c

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v9

    if-nez v9, :cond_9

    :cond_5
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersonaInKioskMode(I)Z

    move-result v9

    if-nez v9, :cond_8

    if-nez v6, :cond_6

    if-nez v1, :cond_9

    :cond_6
    if-eqz v6, :cond_7

    iget v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    if-ne v9, v8, :cond_9

    :cond_7
    if-eqz v6, :cond_8

    if-eqz v0, :cond_8

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v9}, Landroid/os/PersonaManager;->getForegroundUser()I

    move-result v9

    if-ne v9, v8, :cond_9

    :cond_8
    if-eqz v5, :cond_0

    iget-boolean v9, v5, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v9, :cond_0

    const-string v9, "com.android.email"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    if-ne v9, v8, :cond_9

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_9
    move v11, v10

    goto/16 :goto_0

    :cond_a
    move v2, v11

    goto :goto_1

    :cond_b
    move v3, v11

    goto :goto_2

    :cond_c
    const-string v9, "com.samsung.knox.knoxtrustagent"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz v6, :cond_d

    if-eqz v0, :cond_d

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v9

    if-nez v9, :cond_13

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v9

    if-nez v9, :cond_13

    :cond_d
    if-eqz v7, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v9

    if-nez v9, :cond_13

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v9

    if-nez v9, :cond_13

    :cond_e
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersonaInKioskMode(I)Z

    move-result v9

    if-nez v9, :cond_10

    if-eqz v0, :cond_f

    if-nez v1, :cond_13

    :cond_f
    if-eqz v6, :cond_10

    if-nez v0, :cond_13

    :cond_10
    if-eqz v5, :cond_0

    iget-boolean v9, v5, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v9, :cond_0

    const-string v9, "com.samsung.android.email.provider"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "com.samsung.android.email.sync"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "com.samsung.android.email.ui"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "com.samsung.android.email.composer"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "com.android.email"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_11
    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenKnoxMode()Z

    move-result v9

    if-nez v9, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_12
    if-nez v0, :cond_0

    :cond_13
    move v11, v10

    goto/16 :goto_0
.end method

.method public isLockscreenKnoxMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenKnoxMode:Z

    return v0
.end method

.method public isLockscreenPublicMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    return v0
.end method

.method protected isMSim()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    const v1, 0x10203d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMobileKeyboardAttached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsMobileKeyboard:Z

    return v0
.end method

.method protected isNavigationBarHidden()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isNavigationBarHidden()Z

    move-result v0

    return v0
.end method

.method public isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4

    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v3

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    monitor-exit v3

    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isShadeLockedState()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowNotifications()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_show_notifications"

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected isSkipShowingNotificationForHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v5, "persona"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v2}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v2, v3}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    iget v2, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->knoxContainerInSuperLockMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "com.android.mms"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    return v2

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method protected isStatusBarHidden()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isStatusBarHidden()Z

    move-result v0

    return v0
.end method

.method protected isSystemBarHidden()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isSystemBarHidden()Z

    move-result v0

    return v0
.end method

.method protected knoxContainerInSuperLockMode(I)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KnoxNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get knoxInSuperLockMode for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_2

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KnoxNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get knoxInSuperLockMode for container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get knoxInSuperLockMode for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    goto :goto_0
.end method

.method public logNotificationExpansion(Ljava/lang/String;ZZ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needsShowClockandNotifications()Z

    move-result v0

    goto :goto_0
.end method

.method protected notifyHeadsUpScreenOn(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->scheduleHeadsUpEscalation()V

    :cond_0
    return-void
.end method

.method protected notifyUserAboutHiddenNotifications()V
    .locals 14

    const/high16 v13, 0x10000000

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "show_note_about_notification_hiding"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "StatusBar"

    const-string v9, "user hasn\'t seen notification about hidden notifications"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "StatusBar"

    const-string v9, "insecure lockscreen, skipping notification"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "show_note_about_notification_hiding"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, "StatusBar"

    const-string v9, "disabling lockecreen notifications and alerting the user"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_show_notifications"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_allow_private_notifications"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.systemui.statusbar.banner_action_cancel"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v8, v11, v9, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.systemui.statusbar.banner_action_setup"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v8, v11, v9, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v1, 0x1060059

    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f02019c

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v10, 0x7f0d037f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0380

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x1060059

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x7f0201aa

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0381

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x7f02024f

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0382

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    const/16 v8, 0x2710

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v3, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget v5, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    if-ne v2, v5, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    cmpl-float v5, v0, v5

    if-eqz v5, :cond_2

    :cond_0
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "StatusBar"

    const-string v6, "config changed locale/LD: %s (%d) -> %s (%d)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    aput-object v8, v7, v4

    sget v8, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v8, 0x2

    aput-object v3, v7, v8

    const/4 v8, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    sput v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->refreshLayout(I)V

    :cond_2
    iget v5, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v5, v1, :cond_3

    :goto_0
    const-string v5, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mobile keyboard is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_4

    const-string v4, "attached !!"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsMobileKeyboard:Z

    return-void

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    const-string v4, "detached !!"

    goto :goto_1
.end method

.method public onCoverAppCovered(Z)I
    .locals 2

    const-string v0, "StatusBar"

    const-string v1, "onCoverAppCovered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onHeadsUpDismissed()V
    .locals 0

    return-void
.end method

.method public onNotificationClear(Landroid/service/notification/StatusBarNotification;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public overrideActivityPendingAppTransition(Z)V
    .locals 6

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/IWindowManager;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error overriding app transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public packageHasVisibilityOverride(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public preloadRecentApps()V
    .locals 2

    const/16 v0, 0x3fe

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected preloadRecents()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->preloadRecents()V

    :cond_0
    return-void
.end method

.method protected abstract refreshLayout(I)V
.end method

.method public abstract removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNotification for unknown key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    goto :goto_0
.end method

.method public abstract resetHeadsUpDecayTimer()V
.end method

.method public sanitizePendingIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Landroid/app/PendingIntent;
    .locals 16

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KnoxNotification"

    const-string v2, "----- Inside sanitizePendingIntent -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v13, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object v15, v13

    const/4 v12, 0x0

    if-nez v13, :cond_5

    const/4 v12, 0x1

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----- sanitizePendingIntent : isSanitizeRequired - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v12, :cond_3

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v10

    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v0, p2

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_9

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v10, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v15

    :goto_2
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    :cond_3
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "KnoxNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----- sanitizePendingIntent : sanitized - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v15

    :cond_5
    invoke-virtual {v13}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v11, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_6
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "KnoxNotification"

    const-string v2, "----- sanitizePendingIntent : innerIntent null or filterEquals -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    :cond_9
    new-instance v6, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v7, 0x8000000

    const/4 v8, 0x0

    new-instance v9, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v15

    goto :goto_2
.end method

.method public abstract scheduleHeadsUpClose()V
.end method

.method public abstract scheduleHeadsUpEscalation()V
.end method

.method public abstract scheduleHeadsUpOpen()V
.end method

.method public sendDiagnosticLogs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected abstract setAreThereNotifications()V
.end method

.method public setBouncerShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerShowing:Z

    return-void
.end method

.method public setInteracting(IZ)V
    .locals 0

    return-void
.end method

.method public setLockscreenKnoxMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenKnoxMode:Z

    return-void
.end method

.method public setLockscreenPublicMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    return-void
.end method

.method protected abstract setOtherBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
.end method

.method protected setShowLockscreenNotifications(Z)V
    .locals 3

    const-string v1, "StatusBar"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SLN:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "S"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    return-void

    :cond_0
    const-string v0, "H"

    goto :goto_0
.end method

.method protected setZenMode(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mZenMode:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto :goto_0
.end method

.method protected abstract shouldDisableNavbarGestures()Z
.end method

.method public shouldHideSensitiveContents(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z
    .locals 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v11, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-eqz v11, :cond_1

    sget-boolean v10, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "StatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping HUN check for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " since it\'s filtered out."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v11, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_2

    iget v11, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_2

    iget-object v11, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v11, :cond_2

    iget-object v11, v8, Landroid/app/Notification;->vibrate:[J

    if-eqz v11, :cond_6

    :cond_2
    move v7, v10

    :goto_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v11

    const/16 v12, 0xa

    if-lt v11, v12, :cond_7

    move v6, v10

    :goto_2
    iget-object v11, v8, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_8

    move v5, v10

    :goto_3
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpTicker:Z

    if-eqz v11, :cond_9

    iget-object v11, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    move v2, v10

    :goto_4
    iget-object v11, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v12, "headsup"

    invoke-virtual {v11, v12, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_a

    move v4, v10

    :goto_5
    if-eqz v5, :cond_b

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v11

    if-eqz v11, :cond_b

    move v0, v10

    :goto_6
    if-nez v5, :cond_3

    if-eqz v6, :cond_c

    if-nez v7, :cond_3

    if-eqz v2, :cond_c

    :cond_3
    if-eqz v4, :cond_c

    if-nez v0, :cond_c

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v11}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v11

    if-eqz v11, :cond_c

    :cond_4
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isInputRestricted()Z

    move-result v11

    if-nez v11, :cond_c

    move v3, v10

    :goto_7
    if-eqz v3, :cond_d

    :try_start_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v11}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-nez v11, :cond_d

    move v3, v10

    :goto_8
    sget-boolean v9, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v9, :cond_5

    const-string v9, "StatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "interrupt: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v9, v3

    goto/16 :goto_0

    :cond_6
    move v7, v9

    goto/16 :goto_1

    :cond_7
    move v6, v9

    goto/16 :goto_2

    :cond_8
    move v5, v9

    goto/16 :goto_3

    :cond_9
    move v2, v9

    goto :goto_4

    :cond_a
    move v4, v9

    goto :goto_5

    :cond_b
    move v0, v9

    goto :goto_6

    :cond_c
    move v3, v9

    goto :goto_7

    :cond_d
    move v3, v9

    goto :goto_8

    :catch_0
    move-exception v1

    const-string v9, "StatusBar"

    const-string v10, "failed to query dream manager"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public showNextAffiliatedTask()V
    .locals 2

    const/16 v0, 0x400

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showPreviousAffiliatedTask()V
    .locals 2

    const/16 v0, 0x401

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showRecentApps(Z)V
    .locals 4

    const/4 v2, 0x0

    const/16 v0, 0x3fb

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected showRecents(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "recentapps"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/RecentsComponent;->showRecents(ZLandroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected showRecentsNextAffiliatedTask()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->showNextAffiliatedTask()V

    :cond_0
    return-void
.end method

.method protected showRecentsPreviousAffiliatedTask()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->showPrevAffiliatedTask()V

    :cond_0
    return-void
.end method

.method public showSearchPanel()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/SearchPanelView;->isAssistantAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    :cond_0
    return-void
.end method

.method protected snapContentViews(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 27

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isStatusBarHidden()Z

    move-result v22

    sput-boolean v22, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isNavigationBarHidden()Z

    move-result v22

    sput-boolean v22, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNavigationBarHidden:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    if-eqz v19, :cond_3

    const-string v22, "com.sec.feature.findo"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v22, 0x1

    :goto_0
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowSFinderQConnectView:Z

    :try_start_0
    const-string v22, "com.android.settings"

    const/16 v23, 0x80

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget-object v0, v15, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v22, "StatusBar"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Metadata value : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "settings_apk_name"

    const-string v25, "none"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v22, "settings_apk_name"

    const-string v23, "none"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "SecSettings2"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/systemui/statusbar/Feature;->mZeroSettingConcept:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    new-instance v22, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "window"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/WindowManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "device_policy"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    new-instance v22, Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;-><init>(Lcom/android/systemui/statusbar/NotificationData$Environment;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "accessibility"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string v22, "dreams"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "power"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/PowerManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/database/ContentObserver;->onChange(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "device_provisioned"

    invoke-static/range {v23 .. v23}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v25, v0

    invoke-virtual/range {v22 .. v25}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "zen_mode"

    invoke-static/range {v23 .. v23}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v25, v0

    invoke-virtual/range {v22 .. v25}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "zen_mode_config_etag"

    invoke-static/range {v23 .. v23}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v25, v0

    const/16 v26, -0x1

    invoke-virtual/range {v22 .. v26}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "lock_screen_show_notifications"

    invoke-static/range {v23 .. v23}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v25, v0

    const/16 v26, -0x1

    invoke-virtual/range {v22 .. v26}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "kids_home_mode"

    invoke-static/range {v23 .. v23}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v25, v0

    const/16 v26, -0x1

    invoke-virtual/range {v22 .. v26}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "lock_screen_allow_private_notifications"

    invoke-static/range {v23 .. v23}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v25, v0

    const/16 v26, -0x1

    invoke-virtual/range {v22 .. v26}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v22, "statusbar"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const-class v22, Lcom/android/systemui/RecentsComponent;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/systemui/RecentsComponent;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/android/systemui/RecentsComponent;->setCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v0, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v22

    sput v22, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    iget v0, v9, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    iget v0, v9, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    const/16 v16, 0x1

    :goto_2
    const-string v23, "StatusBar"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "!!mobile keyboard is "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    if-eqz v16, :cond_5

    const-string v22, "attached !!"

    :goto_3
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsMobileKeyboard:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "user"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/UserManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x10c000e

    invoke-static/range {v22 .. v23}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x10c000f

    invoke-static/range {v22 .. v23}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mFastOutLinearIn:Landroid/animation/TimeInterpolator;

    new-instance v14, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v14}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    new-instance v22, Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v20, v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    move-object/from16 v22, v0

    sget-object v23, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v14, v2, v7}, Lcom/android/internal/statusbar/IStatusBarService;->registerSubStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createAndAddWindows()V

    const/16 v22, 0x0

    aget v22, v20, v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->disable(IZ)V

    const/16 v22, 0x1

    aget v22, v20, v22

    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->setSystemUiVisibility(II)V

    const/16 v22, 0x2

    aget v22, v20, v22

    if-eqz v22, :cond_7

    const/16 v22, 0x1

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->topAppWindowChanged(Z)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/IBinder;

    const/16 v23, 0x3

    aget v24, v20, v23

    const/16 v23, 0x4

    aget v25, v20, v23

    const/16 v23, 0x5

    aget v23, v20, v23

    if-eqz v23, :cond_8

    const/16 v23, 0x1

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    invoke-virtual {v14}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v5

    const/16 v21, 0x0

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v5, :cond_9

    invoke-virtual {v14, v12}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-virtual {v14, v12}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v12, v2, v13}, Lcom/android/systemui/statusbar/BaseStatusBar;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    add-int/lit8 v21, v21, 0x1

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_2
    const/16 v22, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v10

    const-string v22, "StatusBar"

    const-string v23, "Cannot get Metadata value"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_3
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowSFinderQConnectView:Z

    goto/16 :goto_1

    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_2

    :cond_5
    const-string v22, "detached !!"

    goto/16 :goto_3

    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v14, v2, v7}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v22

    goto/16 :goto_4

    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_5

    :cond_8
    const/16 v23, 0x0

    goto :goto_6

    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v25, -0x1

    invoke-virtual/range {v22 .. v25}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_8
    sget-boolean v22, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v22, :cond_a

    const-string v22, "StatusBar"

    const-string v23, "init: icons=%d disabled=0x%08x lights=0x%08x menu=0x%08x imeButton=0x%08x"

    const/16 v24, 0x5

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v14}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x0

    aget v26, v20, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    const/16 v26, 0x1

    aget v26, v20, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const/16 v26, 0x2

    aget v26, v20, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x4

    const/16 v26, 0x3

    aget v26, v20, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    const-string v22, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v22, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v22, "android.intent.action.USER_REMOVED"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v22, "com.sec.knox.container.action.launchinfo"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v22, "com.android.systemui.statusbar.banner_action_cancel"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v22, "com.android.systemui.statusbar.banner_action_setup"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v22, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v22, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRcpPolicyReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    move-object/from16 v22, v0

    if-nez v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "persona"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/PersonaManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    :cond_b
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v18

    :cond_c
    if-eqz v18, :cond_11

    const/4 v12, 0x0

    :goto_9
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v12, v0, :cond_11

    aget v22, v18, v12

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v22

    if-eqz v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    move-object/from16 v22, v0

    aget v23, v18, v12

    invoke-virtual/range {v22 .. v23}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/os/PersonaManager$StateManager;->getState()Landroid/content/pm/PersonaState;

    move-result-object v8

    sget-object v22, Landroid/content/pm/PersonaState;->LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v22

    if-eq v8, v0, :cond_d

    sget-object v22, Landroid/content/pm/PersonaState;->ADMIN_LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v22

    if-eq v8, v0, :cond_d

    sget-object v22, Landroid/content/pm/PersonaState;->ADMIN_LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v22

    if-ne v8, v0, :cond_e

    :cond_d
    sget-object v22, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInSuperLockMode:Landroid/util/SparseBooleanArray;

    aget v23, v18, v12

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_e
    sget-object v22, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v22

    if-ne v8, v0, :cond_f

    sget-object v22, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxInLockMode:Landroid/util/SparseBooleanArray;

    aget v23, v18, v12

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_f
    aget v22, v18, v12

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->registerPersonaObserver(I)V

    sget-boolean v22, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v22, :cond_10

    const-string v22, "KnoxNotification"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "add container observer="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " for userId="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget v24, v18, v12

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " No. of users="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_10
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_9

    :catch_2
    move-exception v10

    const-string v22, "StatusBar"

    const-string v23, "Unable to register notification listener"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    :catch_3
    move-exception v10

    const-string v22, "KnoxNotification"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "start: threw an exception: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    const-string v22, "notification"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mNMS:Landroid/app/INotificationManager;

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    new-instance v3, Lcom/android/systemui/statusbar/BaseStatusBar$17;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$17;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZZLandroid/app/PendingIntent;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isInstantDismiss()Z

    move-result v4

    invoke-virtual {p0, v3, v0, v4, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZZ)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method protected abstract tick(Landroid/service/notification/StatusBarNotification;Z)V
.end method

.method public toggleNotificationPanel()V
    .locals 0

    return-void
.end method

.method public toggleRecentApps()V
    .locals 2

    const/16 v0, 0x3fd

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected toggleRecents()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    sget v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/RecentsComponent;->toggleRecents(Landroid/view/Display;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "recentapps"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 2

    const-string v0, "StatusBar"

    const-string v1, "updateCoverState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract updateExpandedViewPos(I)V
.end method

.method protected updateLegacyBackgroundForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    const v1, 0x10203d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    iput-boolean v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    iput-boolean v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    goto :goto_0
.end method

.method protected updateLockscreenNotificationSetting()V
    .locals 22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "lock_screen_show_notifications"

    const/16 v20, 0x0

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v17

    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v16

    if-eqz v16, :cond_4

    const/4 v13, 0x1

    :goto_1
    const-string v17, "StatusBar"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "LSSN:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v17

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v8

    and-int/lit8 v17, v8, 0x4

    if-nez v17, :cond_6

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "kids_home_mode"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const/4 v12, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needsFullscreenBouncer()Z

    move-result v17

    if-eqz v17, :cond_8

    const/4 v9, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needsShowClockandNotifications()Z

    move-result v17

    if-eqz v17, :cond_9

    const/4 v14, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v17

    if-eqz v17, :cond_a

    const/4 v6, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isDisableClockAndClear()Z

    move-result v17

    if-eqz v17, :cond_b

    const/4 v7, 0x1

    :goto_8
    if-eqz v13, :cond_c

    if-eqz v4, :cond_c

    if-nez v12, :cond_c

    if-nez v9, :cond_c

    if-eqz v14, :cond_c

    if-eqz v6, :cond_0

    if-eqz v7, :cond_c

    :cond_0
    const/4 v15, 0x1

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "activity"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    invoke-virtual {v5}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v11

    if-nez v11, :cond_1

    if-nez v13, :cond_d

    :cond_1
    const/4 v15, 0x0

    :cond_2
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/BaseStatusBar;->setShowLockscreenNotifications(Z)V

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move/from16 v17, v0

    goto/16 :goto_0

    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move/from16 v17, v0

    goto/16 :goto_2

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_9
    const/4 v14, 0x0

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    goto :goto_7

    :cond_b
    const/4 v7, 0x0

    goto :goto_8

    :cond_c
    const/4 v15, 0x0

    goto :goto_9

    :cond_d
    const/4 v15, 0x1

    goto :goto_a
.end method

.method protected updateMediaNotificationsForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a006c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTintColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v0, v1, Landroid/app/Notification;->color:I

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTintColor(I)V

    goto :goto_0
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 39

    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNotification("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isHeadsUp(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v26

    :goto_0
    if-nez v26, :cond_2

    :goto_1
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v26

    goto :goto_0

    :cond_2
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v25, v0

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v14, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    iget-object v12, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v30, v0

    if-eqz v30, :cond_19

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v29, v0

    :goto_2
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1a

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v31, v0

    :goto_3
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "old notification: when="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v8, v7, Landroid/app/Notification;->when:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ongoing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expanded="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " contentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bigContentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " publicView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rowParent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new notification: when="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    iget-wide v8, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ongoing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " contentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bigContentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " publicView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v37

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v5, :cond_1b

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1b

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1b

    invoke-static/range {v37 .. v37}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_4
    invoke-static/range {v37 .. v37}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    const v6, 0x7f040057

    if-eq v5, v6, :cond_6

    :cond_5
    invoke-virtual/range {v25 .. v25}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_1b

    :cond_6
    const/4 v15, 0x1

    :goto_4
    if-nez v24, :cond_7

    if-eqz v12, :cond_a

    :cond_7
    if-eqz v24, :cond_1c

    if-eqz v12, :cond_1c

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1c

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1c

    invoke-static/range {v37 .. v37}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    :cond_8
    invoke-static/range {v37 .. v37}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    const v6, 0x7f040057

    if-eq v5, v6, :cond_a

    :cond_9
    invoke-virtual/range {v24 .. v24}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_1c

    :cond_a
    const/4 v13, 0x1

    :goto_5
    if-nez v27, :cond_b

    if-eqz v17, :cond_d

    :cond_b
    if-eqz v27, :cond_1d

    if-eqz v17, :cond_1d

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1d

    invoke-virtual/range {v27 .. v27}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1d

    invoke-virtual/range {v27 .. v27}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static/range {v37 .. v37}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual/range {v27 .. v27}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    const v6, 0x7f040057

    if-eq v5, v6, :cond_d

    :cond_c
    invoke-virtual/range {v27 .. v27}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_1d

    :cond_d
    const/16 v18, 0x1

    :goto_6
    if-nez v29, :cond_e

    if-eqz v31, :cond_10

    :cond_e
    if-eqz v29, :cond_1e

    if-eqz v31, :cond_1e

    invoke-virtual/range {v31 .. v31}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1e

    invoke-virtual/range {v29 .. v29}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1e

    invoke-virtual/range {v29 .. v29}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-static/range {v37 .. v37}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual/range {v29 .. v29}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    const v6, 0x7f040057

    if-eq v5, v6, :cond_10

    :cond_f
    invoke-virtual/range {v29 .. v29}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual/range {v31 .. v31}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_1e

    :cond_10
    const/16 v33, 0x1

    :goto_7
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1f

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1f

    const/16 v36, 0x1

    :goto_8
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "----- contentsUnchanged : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bigContentsUnchanged - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", headsUpContentsUnchanged - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , publicUnchanged "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z

    move-result v34

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z

    move-result v11

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isHeadsUp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const/16 v18, 0x1

    :cond_11
    const/16 v35, 0x0

    if-eqz v15, :cond_13

    if-eqz v13, :cond_13

    if-eqz v18, :cond_13

    if-eqz v33, :cond_13

    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_12

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reusing notification for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    :try_start_0
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v5, :cond_20

    new-instance v4, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object/from16 v0, v22

    iget v7, v0, Landroid/app/Notification;->icon:I

    move-object/from16 v0, v22

    iget v8, v0, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, v22

    iget v9, v0, Landroid/app/Notification;->number:I

    move-object/from16 v0, v22

    iget-object v10, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v5

    if-nez v5, :cond_20

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t update icon: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v16

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t reapply views for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    :goto_9
    if-nez v35, :cond_16

    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_14

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not reusing notification for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    if-eqz v38, :cond_28

    if-eqz v34, :cond_26

    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_15

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rebuilding heads up for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    new-instance v23, Lcom/android/systemui/statusbar/NotificationData$Entry;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getHolder()Landroid/view/ViewGroup;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViewsForHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v5

    if-eqz v5, :cond_25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    if-eqz v11, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->resetHeadsUpDecayTimer()V

    :cond_16
    :goto_a
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v20

    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_17

    const-string v6, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notification is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v20, :cond_2c

    const-string v5, ""

    :goto_b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "for you"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    if-eqz v36, :cond_18

    if-eqz v20, :cond_18

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->tick(Landroid/service/notification/StatusBarNotification;Z)V

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setAreThereNotifications()V

    const/16 v5, -0x2710

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpandedViewPos(I)V

    goto/16 :goto_1

    :cond_19
    const/16 v29, 0x0

    goto/16 :goto_2

    :cond_1a
    const/16 v31, 0x0

    goto/16 :goto_3

    :cond_1b
    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_1c
    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_1d
    const/16 v18, 0x0

    goto/16 :goto_6

    :cond_1e
    const/16 v33, 0x0

    goto/16 :goto_7

    :cond_1f
    const/16 v36, 0x0

    goto/16 :goto_8

    :cond_20
    if-eqz v38, :cond_23

    if-eqz v34, :cond_22

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateHeadsUpViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    if-eqz v11, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->resetHeadsUpDecayTimer()V

    :cond_21
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    const/16 v35, 0x1

    goto/16 :goto_9

    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->releaseAndClose()V

    goto/16 :goto_1

    :cond_23
    if-eqz v34, :cond_24

    if-eqz v11, :cond_24

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_c

    :cond_24
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->reSanitizePendingIntentIfNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    :cond_25
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t create new updated headsup for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_26
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_27

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releasing heads up for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->releaseAndClose()V

    goto/16 :goto_1

    :cond_28
    if-eqz v34, :cond_2a

    if-eqz v11, :cond_2a

    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_29

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reposting to invoke heads up for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto/16 :goto_a

    :cond_2a
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_2b

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rebuilding update in place for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->reSanitizePendingIntentIfNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    new-instance v4, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object/from16 v0, v22

    iget v7, v0, Landroid/app/Notification;->icon:I

    move-object/from16 v0, v22

    iget v8, v0, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, v22

    iget v9, v0, Landroid/app/Notification;->number:I

    move-object/from16 v0, v22

    iget-object v10, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v38

    invoke-direct {v0, v1, v5, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto/16 :goto_a

    :cond_2c
    const-string v5, "not "

    goto/16 :goto_b
.end method

.method protected abstract updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;
    .locals 7

    const v0, 0x7f0e03ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v0, p1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/BaseStatusBar$7;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-object v6

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected abstract updateNotifications()V
.end method

.method protected updateRowStates()V
    .locals 39

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->removeAllViews()V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v4

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v3, :cond_11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/app/Notification;->commonValue:I

    move/from16 v35, v0

    const v36, -0x7f7f7f80

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1

    const-string v35, "StatusBar"

    const-string v36, "Icon Only"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v35, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v35, :cond_b

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/service/notification/StatusBarNotification;->isMiniCon()Z

    move-result v35

    if-nez v35, :cond_2

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_9

    :cond_2
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v35, v0

    const/16 v36, 0x10

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_3

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    sget-boolean v35, Lcom/android/systemui/statusbar/Feature;->mUseEventNotification:Z

    if-eqz v35, :cond_0

    const-string v35, "com.sec.android.app.eventnotification"

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v35, v0

    const/16 v36, 0x80

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_4

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v35, v0

    const/16 v36, 0x104

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_5

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v35, v0

    const/16 v36, 0x200

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_8

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPresidentialCMASFeature()Z

    move-result v35

    if-eqz v35, :cond_7

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/app/Notification;->commonValue:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    const/4 v8, 0x1

    :goto_3
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    :cond_7
    const/4 v8, 0x1

    goto :goto_3

    :cond_8
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v35

    if-eqz v35, :cond_a

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v35, v0

    const/16 v36, 0x200

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_e

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPresidentialCMASFeature()Z

    move-result v35

    if-eqz v35, :cond_d

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/app/Notification;->commonValue:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_c

    const/4 v8, 0x1

    :goto_4
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_c
    const/4 v8, 0x0

    goto :goto_4

    :cond_d
    const/4 v8, 0x1

    goto :goto_4

    :cond_e
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v35, v0

    const/16 v36, 0x80

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_f

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_f
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_10

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_11
    const/4 v11, 0x0

    :goto_5
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v11, v0, :cond_12

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_12
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v35

    add-int/lit8 v11, v35, -0x1

    :goto_6
    if-ltz v11, :cond_13

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    :cond_13
    const/4 v11, 0x0

    :goto_7
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v11, v0, :cond_14

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_14
    const/4 v11, 0x0

    :goto_8
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v11, v0, :cond_15

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_15
    const/4 v11, 0x0

    :goto_9
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v11, v0, :cond_16

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_16
    const/4 v11, 0x0

    :goto_a
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v11, v0, :cond_17

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_17
    const/4 v11, 0x0

    :goto_b
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v11, v0, :cond_18

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_18
    const/4 v11, 0x0

    :goto_c
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v11, v0, :cond_1a

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->isDismissed:Z

    move/from16 v35, v0

    if-nez v35, :cond_19

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_1a
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    :goto_d
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v11, v0, :cond_1b

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_1b
    const/16 v33, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState()Z

    move-result v13

    if-eqz v9, :cond_2a

    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mMaxKeyguardNotifications:I

    :cond_1c
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v35, v0

    if-eqz v35, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v35

    if-nez v35, :cond_2c

    const/4 v5, 0x1

    :goto_f
    if-eqz v13, :cond_2d

    if-eqz v5, :cond_2d

    const/4 v13, 0x1

    :goto_10
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isPersoLock()Z

    move-result v12

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState()Z

    move-result v35

    if-eqz v35, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v35, v0

    if-eqz v35, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v35

    if-nez v35, :cond_2e

    const/16 v35, 0x1

    :goto_11
    const/16 v37, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v35

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "user_setup_complete"

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move/from16 v38, v0

    invoke-static/range {v35 .. v38}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v35

    if-eqz v35, :cond_2f

    const/16 v31, 0x1

    :goto_12
    const/4 v11, 0x0

    :goto_13
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v11, v0, :cond_3d

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/app/Notification;->visibility:I

    move/from16 v32, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v35

    if-nez v35, :cond_30

    const/4 v10, 0x1

    :goto_14
    if-nez v32, :cond_31

    const/16 v16, 0x1

    :goto_15
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->packageHasVisibilityOverride(Ljava/lang/String;)Z

    move-result v17

    if-eqz v16, :cond_1f

    if-nez v10, :cond_20

    :cond_1f
    if-eqz v17, :cond_32

    :cond_20
    const/4 v15, 0x1

    :goto_16
    if-eqz v15, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v35

    if-eqz v35, :cond_33

    const/16 v20, 0x1

    :goto_17
    iget v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    move/from16 v35, v0

    and-int/lit8 v35, v35, 0x8

    if-eqz v35, :cond_34

    const/4 v14, 0x1

    :goto_18
    if-nez v13, :cond_21

    if-nez v20, :cond_21

    if-eqz v14, :cond_35

    :cond_21
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionDisabled(Z)V

    :cond_22
    :goto_19
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v18

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldShowOnShadeLocked(Landroid/service/notification/StatusBarNotification;)Z

    move-result v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->isUniversalLockBoolean:Z

    move/from16 v35, v0

    if-eqz v35, :cond_38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    move/from16 v35, v0

    if-eqz v35, :cond_38

    if-eqz v13, :cond_38

    const/4 v6, 0x1

    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v35

    if-eqz v35, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    move/from16 v35, v0

    if-eqz v35, :cond_28

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v35

    if-eqz v35, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    move/from16 v35, v0

    if-eqz v35, :cond_28

    :cond_24
    if-eqz v13, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMaxKeyguardNotifications:I

    move/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v35

    if-ge v0, v1, :cond_28

    if-eqz v18, :cond_28

    :cond_25
    if-eqz v12, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState()Z

    move-result v35

    if-nez v35, :cond_28

    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSingleLine:Z

    move/from16 v35, v0

    if-eqz v35, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isShadeLockedState()Z

    move-result v35

    if-eqz v35, :cond_27

    if-eqz v19, :cond_28

    :cond_27
    if-nez v6, :cond_28

    if-nez v31, :cond_39

    sget-boolean v35, Lcom/android/systemui/statusbar/Feature;->mIsFactoryBinary:Z

    if-nez v35, :cond_39

    :cond_28
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    if-eqz v13, :cond_29

    if-eqz v18, :cond_29

    if-nez v12, :cond_29

    if-nez v6, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->addNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    :cond_29
    :goto_1b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_13

    :cond_2a
    if-eqz v13, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    move/from16 v35, v0

    const/16 v36, 0x5

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getMaxCoverNotifications()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mMaxKeyguardNotifications:I

    goto/16 :goto_e

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getMaxKeyguardNotifications()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mMaxKeyguardNotifications:I

    goto/16 :goto_e

    :cond_2c
    const/4 v5, 0x0

    goto/16 :goto_f

    :cond_2d
    const/4 v13, 0x0

    goto/16 :goto_10

    :cond_2e
    const/16 v35, 0x0

    goto/16 :goto_11

    :cond_2f
    const/16 v31, 0x0

    goto/16 :goto_12

    :cond_30
    const/4 v10, 0x0

    goto/16 :goto_14

    :cond_31
    const/16 v16, 0x0

    goto/16 :goto_15

    :cond_32
    const/4 v15, 0x0

    goto/16 :goto_16

    :cond_33
    const/16 v20, 0x0

    goto/16 :goto_17

    :cond_34
    const/4 v14, 0x0

    goto/16 :goto_18

    :cond_35
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionDisabled(Z)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v35

    if-nez v35, :cond_22

    if-nez v11, :cond_36

    const/16 v30, 0x1

    :goto_1c
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v36, v0

    if-eqz v30, :cond_37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldHideSensitiveContents(I)Z

    move-result v35

    if-nez v35, :cond_37

    const/16 v35, 0x1

    :goto_1d
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    goto/16 :goto_19

    :cond_36
    const/16 v30, 0x0

    goto :goto_1c

    :cond_37
    const/16 v35, 0x0

    goto :goto_1d

    :cond_38
    const/4 v6, 0x0

    goto/16 :goto_1a

    :cond_39
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v35

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_3c

    const/16 v34, 0x1

    :goto_1e
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    if-nez v34, :cond_3a

    if-eqz v13, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->wasOccludedAndNeedAnimation()Z

    move-result v35

    if-eqz v35, :cond_3b

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v35, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setNeedAnimationFlag(Z)V

    :cond_3b
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_1b

    :cond_3c
    const/16 v34, 0x0

    goto :goto_1e

    :cond_3d
    if-eqz v13, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getChildCount()I

    move-result v35

    if-lez v35, :cond_43

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSingleLine:Z

    move/from16 v35, v0

    if-eqz v35, :cond_43

    if-eqz v31, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getVisibility()I

    move-result v35

    const/16 v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_42

    const/16 v34, 0x1

    :goto_1f
    if-nez v34, :cond_3e

    if-eqz v13, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->wasOccludedAndNeedAnimation()Z

    move-result v35

    if-eqz v35, :cond_3f

    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v35

    if-nez v35, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setVisibility(I)V

    :goto_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v37

    add-int/lit8 v37, v37, -0x1

    invoke-virtual/range {v35 .. v37}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v37

    add-int/lit8 v37, v37, -0x2

    invoke-virtual/range {v35 .. v37}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMSim()Z

    move-result v35

    if-eqz v35, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getNumberOfActiveSim()I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    invoke-virtual/range {v35 .. v37}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v35, v0

    if-eqz v35, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateCMASText(Z)V

    :cond_41
    return-void

    :cond_42
    const/16 v34, 0x0

    goto/16 :goto_1f

    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setVisibility(I)V

    goto/16 :goto_20
.end method

.method protected updateSearchPanel()V
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/SearchPanelView;->isShowing()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v4, v7}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f0400cd

    invoke-virtual {v4, v7, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/SearchPanelView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    new-instance v7, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;

    const/16 v8, 0x403

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ILcom/android/systemui/statusbar/StatusBarPanel;)V

    invoke-virtual {v4, v7}, Lcom/android/systemui/SearchPanelView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isVertical()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v5

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/SearchPanelView;->setHorizontal(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/SearchPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v4, v7, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4, p0}, Lcom/android/systemui/SearchPanelView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    :cond_1
    return-void

    :cond_2
    move v2, v6

    goto :goto_0
.end method

.method public userAddRemove()V
    .locals 0

    return-void
.end method

.method public userAllowsPrivateNotificationsInPublic(I)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_allow_private_notifications"

    invoke-static {v5, v6, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v2

    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_3

    move v1, v3

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    :goto_3
    invoke-virtual {v5, p1, v3}, Landroid/util/SparseBooleanArray;->append(IZ)V

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    goto :goto_0
.end method

.method public userSwitched(I)V
    .locals 0

    return-void
.end method

.method protected visibilityChanged(Z)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPanelSlightlyVisible:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPanelSlightlyVisible:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups()V

    :cond_0
    if-eqz p1, :cond_2

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->panelRevealedByUser:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->panelRevealedByUser:Z

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelHidden()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .locals 0

    return-void
.end method
