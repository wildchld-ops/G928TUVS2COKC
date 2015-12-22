.class public Lcom/android/incallui/InCallPresenter;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;
.implements Lcom/android/incallui/CallList$Listener;
.implements Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallPresenter$10;,
        Lcom/android/incallui/InCallPresenter$AutoAnsTimer;,
        Lcom/android/incallui/InCallPresenter$InCallUiListener;,
        Lcom/android/incallui/InCallPresenter$InCallEventListener;,
        Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;,
        Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;,
        Lcom/android/incallui/InCallPresenter$OnehandModeListener;,
        Lcom/android/incallui/InCallPresenter$EmergencyModeListener;,
        Lcom/android/incallui/InCallPresenter$InCallOrientationListener;,
        Lcom/android/incallui/InCallPresenter$InCallDetailsListener;,
        Lcom/android/incallui/InCallPresenter$CanAddCallListener;,
        Lcom/android/incallui/InCallPresenter$IncomingCallListener;,
        Lcom/android/incallui/InCallPresenter$InCallStateListener;,
        Lcom/android/incallui/InCallPresenter$InCallState;,
        Lcom/android/incallui/InCallPresenter$InCallReceiver;
    }
.end annotation


# static fields
.field private static final EMPTY_EXTRAS:Landroid/os/Bundle;

.field private static mBatMonitor:Lcom/android/incallui/rcs/BatteryMonitor;

.field private static mBatMonitorRegistered:Z

.field private static mIsRegistered:Z

.field private static mPreEasymode:Z

.field private static mSwisState:I

.field private static sInCallPresenter:Lcom/android/incallui/InCallPresenter;


# instance fields
.field private final INTENT_ML_STATE:Ljava/lang/String;

.field private isStatusBarExpanded:Z

.field private mAccessoryEventHandler:Lcom/android/incallui/AccessoryEventHandler;

.field private mAccountSelectionCancelled:Z

.field private mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

.field private mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

.field private mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallEdgeManager:Lcom/android/incallui/edge/CallEdgeManager;

.field private mCallList:Lcom/android/incallui/CallList;

.field private final mCallListener:Landroid/telecom/Call$Listener;

.field private mCallPopupService:Lcom/android/incallui/SecCallPopupService;

.field private final mCanAddCallListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$CanAddCallListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCircularRevealActivityStarted:Z

.field private mContactAgentReceiver:Landroid/content/BroadcastReceiver;

.field private mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

.field private mContext:Landroid/content/Context;

.field private mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

.field private final mDetailsListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmergencyModeListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$EmergencyModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstCallState:I

.field private mFirstCallType:I

.field private final mHandler:Landroid/os/Handler;

.field mImsManager:Lcom/sec/ims/ImsManager;

.field private mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

.field private mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

.field private final mInCallEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInCallReceiver:Landroid/content/BroadcastReceiver;

.field private mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private final mInCallUiListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallUiListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIncomingCallListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActivityPreviouslyStarted:Z

.field private mIsCoverClosed:Z

.field private mKnoxCustomDisabledItems:I

.field private mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

.field private mLinkedinHelper:Lcom/android/incallui/sns/SecLinkedInHelper;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenersOfManager:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMobileKeyboardListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnehandAnyScreenOnListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnehandModeListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$OnehandModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrientationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Landroid/telecom/Phone;

.field private final mPhoneListener:Landroid/telecom/Phone$Listener;

.field private mPhotoringBlocked:I

.field mPhotoringState:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mProximitySensor:Lcom/android/incallui/ProximitySensor;

.field private mRcsBroadcastReceiver:Lcom/android/incallui/rcs/RcsBroadcastReceiver;

.field private mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

.field mRegListener:Lcom/sec/ims/IImsRegistrationListener;

.field private mServiceBound:Z

.field private mServiceConnected:Z

.field private mShowDialpadOnStart:Z

.field private mShowedMobileNetworkPopup:Z

.field private mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

.field private mVideoPopupService:Lcom/android/incallui/SecVideoPopupService;

.field private mWaitForRevealAnimationStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallPresenter;->EMPTY_EXTRAS:Landroid/os/Bundle;

    sput-boolean v1, Lcom/android/incallui/InCallPresenter;->mIsRegistered:Z

    sput-boolean v1, Lcom/android/incallui/InCallPresenter;->mBatMonitorRegistered:Z

    sput-boolean v1, Lcom/android/incallui/InCallPresenter;->mPreEasymode:Z

    sput v1, Lcom/android/incallui/InCallPresenter;->mSwisState:I

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x1

    const v2, 0x3f666666    # 0.9f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyModeListener:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandModeListener:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandAnyScreenOnListener:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mMobileKeyboardListener:Ljava/util/Set;

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mAccountSelectionCancelled:Z

    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    sget-object v0, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_NONE:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    iput v1, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->isStatusBarExpanded:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    const-string v0, "com.samsung.android.mirrorlink.ML_STATE"

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->INTENT_ML_STATE:Ljava/lang/String;

    new-instance v0, Lcom/android/incallui/InCallPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$1;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/incallui/InCallPresenter$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$2;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/incallui/InCallPresenter$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$3;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/InCallPresenter$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$4;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPhoneListener:Landroid/telecom/Phone$Listener;

    new-instance v0, Lcom/android/incallui/InCallPresenter$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$5;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallListener:Landroid/telecom/Call$Listener;

    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mWaitForRevealAnimationStart:Z

    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mCircularRevealActivityStarted:Z

    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mShowDialpadOnStart:Z

    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mShowedMobileNetworkPopup:Z

    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mProcessObserver:Landroid/app/IProcessObserver;

    new-instance v0, Lcom/android/incallui/InCallPresenter$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$6;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRegListener:Lcom/sec/ims/IImsRegistrationListener;

    new-instance v0, Lcom/sec/ims/ImsManager;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/InCallPresenter$7;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallPresenter$7;-><init>(Lcom/android/incallui/InCallPresenter;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mImsManager:Lcom/sec/ims/ImsManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/CallList;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->sendMobileNetworkPopupIntent()V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/InCallPresenter;->mPreEasymode:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/incallui/InCallPresenter;->mPreEasymode:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/incallui/InCallPresenter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/incallui/InCallPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->isStatusBarExpanded:Z

    return p1
.end method

.method static synthetic access$1300()I
    .locals 1

    sget v0, Lcom/android/incallui/InCallPresenter;->mSwisState:I

    return v0
.end method

.method static synthetic access$1302(I)I
    .locals 0

    sput p0, Lcom/android/incallui/InCallPresenter;->mSwisState:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/incallui/InCallPresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mShowedMobileNetworkPopup:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/incallui/InCallPresenter;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->getAppName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/incallui/InCallPresenter;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallPresenter;->checkPermissionAndSendIntent(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/BaseInCallComponent;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/InCallPresenter;)Landroid/telecom/Call$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallListener:Landroid/telecom/Call$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/InCallPresenter;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/InCallPresenter;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/InCallPresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mShowDialpadOnStart:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/incallui/InCallPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mShowDialpadOnStart:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method

.method private attemptCleanup()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_e

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attemptCleanup? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/EcidClient;->clearAllCalls()V

    :cond_0
    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->setMergeAfterAnswer(Z)V

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->deInitIsVZWLTEVideoCallMenuShow()V

    :cond_1
    if-eqz v0, :cond_d

    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v2}, Lcom/android/incallui/ContactInfoCache;->clearCache()V

    :cond_2
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v2}, Lcom/android/incallui/ProximitySensor;->tearDown()V

    :cond_3
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v2}, Lcom/android/incallui/StatusBarNotifier;->tearDown()V

    :cond_4
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    :cond_5
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/AccessoryEventHandler;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/AccessoryEventHandler;

    invoke-virtual {v2, p0}, Lcom/android/incallui/AccessoryEventHandler;->removeListener(Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;)V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/AccessoryEventHandler;

    invoke-virtual {v2}, Lcom/android/incallui/AccessoryEventHandler;->tearDown()V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/AccessoryEventHandler;

    :cond_6
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->clearCoreAppsContact()V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    :cond_7
    const-string v2, "smart_auto_answering"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_8
    invoke-static {}, Lcom/android/incallui/ContactAgentUtils;->isSupportContactAgent()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    :cond_9
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_a
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    invoke-virtual {v2}, Lcom/android/incallui/accessory/CoverViewManager;->dismissView()V

    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    :cond_b
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mLinkedinHelper:Lcom/android/incallui/sns/SecLinkedInHelper;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mLinkedinHelper:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-virtual {v2}, Lcom/android/incallui/sns/SecLinkedInHelper;->finish()V

    :cond_c
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    iput v1, p0, Lcom/android/incallui/InCallPresenter;->mKnoxCustomDisabledItems:I

    const-string v1, "Finished InCallPresenter.CleanUp"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d
    return-void

    :cond_e
    move v0, v1

    goto/16 :goto_0
.end method

