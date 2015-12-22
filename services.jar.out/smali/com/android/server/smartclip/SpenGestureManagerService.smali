.class public Lcom/android/server/smartclip/SpenGestureManagerService;
.super Lcom/samsung/android/smartclip/ISpenGestureService$Stub;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;,
        Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;,
        Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;
    }
.end annotation


# static fields
.field private static ACTIVITY_NAME_FLASH_ANNOTATION:Ljava/lang/String; = null

.field private static ACTIVITY_NAME_RAKEIN_CONTENT:Ljava/lang/String; = null

.field private static ACTIVITY_NAME_RESHAPE_TUTORIAL:Ljava/lang/String; = null

.field private static GLOBAL_AIR_COMMAND_SELECTED_FOR_ACTIONMEMO:Ljava/lang/String; = null

.field private static GLOBAL_AIR_COMMAND_SELECTED_FOR_RAKEINSERVICE:Ljava/lang/String; = null

.field private static final MAX_META_FILE_COUNT:I = 0x3

.field private static final MAX_SMARTCLIP_REMOTE_REQUEST_DELAY:I = 0xbb8

.field private static final MAX_SYNC_CHECK_AIRBUTTON_DELAY:I = 0x3e8

.field private static final MSG_CREATE_VIEW:I = 0x1

.field private static PERMISSION_EXTRACT_SMARTCLIP_DATA:Ljava/lang/String;

.field private static PERMISSION_INJECT_INPUT_EVENT:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;

.field private static mAirCommandItemLoggingEnabled:Z

.field private static mContext:Landroid/content/Context;

.field private static mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# instance fields
.field private mAirCMDButtonPressTouchDownTime:J

.field private mAirCMDFloatingEnabled:Z

.field private mAirCMDIsPenButtonPressed:Z

.field private mAirCMDIsTouchDowned:Z

.field private mAirCMDLastStartTime:J

.field private mAirCMDPenButtonPressedTime:J

.field private mBatteryOnlineStatus:I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCoverOpened:Z

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDataExtractionSync:Ljava/lang/Object;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mIsEnableLockScreenQuickNote:Z

.field private mIsPenInserted:Z

.field private mIsVisibleSPenGestureView:Z

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mLastMetaFileId:I

.field mPenDoubleTap:Ljava/lang/Runnable;

.field private mPenMemoActionIntent:Landroid/content/Intent;

.field private mSPenGestureInputChannel:Landroid/view/InputChannel;

.field private mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

.field private mShouldTransferEventToAirButton:Z

.field private mShouldTransferTouchDownEventToAirButton:Z

.field private mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

.field private mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

