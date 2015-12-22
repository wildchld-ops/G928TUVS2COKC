.class public final Lcom/android/server/telecom/CallsManager;
.super Lcom/android/server/telecom/Call$ListenerBase;
.source "CallsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/CallsManager$CalledListener;,
        Lcom/android/server/telecom/CallsManager$CallsManagerListener;
    }
.end annotation


# static fields
.field private static final LIVE_CALL_STATES:[I

.field private static final OUTGOING_CALL_STATES:[I

.field private static sInstance:Lcom/android/server/telecom/CallsManager;


# instance fields
.field public final activityManager:Landroid/app/ActivityManager;

.field private defaultSubscriptionChanged:Z

.field private isNeedAddLog:Z

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

.field public mCalledListenerForRemove:Lcom/android/server/telecom/CallsManager$CalledListener;

.field private final mCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mCanAddCall:Z

.field private final mConnectionServiceRepository:Lcom/android/server/telecom/ConnectionServiceRepository;

.field private final mContext:Landroid/content/Context;

.field private final mDtmfLocalTonePlayer:Lcom/android/server/telecom/DtmfLocalTonePlayer;

.field private mForegroundCall:Lcom/android/server/telecom/Call;

.field private final mHandler:Landroid/os/Handler;

.field private final mHeadsetMediaButton:Lcom/android/server/telecom/HeadsetMediaButton;

.field private final mHoldTonePlayer:Lcom/android/server/telecom/secutils/HoldTonePlayer;

.field private final mInCallController:Lcom/android/server/telecom/InCallController;

.field public final mInCallToneMonitor:Lcom/android/server/telecom/InCallToneMonitor;

.field private final mInCallWakeLockController:Lcom/android/server/telecom/InCallWakeLockController;

.field private mIsTonePlaying:Z

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/telecom/CallsManager$CallsManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocallyDisconnectingCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

.field private final mPendingCallsToDisconnect:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

.field private mPhoneState:I

.field public final mPhoneStateBroadcaster:Lcom/android/server/telecom/PhoneStateBroadcaster;

.field private final mProximitySensorManager:Lcom/android/server/telecom/ProximitySensorManager;

.field private final mRingbackPlayer:Lcom/android/server/telecom/RingbackPlayer;

.field private final mRinger:Lcom/android/server/telecom/Ringer;

.field public final mSecCallLogManager:Lcom/android/server/telecom/secutils/SecCallLogManager;

.field private final mSecCallsManagerListener:Lcom/android/server/telecom/secutils/SecCallsManagerListener;

.field private final mSecPhoneStateListener:Lcom/android/server/telecom/secutils/SecPhoneStateListener;

.field private mStopTone:Ljava/lang/Runnable;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToneId:I

.field private final mTtyManager:Lcom/android/server/telecom/TtyManager;

.field public mWB_AMR_state:Z

.field public final mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

.field private prevSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/CallsManager;->sInstance:Lcom/android/server/telecom/CallsManager;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/telecom/CallsManager;->OUTGOING_CALL_STATES:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/telecom/CallsManager;->LIVE_CALL_STATES:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x5
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/MissedCallNotifier;Lcom/android/server/telecom/PhoneAccountRegistrar;)V
    .locals 7

    const v4, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/Call$ListenerBase;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/telecom/CallsManager;->defaultSubscriptionChanged:Z

    iput-boolean v3, p0, Lcom/android/server/telecom/CallsManager;->isNeedAddLog:Z

    sget-object v0, Lcom/android/server/telecom/CallsManager$CalledListener;->NONE:Lcom/android/server/telecom/CallsManager$CalledListener;

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalledListenerForRemove:Lcom/android/server/telecom/CallsManager$CalledListener;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mLocallyDisconnectingCalls:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mPendingCallsToDisconnect:Ljava/util/Set;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mHandler:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/android/server/telecom/CallsManager;->mCanAddCall:Z

    iput v2, p0, Lcom/android/server/telecom/CallsManager;->mPhoneState:I

    iput-boolean v2, p0, Lcom/android/server/telecom/CallsManager;->mWB_AMR_state:Z

    iput-boolean v2, p0, Lcom/android/server/telecom/CallsManager;->mIsTonePlaying:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/telecom/CallsManager;->mToneId:I

    iput-object p1, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    iput-object p2, p0, Lcom/android/server/telecom/CallsManager;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    new-instance v6, Lcom/android/server/telecom/StatusBarNotifier;

    invoke-direct {v6, p1, p0}, Lcom/android/server/telecom/StatusBarNotifier;-><init>(Landroid/content/Context;Lcom/android/server/telecom/CallsManager;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-direct {v0, p1}, Lcom/android/server/telecom/WiredHeadsetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    new-instance v0, Lcom/android/server/telecom/CallAudioManager;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-direct {v0, p1, v6, v1}, Lcom/android/server/telecom/CallAudioManager;-><init>(Landroid/content/Context;Lcom/android/server/telecom/StatusBarNotifier;Lcom/android/server/telecom/WiredHeadsetManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    new-instance v3, Lcom/android/server/telecom/InCallTonePlayer$Factory;

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-direct {v3, v0}, Lcom/android/server/telecom/InCallTonePlayer$Factory;-><init>(Lcom/android/server/telecom/CallAudioManager;)V

    new-instance v0, Lcom/android/server/telecom/Ringer;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    iget-object v5, p0, Lcom/android/server/telecom/CallsManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/telecom/Ringer;-><init>(Lcom/android/server/telecom/CallAudioManager;Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/InCallTonePlayer$Factory;Landroid/content/Context;Lcom/android/server/telecom/WiredHeadsetManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mRinger:Lcom/android/server/telecom/Ringer;

    new-instance v0, Lcom/android/server/telecom/HeadsetMediaButton;

    invoke-direct {v0, p1, p0}, Lcom/android/server/telecom/HeadsetMediaButton;-><init>(Landroid/content/Context;Lcom/android/server/telecom/CallsManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mHeadsetMediaButton:Lcom/android/server/telecom/HeadsetMediaButton;

    new-instance v0, Lcom/android/server/telecom/TtyManager;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-direct {v0, p1, v1}, Lcom/android/server/telecom/TtyManager;-><init>(Landroid/content/Context;Lcom/android/server/telecom/WiredHeadsetManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mTtyManager:Lcom/android/server/telecom/TtyManager;

    new-instance v0, Lcom/android/server/telecom/ProximitySensorManager;

    invoke-direct {v0, p1}, Lcom/android/server/telecom/ProximitySensorManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mProximitySensorManager:Lcom/android/server/telecom/ProximitySensorManager;

    new-instance v0, Lcom/android/server/telecom/PhoneStateBroadcaster;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/PhoneStateBroadcaster;-><init>(Lcom/android/server/telecom/CallsManager;Landroid/telephony/TelephonyManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mPhoneStateBroadcaster:Lcom/android/server/telecom/PhoneStateBroadcaster;

    new-instance v0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;

    invoke-direct {v0, p1}, Lcom/android/server/telecom/secutils/SecPhoneStateListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mSecPhoneStateListener:Lcom/android/server/telecom/secutils/SecPhoneStateListener;

    new-instance v0, Lcom/android/server/telecom/secutils/SecCallLogManager;

    invoke-direct {v0, p1}, Lcom/android/server/telecom/secutils/SecCallLogManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mSecCallLogManager:Lcom/android/server/telecom/secutils/SecCallLogManager;

    new-instance v0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;

    invoke-direct {v0, p1, p0}, Lcom/android/server/telecom/secutils/SecCallsManagerListener;-><init>(Landroid/content/Context;Lcom/android/server/telecom/CallsManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mSecCallsManagerListener:Lcom/android/server/telecom/secutils/SecCallsManagerListener;

    new-instance v0, Lcom/android/server/telecom/InCallController;

    invoke-direct {v0, p1}, Lcom/android/server/telecom/InCallController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mInCallController:Lcom/android/server/telecom/InCallController;

    new-instance v0, Lcom/android/server/telecom/DtmfLocalTonePlayer;

    invoke-direct {v0, p1}, Lcom/android/server/telecom/DtmfLocalTonePlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mDtmfLocalTonePlayer:Lcom/android/server/telecom/DtmfLocalTonePlayer;

    new-instance v0, Lcom/android/server/telecom/ConnectionServiceRepository;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-direct {v0, v1, p1}, Lcom/android/server/telecom/ConnectionServiceRepository;-><init>(Lcom/android/server/telecom/PhoneAccountRegistrar;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mConnectionServiceRepository:Lcom/android/server/telecom/ConnectionServiceRepository;

    new-instance v0, Lcom/android/server/telecom/InCallWakeLockController;

    invoke-direct {v0, p1, p0}, Lcom/android/server/telecom/InCallWakeLockController;-><init>(Landroid/content/Context;Lcom/android/server/telecom/CallsManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mInCallWakeLockController:Lcom/android/server/telecom/InCallWakeLockController;

    new-instance v0, Lcom/android/server/telecom/InCallToneMonitor;

    invoke-direct {v0, v3, p0}, Lcom/android/server/telecom/InCallToneMonitor;-><init>(Lcom/android/server/telecom/InCallTonePlayer$Factory;Lcom/android/server/telecom/CallsManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mInCallToneMonitor:Lcom/android/server/telecom/InCallToneMonitor;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->activityManager:Landroid/app/ActivityManager;

    new-instance v0, Lcom/android/server/telecom/RingbackPlayer;

    invoke-direct {v0, p0, v3}, Lcom/android/server/telecom/RingbackPlayer;-><init>(Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/InCallTonePlayer$Factory;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mRingbackPlayer:Lcom/android/server/telecom/RingbackPlayer;

    new-instance v0, Lcom/android/server/telecom/secutils/HoldTonePlayer;

    invoke-direct {v0, p1}, Lcom/android/server/telecom/secutils/HoldTonePlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mHoldTonePlayer:Lcom/android/server/telecom/secutils/HoldTonePlayer;

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mPhoneStateBroadcaster:Lcom/android/server/telecom/PhoneStateBroadcaster;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mInCallController:Lcom/android/server/telecom/InCallController;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mRinger:Lcom/android/server/telecom/Ringer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mRingbackPlayer:Lcom/android/server/telecom/RingbackPlayer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mInCallToneMonitor:Lcom/android/server/telecom/InCallToneMonitor;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mDtmfLocalTonePlayer:Lcom/android/server/telecom/DtmfLocalTonePlayer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mHoldTonePlayer:Lcom/android/server/telecom/secutils/HoldTonePlayer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mHeadsetMediaButton:Lcom/android/server/telecom/HeadsetMediaButton;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-static {}, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->getInstance()Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mProximitySensorManager:Lcom/android/server/telecom/ProximitySensorManager;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mSecCallsManagerListener:Lcom/android/server/telecom/secutils/SecCallsManagerListener;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mSecPhoneStateListener:Lcom/android/server/telecom/secutils/SecPhoneStateListener;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->getInstance()Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mSecCallLogManager:Lcom/android/server/telecom/secutils/SecCallLogManager;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/CallsManager;)Lcom/android/server/telecom/DtmfLocalTonePlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mDtmfLocalTonePlayer:Lcom/android/server/telecom/DtmfLocalTonePlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/CallsManager;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mPendingCallsToDisconnect:Ljava/util/Set;

    return-object v0
.end method

.method private addCall(Lcom/android/server/telecom/Call;)V
    .locals 7

    const/4 v6, 0x0

    const-string v0, "addCall"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "addCall(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v6

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    sget-boolean v2, Lcom/android/server/telecom/Log;->SYSTRACE_DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " addCall"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onCallAdded(Lcom/android/server/telecom/Call;)V

    sget-boolean v0, Lcom/android/server/telecom/Log;->SYSTRACE_DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    :cond_3
    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-static {}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->getInstance()Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    move-result-object v2

    invoke-static {}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->getInstance()Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v3, v0}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->isSpamCallInfoCache(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v3, v0}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->getSpamCallInfoCache(Ljava/lang/String;)Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->SpamName:Ljava/lang/String;

    if-eqz v5, :cond_7

    invoke-virtual {v3, v0}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->getSpamCallInfoCache(Ljava/lang/String;)Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->getIsReport()Z

    move-result v5

    if-nez v5, :cond_7

    const-string v1, "add SpamCallInfoCache"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->getSpamCallInfoCache(Ljava/lang/String;)Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->SpamName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setSpamTagName(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->getSpamCallInfoCache(Ljava/lang/String;)Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->SpamNumber:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setSpamNumber(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->getSpamCallInfoCache(Ljava/lang/String;)Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;

    move-result-object v1

    iget v1, v1, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->SpamCount:I

    invoke-virtual {v4, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setSpamCount(I)V

    invoke-virtual {v3, v0}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->getSpamCallInfoCache(Ljava/lang/String;)Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;

    move-result-object v1

    iget v1, v1, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->SpamTagType:I

    invoke-virtual {v4, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setSpamTagType(I)V

    invoke-virtual {v3, v0}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->getSpamCallInfoCache(Ljava/lang/String;)Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->isSpam:Z

    invoke-virtual {v4, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setisSpam(Z)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/telecom/Call;->updateExtras(Landroid/os/Bundle;)V

    :cond_5
    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->isSpamCallInfoCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v3, v0}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->getSpamCallInfoCache(Ljava/lang/String;)Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->getIsReport()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v3, v0}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;->getSpamCallInfoCache(Ljava/lang/String;)Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->setIsReport(Z)V

    :cond_6
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->updateCallsManagerState()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2, v0, v1}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->doCheck(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public static getInstance()Lcom/android/server/telecom/CallsManager;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/CallsManager;->sInstance:Lcom/android/server/telecom/CallsManager;

    return-object v0
.end method

.method private getNewOutgoingCall(Landroid/net/Uri;Landroid/os/Bundle;)Lcom/android/server/telecom/Call;
    .locals 9

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mPendingCallsToDisconnect:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mPendingCallsToDisconnect:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v1, "Reusing disconnected call %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {p0, v1, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->disconnect()V

    move-object v0, v1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    :goto_2
    return-object v1

    :cond_2
    new-instance v0, Lcom/android/server/telecom/Call;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mConnectionServiceRepository:Lcom/android/server/telecom/ConnectionServiceRepository;

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/telecom/Call;-><init>(Landroid/content/Context;Lcom/android/server/telecom/ConnectionServiceRepository;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZ)V

    invoke-static {v0, p2}, Lcom/android/server/telecom/secutils/TelecomUtils;->makeSecCall(Lcom/android/server/telecom/Call;Landroid/os/Bundle;)Lcom/android/server/telecom/Call;

    move-result-object v1

    goto :goto_2
.end method

.method private varargs getNumCallsWithState([I)I
    .locals 7

    const/4 v0, 0x0

    array-length v3, p1

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v4, p1, v2

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    if-ne v0, v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private hasMaximumHoldingCalls()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v3, 0x6

    aput v3, v2, v1

    invoke-direct {p0, v2}, Lcom/android/server/telecom/CallsManager;->getNumCallsWithState([I)I

    move-result v2

    if-gt v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private hasMaximumLiveCalls()Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/telecom/CallsManager;->LIVE_CALL_STATES:[I

    invoke-direct {p0, v1}, Lcom/android/server/telecom/CallsManager;->getNumCallsWithState([I)I

    move-result v1

    if-gt v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasMaximumOutgoingCalls()Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/telecom/CallsManager;->OUTGOING_CALL_STATES:[I

    invoke-direct {p0, v1}, Lcom/android/server/telecom/CallsManager;->getNumCallsWithState([I)I

    move-result v1

    if-gt v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasMaximumRingingCalls()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v3, 0x4

    aput v3, v2, v1

    invoke-direct {p0, v2}, Lcom/android/server/telecom/CallsManager;->getNumCallsWithState([I)I

    move-result v2

    if-gt v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static initialize(Lcom/android/server/telecom/CallsManager;)V
    .locals 0

    sput-object p0, Lcom/android/server/telecom/CallsManager;->sInstance:Lcom/android/server/telecom/CallsManager;

    return-void
.end method

.method private isPotentialMMICode(Landroid/net/Uri;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeRoomForOutgoingCall(Lcom/android/server/telecom/Call;Z)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->hasMaximumLiveCalls()Z

    move-result v2

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkMultiSimDsda()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-static {v2, p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->hasMultiSimMaximumLiveCalls(Ljava/util/Collection;Lcom/android/server/telecom/Call;)Z

    move-result v2

    :cond_0
    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/server/telecom/CallsManager;->LIVE_CALL_STATES:[I

    invoke-virtual {p0, p1, v2}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeRoomForOutgoingCall call = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " livecall = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p1, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->hasMaximumOutgoingCalls()Z

    move-result v2

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkMultiSimDsda()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-static {v2, p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->hasMultiSimMaximumOutgoingCalls(Ljava/util/Collection;Lcom/android/server/telecom/Call;)Z

    move-result v2

    :cond_3
    if-eqz v2, :cond_7

    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz p2, :cond_6

    sget-object v2, Lcom/android/server/telecom/CallsManager;->OUTGOING_CALL_STATES:[I

    invoke-virtual {p0, v2}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->disconnect()V

    goto :goto_0

    :cond_5
    const-string v0, "makeRoomForOutgoingCall(): EC call request while another EC is ongoing"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->hasMaximumHoldingCalls()Z

    move-result v2

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkMultiSimDsda()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-static {v2, p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->hasMultiSimMaximumHoldingCalls(Ljava/util/Collection;Lcom/android/server/telecom/Call;)Z

    move-result v2

    :cond_8
    if-eqz v2, :cond_a

    if-eqz p2, :cond_9

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->disconnect()V

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_0

    :cond_a
    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v3, v0}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_b
    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkMultiSimDsda()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    sget-object v2, Lcom/android/server/telecom/CallsManager;->LIVE_CALL_STATES:[I

    invoke-static {v1, p1, v2}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getOtherSlotFirstCallWithState(Ljava/util/Collection;Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->hold()V

    goto/16 :goto_0
.end method

.method private removeCall(Lcom/android/server/telecom/Call;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "removeCall"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "removeCall(%s)"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->setParentCall(Lcom/android/server/telecom/Call;)V

    invoke-virtual {p1, p0}, Lcom/android/server/telecom/Call;->removeListener(Lcom/android/server/telecom/Call$Listener;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->clearConnectionService()V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move v0, v1

    :goto_1
    const-string v3, "tmo_echolocate_logger"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->getInstance()Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->removeCallID(Ljava/lang/String;)Z

    iget-object v4, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-ge v4, v1, :cond_1

    invoke-virtual {v3}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->removeAllCallID()V

    :cond_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    sget-boolean v3, Lcom/android/server/telecom/Log;->SYSTRACE_DEBUG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onCallRemoved"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onCallRemoved(Lcom/android/server/telecom/Call;)V

    sget-boolean v0, Lcom/android/server/telecom/Log;->SYSTRACE_DEBUG:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/android/server/telecom/CallsManager$CalledListener;->NONE:Lcom/android/server/telecom/CallsManager$CalledListener;

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalledListenerForRemove:Lcom/android/server/telecom/CallsManager$CalledListener;

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->updateCallsManagerState()V

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallsManager;->updatePhoneState(I)V

    const-string v0, "feature_multisim_dsds"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/telecom/CallsManager;->defaultSubscriptionChanged:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/server/telecom/CallsManager;->prevSubId:I

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->setDefaultVoiceSubId(I)Z

    iput-boolean v2, p0, Lcom/android/server/telecom/CallsManager;->defaultSubscriptionChanged:Z

    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto/16 :goto_1
.end method

.method private setCallState(Lcom/android/server/telecom/Call;I)V
    .locals 6

    const/4 v5, 0x3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    const-string v0, "setCallState %s -> %s, call: %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Landroid/telecom/CallState;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Landroid/telecom/CallState;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq p2, v1, :cond_8

    invoke-virtual {p1, p2}, Lcom/android/server/telecom/Call;->setState(I)V

    const-string v0, "onCallStateChanged"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/server/telecom/CallsManager;->updatePhoneState(I)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    sget-boolean v3, Lcom/android/server/telecom/Log;->SYSTRACE_DEBUG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onCallStateChanged"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0, p1, v1, p2}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onCallStateChanged(Lcom/android/server/telecom/Call;II)V

    sget-boolean v0, Lcom/android/server/telecom/Log;->SYSTRACE_DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->updateCallsManagerState()V

    :cond_4
    :goto_2
    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    if-ne p2, v0, :cond_5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->setBinderGetNumMarkResult(Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;)V

    :cond_5
    const-string v0, "tmo_echolocate_logger"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v5, v0, p2, v1}, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr;->setEcholocateCallState(ILandroid/net/Uri;II)V

    :cond_6
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/telecom/CallsManager;->isNeedAddLog:Z

    if-eqz v0, :cond_4

    invoke-static {p1, v1, p2}, Lcom/android/server/telecom/secutils/TelecomUtils;->addCallLogForNotRegisteredCall(Lcom/android/server/telecom/Call;II)V

    goto :goto_2

    :cond_8
    if-ne p2, v5, :cond_6

    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->hasActiveOrHoldingCall()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->updateCallsManagerState()V

    goto :goto_3
.end method

.method private updateCallsManagerState()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->updateForegroundCall()V

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->updateCanAddCall()V

    return-void
.end method

.method private updateCanAddCall()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->canAddCall()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/telecom/CallsManager;->mCanAddCall:Z

    if-eq v0, v1, :cond_2

    iput-boolean v0, p0, Lcom/android/server/telecom/CallsManager;->mCanAddCall:Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    sget-boolean v2, Lcom/android/server/telecom/Log;->SYSTRACE_DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " updateCanAddCall"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/telecom/CallsManager;->mCanAddCall:Z

    invoke-interface {v0, v2}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onCanAddCallChanged(Z)V

    sget-boolean v0, Lcom/android/server/telecom/Log;->SYSTRACE_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateForegroundCall()V
    .locals 6

    const/4 v5, 0x0

    const-string v0, "updateForegroundCall"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    const-string v3, "feature_multisim_dsda"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/telecom/CallsManager;->LIVE_CALL_STATES:[I

    invoke-virtual {p0, v3}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isDualCallRinging(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isDualSim()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isDualSimInCall(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v3

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSimDSDAForegoundPhoneId()I

    move-result v4

    if-ne v3, v4, :cond_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    if-nez v3, :cond_0

    :cond_3
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isActive()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    if-eq v0, v1, :cond_b

    const-string v1, "Updating foreground call, %s -> %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->getWBAMRstate()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->updateWideBand(Lcom/android/server/telecom/Call;Z)V

    :cond_5
    if-nez v0, :cond_6

    invoke-static {v5}, Lcom/android/services/telephony/common/SystemDBInterface;->setWideBandAMR(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    sget-boolean v3, Lcom/android/server/telecom/Log;->SYSTRACE_DEBUG:Z

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " updateForegroundCall"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_8
    iget-object v3, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-interface {v0, v1, v3}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V

    sget-boolean v0, Lcom/android/server/telecom/Log;->SYSTRACE_DEBUG:Z

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :cond_9
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_c

    :cond_a
    :goto_3
    move-object v1, v0

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_c
    move-object v0, v1

    goto :goto_3

    :cond_d
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private updatePhoneState(I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    iput v2, p0, Lcom/android/server/telecom/CallsManager;->mPhoneState:I

    const-string v0, "updatePhoneState : set_hpd_state(1)"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget v0, p0, Lcom/android/server/telecom/CallsManager;->mPhoneState:I

    if-nez v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    iput v4, p0, Lcom/android/server/telecom/CallsManager;->mPhoneState:I

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v3, p0, Lcom/android/server/telecom/CallsManager;->mPhoneState:I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/telecom/CallsManager;->mPhoneState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iput v4, p0, Lcom/android/server/telecom/CallsManager;->mPhoneState:I

    goto :goto_0

    :pswitch_1
    iput v3, p0, Lcom/android/server/telecom/CallsManager;->mPhoneState:I

    const-string v0, "updatePhoneState : set_hpd_state(0)"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-array v0, v3, [I

    const/4 v1, 0x4

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "foreground call is ringing"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v3, p0, Lcom/android/server/telecom/CallsManager;->mPhoneState:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3
        0x5
        0x6
    .end array-data
.end method


# virtual methods
.method public activateSpeakerIfDocked()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDockOn()Z

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method addListener(Lcom/android/server/telecom/CallsManager$CallsManagerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v0, "android.telecom.extra.UNKNOWN_CALL_HANDLE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    const-string v0, "addNewUnknownCall with handle: %s"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/telecom/Call;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mConnectionServiceRepository:Lcom/android/server/telecom/ConnectionServiceRepository;

    move-object v5, v4

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/telecom/Call;-><init>(Landroid/content/Context;Lcom/android/server/telecom/ConnectionServiceRepository;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZ)V

    invoke-virtual {v0, v7}, Lcom/android/server/telecom/Call;->setIsUnknown(Z)V

    invoke-virtual {v0, p2}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/Call;->startCreateConnection(Lcom/android/server/telecom/PhoneAccountRegistrar;)V

    const-string v1, "feature_multisim_dsds"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->hasActiveOrHoldingCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v1

    iput v1, p0, Lcom/android/server/telecom/CallsManager;->prevSubId:I

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->setDefaultVoiceSubId(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v7, p0, Lcom/android/server/telecom/CallsManager;->defaultSubscriptionChanged:Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallsManager;->addCall(Lcom/android/server/telecom/Call;)V

    :cond_1
    return-void
.end method

.method public answerCall(Lcom/android/server/telecom/Call;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Request to answer a non-existent call %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    if-eq v0, p1, :cond_4

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getConnectionCapabilities()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v4

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->disconnect()V

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_3
    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->setIncomingCallAnswered(Z)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-interface {v0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIncomingCallAnswered(Lcom/android/server/telecom/Call;)V

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v4, "Disconnecting held call %s before holding active call."

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-static {p0, v4, v5}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->disconnect()V

    :cond_6
    const-string v3, "Holding active/dialing call %s before answering incoming call %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    aput-object v5, v4, v2

    aput-object p1, v4, v1

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->hold()V

    goto :goto_2

    :cond_7
    const-string v0, "onIncomingCallAnswered"

    invoke-static {p1, v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->sendMessageToUI(Lcom/android/server/telecom/Call;Ljava/lang/String;)V

    const-string v0, "mute_music_stream_during_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->muteMusicStream(Landroid/media/AudioManager;Z)V

    :cond_8
    const-string v0, "us_sound_path"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "dcm_retain_path"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "ui_for_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getVideoState()I

    move-result v0

    if-eqz v0, :cond_a

    if-nez p2, :cond_a

    invoke-virtual {p1, v2}, Lcom/android/server/telecom/Call;->setStartWithSpeakerphoneOn(Z)V

    :cond_a
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkMultiSimDsda()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->setAudioPath(I)V

    :cond_b
    invoke-virtual {p1, p2}, Lcom/android/server/telecom/Call;->answer(I)V

    goto/16 :goto_0
.end method

.method canAddCall()Z
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canAddCall mCalls.size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "canAddCall false - emergencyCall "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return v2

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-nez v0, :cond_5

    add-int/lit8 v0, v1, 0x1

    :goto_2
    const-string v1, "show_add_call_menu_for_3rd_call"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-gt v0, v5, :cond_0

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    if-lt v0, v5, :cond_2

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method conference(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 2

    const-string v0, "not_support_volte_merge"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSDomain(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "does not support merge call for volte call"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/telecom/Call;->conferenceWith(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method createCallForExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)Lcom/android/server/telecom/Call;
    .locals 9

    const/4 v4, 0x0

    const/4 v7, 0x0

    new-instance v0, Lcom/android/server/telecom/Call;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mConnectionServiceRepository:Lcom/android/server/telecom/ConnectionServiceRepository;

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    move-object v5, v4

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/telecom/Call;-><init>(Landroid/content/Context;Lcom/android/server/telecom/ConnectionServiceRepository;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZ)V

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/telecom/Call;->getStateFromConnectionState(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getConnectionCapabilities()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/Call;->setConnectionCapabilities(I)V

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getCallerDisplayNamePresentation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/telecom/Call;->setCallerDisplayName(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallsManager;->addCall(Lcom/android/server/telecom/Call;)V

    return-object v0
.end method

.method createConferenceCall(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ParcelableConference;)Lcom/android/server/telecom/Call;
    .locals 12

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectTimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroid/telecom/Conference;->CONNECT_TIME_NOT_SPECIFIED:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v10, 0x0

    :goto_0
    new-instance v1, Lcom/android/server/telecom/Call;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/telecom/CallsManager;->mConnectionServiceRepository:Lcom/android/server/telecom/ConnectionServiceRepository;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v5, v4

    move-object v6, v4

    move-object v7, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/server/telecom/Call;-><init>(Landroid/content/Context;Lcom/android/server/telecom/ConnectionServiceRepository;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZJ)V

    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/Call;->getStateFromConnectionState(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionCapabilities()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/Call;->setConnectionCapabilities(I)V

    invoke-virtual {v1, p0}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    invoke-direct {p0, v1}, Lcom/android/server/telecom/CallsManager;->addCall(Lcom/android/server/telecom/Call;)V

    return-object v1

    :cond_0
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectTimeMillis()J

    move-result-wide v10

    goto :goto_0
.end method

.method public disconnectAllCalls()V
    .locals 2

    const-string v0, "disconnectAllCalls"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public disconnectCall(Lcom/android/server/telecom/Call;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "disconnectCall %s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Unknown call (%s) asked to disconnect"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mLocallyDisconnectingCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->disconnect()V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    if-eq v0, v2, :cond_0

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->setState(I)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mInCallController:Lcom/android/server/telecom/InCallController;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/InCallController;->forceUpdateCall(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "CallsManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    if-eqz v0, :cond_1

    const-string v0, "mCalls: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mForegroundCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    if-nez v0, :cond_6

    const-string v0, "none"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    if-eqz v0, :cond_2

    const-string v0, "mCallAudioManager:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallAudioManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mTtyManager:Lcom/android/server/telecom/TtyManager;

    if-eqz v0, :cond_3

    const-string v0, "mTtyManager:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mTtyManager:Lcom/android/server/telecom/TtyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/TtyManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mInCallController:Lcom/android/server/telecom/InCallController;

    if-eqz v0, :cond_4

    const-string v0, "mInCallController:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mInCallController:Lcom/android/server/telecom/InCallController;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/InCallController;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mConnectionServiceRepository:Lcom/android/server/telecom/ConnectionServiceRepository;

    if-eqz v0, :cond_5

    const-string v0, "mConnectionServiceRepository:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mConnectionServiceRepository:Lcom/android/server/telecom/ConnectionServiceRepository;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/ConnectionServiceRepository;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    goto :goto_1
.end method

.method public getActiveCall()Lcom/android/server/telecom/Call;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method public getAudioState()Landroid/telecom/AudioState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallAudioManager;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    return-object v0
.end method

.method public getCallState()I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/CallsManager;->mPhoneState:I

    return v0
.end method

.method public getCalls()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentToneId()I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/CallsManager;->mToneId:I

    return v0
.end method

.method public getCurrentToneState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/telecom/CallsManager;->mIsTonePlaying:Z

    return v0
.end method

.method getCurrentTtyMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mTtyManager:Lcom/android/server/telecom/TtyManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/TtyManager;->getCurrentTtyMode()I

    move-result v0

    return v0
.end method

.method getDialingCall()Lcom/android/server/telecom/Call;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method varargs getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;
    .locals 7

    array-length v2, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_5

    aget v3, p2, v1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkMultiSimDsda()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v0

    iget-object v4, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v4

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkMultiSimDsda()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v6

    if-ne v5, v6, :cond_2

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v5

    if-ne v3, v5, :cond_2

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public varargs getFirstCallWithState([I)Lcom/android/server/telecom/Call;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/server/telecom/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    return-object v0
.end method

.method public getHeldCall()Lcom/android/server/telecom/Call;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method public getHoldTonePlayer()Lcom/android/server/telecom/secutils/HoldTonePlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mHoldTonePlayer:Lcom/android/server/telecom/secutils/HoldTonePlayer;

    return-object v0
.end method

.method public getInCallController()Lcom/android/server/telecom/InCallController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mInCallController:Lcom/android/server/telecom/InCallController;

    return-object v0
.end method

.method public getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    return-object v0
.end method

.method getNumHeldCalls()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getRingbackPlayer()Lcom/android/server/telecom/RingbackPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mRingbackPlayer:Lcom/android/server/telecom/RingbackPlayer;

    return-object v0
.end method

.method public getRinger()Lcom/android/server/telecom/Ringer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mRinger:Lcom/android/server/telecom/Ringer;

    return-object v0
.end method

.method public getRingingCall()Lcom/android/server/telecom/Call;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method public getSecCallLogManager()Lcom/android/server/telecom/secutils/SecCallLogManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mSecCallLogManager:Lcom/android/server/telecom/secutils/SecCallLogManager;

    return-object v0
.end method

.method public getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->getInCallController()Lcom/android/server/telecom/InCallController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->getInCallController()Lcom/android/server/telecom/InCallController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallController;->getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWBAMRstate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/telecom/CallsManager;->mWB_AMR_state:Z

    return v0
.end method

.method handleConnectionServiceDeath(Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    new-instance v2, Landroid/telecom/DisconnectCause;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/telecom/CallsManager;->markCallAsDisconnected(Lcom/android/server/telecom/Call;Landroid/telecom/DisconnectCause;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallsManager;->markCallAsRemoved(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public hasActiveOrHoldingCall()Z
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 4
        0x5
        0x6
    .end array-data
.end method

.method public hasAnyCalls()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAnyCallsExceptDisconnected()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasEmergencyCall()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRingingCall()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v2, v0, [I

    const/4 v3, 0x4

    aput v3, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public hasRingingCallOnly()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v0, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const-string v0, "Non Ringing"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasRingingCallOnly()..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    goto :goto_1
.end method

.method hasVideoCall()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getVideoState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public holdCall(Lcom/android/server/telecom/Call;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unknown call (%s) asked to be put on hold"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Putting call on hold: (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "setSwap"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/BluetoothPhoneService;->setSwap()V

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->hold()V

    goto :goto_0
.end method

.method public isBluetoothDeviceAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallAudioManager;->isBluetoothDeviceAvailable()Z

    move-result v0

    return v0
.end method

.method public isInCall()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isActive()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "isInCall()...Active"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    :cond_2
    const-string v0, "isInCall()...Alive or Ringing"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "isInCall()...false"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_0
.end method

.method public isPotentialInCallMMICode(Landroid/net/Uri;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    :cond_0
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    :cond_1
    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public isRinging()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    const-string v0, "Ringing"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string v0, "isRinging()...false"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method isTtySupported()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mTtyManager:Lcom/android/server/telecom/TtyManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/TtyManager;->isTtySupported()Z

    move-result v0

    return v0
.end method

.method markCallAsActive(Lcom/android/server/telecom/Call;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    return-void
.end method

.method markCallAsDialing(Lcom/android/server/telecom/Call;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    return-void
.end method

.method markCallAsDisconnected(Lcom/android/server/telecom/Call;Landroid/telecom/DisconnectCause;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/android/server/telecom/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->sendRequestLastCall()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->setIMSPreRegState(Z)V

    return-void
.end method

.method markCallAsOnHold(Lcom/android/server/telecom/Call;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    return-void
.end method

.method markCallAsRemoved(Lcom/android/server/telecom/Call;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallsManager;->removeCall(Lcom/android/server/telecom/Call;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mLocallyDisconnectingCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mLocallyDisconnectingCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const-string v0, "markCallAsRemoved don\'t call unhold "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method markCallAsRinging(Lcom/android/server/telecom/Call;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    return-void
.end method

.method mute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallAudioManager;->mute(Z)V

    return-void
.end method

.method onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V
    .locals 3

    const-string v0, "onAudioStateChanged, audioState: %s -> %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCanceledViaNewOutgoingCallBroadcast(Lcom/android/server/telecom/Call;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mPendingCallsToDisconnect:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/telecom/CallsManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/telecom/CallsManager$2;-><init>(Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/Call;)V

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/telecom/Timeouts;->getNewOutgoingCallCancelMillis(Landroid/content/ContentResolver;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    return v0
.end method

.method onChangeInContent(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangeInContent::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-interface {v0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onChangeInContent(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChildrenChanged(Lcom/android/server/telecom/Call;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->updateCallsManagerState()V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-interface {v0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIsConferencedChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFailedIncomingCall(Lcom/android/server/telecom/Call;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    invoke-virtual {p1, p0}, Lcom/android/server/telecom/Call;->removeListener(Lcom/android/server/telecom/Call$Listener;)V

    return-void
.end method

.method public onFailedOutgoingCall(Lcom/android/server/telecom/Call;Landroid/telecom/DisconnectCause;)V
    .locals 3

    const-string v0, "onFailedOutgoingCall, call: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/CallsManager;->markCallAsRemoved(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public onFailedUnknownCall(Lcom/android/server/telecom/Call;)V
    .locals 3

    const-string v0, "onFailedUnknownCall for call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    invoke-virtual {p1, p0}, Lcom/android/server/telecom/Call;->removeListener(Lcom/android/server/telecom/Call$Listener;)V

    return-void
.end method

.method public onIsVoipAudioModeChanged(Lcom/android/server/telecom/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-interface {v0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIsVoipAudioModeChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onModifiedCall(Lcom/android/server/telecom/Call;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallAudioManager;->onModifiedCall()V

    const-string v0, "onModifiedCall"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCallType()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/telecom/Call;->setCallType(I)V

    if-eq v0, v7, :cond_0

    if-ne v0, v5, :cond_4

    :cond_0
    if-eq v1, v3, :cond_1

    if-eq v1, v4, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    :cond_1
    const-string v0, "vzw_sound_path"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkAndTurnOnSpeaker()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isModifyFromVoice()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkAndTurnOnSpeaker()V

    invoke-virtual {p1, v6}, Lcom/android/server/telecom/Call;->setModifyFromVoice(Z)V

    goto :goto_0

    :cond_4
    if-nez v0, :cond_d

    const/4 v0, 0x3

    if-ne v1, v0, :cond_9

    const-string v0, "ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->restoreSpeakerStateByCall(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_5
    const-string v0, "ui_for_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ui_for_ect"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallsManager;->setAudioRoute(I)V

    goto :goto_0

    :cond_7
    const-string v0, "concept_usa_att"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "concept_usa_tmo"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "concept_canada_common"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_8
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isModifyFromVoice()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkAndTurnOnSpeaker()V

    invoke-virtual {p1, v6}, Lcom/android/server/telecom/Call;->setModifyFromVoice(Z)V

    goto :goto_0

    :cond_9
    if-ne v1, v4, :cond_b

    const-string v0, "concept_usa_att"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "concept_usa_tmo"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "concept_canada_common"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_a
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isModifyFromVoice()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkAndTurnOnSpeaker()V

    invoke-virtual {p1, v6}, Lcom/android/server/telecom/Call;->setModifyFromVoice(Z)V

    goto :goto_0

    :cond_b
    if-eq v1, v7, :cond_c

    if-ne v1, v5, :cond_2

    :cond_c
    invoke-virtual {p1, v3}, Lcom/android/server/telecom/Call;->setModifyFromVoice(Z)V

    goto/16 :goto_0

    :cond_d
    if-eq v0, v3, :cond_e

    if-eq v0, v4, :cond_e

    const/4 v2, 0x3

    if-eq v0, v2, :cond_e

    if-eq v0, v7, :cond_e

    if-ne v0, v5, :cond_2

    :cond_e
    if-nez v1, :cond_2

    const-string v1, "ui_for_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "ui_for_chn"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "ui_for_chn"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "ui_for_ect"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "canada_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "common_volte_trial"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    iget v0, v0, Landroid/telecom/AudioState;->route:I

    if-eq v0, v4, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/server/telecom/CallsManager;->setAudioRoute(I)V

    goto/16 :goto_0

    :cond_10
    const-string v1, "vzw_sound_path"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-ne v0, v7, :cond_2

    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    iget v0, v0, Landroid/telecom/AudioState;->route:I

    if-eq v0, v4, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/server/telecom/CallsManager;->setAudioRoute(I)V

    goto/16 :goto_0
.end method

.method public onParentChanged(Lcom/android/server/telecom/Call;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->updateCallsManagerState()V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-interface {v0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIsConferencedChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPostDialChar(Lcom/android/server/telecom/Call;C)V
    .locals 4

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mStopTone:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mStopTone:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mDtmfLocalTonePlayer:Lcom/android/server/telecom/DtmfLocalTonePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/telecom/DtmfLocalTonePlayer;->playTone(Lcom/android/server/telecom/Call;C)V

    new-instance v0, Lcom/android/server/telecom/CallsManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/telecom/CallsManager$1;-><init>(Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/Call;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mStopTone:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mStopTone:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/telecom/Timeouts;->getDelayBetweenDtmfTonesMillis(Landroid/content/ContentResolver;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/16 v0, 0x3b

    if-eq p2, v0, :cond_2

    const/16 v0, 0x2c

    if-ne p2, v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mStopTone:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mStopTone:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mDtmfLocalTonePlayer:Lcom/android/server/telecom/DtmfLocalTonePlayer;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/DtmfLocalTonePlayer;->stopTone(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_4
    const-string v0, "onPostDialChar: invalid value %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPostDialWait(Lcom/android/server/telecom/Call;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mInCallController:Lcom/android/server/telecom/InCallController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/telecom/InCallController;->onPostDialWait(Lcom/android/server/telecom/Call;Ljava/lang/String;)V

    return-void
.end method

.method public onRingbackRequested(Lcom/android/server/telecom/Call;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onRingbackRequested(Lcom/android/server/telecom/Call;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSuccessfulIncomingCall(Lcom/android/server/telecom/Call;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "onSuccessfulIncomingCall"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/android/server/telecom/CallsManager;->isNeedAddLog:Z

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Reject video call when Car mode is on"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v2, v4}, Lcom/android/server/telecom/Call;->reject(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mSecCallLogManager:Lcom/android/server/telecom/secutils/SecCallLogManager;

    invoke-virtual {v0, p1, v5}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;I)V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarmodeHome()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/server/telecom/CallsManager;->isNeedAddLog:Z

    :cond_0
    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->launchDriveLinkDialogActivity(Landroid/content/Context;Lcom/android/server/telecom/Call;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isMirrorLinkModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/android/server/telecom/CallsManager;->isNeedAddLog:Z

    invoke-virtual {p1, v2, v4}, Lcom/android/server/telecom/Call;->reject(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mSecCallLogManager:Lcom/android/server/telecom/secutils/SecCallLogManager;

    invoke-virtual {v0, p1, v5}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/server/telecom/CallsManager;->OUTGOING_CALL_STATES:[I

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "sip"

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v2, v4}, Lcom/android/server/telecom/Call;->reject(ZLjava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/server/telecom/CallsManager;->isNeedAddLog:Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mSecCallLogManager:Lcom/android/server/telecom/secutils/SecCallLogManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->hasMaximumRingingCalls()Z

    move-result v0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkMultiSimDsda()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->hasMultiSimMaximumRingingCalls(Ljava/util/Collection;Lcom/android/server/telecom/Call;)Z

    move-result v0

    :cond_5
    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->rejectCtcCdmaMultiInComingCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallsManager;->addCall(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_1

    invoke-virtual {p1, v2, v4}, Lcom/android/server/telecom/Call;->reject(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mSecCallLogManager:Lcom/android/server/telecom/secutils/SecCallLogManager;

    invoke-virtual {v0, p1, v5}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;I)V

    goto :goto_0

    :cond_7
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isAutoAnswered"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_8

    if-ne v0, v3, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2, v4}, Lcom/android/server/telecom/Call;->reject(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "support_mobilecarrier"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :try_start_0
    const-string v0, "launch incoming call for TPhone"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->requestTPhoneStart(Lcom/android/server/telecom/Call;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneRelaxMode()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    :try_start_1
    const-string v0, "launch incoming call for OllehPhone"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->requestOllehPhoneStart(Lcom/android/server/telecom/Call;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_e
    :goto_2
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallsManager;->addCall(Lcom/android/server/telecom/Call;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onSuccessfulOutgoingCall(Lcom/android/server/telecom/Call;I)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "onSuccessfulOutgoingCall, %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallsManager;->addCall(Lcom/android/server/telecom/Call;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v3

    invoke-interface {v0, p1, v2, v3}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onConnectionServiceChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/server/telecom/ConnectionServiceWrapper;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/telecom/CallsManager;->markCallAsDialing(Lcom/android/server/telecom/Call;)V

    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Successful outgoing call --- DO NOT mute"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/android/server/telecom/CallsManager;->mute(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.accessory.intent.action.ACTION_CHECK_MUTE_ITEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "BUTTON_STATUS"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    const-string v0, "ltn_auto_csp"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->ismShowAutoCspPopup()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f080097

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->setmShowAutoCspPopup(Z)V

    :cond_3
    return-void
.end method

.method public onSuccessfulUnknownCall(Lcom/android/server/telecom/Call;I)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    const-string v0, "onSuccessfulUnknownCall for call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallsManager;->addCall(Lcom/android/server/telecom/Call;)V

    :cond_0
    return-void
.end method

.method public onVideoStateChanged(Lcom/android/server/telecom/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-interface {v0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onVideoStateChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method phoneAccountSelected(Lcom/android/server/telecom/Call;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Attempted to add account to unknown call %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/telecom/Call;->setTargetPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    invoke-direct {p0, p1, v2}, Lcom/android/server/telecom/CallsManager;->makeRoomForOutgoingCall(Lcom/android/server/telecom/Call;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->startCreateConnection(Lcom/android/server/telecom/PhoneAccountRegistrar;)V

    const-string v0, "feature_multisim_dsds"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->hasActiveOrHoldingCall()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    iput v0, p0, Lcom/android/server/telecom/CallsManager;->prevSubId:I

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->setDefaultVoiceSubId(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/server/telecom/CallsManager;->defaultSubscriptionChanged:Z

    :cond_2
    :goto_1
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0, p2}, Lcom/android/server/telecom/PhoneAccountRegistrar;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->disconnect()V

    goto :goto_1
.end method

.method placeOutgoingCall(Lcom/android/server/telecom/Call;Landroid/net/Uri;Landroid/telecom/GatewayInfo;ZI)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GATE"

    const-string v1, "<GATE-M>MO_CALL</GATE-M>"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_2

    const-string v0, "Canceling unknown call."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p3, :cond_8

    move-object v0, p2

    :goto_1
    if-nez p3, :cond_9

    const-string v1, "Creating a new outgoing call with handle: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/server/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeOutgoingCall() setStartWithSpeakerphoneOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->setHandle(Landroid/net/Uri;)V

    invoke-virtual {p1, p3}, Lcom/android/server/telecom/Call;->setGatewayInfo(Landroid/telecom/GatewayInfo;)V

    invoke-virtual {p1, p4}, Lcom/android/server/telecom/Call;->setStartWithSpeakerphoneOn(Z)V

    invoke-virtual {p1, p5}, Lcom/android/server/telecom/Call;->setVideoState(I)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->activateSpeakerIfDocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallAudioManager;->turnOnSpeaker(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/telecom/TelephonyUtil;->shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneId(Lcom/android/server/telecom/Call;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placeOutgoingCall isEmergencyCall :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isMultiSimEmergencyCall:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    :cond_4
    if-eqz v1, :cond_5

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->setTargetPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    :cond_5
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v2, "call.emergency.dial"

    if-eqz v1, :cond_a

    const-string v0, "true"

    :goto_3
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeOutgoingCall() call.getTargetPhoneAccount() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmergencyCall = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-nez v0, :cond_7

    if-eqz v1, :cond_1

    :cond_7
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->startCreateConnection(Lcom/android/server/telecom/PhoneAccountRegistrar;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p3}, Landroid/telecom/GatewayInfo;->getGatewayAddress()Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    const-string v1, "Creating a new outgoing call with gateway handle: %s, original handle: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_a
    const-string v0, "false"

    goto :goto_3
.end method

.method playDtmfTone(Lcom/android/server/telecom/Call;C)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Request to play DTMF in a non-existent call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/telecom/Call;->playDtmfTone(C)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mDtmfLocalTonePlayer:Lcom/android/server/telecom/DtmfLocalTonePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/telecom/DtmfLocalTonePlayer;->playTone(Lcom/android/server/telecom/Call;C)V

    goto :goto_0
.end method

.method postDialContinue(Lcom/android/server/telecom/Call;Z)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Request to continue post-dial string in a non-existent call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/telecom/Call;->postDialContinue(Z)V

    goto :goto_0
.end method

.method processIncomingCallIntent(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v0, "processIncomingCallIntent"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v8}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkDriveLink(Landroid/content/Context;ZZ)V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GATE"

    const-string v1, "<GATE-M>INCOMING_CALL</GATE-M>"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "incoming_number"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    new-instance v0, Lcom/android/server/telecom/Call;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mConnectionServiceRepository:Lcom/android/server/telecom/ConnectionServiceRepository;

    move-object v5, v4

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/telecom/Call;-><init>(Landroid/content/Context;Lcom/android/server/telecom/ConnectionServiceRepository;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZ)V

    invoke-static {v0, p2}, Lcom/android/server/telecom/secutils/TelecomUtils;->makeSecCall(Lcom/android/server/telecom/Call;Landroid/os/Bundle;)Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/Call;->startCreateConnection(Lcom/android/server/telecom/PhoneAccountRegistrar;)V

    const-string v1, "feature_multisim_dsds"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->hasActiveOrHoldingCall()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v1

    iput v1, p0, Lcom/android/server/telecom/CallsManager;->prevSubId:I

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->setDefaultVoiceSubId(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v7, p0, Lcom/android/server/telecom/CallsManager;->defaultSubscriptionChanged:Z

    :cond_1
    return-void
.end method

.method public rejectCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/server/telecom/secutils/AutoAnswer;->getInstance()Lcom/android/server/telecom/secutils/AutoAnswer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/AutoAnswer;->stopAutoAnswer()V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Request to reject a non-existent call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIncomingCallRejected(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/android/server/telecom/Call;->reject(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method removeListener(Lcom/android/server/telecom/CallsManager$CallsManagerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method requestRcsObserver(II)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "requestRcsObserver (%d,%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "REGISTER"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/TelecomGlobals;->registerRcsObserver(I)V

    goto :goto_0

    :pswitch_1
    const-string v0, "UNREGISTER"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/TelecomGlobals;->unRegisterRcsObserver(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetAudioStateAfterDisconnect()V
    .locals 2

    const-string v0, "resetAudioStateAfterDisconnect()..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallAudioManager;->resetAudioStateAfterDisconnect()V

    const-string v0, "tmo_echolocate_logger"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr;->resetPrevMuteState()V

    :cond_0
    return-void
.end method

.method public setAudioRoute(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallAudioManager;->setAudioRoute(I)V

    return-void
.end method

.method public setAudioRoute(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/telecom/CallAudioManager;->setAudioRoute(IZ)V

    return-void
.end method

.method public setToneState(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/telecom/CallsManager;->mIsTonePlaying:Z

    iput p2, p0, Lcom/android/server/telecom/CallsManager;->mToneId:I

    return-void
.end method

.method public setWBAMRstate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/telecom/CallsManager;->mWB_AMR_state:Z

    return-void
.end method

.method startOutgoingCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)Lcom/android/server/telecom/Call;
    .locals 12

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p3}, Lcom/android/server/telecom/CallsManager;->getNewOutgoingCall(Landroid/net/Uri;Landroid/os/Bundle;)Lcom/android/server/telecom/Call;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getCallCapablePhoneAccounts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startOutgoingCall found accounts = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->printOutMultiSimStatus()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    :cond_1
    invoke-static {p3}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Landroid/os/Bundle;)Z

    move-result v7

    invoke-static {p3}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAutoRedialCall(Landroid/os/Bundle;)Z

    move-result v8

    if-eqz p2, :cond_2

    invoke-interface {v6, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object p2, v1

    :cond_2
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {v4, v5}, Lcom/android/server/telecom/Call;->setUserExplictSelectPhoneAccount(Z)V

    :cond_3
    if-nez p2, :cond_d

    const-string v0, "feature_multisim_preferred_sim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v7, :cond_4

    const-string v0, "feature_multisim_preferred_sim_old"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v7, :cond_c

    :cond_4
    invoke-static {p1, v7}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->selectPhoneAccountHandle(Landroid/net/Uri;Z)Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    move-object v3, p2

    :cond_5
    :goto_0
    if-nez v3, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_6

    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    :cond_6
    if-nez v3, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_8

    invoke-static {p3}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p3}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSVideoCall(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_7

    move v0, v2

    :cond_7
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    :cond_8
    if-nez v7, :cond_19

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->activityManager:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    const-string v9, "keyguard"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v9, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v3, :cond_19

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_19

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    if-nez v7, :cond_9

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_9
    const-string v0, "CallsManager"

    const-string v3, "User mode or Device locked through remote control. No handle selected "

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_a

    move v0, v2

    :cond_a
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    :goto_1
    const-string v3, "CallsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startOutgoingCall() phoneAccountHandle = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v3, v7, v9}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Lcom/android/server/telecom/Call;->setTargetPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    iget-object v3, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/server/telecom/TelephonyUtil;->shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    iget-object v7, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v2, v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkDriveLink(Landroid/content/Context;ZZ)V

    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v3

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->isUserExplictSelectPhoneAccount()Z

    move-result v7

    invoke-static {v3, v7}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->selectSimForEmergency(IZ)I

    move-result v7

    iget-object v3, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v3, v9, v7}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {p1, v7}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->selectAccountForEmergency(Landroid/net/Uri;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    const-string v7, "CallsManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MultiSim Emergency startOutgoingCall() => phoneAccountHandle = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_18

    invoke-virtual {v4, v0}, Lcom/android/server/telecom/Call;->setTargetPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {p3, v7}, Lcom/android/server/telecom/secutils/TelecomUtils;->setSecEmergencyCallExtraSubID(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    move v11, v3

    move-object v3, v0

    move v0, v11

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/telecom/CallsManager;->isPotentialInCallMMICode(Landroid/net/Uri;)Z

    move-result v7

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallsManager;->isPotentialMMICode(Landroid/net/Uri;)Z

    move-result v9

    if-nez v9, :cond_e

    if-nez v7, :cond_e

    invoke-direct {p0, v4, v0}, Lcom/android/server/telecom/CallsManager;->makeRoomForOutgoingCall(Lcom/android/server/telecom/Call;Z)Z

    move-result v9

    if-nez v9, :cond_e

    const-string v0, "No remaining room for outgoing call: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v4, v3, v2

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->disconnect()V

    :cond_b
    :goto_3
    return-object v1

    :cond_c
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_d
    move-object v3, p2

    goto/16 :goto_0

    :cond_e
    if-nez v3, :cond_10

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v5, :cond_10

    if-nez v0, :cond_10

    move v0, v5

    :goto_4
    if-eqz v0, :cond_11

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Lcom/android/server/telecom/Call;->setState(I)V

    if-eqz p3, :cond_f

    const-string v9, "selectPhoneAccountAccounts"

    invoke-virtual {p3, v9, v6}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    :cond_f
    :goto_5
    invoke-virtual {v4, p3}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    const-string v6, "CallsManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startOutgoingCall() extras = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v6, v9, v10}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/android/server/telecom/LowBatteryManager;->supportLowBatteryManager(Lcom/android/server/telecom/Call;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/telecom/LowBatteryManager;->isLowBatt()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/LowBatteryManager;->performBatteryLowProcess(Z)V

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->disconnect()V

    goto :goto_3

    :cond_10
    move v0, v2

    goto :goto_4

    :cond_11
    invoke-virtual {v4, v5}, Lcom/android/server/telecom/Call;->setState(I)V

    goto :goto_5

    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallsManager;->isPotentialMMICode(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_13

    if-eqz v7, :cond_17

    :cond_13
    if-nez v0, :cond_17

    invoke-virtual {v4, p0}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    :cond_14
    :goto_6
    const-string v0, "feature_multisim_dsds"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->hasActiveOrHoldingCall()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallsManager;->isPotentialMMICode(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_16

    if-eqz v3, :cond_16

    if-nez v8, :cond_15

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    iput v0, p0, Lcom/android/server/telecom/CallsManager;->prevSubId:I

    :cond_15
    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->setDefaultVoiceSubId(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_16

    iput-boolean v5, p0, Lcom/android/server/telecom/CallsManager;->defaultSubscriptionChanged:Z

    :cond_16
    move-object v1, v4

    goto/16 :goto_3

    :cond_17
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0, v4}, Lcom/android/server/telecom/CallsManager;->addCall(Lcom/android/server/telecom/Call;)V

    goto :goto_6

    :cond_18
    move v11, v3

    move-object v3, v0

    move v0, v11

    goto/16 :goto_2

    :cond_19
    move-object v0, v3

    goto/16 :goto_1
.end method

.method stopDtmfTone(Lcom/android/server/telecom/Call;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Request to stop DTMF in a non-existent call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->stopDtmfTone()V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mDtmfLocalTonePlayer:Lcom/android/server/telecom/DtmfLocalTonePlayer;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/DtmfLocalTonePlayer;->stopTone(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method public stopRingbackPlayer(Lcom/android/server/telecom/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mRingbackPlayer:Lcom/android/server/telecom/RingbackPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mRingbackPlayer:Lcom/android/server/telecom/RingbackPlayer;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/RingbackPlayer;->stopRingbackForCall(Lcom/android/server/telecom/Call;)V

    :cond_0
    return-void
.end method

.method public storeSpeakerState(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/Call;->setStartWithSpeakerphoneOn(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallAudioManager;->storeSpeakerState(Z)V

    goto :goto_0
.end method

.method turnOffProximitySensor(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mProximitySensorManager:Lcom/android/server/telecom/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/ProximitySensorManager;->turnOff(Z)V

    return-void
.end method

.method turnOnProximitySensor()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mProximitySensorManager:Lcom/android/server/telecom/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/ProximitySensorManager;->turnOn()V

    return-void
.end method

.method public unholdCall(Lcom/android/server/telecom/Call;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unknown call (%s) asked to be removed from hold"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "unholding call: (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "feature_multisim_dsda"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v3

    if-ne v1, v3, :cond_1

    :try_start_0
    const-string v3, "holding call: (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->hold()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eq v0, p1, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->hold()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->unhold()V

    goto/16 :goto_0
.end method

.method public updateForegroundCallForMulSimDsda()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->updateForegroundCall()V

    return-void
.end method