.method private attemptFinishActivity()V
    .locals 5

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/incallui/InCallPresenter;->mWaitForRevealAnimationStart:Z

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/CircularRevealActivity;->sendClearDisplayBroadcast(Landroid/content/Context;)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hide in call UI: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v2}, Lcom/android/incallui/ContactInfoCache;->clearCache()V

    :cond_1
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v2}, Lcom/android/incallui/ContactInfoCache;->clearCache()V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v2}, Lcom/android/incallui/BaseInCallComponent;->finish()V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    invoke-virtual {v2}, Lcom/android/incallui/accessory/CoverViewManager;->dismissView()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    :cond_3
    iget-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mAccountSelectionCancelled:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v2}, Lcom/android/incallui/BaseInCallComponent;->getComponentType()Lcom/android/incallui/BaseInCallComponent$ComponentType;

    move-result-object v2

    sget-object v4, Lcom/android/incallui/BaseInCallComponent$ComponentType;->ACTIVITY:Lcom/android/incallui/BaseInCallComponent$ComponentType;

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v2}, Lcom/android/incallui/BaseInCallComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_1
.end method

.method private checkEasyModeFirstCallEnd()Z
    .locals 12

    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v2

    :cond_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-eq v5, v11, :cond_1

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-ne v5, v10, :cond_2

    :cond_1
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFirstCallPhoneType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mWaitingCallPhoneType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v2, v8, :cond_4

    if-ne v3, v8, :cond_4

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    const/4 v1, 0x0

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkEasyModeFirstCallEnd : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_4
    if-eq v3, v7, :cond_5

    if-eq v3, v9, :cond_5

    if-eq v3, v10, :cond_5

    if-eq v3, v11, :cond_5

    if-ne v2, v7, :cond_2

    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkPermission(Ljava/lang/String;II)I
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "permission is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    goto :goto_0
.end method

.method private checkPermissionAndSendIntent(II)V
    .locals 10

    const/16 v8, 0x3eb

    const/4 v7, 0x1

    const-string v5, "android.permission.INTERNET"

    invoke-direct {p0, v5, p1, p2}, Lcom/android/incallui/InCallPresenter;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MobileNetworkPopup - checkPermissionAndSendIntent() permission_reult : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mShowedMobileNetworkPopup : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/incallui/InCallPresenter;->mShowedMobileNetworkPopup:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isWifiConn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-nez v4, :cond_1

    iget-boolean v5, p0, Lcom/android/incallui/InCallPresenter;->mShowedMobileNetworkPopup:Z

    if-nez v5, :cond_1

    if-nez v1, :cond_1

    iput-boolean v7, p0, Lcom/android/incallui/InCallPresenter;->mShowedMobileNetworkPopup:Z

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private clearDigitsInKeypad()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    instance-of v0, v0, Lcom/android/incallui/SecInCallActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->clearDigits()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    instance-of v0, v0, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v0, Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->clearDigits()V

    goto :goto_0
.end method

.method private dismissDialogForDisconnect()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v0}, Lcom/android/incallui/BaseInCallComponent;->dismissDialogForDisconnect()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCallPopupService;->dismissWaitingCallPopup()V

    goto :goto_0
.end method

.method private getAnimationIntent(Landroid/graphics/Point;Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/CircularRevealActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10840000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "touchPoint"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private getAppName(I)Ljava/lang/String;
    .locals 10

    const-string v7, ""

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v4, v8

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    :try_start_0
    iget v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v8, p1, :cond_0

    iget-object v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/16 v9, 0x80

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-object v7
.end method

.method private getColorsFromCall(Lcom/android/incallui/Call;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->getColorsFromPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    goto :goto_0
.end method

.method private getColorsFromPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getHighlightColor()I

    move-result v1

    :cond_0
    new-instance v3, Lcom/android/incallui/InCallUIMaterialColorMapUtils;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/incallui/InCallUIMaterialColorMapUtils;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v3, v1}, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallPresenter;
    .locals 2

    const-class v1, Lcom/android/incallui/InCallPresenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/InCallPresenter;

    invoke-direct {v0}, Lcom/android/incallui/InCallPresenter;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;

    :cond_0
    sget-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 5

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-nez p0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    :cond_1
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "feature_multisim_preferred_sim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_SIM_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v2, "tmo_echolocate_logger"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->CALL_PRESSED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    invoke-virtual {v4}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/TelecomAdapter;->senduiCallState(Ljava/lang/String;I)V

    :cond_5
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_7

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_8
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1
.end method

.method private getProcessInfo(Ljava/lang/String;)Landroid/app/ActivityManager$RunningAppProcessInfo;
    .locals 8

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v3, v6

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    :try_start_0
    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    move-object v5, v3

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method private hideDialpadForDisconnect()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v0}, Lcom/android/incallui/BaseInCallComponent;->hideDialpadForDisconnect()V

    :cond_0
    return-void
.end method