.field private mSpenUspLevel:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager2:Landroid/telephony/TelephonyManager;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "SpenGestureManagerService"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v0, "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PERMISSION_EXTRACT_SMARTCLIP_DATA:Ljava/lang/String;

    const-string v0, "android.permission.INJECT_EVENTS"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PERMISSION_INJECT_INPUT_EVENT:Ljava/lang/String;

    const-string v0, "com.sec.android.app.SmartClipService.rakein.RakeInContentActivity"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_RAKEIN_CONTENT:Ljava/lang/String;

    const-string v0, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_FLASH_ANNOTATION:Ljava/lang/String;

    const-string v0, "com.sec.android.app.SmartClipService.help.EasyClipTutorialActivity"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_RESHAPE_TUTORIAL:Ljava/lang/String;

    const-string v0, "com.android.server.smartclip.GAC_SELECTED"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->GLOBAL_AIR_COMMAND_SELECTED_FOR_ACTIONMEMO:Ljava/lang/String;

    const-string v0, "com.android.server.smartclip.GAC_RAKEINSERVICE"

    sput-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->GLOBAL_AIR_COMMAND_SELECTED_FOR_RAKEINSERVICE:Ljava/lang/String;

    sput-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sput-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCommandItemLoggingEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;-><init>()V

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsPenButtonPressed:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsTouchDowned:Z

    iput-wide v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDButtonPressTouchDownTime:J

    iput-wide v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDPenButtonPressedTime:J

    iput-wide v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDLastStartTime:J

    iput v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDFloatingEnabled:Z

    iput-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Z

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    iput-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    iput v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    new-instance v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-direct {v0}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$2;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$4;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDoubleTap:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$5;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    sput-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v1, "SpenGestureManagerService(Context) "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;-><init>()V

    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsPenButtonPressed:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsTouchDowned:Z

    iput-wide v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDButtonPressTouchDownTime:J

    iput-wide v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDPenButtonPressedTime:J

    iput-wide v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDLastStartTime:J

    iput v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDFloatingEnabled:Z

    iput-boolean v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Z

    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    iput-boolean v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    iput v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    new-instance v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-direct {v0}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$2;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$4;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDoubleTap:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$5;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    sput-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    sput-object p2, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v1, "SpenGestureManagerService(Context context, WindowManagerService Wm)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->initSpenGesture()V

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "SPenGestureService"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSPenGestureInputEventReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCommandItemLoggingEnabled:Z

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSettingCondition()V

    new-instance v7, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Handler;)V

    invoke-virtual {v7}, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;->observe()V

    new-instance v6, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Handler;)V

    invoke-virtual {v6}, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;->observe()V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.pen.INSERT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.cover.OPEN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/smartclip/SpenGestureManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/smartclip/SpenGestureManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/content/ComponentName;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->getTopMostPackage()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/android/server/smartclip/SmartClipView;)Lcom/android/server/smartclip/SmartClipView;
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isScreenPinningEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isHapticFeedbackEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->playVibrator()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->launchActionMemo()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogSpenDetached(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsVisibleSPenGestureView:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->processMotionEventForAirCMD(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/smartclip/SpenGestureManagerService;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->getTopMostActivityClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->GLOBAL_AIR_COMMAND_SELECTED_FOR_ACTIONMEMO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->GLOBAL_AIR_COMMAND_SELECTED_FOR_RAKEINSERVICE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCommandItemLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogAirCommandItemSelected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isPossibleSmartClip()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/smartclip/SpenGestureManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    return v0
.end method

.method static synthetic access$3000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_RAKEIN_CONTENT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->isPackageActivated(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isPossibleCapture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_FLASH_ANNOTATION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_RESHAPE_TUTORIAL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDFloatingEnabled:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDFloatingEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    return p1
.end method

.method static synthetic access$600()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/app/enterprise/kioskmode/KioskMode;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method private allocateMetaTagFilePath()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v1, "/data/clipboard/smartclip"

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_0
    iget v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    iget v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    rem-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    const-string v3, "%s/SC%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    iget v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastMetaFileId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private checkInputEventInjectionPermission()V
    .locals 1

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PERMISSION_INJECT_INPUT_EVENT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkSettingCondition()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "lock_screen_quick_note"

    const/4 v4, -0x2

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSettingCondition, LOCK_SCREEN_QUICK_NOTE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private checkSmartClipMetaExtractionPermission()V
    .locals 1

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->PERMISSION_EXTRACT_SMARTCLIP_DATA:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v8, 0x1400

    :try_start_2
    new-array v0, v8, [B

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v4, v5

    move-object v2, v3

    :goto_1
    :try_start_3
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "copyFile : Exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_2
    return v7

    :cond_2
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v7, 0x1

    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    move-object v4, v5

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception v8

    move-object v4, v5

    move-object v2, v3

    goto :goto_2

    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    :goto_4
    throw v8

    :catch_2
    move-exception v9

    goto :goto_4

    :catchall_1
    move-exception v8

    move-object v2, v3

    goto :goto_3

    :catchall_2
    move-exception v8

    move-object v4, v5

    move-object v2, v3

    goto :goto_3

    :catch_3
    move-exception v8

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method

.method private getFullScreenRect()Landroid/graphics/Rect;
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private getTopMostActivityClassName()Ljava/lang/String;
    .locals 8

    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v6, 0x64

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x0

    if-ge v2, v3, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private getTopMostPackage()Landroid/content/ComponentName;
    .locals 4

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object v2
.end method

.method private initCoverState()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initCoverState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initCoverState() : state is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initCoverState() : mCoverManager is null!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSpenGesture()V
    .locals 4

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    :cond_0
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->initCoverState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    :goto_0
    new-instance v1, Landroid/view/GestureDetector;

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/smartclip/SpenGestureManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$3;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;

    return-void

    :cond_1
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "initSpenGesture() : mCoverManager is null!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isHapticFeedbackEnabled()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "spen_feedback_haptic"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "spen_feedback_haptic_pen_gesture"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isPackageActivated(Ljava/lang/String;)Z
    .locals 10

    const/4 v2, 0x0

    sget-object v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    if-eqz v5, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_1
    sget-object v7, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isPackageActivated : activated="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " user="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isPackageActivated : Could not get package manager!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isPossibleCapture()Z
    .locals 7

    const/4 v2, 0x0

    const-string v0, "RestrictionPolicy3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isScreenCaptureEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "isScreenCaptureEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, "MDM: Screen Capture Disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isPossibleSmartClip()Z
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v0, "true"

    aput-object v0, v4, v7

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isSmartClipModeAllowed"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "isSmartClipModeAllowed"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, "MDM: SmartClip Disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    :goto_0
    return v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isScreenPinningEnabled()Z
    .locals 4

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isScreenPinningEnabled : Screen pinning mode enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method private isVzwSetupRunning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private launchActionMemo()V
    .locals 6

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v2

    const-string/jumbo v3, "true"

    const-string v4, "dev.knoxapp.running"

    const-string/jumbo v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v2, v3}, Landroid/os/PersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_1

    :cond_0
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.snote"

    const-string v4, "com.samsung.android.snote.control.ui.quickmemo.service.QuickMemo_Service"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "launchActionMemo : Trying to launch Snote aciton memo.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "launchActionMemo : Snote action memo launch failed. Trying to launch diotek PenMemo..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.diotek.mini_penmemo"

    const-string v4, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "launchActionMemo : Diotek PenMemo launch failed. Sending legacy quick memo broadcasting"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.QUICKMEMO_LAUNCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private moveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/smartclip/SpenGestureManagerService;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method private moveMetaFilesToLocalStorage(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z
    .locals 12

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez p1, :cond_0

    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "moveMetaFilesToLocalStorage : Empty repository!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v7

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getAllMetaTagList()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "file_path_html"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v8, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->allocateMetaTagFilePath()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "moveMetaFilesToLocalStorage : Moving "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->moveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "moveMetaFilesToLocalStorage : File move failed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v7}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v7, v8

    goto :goto_0
.end method

.method private playVibrator()V
    .locals 4

    const/16 v2, 0x1e

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator;

    if-eqz v1, :cond_0

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v1, v0, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x16t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x9t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0x2ft
        0x4dt
        -0x1t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x41t
        -0x7dt
        -0x4et
        0x0t
    .end array-data
.end method

.method private processMotionEventForAirCMD(Landroid/view/MotionEvent;)V
    .locals 28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    move/from16 v24, v0

    const/16 v25, 0xa

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    const/16 v19, 0x1

    :goto_0
    if-eqz v19, :cond_b

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    :cond_0
    :goto_1
    :pswitch_0
    return-void

    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v24

    and-int/lit8 v24, v24, 0x2

    if-eqz v24, :cond_3

    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDButtonPressTouchDownTime:J

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const-wide/16 v24, -0x1

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDButtonPressTouchDownTime:J

    goto :goto_1

    :sswitch_1
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsPenButtonPressed:Z

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDButtonPressTouchDownTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-lez v24, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDButtonPressTouchDownTime:J

    move-wide/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v26

    cmp-long v24, v24, v26

    if-nez v24, :cond_5

    const/16 v24, 0x1

    :goto_3
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsTouchDowned:Z

    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsTouchDowned:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v24

    and-int/lit8 v24, v24, 0x2

    if-eqz v24, :cond_6

    const/4 v5, 0x1

    :goto_4
    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsPenButtonPressed:Z

    move/from16 v24, v0

    if-nez v24, :cond_7

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsPenButtonPressed:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDPenButtonPressedTime:J

    goto/16 :goto_1

    :cond_5
    const/16 v24, 0x0

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    :cond_7
    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsPenButtonPressed:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDIsPenButtonPressed:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDPenButtonPressedTime:J

    move-wide/from16 v26, v0

    sub-long v16, v24, v26

    const-wide/16 v24, 0x0

    cmp-long v24, v16, v24

    if-lez v24, :cond_0

    const-wide/16 v24, 0x320

    cmp-long v24, v16, v24

    if-gtz v24, :cond_0

    const-string/jumbo v7, "right"

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    sget-object v24, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_8

    const-string/jumbo v7, "left"

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    move/from16 v24, v0

    if-nez v24, :cond_9

    sget-object v24, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v25, "Can not start AirCommand. #2"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDLastStartTime:J

    move-wide/from16 v24, v0

    sub-long v20, v14, v24

    const-wide/16 v24, 0x0

    cmp-long v24, v20, v24

    if-lez v24, :cond_a

    const-wide/16 v24, 0x190

    cmp-long v24, v20, v24

    if-gez v24, :cond_a

    sget-object v24, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Can not start AirCommand. #3."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDLastStartTime:J

    :try_start_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v24, "com.samsung.android.service.aircommand"

    const-string v25, "com.samsung.android.service.aircommand.AirCommandService"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v24, "cause"

    const-string v25, "button_pressed"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v24, "direction"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v24, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v25, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    sget-object v24, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v25, "Start AirCommand. #2"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v8

    sget-object v24, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Failed to start AirCommand. "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v24

    and-int/lit8 v24, v24, 0x2

    if-eqz v24, :cond_10

    const/4 v11, 0x1

    :goto_5
    const/4 v12, 0x0

    if-eqz v11, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_11

    const/4 v12, 0x1

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z

    move/from16 v24, v0

    if-eqz v24, :cond_e

    if-nez v4, :cond_e

    sget-object v24, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "onInputEvent : Send touch down event to AirCommand"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v24, v0

    if-nez v24, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v25

    and-int/lit8 v25, v25, 0x2

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/airbutton/AirButtonImpl;->onTouchDownForGA(I)V

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z

    :cond_e
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v12, v0, :cond_0

    packed-switch v4, :pswitch_data_0

    :pswitch_1
    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v24, v0

    if-nez v24, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v25

    and-int/lit8 v25, v25, 0x2

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/airbutton/AirButtonImpl;->onTouchDownForGA(I)V

    goto/16 :goto_1

    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    sget-object v24, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "onInputEvent : Side button has released"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v24, v0

    if-nez v24, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v24, v0

    if-eqz v24, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/airbutton/AirButtonImpl;->isShowing()Z

    move-result v24

    if-nez v24, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    sget-object v24, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v25, "spengestureservice"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/smartclip/SpenGestureManager;

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/smartclip/SpenGestureManager;->getAirButtonHitTest(III)I

    move-result v13

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->keyguardOn()Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isShowGlobalAirButton()Z

    move-result v6

    sget-object v24, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "onInputEvent : keyguard="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", isShowGlobalAirButton="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", hitResult="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    move/from16 v0, v24

    if-eq v13, v0, :cond_14

    if-nez v10, :cond_14

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v6, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :goto_7
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z

    goto/16 :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/airbutton/AirButtonImpl;->initSideButtonState()V

    goto :goto_7

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v24, v0

    if-nez v24, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto/16 :goto_1

    :pswitch_4
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferTouchDownEventToAirButton:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v24, v0

    if-nez v24, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;

    move-object/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v25

    and-int/lit8 v25, v25, 0x2

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/airbutton/AirButtonImpl;->onTouchUpForGA(I)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
        0x7 -> :sswitch_2
        0x9 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private sendLogAirCommandItemSelected(Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "com.samsung.android.airbutton"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    const-string v3, "AC02"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendLogSpenDetached(Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "com.android.server.smartclip"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    const-string v3, "SPEN"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;
    .locals 3

    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl;

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/content/Context;Z)V

    new-instance v1, Lcom/android/server/smartclip/SpenGestureManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$6;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->setOnItemSelectedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;)V

    return-object v0
.end method

.method public getAirButtonHitTest(III)I
    .locals 12

    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getAirButtonHitTest() : id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v8, "id"

    invoke-virtual {v3, v8, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v8, "x"

    invoke-virtual {v3, v8, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v8, "y"

    invoke-virtual {v3, v8, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v4, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    const/4 v8, 0x2

    invoke-direct {v4, v2, v8, v3}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    const/4 v8, 0x0

    invoke-interface {v7, p2, p3, v4, v8}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v10, 0x3e8

    invoke-virtual {v8, v2, v10}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v5

    const/4 v1, -0x1

    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast v6, Landroid/os/Bundle;

    const-string/jumbo v8, "result"

    invoke-virtual {v6, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAirButtonHitTest : Result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v9

    :goto_1
    return v1

    :cond_0
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "getAirButtonHitTest : Result is null!!"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception e : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 9

    const/4 v6, 0x0

    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getScrollableRect()"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    :try_start_0
    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v1

    new-instance v2, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    const/4 v5, 0x4

    const/4 v7, 0x0

    invoke-direct {v2, v1, v5, v7}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    iget v7, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-interface {v4, v5, v7, v2, p2}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v7, 0xbb8

    invoke-virtual {v5, v1, v7}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getScrollableRect : Result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v3, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast v5, Landroid/os/Bundle;

    :goto_0
    return-object v5

    :cond_0
    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getScrollableRect : Result is null!!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception e : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    goto :goto_0
.end method

.method public getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;
    .locals 10

    const/4 v7, 0x0

    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "getScrollableViewInfo()"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    :try_start_0
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "hashCode"

    invoke-virtual {v1, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v3, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    const/4 v6, 0x5

    invoke-direct {v3, v2, v6, v1}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    iget v8, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    invoke-interface {v5, v6, v8, v3, p3}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v8, 0xbb8

    invoke-virtual {v6, v2, v8}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getScrollableViewInfo : Result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v4, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast v6, Landroid/os/Bundle;

    :goto_0
    return-object v6

    :cond_0
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "getScrollableViewInfo : Result is null!!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception e : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    goto :goto_0
.end method

.method public getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .locals 12

    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "getSmartClipDataByScreenRect"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    :try_start_0
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->getFullScreenRect()Landroid/graphics/Rect;

    move-result-object p1

    :cond_0
    const-string/jumbo v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v3

    new-instance v4, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    invoke-direct {v4, v3, p1, p3}, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;-><init>(ILandroid/graphics/Rect;I)V

    new-instance v5, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    const/4 v8, 0x1

    invoke-direct {v5, v3, v8, v4}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    invoke-interface {v7, v8, v10, v5, p2}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v10, 0xbb8

    invoke-virtual {v8, v3, v10}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v2, v6, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast v2, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    iget-object v1, v2, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-direct {p0, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->moveMetaFilesToLocalStorage(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z

    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v8, v2}, Lcom/android/server/smartclip/SmartClipView;->onDataExtractionResponseArrived(Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;)V

    :cond_1
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getSmartClipDataByScreenRect : wait is unlocked. Repository = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9

    :goto_0
    return-object v1

    :cond_2
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "getSmartClipDataByScreenRect : result is null!!"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getSmartClipDataByScreenRect : Exception e : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public injectInputEvent(II[Landroid/view/InputEvent;ZLandroid/os/IBinder;)V
    .locals 10

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkInputEventInjectionPermission()V

    :try_start_0
    iget-object v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-virtual {v6, p4}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v6, "events"

    invoke-virtual {v1, v6, p3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string/jumbo v6, "waitUntilConsume"

    invoke-virtual {v1, v6, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v3, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    const/4 v6, 0x3

    invoke-direct {v3, v2, v6, v1}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    invoke-interface {v5, p1, p2, v3, p5}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    const/4 v6, 0x1

    if-ne p4, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/16 v8, 0xbb8

    invoke-virtual {v6, v2, v8}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(II)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "injectInputEvent : Result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    monitor-exit v7

    :goto_1
    return-void

    :cond_1
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "injectInputEvent : Result is null!!"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "injectInputEvent : Exception thrown! e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isShowGlobalAirButton()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "isShowGlobalAirButton : Factory mode enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->isVzwSetupRunning()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public keyguardOn()Z
    .locals 3

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, "SpenGestureManagerService :isKeyguardLocked : true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyguardSecureOn()Z
    .locals 3

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, "SpenGestureManagerService :isKeyguardSecure : true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendSmartClipRemoteRequestResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSmartClipRemoteRequestResult : requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-virtual {v0, p1}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->notifyResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendSmartClipRemoteRequestResult : result is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFocusWindow(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v0, p1}, Lcom/android/server/smartclip/SmartClipView;->setFocusWindow(I)V

    :cond_0
    return-void
.end method