.method public static isCallWithNoValidAccounts(Lcom/android/incallui/Call;)Z
    .locals 5

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/android/incallui/InCallPresenter;->isEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/incallui/InCallPresenter;->EMPTY_EXTRAS:Landroid/os/Bundle;

    :cond_0
    const-string v2, "selectPhoneAccountAccounts"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid accounts for call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isEmergencyCall(Lcom/android/incallui/Call;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V
    .locals 3

    const-string v1, "maybeShowErrorDialogOnDisconnect"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->setDisconnectCauseForMissingAccounts(Lcom/android/incallui/Call;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/incallui/BaseInCallComponent;->maybeShowErrorDialogOnDisconnect(Landroid/telecom/DisconnectCause;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isStartPopupServiceWhenMakeCallFromOtherApp()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/SecCallPopupService;

    if-eqz v1, :cond_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDescription : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getreason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    :cond_4
    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->displayToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private mobileNetworkPopupObserverRegist()V
    .locals 9

    const/4 v8, 0x1

    const-string v6, "MobileNetworkPopup - mobileNetworkPopupObserverRegist()"

    invoke-static {p0, v6, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/incallui/InCallPresenter;->getProcessInfo(Ljava/lang/String;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MobileNetworkPopup - topActivity.getPackageName() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v3, :cond_0

    const-string v6, "com.android.incallui"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.android.contacts"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.sec.android.app.launcher"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.android.settings"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-direct {p0, v6, v7}, Lcom/android/incallui/InCallPresenter;->checkPermissionAndSendIntent(II)V

    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    :try_start_0
    new-instance v6, Lcom/android/incallui/InCallPresenter$9;

    invoke-direct {v6, p0}, Lcom/android/incallui/InCallPresenter$9;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v6, p0, Lcom/android/incallui/InCallPresenter;->mProcessObserver:Landroid/app/IProcessObserver;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v6}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MobileNetworkPopup - failed to registerProcessObserver, e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private processOnCallListChange(Lcom/android/incallui/CallList;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getCallType()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallState change: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    invoke-static {v4}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACTIVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "ims_rcs"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/incallui/InCallPresenter;->mIsRegistered:Z

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mImsManager :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRegListener :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mRegListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v3}, Lcom/sec/ims/ImsManager;->connectService()V

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mImsManager:Lcom/sec/ims/ImsManager;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mRegListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v3, v4}, Lcom/sec/ims/ImsManager;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    sput-boolean v5, Lcom/android/incallui/InCallPresenter;->mIsRegistered:Z

    :cond_1
    new-instance v3, Lcom/android/incallui/rcs/BatteryMonitor;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/incallui/rcs/BatteryMonitor;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/incallui/InCallPresenter;->mBatMonitor:Lcom/android/incallui/rcs/BatteryMonitor;

    sput-boolean v5, Lcom/android/incallui/InCallPresenter;->mBatMonitorRegistered:Z

    new-instance v3, Lcom/android/incallui/rcs/RcsBroadcastReceiver;

    invoke-direct {v3, p0}, Lcom/android/incallui/rcs/RcsBroadcastReceiver;-><init>(Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;)V

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mRcsBroadcastReceiver:Lcom/android/incallui/rcs/RcsBroadcastReceiver;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mRcsBroadcastReceiver:Lcom/android/incallui/rcs/RcsBroadcastReceiver;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->register(Landroid/content/Context;)V

    :cond_2
    const-string v3, "support_mobilecarrier"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCarrierPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/AccessoryEventHandler;

    invoke-virtual {v3}, Lcom/android/incallui/AccessoryEventHandler;->isCoverClosed()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Start CoverStateChanged when carrier-phone mode"

    invoke-static {p0, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v5}, Lcom/android/incallui/InCallPresenter;->onCoverStateChanged(Z)V

    :cond_3
    invoke-static {v1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DISCONNECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "ims_rcs"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/incallui/InCallPresenter;->mIsRegistered:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deRegisterListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mRegListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mImsManager:Lcom/sec/ims/ImsManager;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mRegListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v3, v4}, Lcom/sec/ims/ImsManager;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    sput-boolean v6, Lcom/android/incallui/InCallPresenter;->mIsRegistered:Z

    :cond_4
    sget-boolean v3, Lcom/android/incallui/InCallPresenter;->mBatMonitorRegistered:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/incallui/InCallPresenter;->mBatMonitor:Lcom/android/incallui/rcs/BatteryMonitor;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/incallui/rcs/BatteryMonitor;->UnregisterBatteryMonitor(Landroid/content/Context;)V

    sput-boolean v6, Lcom/android/incallui/InCallPresenter;->mBatMonitorRegistered:Z

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/rcs/RcsShareUI;->disconnect(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mRcsBroadcastReceiver:Lcom/android/incallui/rcs/RcsBroadcastReceiver;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->unregister(Landroid/content/Context;)V

    :cond_5
    const-string v3, "support_mobilecarrier"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCarrierPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v3, v4, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallType change: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    if-ne v3, v7, :cond_a

    if-nez v2, :cond_a

    const-string v3, "Downgrade"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/VideoCallPresenter;->getInstance()Lcom/android/incallui/VideoCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v3, :cond_6

    const-string v3, "cancelNotification"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v3}, Lcom/android/incallui/StatusBarNotifier;->cancelInSecCall()V

    :cond_6
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    :cond_7
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCarrierPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "Finish in call UI"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    :cond_8
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    instance-of v3, v3, Lcom/android/incallui/SecInCallActivity;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v3, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/SecInCallActivity;->dismissInCallMenu()V

    :cond_9
    iput v2, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    iput v1, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallState:I

    goto/16 :goto_0

    :cond_a
    iget v3, p0, Lcom/android/incallui/InCallPresenter;->mFirstCallType:I

    if-nez v3, :cond_7

    if-ne v2, v7, :cond_7

    const-string v3, "Upgrade"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-direct {p0, v6, v6}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    :cond_b
    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecModifyCallProcessor;->dismissModifyCallDialog()V

    goto :goto_1
.end method

.method private sendMobileNetworkPopupIntent()V
    .locals 4

    const-string v2, "MobileNetworkPopup - sendIntent"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.app.popupuireceiver"

    const-string v3, "com.sec.android.app.popupuireceiver.MobileDataSuspended"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivity() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDisconnectCauseForMissingAccounts(Lcom/android/incallui/Call;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v6, "selectPhoneAccountAccounts"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-virtual {v5}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v6, "tel"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0028

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7, v1, v1}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    :cond_2
    return-void

    :cond_3
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v7, 0x7f0d014e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private showInCall(ZZ)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v0, "showInCall"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "support_mobilecarrier"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCarrierPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "do not showInCall incallUi when carrier-phone mode"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mCircularRevealActivityStarted:Z

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mWaitForRevealAnimationStart:Z

    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mShowDialpadOnStart:Z

    const-string v0, "Waiting for circular reveal completion to show InCallActivity"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/SecInCallActivity;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0, v3}, Lcom/android/incallui/SecInCallActivity;->showConferenceCallManager(Z)V

    :cond_3
    const-string v0, "feature_multisim_preferred_sim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_SIM_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, v0, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->showSelectPhoneSimAccountDialog()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getTargetClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZZZLjava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "support_penwindow_callscreen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/TelecomAdapter;->getMWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/TelecomAdapter;->isPenWindow()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCoverClosed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isKeyguardSecureLocked()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/incallui/BaseInCallService;

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/incallui/SecTabletKeyguardBGService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_7
    const-string v0, "startActivity "

    invoke-static {p0, v0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "Showing InCallActivity immediately"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, p2}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZZ)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private showSelectPhoneSimAccountDialog()V
    .locals 3

    const-string v1, "feature_multisim_preferred_sim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x10808000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/SelectPhoneSimAccountActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private showVideoEndScreen(Lcom/android/incallui/Call;)V
    .locals 3

    const-string v2, "showVideoEndScreen"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.samsung.incallui.action.START_CALLEND_ACTIVITY"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.incallui.action.START_CALLEND_ACTIVITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v2, v1}, Lcom/android/incallui/BaseInCallComponent;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private startAutoAnsTimer(I)V
    .locals 6

    const-wide/16 v2, 0xa

    const-string v0, "startAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->resetAutoAnsTimer()V

    if-nez p1, :cond_1

    new-instance v0, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;-><init>(Lcom/android/incallui/InCallPresenter;JJ)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    :goto_0
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isSystemSettingAllSoundOff()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;-><init>(Lcom/android/incallui/InCallPresenter;JJ)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_1
.end method

.method private startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 21

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isKidsModeRunning()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-static {v7}, Lcom/android/incallui/InCallPresenter;->isEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "kids mode is running, return"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/incallui/BaseInCallComponent;->isFinishing()Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/incallui/BaseInCallComponent;->isDestroyed()Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/incallui/BaseInCallComponent;->finish()V

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarmodeHome()Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "car mode is running, return"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->getTargetClass()Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/incallui/BaseInCallComponent;->forceFinish()V

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "activity changing, will return : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_a

    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_a

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getLiveCallCounts()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_0

    if-nez v4, :cond_0

    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_b

    const/4 v14, 0x1

    :goto_2
    const-string v17, "feature_multisim_preferred_sim"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_4

    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_SIM_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_c

    :cond_4
    const/4 v12, 0x1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v17

    if-nez v17, :cond_f

    const/4 v10, 0x1

    :goto_4
    if-nez v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->getCallCardFragmentVisible()Z

    move-result v17

    if-nez v17, :cond_10

    const/16 v17, 0x1

    :goto_5
    or-int v10, v10, v17

    :cond_5
    if-nez v10, :cond_6

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v17

    if-eqz v17, :cond_11

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/secui/SecUiAdapter;->isPenMultiWindow()Z

    move-result v17

    if-eqz v17, :cond_11

    const/16 v17, 0x1

    :goto_6
    or-int v10, v10, v17

    :cond_6
    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/SecCallPopupService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v17

    if-nez v17, :cond_7

    const/4 v10, 0x0

    :cond_7
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getLiveCallCounts()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    :cond_8
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_12

    :cond_9
    if-eqz v10, :cond_12

    const/4 v13, 0x1

    :goto_7
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_13

    if-eqz v10, :cond_13

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->isCallWithNoValidAccounts(Lcom/android/incallui/Call;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/16 v17, 0x1

    :goto_8
    or-int v13, v13, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v17

    if-nez v17, :cond_14

    const/4 v3, 0x1

    :goto_9
    if-eqz v3, :cond_15

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Undo the state change: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " -> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 p1, v0

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_d
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_e

    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_5

    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_6

    :cond_12
    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_13
    const/16 v17, 0x0

    goto :goto_8

    :cond_14
    const/4 v3, 0x0

    goto :goto_9

    :cond_15
    if-nez v13, :cond_16

    if-eqz v12, :cond_1b

    :cond_16
    const-string v17, "Start in call UI"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->clearDisconnectedTimeoutEvent()Z

    if-eqz v13, :cond_19

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isStartPopupServiceWhenMakeCallFromOtherApp()Z

    move-result v17

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/SecCallPopupService;

    move-object/from16 v17, v0

    if-nez v17, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-class v20, Lcom/android/incallui/SecCallPopupService;

    invoke-direct/range {v18 .. v20}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_17
    :goto_a
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_18

    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    :cond_18
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    const-string v17, "show_internet_alert_popup_during_call"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "phone"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    const-string v17, "gsm.network.type"

    const-string v18, "Unknown"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "MobileNetworkPopup - svlte1x : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "ro.ril.svlte1x"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", getCurrentPhoneType() : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", InCallUtils.isPSDomain() : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", getDataState() : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", networktype : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v17, "false"

    const-string v18, "ro.ril.svlte1x"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mProcessObserver:Landroid/app/IProcessObserver;

    move-object/from16 v17, v0

    if-nez v17, :cond_20

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->mobileNetworkPopupObserverRegist()V

    goto/16 :goto_0

    :cond_19
    const/16 v18, 0x0

    if-nez v12, :cond_1a

    const/16 v17, 0x1

    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    goto/16 :goto_a

    :cond_1a
    const/16 v17, 0x0

    goto :goto_b

    :cond_1b
    if-eqz v14, :cond_1f

    const-string v17, "Start Full Screen in call UI"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v17

    if-eqz v17, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/incallui/BaseInCallComponent;->dismissPendingDialogs()V

    :cond_1c
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCarrierPhoneMode()Z

    move-result v17

    if-eqz v17, :cond_1d

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v17

    if-eqz v17, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v17

    if-eqz v17, :cond_1d

    const-string v17, "finish InCallActivity when incoming call in the carrier-phone mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    goto/16 :goto_0

    :cond_1d
    const-string v17, "support_penwindow_callscreen"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v17

    if-eqz v17, :cond_1e

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v17

    if-eqz v17, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/incallui/SecInCallActivity;

    move/from16 v17, v0

    if-eqz v17, :cond_1e

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v17

    if-eqz v17, :cond_1e

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/secui/SecUiAdapter;->isPenMultiWindow()Z

    move-result v17

    if-eqz v17, :cond_1e

    const-string v17, "returnToNormalWindowMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/secui/SecUiAdapter;->returnToNormalWindowMode()V

    :cond_1e
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/InCallPresenter;->startUi(Lcom/android/incallui/InCallPresenter$InCallState;)Z

    move-result v17

    if-nez v17, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 p1, v0

    goto/16 :goto_0

    :cond_1f
    sget-object v17, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    goto/16 :goto_a

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/InCallPresenter;->mShowedMobileNetworkPopup:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "activity"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v15

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallPresenter;->getProcessInfo(Ljava/lang/String;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v8

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "MobileNetworkPopup - Check for a second call, topActivity.getPackageName() : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v8, :cond_0

    const-string v17, "com.android.incallui"

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "com.android.contacts"

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "com.sec.android.app.launcher"

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "com.android.settings"

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    iget v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v17, v0

    iget v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->checkPermissionAndSendIntent(II)V

    goto/16 :goto_0
.end method

.method private startUi(Lcom/android/incallui/InCallPresenter$InCallState;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_2

    move v1, v3

    :goto_0
    const-string v5, "dcm_sda_support_feature"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    const/4 v5, 0x3

    if-eq v2, v5, :cond_0

    const/4 v5, 0x4

    if-ne v2, v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/android/incallui/InCallUtils;->sendNotificationToSmartDeviceAgent(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_1
    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/SecCallPopupService;

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v5}, Lcom/android/incallui/ProximitySensor;->isScreenReallyOff()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v3, "Restarting InCallComponent to turn screen on for call waiting"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v3}, Lcom/android/incallui/BaseInCallComponent;->forceFinish()V

    :goto_1
    return v4

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v3}, Lcom/android/incallui/BaseInCallComponent;->finish()V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v4, v4}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    :cond_5
    :goto_2
    move v4, v3

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v4, p1, v5}, Lcom/android/incallui/StatusBarNotifier;->updateNotificationAndLaunchIncomingCallUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v4, p1, v5}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_2
.end method

.method private updateActivity(Lcom/android/incallui/BaseInCallComponent;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "setActivity isActivityStarted - return "

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    if-nez v2, :cond_2

    const/4 v1, 0x1

    const-string v2, "UI Initialized"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    instance-of v2, p1, Lcom/android/incallui/SecInCallActivity;

    if-eqz v2, :cond_6

    move-object v2, p1

    check-cast v2, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/SecInCallActivity;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast p1, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {p1}, Lcom/android/incallui/SecInCallActivity;->getAnsRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    :cond_3
    :goto_1
    const-string v2, "ims_support_multimedia_caller_id"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "InCallPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setActivity call updatePhotoringState state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    iget v4, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    invoke-interface {v2, v3, v4}, Lcom/android/incallui/BaseInCallComponent;->updatePhotoringState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/InCallPresenter;->maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_b

    const-string v2, "UI Initialized, but no calls left.  shut down."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    goto :goto_0

    :cond_6
    instance-of v2, p1, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v2, :cond_7

    check-cast p1, Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {p1}, Lcom/android/incallui/SecTabletInCallService;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    goto :goto_1

    :cond_7
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    goto :goto_1

    :cond_8
    const-string v2, "UI Destroyed"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-virtual {v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v2

    if-nez v2, :cond_9

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    :cond_9
    :goto_2
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    :cond_a
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->clearDisconnectedTimeoutEvent()Z

    const/4 v0, 0x1

    :cond_b
    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/CallList;)V

    :cond_c
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    goto/16 :goto_0

    :cond_d
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    goto :goto_2
.end method


# virtual methods
.method public acceptUpgradeRequest(Landroid/content/Context;)V
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearInCallNotification(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telecom/VideoProfile;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0
.end method

.method public addCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyModeListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V
    .locals 3

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-interface {p1, v1, v2, v0}, Lcom/android/incallui/InCallPresenter$IncomingCallListener;->onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 3

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    :cond_0
    return-void
.end method

.method public addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 3

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    :cond_0
    return-void
.end method

.method public addListenerToFirst(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 3

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    :cond_0
    return-void
.end method

.method public addMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mMobileKeyboardListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnehandAnyScreenOnListener(Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandAnyScreenOnListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandModeListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public answerIncomingCall(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearInCallNotification(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    invoke-direct {p0, v3, v3}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    goto :goto_0
.end method

.method public answeringMode()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "answeringMode : isAutoAnswered() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/StatusBarNotifier;->clearInCallNotification(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnsweringMode()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnsweringMode(Z)V

    :cond_4
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->playGuidance()V

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->resetAutoAnsTimer()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f0d039d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public bringToForeground(Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallPresenter;->showDialpadDuringPenMultiWindow(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->hasInCallUiFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    const-string v0, "support_swis"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/SwisHelper;->needToShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCoverClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/SwisHelper;->resumeSwis()V

    goto :goto_0
.end method

.method public cancelAccountSelection()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mAccountSelectionCancelled:Z

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public checkAndStartAM()V
    .locals 11

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "checkAndStartAM"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    move v3, v6

    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "callsettings_ring_duration"

    const/16 v10, 0xd

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "callsettings_answer_memo"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v8, "config_op_ui_call_setting_kdi"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/services/telephony/common/SecCallExtra;->isVoicePartyCall()I

    move-result v8

    if-ne v8, v6, :cond_5

    move v4, v6

    :cond_1
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "limit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "answerMemo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasActiveCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- all_sound_off == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isSystemSettingAllSoundOff()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isVoicePartyCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isEmergencyMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasHoldCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    if-ne v0, v6, :cond_6

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkPhoneVibrateOrSilentMode()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_2
    if-nez v3, :cond_6

    if-nez v4, :cond_6

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v8

    if-nez v8, :cond_6

    move v2, v6

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "answerMemo  canAMStart "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    const-string v6, "answerMemo  ON "

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-direct {p0, v5}, Lcom/android/incallui/InCallPresenter;->startAutoAnsTimer(I)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    move v3, v7

    goto/16 :goto_0

    :cond_5
    move v4, v7

    goto/16 :goto_1

    :cond_6
    move v2, v7

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->memoryFullAnswerMemoNotification()V

    goto :goto_3
.end method

.method public declineIncomingCall(Landroid/content/Context;)V
    .locals 5

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearInCallNotification(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public declineUpgradeRequest(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearInCallNotification(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, v3}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0
.end method

.method public disconnectCallForVoiceParty()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "config_op_ui_call_setting_kdi"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/services/telephony/common/SecCallExtra;->isVoicePartyCall()I

    move-result v3

    if-ne v3, v2, :cond_2

    move v1, v2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isLiveCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "hangUpOngoingCall: set DISCONNECTING voice memo"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->setState(I)V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public forceCancelNotification(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0, p1}, Lcom/android/incallui/StatusBarNotifier;->setBlockToUpdate(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0}, Lcom/android/incallui/StatusBarNotifier;->cancelInSecCall()V

    :cond_0
    return-void
.end method

.method public getActivity()Lcom/android/incallui/BaseInCallComponent;
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    instance-of v0, v0, Lcom/android/incallui/SecInCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    instance-of v0, v0, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v0, Lcom/android/incallui/SecTabletInCallService;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    goto :goto_0
.end method

.method public getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    return-object v0
.end method

.method public getAudioMode()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method public getCallCardFragmentVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v0}, Lcom/android/incallui/BaseInCallComponent;->getCallCardFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v0}, Lcom/android/incallui/BaseInCallComponent;->getCallCardFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->isVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v0}, Lcom/android/incallui/BaseInCallComponent;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v0}, Lcom/android/incallui/BaseInCallComponent;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/SecCallCardUi;->isVisible()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallList()Lcom/android/incallui/CallList;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    return-object v0
.end method

.method public getCallPopupService()Lcom/android/incallui/SecCallPopupService;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/SecCallPopupService;

    return-object v0
.end method

.method public getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/accessory/CoverViewManager;->getCoverScreen()Lcom/android/incallui/accessory/CoverScreen;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/InCallCameraManager;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallCameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInCallIntent(ZZZ)Landroid/content/Intent;
    .locals 6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZZZLjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getInCallIntent(ZZZZLjava/lang/Class;)Landroid/content/Intent;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x840000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p4, :cond_0

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    move-object v1, p5

    if-nez p5, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz p1, :cond_2

    const-string v2, "InCallActivity.show_dialpad"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeNaviOn()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "start SecDrivelinkInCallActivity in ZONE_A"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    sget v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_A:I

    invoke-static {v0, v2, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->makeMultiWindowIntent(Landroid/content/Intent;ILandroid/graphics/Rect;)Landroid/content/Intent;

    move-result-object v0

    :cond_3
    const-string v2, "InCallActivity.new_outgoing_call"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "InCallActivity.show_circular_reveal"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method

.method public getKnoxCustomDisabledItems()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/InCallPresenter;->mKnoxCustomDisabledItems:I

    return v0
.end method

.method public getLinkedHelper()Lcom/android/incallui/sns/SecLinkedInHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mLinkedinHelper:Lcom/android/incallui/sns/SecLinkedInHelper;

    return-object v0
.end method

.method public getPhotoringBlocked()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    return v0
.end method

.method public getProximitySensor()Lcom/android/incallui/ProximitySensor;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    return-object v0
.end method

.method public getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    return-object v0
.end method

.method public getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    return-object v0
.end method

.method public getSwisState()I
    .locals 1

    sget v0, Lcom/android/incallui/InCallPresenter;->mSwisState:I

    return v0
.end method

.method public getTargetClass()Ljava/lang/Class;
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/incallui/SecTabletInCallService;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isMirrorLinkModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-class v0, Lcom/android/incallui/SecDrivelinkInCallActivity;

    goto :goto_0

    :cond_2
    const-class v0, Lcom/android/incallui/SecInCallActivity;

    goto :goto_0

    :cond_3
    const-class v0, Lcom/android/incallui/InCallActivity;

    goto :goto_0
.end method

.method public getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelecomManager:Landroid/telecom/TelecomManager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getThemeColors()Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    return-object v0
.end method

.method public getVideoPopupService()Lcom/android/incallui/SecVideoPopupService;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/SecVideoPopupService;

    return-object v0
.end method

.method public handleAccountSelection(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/incallui/TelecomAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    :cond_0
    return-void
.end method

.method public handleCallKey()Z
    .locals 14

    const/16 v13, 0x8

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v8, "handleCallKey"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v7

    if-eqz v7, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "incomingCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "roaming_enhancement"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->isCallRoamingGuardDialogShowing()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return v10

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->checkEasyModeFirstCallEnd()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/AnswerPresenter;->getSecUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v8

    if-eqz v8, :cond_6

    const-string v8, "handleCallKey : onAnswerWithWaitingCheck"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "ui_for_chn"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "ui_for_hktw"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getCallType()I

    move-result v1

    if-ne v1, v12, :cond_4

    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    goto :goto_0

    :cond_6
    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/SecCallPopupService;

    if-eqz v8, :cond_7

    const-string v8, "handleCallKey - mCallPopupService : onAnswerWithWaitingCheck"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/SecCallPopupService;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPopupService;->onAnswerWithWaitingCheck()V

    goto :goto_0

    :cond_7
    const-string v8, "handleCallKey : answerCall"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v11}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto :goto_0

    :cond_8
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    invoke-virtual {v0, v13}, Lcom/android/incallui/Call;->can(I)Z

    move-result v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "activeCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", canMerge: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", canSwap: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    if-eqz v5, :cond_a

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/TelecomAdapter;->swap(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6, v10}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "heldCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", canHold: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    if-ne v8, v13, :cond_0

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public handleCshInfo(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public handleError(I)V
    .locals 0

    return-void
.end method

.method public handleIncommingIMandFT(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public handleInvitation(ZLandroid/content/Intent;)V
    .locals 2

    const-string v0, "notify user make notification"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/rcs/RcsShareUI;->notifyUser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public handleRcsAction(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    const-string v3, "handleRcsAction from Presenter"

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v3, "ims_rcs"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.samsung.rcs.intent.action.CONTACTS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.contacts"

    const-string v4, "com.sec.android.app.contacts.PhoneBookTopMenuActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "EXTRA_INTENT"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "com.samsung.rcs.intent.action.ADD_CALL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/TelecomAdapter;->addCall()V

    goto :goto_0

    :cond_2
    const-string v3, "com.samsung.rcs.intent.action.NOTES"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEMO_CREATE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v3, "com.samsung.rcs.intent.action.SIM_SERVICES"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.stk.start_main_activity"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v3, "com.samsung.rcs.intent.action.NOISE_REDUCTION"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/SoundEffect;->toggleNoiseReduction()V

    goto :goto_0

    :cond_5
    const-string v3, "com.samsung.rcs.intent.action.BLUETOOTH_HANDSET"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->toggleBluetooth()V

    goto :goto_0

    :cond_6
    const-string v3, "com.samsung.rcs.intent.action.INIT_SPEAKER_ON"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v3

    if-eq v3, v5, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/incallui/InCallPresenter;->setAudioMode(I)V

    goto :goto_0

    :cond_7
    const-string v3, "com.samsung.rcs.intent.action.UPDATE_PROXIMITY"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    goto :goto_0

    :cond_8
    const-string v3, "com.samsung.rcs.intent.action.ACTION_RCS_SPEAKER_OFF"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/incallui/InCallPresenter;->setAudioMode(I)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "com.samsung.rcs.intent.action.SPEAKER_ON"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "com.samsung.rcs.intent.action.SPEAKER_OFF"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->toggleSpeakerphone()V

    goto/16 :goto_0

    :cond_b
    const-string v3, "com.samsung.rcs.intent.action.MUTE_ON"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    goto/16 :goto_0

    :cond_c
    const-string v3, "com.samsung.rcs.intent.action.MUTE_OFF"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    goto/16 :goto_0

    :cond_d
    const-string v3, "com.samsung.rcs.intent.action.END_CALL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/incallui/InCallPresenter;->hangUpOngoingCall(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_e
    const-string v3, "com.samsung.rcs.intent.action.ACTION_LAUNCH_MINI_MODE_CALL_VIEW"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v2

    const-string v3, "action ACTION_LAUNCH_MINI_MODE_CALL_VIEW received from RCS "

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v2, :cond_0

    sput-boolean v6, Lcom/android/incallui/ProximitySensor;->mFromRcsShare:Z

    invoke-virtual {v2}, Lcom/android/incallui/ProximitySensor;->forceUpdateProximitySensorMode()V

    goto/16 :goto_0

    :cond_f
    const-string v3, "com.samsung.rcs.intent.action.ACTION_HIDE_MINI_MODE_CALL_VIEW"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v2

    const-string v3, "action ACTION_HIDE_MINI_MODE_CALL_VIEW received from RCS "

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v2, :cond_0

    sput-boolean v4, Lcom/android/incallui/ProximitySensor;->mFromRcsShare:Z

    invoke-virtual {v2}, Lcom/android/incallui/ProximitySensor;->forceUpdateProximitySensorMode()V

    goto/16 :goto_0
.end method

.method public hangUpOngoingCall(Landroid/content/Context;)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearInCallNotification(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isLiveCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "hangUpOngoingCall: set DISCONNECTING"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setState(I)V

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public hasInCallUiFocus()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v0}, Lcom/android/incallui/BaseInCallComponent;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideVideoPopup()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/SecVideoPopupService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/SecVideoPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/SecVideoPopupService;->hidePopup()V

    :cond_0
    return-void
.end method

.method public isActivityPreviouslyStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    return v0
.end method

.method public isActivityStarted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v0}, Lcom/android/incallui/BaseInCallComponent;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v0}, Lcom/android/incallui/BaseInCallComponent;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceBound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    return v0
.end method

.method public isShowingInCallUi()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v0}, Lcom/android/incallui/BaseInCallComponent;->isForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maybeStartRevealAnimation(Landroid/content/Intent;)V
    .locals 6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    if-nez v4, :cond_0

    const-string v4, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "selectPhoneAccountAccounts"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->getColorsFromPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v1

    const-string v4, "touchPoint"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mCircularRevealActivityStarted:Z

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, v1}, Lcom/android/incallui/InCallPresenter;->getAnimationIntent(Landroid/graphics/Point;Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public memoryFullAnswerMemoNotification()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0}, Lcom/android/incallui/StatusBarNotifier;->memoryFullAnswerMemoNotification()V

    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 16

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "callList"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v13, "ims_rcs"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v13

    if-eqz v13, :cond_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onCallListChange state: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getState()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v13

    if-eqz v13, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/Call;->getState()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_4

    :cond_2
    sget-boolean v13, Lcom/android/incallui/InCallPresenter;->mIsRegistered:Z

    if-eqz v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "deRegisterListener: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallPresenter;->mRegListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mImsManager:Lcom/sec/ims/ImsManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallPresenter;->mRegListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v13, v14}, Lcom/sec/ims/ImsManager;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/incallui/InCallPresenter;->mIsRegistered:Z

    :cond_3
    sget-boolean v13, Lcom/android/incallui/InCallPresenter;->mBatMonitorRegistered:Z

    if-eqz v13, :cond_4

    const-string v13, "deRegisterListener mRcsBroadcastReceiver: "

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    sget-object v13, Lcom/android/incallui/InCallPresenter;->mBatMonitor:Lcom/android/incallui/rcs/BatteryMonitor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14}, Lcom/android/incallui/rcs/BatteryMonitor;->UnregisterBatteryMonitor(Landroid/content/Context;)V

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/incallui/InCallPresenter;->mBatMonitorRegistered:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/incallui/rcs/RcsShareUI;->disconnect(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mRcsBroadcastReceiver:Lcom/android/incallui/rcs/RcsBroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14}, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->unregister(Landroid/content/Context;)V

    :cond_4
    if-nez p1, :cond_6

    :cond_5
    :goto_0
    return-void

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v13

    if-nez v13, :cond_7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/secui/SecUiAdapter;->getSecAnswerUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lcom/android/incallui/SecAnswerUi;->isAnswerAnimationRunning()Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "Skip onCallListChange when answer animation is running"

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Phone switching state: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v14, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v13, v14, :cond_8

    if-ne v11, v10, :cond_8

    const-string v13, "Skip onCallListChange in duplicated PENDING_OUTGOING"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v13, "support_penwindow_callscreen"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    instance-of v13, v13, Lcom/android/incallui/SecInCallActivity;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v14, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v13, v14, :cond_15

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isFullScreenMode()Z

    move-result v13

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v13, Lcom/android/incallui/SecInCallActivity;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/incallui/SecInCallActivity;->setMultiWindowFlag(Z)V

    :cond_9
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSupportRotation()Z

    move-result v13

    if-nez v13, :cond_a

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v13

    if-eqz v13, :cond_c

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    instance-of v13, v13, Lcom/android/incallui/SecInCallActivity;

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v13, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v13}, Lcom/android/incallui/SecInCallActivity;->checkAndControlWindowRoation()V

    :cond_b
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    instance-of v13, v13, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v13, Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v13}, Lcom/android/incallui/SecTabletInCallService;->checkAndControlWindowRoation()V

    :cond_c
    const-string v13, "concept_usa_common"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    const-string v13, "concept_canada_common"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/secui/SecCall;->isModifyProgressing()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v13

    if-nez v13, :cond_e

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/incallui/InCallUtils;->pokeUserActivity(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    invoke-virtual {v13}, Lcom/android/incallui/accessory/CoverViewManager;->updateCoverScreenTimeOut()V

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v14, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v13, v14, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    invoke-virtual {v13}, Lcom/android/incallui/accessory/CoverViewManager;->dismissView()V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    :cond_10
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/incallui/motion/CallSContextMotion;->stopPutDownListening(Landroid/content/Context;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v14, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v13, v14, :cond_12

    sget-object v13, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v11, v13, :cond_12

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v13, v14}, Lcom/android/incallui/secservice/SecVideoCallManager;->finalizeVideoCall(Lcom/android/incallui/InCallPresenter$InCallState;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v14, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v13, v14, :cond_14

    sget-object v13, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v11, v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-nez v13, :cond_13

    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/incallui/InCallPresenter;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v13}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getCallScreenDisabledItems()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/incallui/InCallPresenter;->mKnoxCustomDisabledItems:I

    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/incallui/InCallPresenter$InCallStateListener;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Notify "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " of state "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v14}, Lcom/android/incallui/InCallPresenter$InCallState;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    invoke-interface {v9, v11, v13, v0}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_2

    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v13, Lcom/android/incallui/SecInCallActivity;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/incallui/SecInCallActivity;->setMultiWindowFlag(Z)V

    goto/16 :goto_1

    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/incallui/InCallPresenter$InCallStateListener;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Notify "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " of state "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v14}, Lcom/android/incallui/InCallPresenter$InCallState;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    invoke-interface {v9, v11, v13, v0}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_3

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v13

    if-eqz v13, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v13

    if-nez v13, :cond_18

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v13

    if-eqz v13, :cond_28

    :cond_18
    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v13, v7}, Lcom/android/incallui/BaseInCallComponent;->dismissKeyguard(Z)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v13

    if-eqz v13, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    instance-of v13, v13, Lcom/android/incallui/SecInCallActivity;

    if-eqz v13, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v13, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v13}, Lcom/android/incallui/SecInCallActivity;->updateKeepScreenOnFlag()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v13, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v14

    if-eqz v14, :cond_29

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v15, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v14, v15, :cond_29

    const/4 v14, 0x1

    :goto_5
    invoke-virtual {v13, v14}, Lcom/android/incallui/SecInCallActivity;->updateAppSwitchSystemKeyEvent(Z)V

    :cond_19
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v13

    if-eqz v13, :cond_1a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    instance-of v13, v13, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v13, :cond_1a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v13, Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v13}, Lcom/android/incallui/SecTabletInCallService;->updateKeepScreenOnFlag()V

    :cond_1a
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v13

    if-nez v13, :cond_1b

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isLostPhoneLock()Z

    move-result v13

    if-nez v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    instance-of v13, v13, Lcom/android/incallui/SecInCallActivity;

    if-eqz v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v13, Lcom/android/incallui/SecInCallActivity;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/incallui/SecInCallActivity;->setStatusBar(Z)V

    :cond_1b
    const-string v13, "ims_rcs"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1c

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasIncomingCall()Z

    move-result v13

    if-nez v13, :cond_1c

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v13

    if-eqz v13, :cond_1c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/incallui/rcs/RcsShareUI;->isShareActive(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_1c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v14}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/incallui/rcs/RcsShareUI;->resumeShare(Landroid/content/Context;Lcom/android/incallui/Call;)V

    :cond_1c
    const-string v13, "ims_rcs"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1d

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    if-eqz v13, :cond_1d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v13}, Lcom/android/incallui/BaseInCallComponent;->getRcsInvitation()Lcom/android/incallui/rcs/RcsInvitation;

    move-result-object v13

    if-eqz v13, :cond_1d

    if-eqz v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v13}, Lcom/android/incallui/BaseInCallComponent;->getRcsInvitation()Lcom/android/incallui/rcs/RcsInvitation;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14, v1}, Lcom/android/incallui/rcs/RcsInvitation;->updateState(Landroid/content/Context;Lcom/android/incallui/Call;)V

    :cond_1d
    const-string v13, "prohibit_candid_shot"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v14, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v13, v14, :cond_1e

    sget-object v13, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v10, v13, :cond_1e

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isStatusBarExpanded "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/InCallPresenter;->isStatusBarExpanded:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/incallui/InCallPresenter;->isStatusBarExpanded:Z

    if-eqz v13, :cond_1e

    invoke-static {v6}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v13

    if-eqz v13, :cond_1e

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v12

    if-eqz v12, :cond_1e

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v13

    if-eqz v13, :cond_1e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    instance-of v13, v13, Lcom/android/incallui/SecInCallActivity;

    if-eqz v13, :cond_1e

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v13, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v13}, Lcom/android/incallui/SecInCallActivity;->isDialpadVisible()Z

    move-result v13

    invoke-virtual {v12, v14, v13}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCameraOnOff(ZZ)V

    :cond_1e
    const-string v13, "smart_auto_answering"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1f

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCameraoffSmartAnswer()Z

    move-result v13

    if-eqz v13, :cond_1f

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v12

    if-eqz v12, :cond_1f

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v13

    if-eqz v13, :cond_1f

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCameraOnOff(ZZ)V

    :cond_1f
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/InCallPresenter;->processOnCallListChange(Lcom/android/incallui/CallList;)V

    const-string v13, "auto_call_test"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_20

    invoke-static {}, Lcom/android/incallui/secutils/VTAutoTestProxy;->getInstance()Lcom/android/incallui/secutils/VTAutoTestProxy;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/incallui/secutils/VTAutoTestProxy;->handleMessage(I)V

    :cond_20
    const-string v13, "lock_screen_during_call"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->sendLockScreenEvent()V

    :cond_21
    const-string v13, "show_internet_alert_popup_during_call"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_24

    if-eqz v4, :cond_24

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v13

    const/16 v14, 0x9

    if-eq v13, v14, :cond_22

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v13

    const/16 v14, 0xa

    if-ne v13, v14, :cond_24

    :cond_22
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/incallui/InCallPresenter;->mShowedMobileNetworkPopup:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    const/16 v14, 0x3eb

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_23

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    const/16 v14, 0x3eb

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    :cond_23
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mProcessObserver:Landroid/app/IProcessObserver;

    if-eqz v13, :cond_24

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    :try_start_0
    const-string v13, "MobileNetworkPopup - unregisterProcessObserver"

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v2, v13}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/incallui/InCallPresenter;->mProcessObserver:Landroid/app/IProcessObserver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_24
    :goto_6
    const-string v13, "vzw_volte_ui"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_25

    if-eqz v4, :cond_25

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_25

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tty notification on active call, is ACTIVE isActivityStarted() : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", SystemDBInterface.getTtyNotification() : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtyNotification()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v13

    if-eqz v13, :cond_25

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtyNotification()Z

    move-result v13

    if-eqz v13, :cond_25

    const-string v13, "tty notification on active call, show!"

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/android/incallui/BaseInCallComponent;->onTtyNotification(Z)V

    :cond_25
    const-string v13, "automatic_answering_machine"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_27

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v13

    if-eqz v13, :cond_26

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v13

    if-nez v13, :cond_26

    if-eqz v4, :cond_26

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v13

    const/16 v14, 0xa

    if-ne v13, v14, :cond_26

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    :cond_26
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnsweringMode()Z

    move-result v13

    if-eqz v13, :cond_27

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v13

    if-nez v13, :cond_27

    if-eqz v4, :cond_27

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v13

    const/16 v14, 0xa

    if-ne v13, v14, :cond_27

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnsweringMode(Z)V

    :cond_27
    const-string v13, "smart_auto_answering"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v13

    if-nez v13, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v13

    const/16 v14, 0xa

    if-ne v13, v14, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    goto/16 :goto_0

    :cond_28
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_29
    const/4 v14, 0x0

    goto/16 :goto_5

    :catch_0
    move-exception v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MobileNetworkPopup - failed to unregisterProcessObserver, e = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_6
.end method

.method public onCircularRevealStarted(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mCircularRevealActivityStarted:Z

    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mWaitForRevealAnimationStart:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mWaitForRevealAnimationStart:Z

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/incallui/InCallPresenter$8;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/InCallPresenter$8;-><init>(Lcom/android/incallui/InCallPresenter;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/CircularRevealActivity;->sendClearDisplayBroadcast(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onCoverStateChanged(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverStateChanged: previous = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_1

    const-string v1, "onCoverStateChanged: NO_CALLS"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "support_swis"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/SwisHelper;->needToShow()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/incallui/SwisHelper;->resumeSwis()V

    :cond_2
    const-string v1, "support_mobilecarrier"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCarrierPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneRelaxMode()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    const-string v1, "onCoverStateChanged: carrier-phone mode"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_c

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/motion/CallSContextMotion;->startPutDownListening(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    if-ne v1, p1, :cond_7

    const-string v1, "onCoverStateChanged: mIsCoverClosed == isClosed"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/AccessoryEventHandler;

    invoke-virtual {v1}, Lcom/android/incallui/AccessoryEventHandler;->getCoverType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0, v4}, Landroid/app/StatusBarManager;->setCallBackground(I)V

    :cond_8
    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    if-nez v1, :cond_9

    const-string v1, "onCoverStateChanged: create CoverView"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v1, Lcom/android/incallui/accessory/CoverViewManager;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-direct {v1, v2}, Lcom/android/incallui/accessory/CoverViewManager;-><init>(Lcom/android/incallui/BaseInCallComponent;)V

    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    :cond_9
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCoverViewManager:Lcom/android/incallui/accessory/CoverViewManager;

    invoke-virtual {v1, p1}, Lcom/android/incallui/accessory/CoverViewManager;->onCoverStateChanged(Z)V

    :cond_a
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mIsCoverClosed:Z

    goto :goto_1

    :cond_b
    const-string v1, "onCoverStateChanged: can\'t start cover"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz p1, :cond_5

    invoke-direct {p0, v4, v4}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    goto :goto_1

    :cond_c
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/motion/CallSContextMotion;->stopPutDownListening(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public onDeviceOrientationChange(I)V
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$InCallOrientationListener;

    invoke-interface {v1, p1}, Lcom/android/incallui/InCallPresenter$InCallOrientationListener;->onDeviceOrientationChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDeviceRotationChange(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->notifyCallsOfDeviceRotation(I)V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->clearDigitsInKeypad()V

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->hideDialpadForDisconnect()V

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->dismissDialogForDisconnect()V

    const-string v1, "overlay_popup_play"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->hideVideoPopup()V

    :cond_0
    const-string v1, "handle_sip_error_code"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->isPSDomain()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/incallui/IMSErrorUtils;->handleDisconnectCause(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->showVideoEndScreen(Lcom/android/incallui/Call;)V

    :cond_1
    const-string v1, "ims_support_multimedia_caller_id"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_NONE:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    iget v3, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/BaseInCallComponent;->updatePhotoringState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/CallList;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v1, v4}, Lcom/android/incallui/BaseInCallComponent;->dismissKeyguard(Z)V

    :cond_3
    iput-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->isStatusBarExpanded:Z

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->removeCoreAppsContact(Ljava/lang/String;)V

    const-string v1, "auto_call_test"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/secutils/VTAutoTestProxy;->getInstance()Lcom/android/incallui/secutils/VTAutoTestProxy;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/incallui/secutils/VTAutoTestProxy;->handleMessage(I)V

    :cond_4
    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Lcom/android/incallui/InCallPresenter;->isEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.EMERGENCY_CALL_END"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "send Broadcast: com.samsung.intent.action.EMERGENCY_CALL_END"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallApp;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->setMergeAfterAnswer(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {v4}, Lcom/android/incallui/SoundEffect;->turnOnExtraVol(Z)V

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/incallui/secutils/AppLogging;->insertLogOnCallDisconnect(Landroid/content/Context;Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onDismissDialog()V
    .locals 2

    const-string v0, "Dialog dismissed"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    :cond_0
    return-void
.end method

.method public onEmergencyModeChange(I)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEmergencyModeChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyModeListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$EmergencyModeListener;

    invoke-interface {v1, p1}, Lcom/android/incallui/InCallPresenter$EmergencyModeListener;->onEmergencyModeChange(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 17

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    const-string v1, "data_usage_limit"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v1, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/SecInCallActivity;->dismissDataUsageLimitDialog()V

    :cond_0
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "support_sync_call"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v7, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.kddi.android.evc.SettingsProvider/system"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "setting_use_synccall"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_2

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "setting_use_incoming_show_pu"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    if-eqz v10, :cond_4

    if-eqz v9, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->checkAndStartAM()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_5
    :goto_1
    const-string v1, "feature_multisim_preferred_sim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->dismissDialog()V

    :cond_6
    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/EcidClient;->newIncoming(Lcom/android/incallui/Call;)V

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingCall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSupportRotation()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    instance-of v1, v1, Lcom/android/incallui/SecInCallActivity;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v1, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/SecInCallActivity;->checkAndControlWindowRoation()V

    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    instance-of v1, v1, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v1, Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v1}, Lcom/android/incallui/SecTabletInCallService;->checkAndControlWindowRoation()V

    :cond_a
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    invoke-interface {v12, v14, v1, v0}, Lcom/android/incallui/InCallPresenter$IncomingCallListener;->onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    goto :goto_2

    :catch_0
    move-exception v15

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem getting content resolver or performing kddi evc query."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    if-eqz v7, :cond_c

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_c
    throw v1

    :cond_d
    const-string v1, "auto_call_test"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/android/incallui/secutils/VTAutoTestProxy;->getInstance()Lcom/android/incallui/secutils/VTAutoTestProxy;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/incallui/secutils/VTAutoTestProxy;->handleMessage(I)V

    :cond_e
    return-void
.end method

.method public onMobileKeyboardChanged()V
    .locals 4

    const-string v2, "onMobileKeyboardChanged()"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mMobileKeyboardListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;

    invoke-interface {v1}, Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;->onMobileKeyboardChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOnehandAnyScreenOnChanged()V
    .locals 4

    const-string v2, "onOnehandAnyScreenOnChanged()"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mOnehandAnyScreenOnListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;

    invoke-interface {v1}, Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;->onOnehandAnyScreenOnChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOnehandModeChanged()V
    .locals 4

    const-string v2, "onOnehandModeChanged()"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mOnehandModeListener:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$OnehandModeListener;

    invoke-interface {v1}, Lcom/android/incallui/InCallPresenter$OnehandModeListener;->onOnehandModeChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPostDialCharPause(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/BaseInCallComponent;->showPostCharPauseDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPostDialCharPauseComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPostDialCharWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/BaseInCallComponent;->showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedMessageFromTelecom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedMessageFromTelecom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/incallui/secservice/SecVideoCallManager;->onReceivedMessageFromTelecom(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "onIncomingCallAnswered"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecUiAdapter;->getSecAnswerUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/SecAnswerUi;->isAnswerAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/SecAnswerUi;->animateForAnswerCall(I)V

    goto :goto_0
.end method

.method public onServiceBind()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    return-void
.end method

.method public onServiceUnbind()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onUiShowing(Z)V
    .locals 7

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v3, v5, v6}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v3, p1}, Lcom/android/incallui/ProximitySensor;->onInCallShowing(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incalluibind/ObjectFactory;->getUiReadyBroadcastIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v5, "com.android.incallui.intent.extra.FIRST_TIME_SHOWN"

    iget-boolean v3, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    if-nez v3, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_4

    const-string v3, "Sending sticky broadcast: "

    invoke-static {p0, v3, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_5

    iput-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    :goto_2
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallPresenter$InCallUiListener;

    invoke-interface {v2, p1}, Lcom/android/incallui/InCallPresenter$InCallUiListener;->onUiShowing(Z)V

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const-string v3, "Removing sticky broadcast: "

    invoke-static {p0, v3, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/CircularRevealActivity;->sendClearDisplayBroadcast(Landroid/content/Context;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public onWeakWifi(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWeakWifi msg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    instance-of v0, v0, Lcom/android/incallui/SecInCallActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->showOnWeakWifiDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->showOnWeakWifiDuringEpdgDialog()V

    goto :goto_0
.end method

.method public refreshListeners()V
    .locals 5

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$InCallStateListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter$InCallState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$InCallStateListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter$InCallState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public removeCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mEmergencyModeListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListenersOfManager:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mMobileKeyboardListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOnehandAnyScreenOnListener(Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandAnyScreenOnListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnehandModeListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method resetAutoAnsTimer()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    if-eqz v0, :cond_0

    const-string v0, "resetAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAutoAnsTimer:Lcom/android/incallui/InCallPresenter$AutoAnsTimer;

    :cond_0
    return-void
.end method

.method public sendLockScreenEvent()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->sendLockScreenEvent(Z)V

    return-void
.end method

.method public sendLockScreenEvent(Z)V
    .locals 1

    const-string v0, "lock_screen_during_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    instance-of v0, v0, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    check-cast v0, Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SecTabletInCallService;->sendLockScreenEvent(Z)V

    :cond_0
    return-void
.end method

.method public sendMsgCallListChange()V
    .locals 2

    const/16 v1, 0x3ea

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sendMsgCallListChange"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setActivity(Lcom/android/incallui/BaseInCallComponent;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registerActivity cannot be called with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    if-eq v0, p1, :cond_1

    const-string v0, "Setting a second activity before destroying the first."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v0}, Lcom/android/incallui/BaseInCallComponent;->forceFinish()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->updateActivity(Lcom/android/incallui/BaseInCallComponent;)V

    return-void
.end method

.method public setAudioMode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending new Audio Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/telecom/AudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    return-void
.end method

.method public setBlockToUpdateNotification(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0, p1}, Lcom/android/incallui/StatusBarNotifier;->setBlockToUpdate(Z)V

    :cond_0
    return-void
.end method

.method public setCallPopupService(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mCallPopupService:Lcom/android/incallui/SecCallPopupService;

    return-void
.end method

.method public setInCallAllowsOrientationChange(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/android/incallui/BaseInCallComponent;->setRequestedOrientation(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/android/incallui/BaseInCallComponent;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public setPhone(Landroid/telecom/Phone;)V
    .locals 2

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mPhone:Landroid/telecom/Phone;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPhone:Landroid/telecom/Phone;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mPhoneListener:Landroid/telecom/Phone$Listener;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->addListener(Landroid/telecom/Phone$Listener;)V

    return-void
.end method

.method public setPhotoringBlocked(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    :cond_1
    return-void
.end method

.method public setRecordMgr(Lcom/android/incallui/PhoneVoiceRecorderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    return-void
.end method

.method public setThemeColors()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->getColorsFromCall(Lcom/android/incallui/Call;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v0}, Lcom/android/incallui/BaseInCallComponent;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v0}, Lcom/android/incallui/BaseInCallComponent;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    iget v1, v1, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0
.end method

.method public setUp(Landroid/content/Context;Lcom/android/incallui/CallList;Lcom/android/incallui/AudioModeProvider;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v3, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    if-eqz v3, :cond_3

    const-string v3, "New service connection replacing existing one."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    if-ne p1, v3, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-ne p2, v3, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    if-ne p3, v3, :cond_2

    :goto_2
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    :goto_3
    return-void

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->initialize()V

    invoke-static {p1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-nez v3, :cond_4

    new-instance v3, Lcom/android/incallui/StatusBarNotifier;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-direct {v3, p1, v5}, Lcom/android/incallui/StatusBarNotifier;-><init>(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache;)V

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    :cond_4
    iput-object p3, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-nez v3, :cond_5

    new-instance v3, Lcom/android/incallui/ProximitySensor;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-direct {v3, p1, v5}, Lcom/android/incallui/ProximitySensor;-><init>(Landroid/content/Context;Lcom/android/incallui/AudioModeProvider;)V

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/AccessoryEventHandler;

    if-nez v3, :cond_6

    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/AccessoryEventHandler;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mAccessoryEventHandler:Lcom/android/incallui/AccessoryEventHandler;

    invoke-virtual {v3, p0}, Lcom/android/incallui/AccessoryEventHandler;->addListenerToFirst(Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;)V

    :cond_6
    iput-object p2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    iput-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v3, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_e

    new-instance v3, Lcom/android/incallui/InCallPresenter$InCallReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/incallui/InCallPresenter$InCallReceiver;-><init>(Lcom/android/incallui/InCallPresenter;Lcom/android/incallui/InCallPresenter$1;)V

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "support_mobilecarrier"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "com.skt.prod.phone.action.FINISH_INCALLUI"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.kt.ollehphone.action.FINISH_INCALLUI"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_7
    const-string v3, "support_safetycare"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_8
    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "ims_ps_barring"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "com.android.intent.action.PSBARRED_FOR_VOLTE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_9
    const-string v3, "prohibit_candid_shot"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_a
    const-string v3, "data_usage_limit"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "com.android.intent.action.VIDEO_DATAUSAGE_REACH_TO_LIMIT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_b
    const-string v3, "display_hd_icon"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "update_hd_icon_by_intent"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "com.samsung.intent.action.WB_AMR"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_c
    const-string v3, "support_swis"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "com.samsung.android.swis.action.SWIS_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_d
    const-string v3, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_e
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_f

    new-instance v3, Lcom/android/incallui/ContactAgentUtils$ContactAgentReceiver;

    invoke-direct {v3}, Lcom/android/incallui/ContactAgentUtils$ContactAgentReceiver;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v3, Lcom/android/incallui/ContactAgentUtils;->ACTION_CONTACT_ORIGINAL_IMAGE_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "add receiver for coreapps"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContactAgentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_f
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallEdgeManager:Lcom/android/incallui/edge/CallEdgeManager;

    if-nez v3, :cond_10

    new-instance v3, Lcom/android/incallui/edge/CallEdgeManager;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/incallui/edge/CallEdgeManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallEdgeManager:Lcom/android/incallui/edge/CallEdgeManager;

    :cond_10
    const-string v3, "smart_auto_answering"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.shhphone.autoanswer.AUTOANSWER_ACTION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "add receiver for smart answer"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mSmartAnswerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_11
    const-string v3, "add receiver for ML_STATE"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.samsung.android.mirrorlink.ML_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v3

    sput-boolean v3, Lcom/android/incallui/InCallPresenter;->mPreEasymode:Z

    const-string v3, "linkedin_integration"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    new-instance v3, Lcom/android/incallui/sns/SecLinkedInHelper;

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/incallui/sns/SecLinkedInHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mLinkedinHelper:Lcom/android/incallui/sns/SecLinkedInHelper;

    :cond_12
    const-string v3, "Finished InCallPresenter.setUp"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public setVideoPopup(Lcom/android/incallui/SecVideoPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/SecVideoPopupService;

    return-void
.end method

.method public showConferenceCallManager(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v0, p1}, Lcom/android/incallui/BaseInCallComponent;->showConferenceCallManager(Z)V

    goto :goto_0
.end method

.method public showDialpadDuringPenMultiWindow(Z)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "concept_usa_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "support_penwindow_callscreen"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    instance-of v2, v2, Lcom/android/incallui/SecInCallActivity;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecUiAdapter;->isPenMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/incallui/SecInCallActivity;

    if-eqz v2, :cond_0

    const-string v2, "showDialpadDuringPenMultiWindow"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecUiAdapter;->returnToNormalWindowMode()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0, p1, v1}, Lcom/android/incallui/SecInCallActivity;->displayDialpad(ZZ)V

    move v0, v1

    goto :goto_0
.end method

.method public showVideoPopup()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/SecVideoPopupService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mVideoPopupService:Lcom/android/incallui/SecVideoPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/SecVideoPopupService;->showPopup()V

    :cond_0
    return-void
.end method

.method public smartAnsweringMode(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    const-string v2, "smartAnsweringMode() smart answer Broadcast, hasIncomingCall"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v5}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    invoke-virtual {p0, p1, v4}, Lcom/android/incallui/InCallPresenter;->answerIncomingCall(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnsweringMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v5}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnsweringMode(Z)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->playGuidance()V

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    instance-of v2, v2, Lcom/android/incallui/SecInCallActivity;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v4, v4}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCameraOnOff(ZZ)V

    :cond_1
    return-void
.end method

.method public stopRecord()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->stopRecord()V

    :cond_0
    return-void
.end method

.method public tearDown()V
    .locals 1

    const-string v0, "tearDown"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    return-void
.end method

.method public toggleSpeakerphone()V
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x5

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->setAudioMode(I)V

    return-void
.end method

.method public unsetActivity(Lcom/android/incallui/BaseInCallComponent;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unregisterActivity cannot be called with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    if-nez v0, :cond_1

    const-string v0, "No InCallActivity currently set, no need to unset."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    if-eq v0, p1, :cond_2

    const-string v0, "Second instance of InCallActivity is trying to unregister when another instance is active. Ignoring."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->updateActivity(Lcom/android/incallui/BaseInCallComponent;)V

    goto :goto_0
.end method

.method public updateNotification()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    :cond_0
    return-void
.end method

.method public updateNotification(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;Z)V

    :cond_0
    return-void
.end method

.method public updatePhotoringState()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    iget v2, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/BaseInCallComponent;->updatePhotoringState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V

    :cond_0
    return-void
.end method

.method public updatePhotoringState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V
    .locals 3

    const-string v0, "InCallPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhotoringState state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallComponent:Lcom/android/incallui/BaseInCallComponent;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/BaseInCallComponent;->updatePhotoringState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V

    :cond_0
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringState:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    iput p2, p0, Lcom/android/incallui/InCallPresenter;->mPhotoringBlocked:I

    return-void
.end method
