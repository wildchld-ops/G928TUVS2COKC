.class public Lcom/android/keyguard/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Landroid/app/trust/TrustManager$TrustListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;
    }
.end annotation


# static fields
.field private static final ACTION_FACE_UNLOCK_STARTED:Ljava/lang/String; = "com.android.facelock.FACE_UNLOCK_STARTED"

.field private static final ACTION_FACE_UNLOCK_STOPPED:Ljava/lang/String; = "com.android.facelock.FACE_UNLOCK_STOPPED"

.field private static final ACTION_FINGERPRINT_ADDED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_ADDED"

.field private static final ACTION_FINGERPRINT_LOCK_SET:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_LOCK_SET"

.field private static final ACTION_KEYGUARD_REFRESH:Ljava/lang/String; = "com.sec.android.keyguard.REFRESH"

.field private static final ACTION_OPEN_THEME_CHANGED:Ljava/lang/String; = "com.samsung.android.theme.themecenter.THEME_APPLY"

.field private static final BATTERY_ONLINE_FAST_WIRELESS_CHARGER:I = 0x64

.field private static final DEBUG:Z = true

.field private static final DEBUG_SIM_STATES:Z = false

.field private static final EXTRA_HIGHVOLTAGE_CHARGER:Ljava/lang/String; = "hv_charger"

.field private static final EXTRA_ONLINE:Ljava/lang/String; = "online"

.field private static final FAILED_BIOMETRIC_UNLOCK_ATTEMPTS_BEFORE_BACKUP:I = 0x3

.field private static final FAILED_SEC_BIOMETRIC_UNLOCK_ATTEMPTS_BEFORE_BACKUP:I = 0x5

.field private static final LOW_BATTERY_THRESHOLD:I = 0x14

.field private static final MSG_AIRPLANE_UPDATE:I = 0x141

.field private static final MSG_BATTERY_UPDATE:I = 0x12e

.field private static final MSG_BOOT_COMPLETED:I = 0x139

.field private static final MSG_CARRIER_INFO_UPDATE:I = 0x12f

.field private static final MSG_CLOCK_VISIBILITY_CHANGED:I = 0x133

.field private static final MSG_DEVICE_PROVISIONED:I = 0x134

.field private static final MSG_DPM_STATE_CHANGED:I = 0x135

.field private static final MSG_FACE_UNLOCK_STATE_CHANGED:I = 0x145

.field private static final MSG_FINGERPRINT_ACQUIRED:I = 0x144

.field private static final MSG_FINGERPRINT_PROCESSED:I = 0x143

.field private static final MSG_ICC_CARD_STATE_CHANGED:I = 0x14b

.field private static final MSG_KEYGUARD_BOUNCER_CHANGED:I = 0x142

.field private static final MSG_KEYGUARD_VISIBILITY_CHANGED:I = 0x138

.field private static final MSG_OPEN_THEME_CHANGED:I = 0x14a

.field private static final MSG_PHONE_STATE_CHANGED:I = 0x132

.field private static final MSG_REPORT_EMERGENCY_CALL_ACTION:I = 0x13e

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x131

.field private static final MSG_SCREEN_TURNED_OFF:I = 0x140

.field private static final MSG_SCREEN_TURNED_ON:I = 0x13f

.field private static final MSG_SET_CURRENT_CLIENT_ID:I = 0x13b

.field private static final MSG_SET_PLAYBACK_STATE:I = 0x13c

.field private static final MSG_SIM_STATE_CHANGE:I = 0x130

.field private static final MSG_SIM_SUBSCRIPTION_INFO_CHANGED:I = 0x146

.field private static final MSG_THEME_CLOCK_FONT_CHANGED:I = 0x147

.field private static final MSG_THEME_NUMERIC_FONT_CHANGED:I = 0x148

.field private static final MSG_THEME_SYSTEM_FONT_CHANGED:I = 0x149

.field private static final MSG_TIME_UPDATE:I = 0x12d

.field private static final MSG_USER_INFO_CHANGED:I = 0x13d

.field private static final MSG_USER_REMOVED:I = 0x137

.field private static final MSG_USER_SWITCHING:I = 0x136

.field private static final MSG_USER_SWITCH_COMPLETE:I = 0x13a

.field private static final SPASS_PREF_KEY:Ljava/lang/String; = "KeyguardSPassPopupGuideInt"

.field private static final TAG:Ljava/lang/String; = "KeyguardUpdateMonitor"

.field private static final THEME_FONT_CLOCK:Ljava/lang/String; = "theme_font_clock"

.field private static final THEME_FONT_NUMERIC:Ljava/lang/String; = "theme_font_numeric"

.field private static final THEME_FONT_SYSTEM:Ljava/lang/String; = "theme_font_system"

.field public static mSwipeLockShowingBeforeTimeout:Z

.field private static sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;


# instance fields
.field private mAlternateUnlockEnabled:Z

.field private mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

.field private mBootCompleted:Z

.field private mBouncer:Z

.field private final mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mClockThemeFont:Ljava/lang/String;

.field private mClockVisible:Z

.field private final mContext:Landroid/content/Context;

.field private mCoverState:Z

.field private mDPM:Landroid/app/admin/IDevicePolicyManager;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

.field private mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mFailedAttempts:I

.field private mFailedBiometricUnlockAttempts:I

.field private mFailedSecBiometricUnlockAttempts:I

.field private mFingerprintManagerReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private mIccState:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

.field private mIsAppliedDefaultTheme:Z

.field private mIsOldUserPersona:Z

.field private mKeyguardIsVisible:Z

.field private final mKnoxCustomBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedToBeReturn:Z

.field private mNumericThemeFont:Ljava/lang/String;

.field private mPhoneState:I

.field private mRingMode:I

.field private mScreenOn:Z

.field private mShouldShowSIMLock:Z

.field private mShowingCMAS:Z

.field mSimDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSwitchingUser:Z

.field private mSystemThemeFont:Ljava/lang/String;

.field private mTelephonyPlmn:[Ljava/lang/CharSequence;

.field private mTelephonyPlmnDefault:Ljava/lang/CharSequence;

.field private mTelephonySpn:[Ljava/lang/CharSequence;

.field private mThemeFontObserver:Landroid/database/ContentObserver;

.field private mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

.field private mUserFingerprintRecognized:Landroid/util/SparseBooleanArray;

.field private mUserHasTrust:Landroid/util/SparseBooleanArray;

.field private mUserTrustIsManaged:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 17

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;->UNKNOWN:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIccState:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedSecBiometricUnlockAttempts:I

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsOldUserPersona:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedToBeReturn:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowingCMAS:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShouldShowSIMLock:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCoverState:Z

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$2;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintRecognized:Landroid/util/SparseBooleanArray;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    invoke-direct {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$3;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$4;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$5;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKnoxCustomBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$6;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintManagerReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->watchForDeviceProvisioning()V

    :cond_0
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    const/4 v3, 0x1

    const/16 v4, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIIIIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    const/4 v15, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v15

    new-array v2, v15, [Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    new-array v2, v15, [Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v3, v2, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnDefault:Ljava/lang/CharSequence;

    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.intent.action.FINGERPRINT_LOCK_SET"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWModel()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "com.samsung.intent.action.ICC_CARD_STATE_CHANGED"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const/16 v2, 0x3e8

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sec.android.keyguard.REFRESH"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKnoxCustomBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/KeyguardUpdateMonitor$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$7;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setThemeFontContentObserver()V

    :cond_4
    const-string v2, "trust"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/trust/TrustManager;

    invoke-virtual/range {v16 .. v17}, Landroid/app/trust/TrustManager;->registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V

    const-string v2, "fingerprint"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/service/fingerprint/FingerprintManager;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintManagerReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;

    invoke-virtual {v12, v2}, Landroid/service/fingerprint/FingerprintManager;->startListening(Landroid/service/fingerprint/FingerprintManagerReceiver;)V

    :cond_5
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINRequest()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPUKRequest()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "PIN or PUK Require info exist befor receiver started"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x146

    const-wide/16 v6, 0x7530

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    return-void

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintProcessed(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceUnlockStateChanged(ZI)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleAirplaneUpdate(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleThemeClockFontChangeUpdate()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleThemeNumericFontChangeUpdate()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleThemeSystemFontChangeUpdate()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleOpenThemeChangeUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleICCCardStateChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleCarrierInfoUpdate(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnDefault:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnDefault:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$2902(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardUpdateMonitor;IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardBouncerChanged(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserInfoChanged(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAcquired(I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method public static getPhoneId(I)I
    .locals 2

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3

    const-string v1, "showPlmn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "plmn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3

    const-string v1, "showSpn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "spn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThemeFontFromSettingsDb()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "theme_font_clock"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "theme_font_numeric"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "theme_font_system"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clockfont:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockThemeFont:Ljava/lang/String;

    :goto_0
    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numericfont:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNumericThemeFont:Ljava/lang/String;

    :goto_1
    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "systemfont:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemThemeFont:Ljava/lang/String;

    :goto_2
    return-void

    :cond_0
    iput-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockThemeFont:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNumericThemeFont:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemThemeFont:Ljava/lang/String;

    goto :goto_2
.end method

.method private handleAirplaneUpdate(I)V
    .locals 4

    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleAirplaneUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShouldShowSIMLock:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onAirplaneModeChanged(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleBatteryUpdate(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 5

    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "handleBatteryUpdate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleCarrierInfoUpdate(I)V
    .locals 5

    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCarrierInfoUpdate: plmn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", spn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleClockVisibilityChanged()V
    .locals 4

    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleClockVisibilityChanged()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleFaceUnlockStateChanged(ZI)V
    .locals 3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFaceUnlockStateChanged(ZI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleFingerprintAcquired(I)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAcquired(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleFingerprintProcessed(I)V
    .locals 8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v4, v5, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fingerprint disabled by DPM for userId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "KeyguardUpdateMonitor"

    const-string v6, "Failed to get current user id: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/service/fingerprint/FingerprintUtils;->getFingerprintIdsForUser(Landroid/content/ContentResolver;I)[I

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_0

    aget v5, v2, v1

    if-ne v5, p1, :cond_3

    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFingerprintRecognized(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private handleICCCardStateChange(Ljava/lang/String;)V
    .locals 6

    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleICCCardStateChange: iccStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;->UNKNOWN:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    const-string v3, "INSERTED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;->INSERTED:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIccState:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    if-eq v3, v1, :cond_3

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIccState:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onICCCardStateChanged(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "REMOVED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;->REMOVED:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;->UNKNOWN:Lcom/android/keyguard/KeyguardUpdateMonitor$ICC_CARD_STATE;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private handleKeyguardBouncerChanged(I)V
    .locals 6

    const/4 v2, 0x1

    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleKeyguardBouncerChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v2, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardBouncerChanged(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleKeyguardVisibilityChanged(I)V
    .locals 6

    const/4 v2, 0x1

    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleKeyguardVisibilityChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v2, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChangedRaw(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleOpenThemeChangeUpdate(Ljava/lang/String;)V
    .locals 5

    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleOpenThemeChangeUpdate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsAppliedDefaultTheme:Z

    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsAppliedDefaultTheme:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsAppliedDefaultTheme:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleOpenThemeChangeUpdate() cb = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onOpenThemeChanged()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleReportEmergencyCallAction()V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onEmergencyCallAction()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 6

    const-string v4, "KeyguardUpdateMonitor"

    const-string v5, "handleSimStateChange"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "KeyguardUpdateMonitor"

    const-string v5, "invalid subId in handleSimStateChange()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, v4, :cond_2

    const-string v4, "KeyguardUpdateMonitor"

    const-string v5, "handleSimStateChange( Sim state is UNKNOWN.)"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    if-nez v2, :cond_4

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    invoke-direct {v2, p3, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-object v4, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, p3, :cond_5

    iget v4, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    if-ne v4, p1, :cond_5

    iget v4, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    if-eq v4, p2, :cond_6

    :cond_5
    const/4 v1, 0x1

    :goto_3
    iput-object p3, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    iput p1, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iput p2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private handleThemeClockFontChangeUpdate()V
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "theme_font_clock"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clockfont: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockThemeFont:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockThemeFont:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleThemeNumericFontChangeUpdate()V
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "theme_font_numeric"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numericfont: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNumericThemeFont:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNumericThemeFont:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleThemeSystemFontChangeUpdate()V
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "theme_font_system"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "systemfont: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemThemeFont:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemThemeFont:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleTimeUpdate()V
    .locals 4

    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleTimeUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUserInfoChanged(I)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserInfoChanged(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static isBatteryUpdateInteresting(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    if-ne v2, v3, :cond_2

    if-ne v0, v3, :cond_2

    iget v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    iget v6, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    if-ne v5, v6, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWModel()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v1, v3

    :goto_0
    if-ne v2, v0, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    :goto_1
    return v3

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_1

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_1

    :cond_5
    if-ne v2, v3, :cond_6

    if-ne v0, v3, :cond_6

    iget v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    iget v6, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    if-ne v5, v6, :cond_1

    :cond_6
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->highVoltage:Z

    iget-boolean v6, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->highVoltage:Z

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->online:I

    iget v6, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->online:I

    if-ne v5, v6, :cond_1

    move v3, v4

    goto :goto_1
.end method

.method private isDeviceProvisionedInSettingsDb()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isFingerprintDisabled(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 2

    move-object v0, p0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTrustDisabled(I)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {v3, v8}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v6

    const/high16 v7, 0x20000

    if-lt v6, v7, :cond_2

    move v0, v4

    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isATTFeature()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWModel()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    if-eqz v0, :cond_3

    const-string v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isTrustDisabled by policy "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v8, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_4

    move v1, v4

    :goto_2
    move v4, v1

    goto :goto_0

    :cond_4
    move v1, v5

    goto :goto_2

    :cond_5
    move v4, v5

    goto :goto_0
.end method

.method private isUnavailableSimState(Landroid/content/Intent;)Z
    .locals 3

    const-string v1, "ss"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ICCID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MDN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "unavailable intent, drop!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onFingerprintRecognized(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintRecognized:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintRecognized(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private refreshSimState(II)Z
    .locals 9

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    :try_start_0
    invoke-static {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    invoke-direct {v1, v4, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v2

    const-string v6, "KeyguardUpdateMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown sim state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_0
    iget-object v6, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v6, v4, :cond_1

    const/4 v0, 0x1

    :goto_2
    iput-object v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 6

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget v3, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v4, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v5, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    return-void
.end method

.method private setThemeFontContentObserver()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "setThemeFontContentObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$9;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mThemeFontObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "theme_font_clock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mThemeFontObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "theme_font_numeric"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mThemeFontObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "theme_font_system"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mThemeFontObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getThemeFontFromSettingsDb()V

    return-void
.end method

.method private watchForDeviceProvisioning()V
    .locals 5

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$8;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$8;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x134

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public checkSimPINStopHidingKeyguard()Z
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v6, "KeyguardUpdateMonitor"

    const-string v7, "[CTC] do not need to check sim pin!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v7, :cond_3

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v7, :cond_3

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v7, :cond_3

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v7, :cond_2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimActiveState(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_0
.end method

.method public clearFailedUnlockAttempts()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedSecBiometricUnlockAttempts:I

    return-void
.end method

.method public clearFingerprintRecognized()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintRecognized:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method public clearSecBiometricUnlockAttempt()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedSecBiometricUnlockAttempts:I

    return-void
.end method

.method public dispatchBootCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x139

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dispatchScreenTurndOff(I)V
    .locals 4

    const/4 v3, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x140

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchScreenTurnedOn()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchSetBackground(Landroid/graphics/Bitmap;)V
    .locals 5

    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "dispatchSetBackground"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSetBackground(Landroid/graphics/Bitmap;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getCachedDisplayClientState()Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    return-object v0
.end method

.method public getClockThemeFont()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockThemeFont:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultPlmn()Ljava/lang/CharSequence;
    .locals 2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040934

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getEnterpriseDeviceManager()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Can\'t get EnterpriseDeviceManager: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method public getFailedSecBiometricUnlockAttempts()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedSecBiometricUnlockAttempts:I

    return v0
.end method

.method public getFailedUnlockAttempts()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    return v0
.end method

.method public getFailedUnlockAttempts(IZ)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_0

    sget-boolean v2, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy(I)I

    move-result v2

    :goto_1
    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v2

    goto :goto_1
.end method

.method public getFailedUnlockAttemptswithITPolicy(I)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getIDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Can\'t get IDevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method public getMaxBiometricUnlockAttemptsReached()Z
    .locals 2

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxSecBiometricUnlockAttemptsReached()Z
    .locals 2

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedSecBiometricUnlockAttempts:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I
    .locals 8

    const/4 v5, -0x1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v7, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKSlot()I

    move-result v7

    invoke-static {v7}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINRequestWithSlot(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKSlot()I

    move-result v5

    :cond_0
    :goto_0
    return v5

    :cond_1
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v7, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKSlot()I

    move-result v7

    invoke-static {v7}, Lcom/android/keyguard/sec/MultiSimUtils;->getPUKRequestWithSlot(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKSlot()I

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v4

    const v0, 0x7fffffff

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v6

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v7

    if-ne p1, v7, :cond_3

    if-le v0, v6, :cond_3

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimActiveState(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v2

    move v0, v6

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v7

    if-ne p1, v7, :cond_3

    if-le v0, v6, :cond_3

    move v5, v2

    move v0, v6

    goto :goto_2
.end method

.method public getNextSubIdForStateCTC(Lcom/android/internal/telephony/IccCardConstants$State;)I
    .locals 10

    const/4 v5, -0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v4

    const v0, 0x7fffffff

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v6

    const-string v7, "KeyguardUpdateMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNextSubIdForStateCTC slotId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "KeyguardUpdateMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNextSubIdForStateCTC getPINPUKSlot: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKSlot()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v7

    if-ne p1, v7, :cond_0

    if-le v0, v6, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKSlot()I

    move-result v7

    if-ne v7, v6, :cond_0

    move v5, v2

    move v0, v6

    :cond_0
    const-string v7, "KeyguardUpdateMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNextSubIdForStateCTC  current resultId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v7, "KeyguardUpdateMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNextSubIdForStateCTC  resultId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public getNumericThemeFont()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNumericThemeFont:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneState()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    return v0
.end method

.method public getSimActiveState(I)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimActiveState slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v3, 0x2

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone1_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimActiveState simActive1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimActiveState simActive2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v3, v0, p1

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method getSubscriptionInfo(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    return-object v1

    :cond_2
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    goto :goto_0
.end method

.method public getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne p1, v3, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSystemThemeFont()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSystemThemeFont:Ljava/lang/String;

    return-object v0
.end method

.method public getTelephonyPlmn(I)Ljava/lang/CharSequence;
    .locals 2

    move v0, p1

    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getTelephonySpn(I)Ljava/lang/CharSequence;
    .locals 2

    move v0, p1

    if-lez v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getUserHasTrust(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintRecognized:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserTrustIsManaged(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleBootCompleted()V
    .locals 4

    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleBootCompleted()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimSubscriptionInfoChanged()V

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBootCompleted()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected handleDevicePolicyManagerStateChanged()V
    .locals 3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDevicePolicyManagerStateChanged()V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected handleDeviceProvisioned()V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDeviceProvisioned()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    :cond_2
    return-void
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 5

    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePhoneStateChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    :cond_3
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected handleRingerModeChange(I)V
    .locals 5

    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRingerModeChange("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected handleScreenTurnedOff(I)V
    .locals 5

    const-string v3, "PERF"

    const-string v4, "KeyguardUpdateMonitor - cb.onScreenTurnedOff() start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "PERF"

    const-string v4, "KeyguardUpdateMonitor - cb.onScreenTurnedOff() end"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected handleScreenTurnedOn()V
    .locals 5

    const-string v3, "PERF"

    const-string v4, "KeyguardUpdateMonitor - cb.onScreenTurnedOn() start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "PERF"

    const-string v4, "KeyguardUpdateMonitor - cb.onScreenTurnedOn() end"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected handleSimSubscriptionInfoChanged()V
    .locals 11

    const-string v8, "KeyguardUpdateMonitor"

    const-string v9, "onSubscriptionInfoChanged()"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->refreshSimState(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_4

    iget-object v9, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    const/4 v6, 0x0

    :goto_2
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_2

    iget v8, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v9, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v10, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected handleUserRemoved(I)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserRemoved(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected handleUserSwitchComplete(I)V
    .locals 4

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedToBeReturn:Z

    if-eqz v2, :cond_1

    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleUserSwitchComplete() It\'s Knox UserSwitching"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedToBeReturn:Z

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitchComplete(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected handleUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedToBeReturn:Z

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsOldUserPersona:Z

    if-eqz v3, :cond_0

    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "mIsOldUserPersona is true!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedToBeReturn:Z

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "Current user is persona!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedToBeReturn:Z

    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsOldUserPersona:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKnoxSwitching()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "mIsOldUserPersona = false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsOldUserPersona:Z

    :cond_3
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedToBeReturn:Z

    if-eqz v3, :cond_4

    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "handleUserSwitching() It\'s Knox UserSwitching"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public hasBootCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    return v0
.end method

.method public isAlternateUnlockEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAlternateUnlockEnabled:Z

    return v0
.end method

.method public isAppliedDefaultTheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsAppliedDefaultTheme:Z

    return v0
.end method

.method public isClockVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockVisible:Z

    return v0
.end method

.method public isCoverState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCoverState:Z

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method public isFaceUnlockRunning(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isITPolicyenabled(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIccBlockedPermanently()Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardBouncer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    return v0
.end method

.method public isKeyguardVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    return v0
.end method

.method public isMDMenabled(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getEnterpriseDeviceManager()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    return v0
.end method

.method public isShowingCMAS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowingCMAS:Z

    return v0
.end method

.method public isSimPinSecure()Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isSimPinVoiceSecure()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    return v0
.end method

.method public isSwitchingUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    return v0
.end method

.method public onTrustChanged(ZIZ)V
    .locals 3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustInitiatedByUser(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTrustManagedChanged(ZI)V
    .locals 3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustManagedChanged(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 5

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** register callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "Object tried to add another callback"

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Called by"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_1
.end method

.method public removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 4

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** unregister callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reportClockVisible(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockVisible:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x133

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reportEmergencyCallAction(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    goto :goto_0
.end method

.method public reportFailedBiometricUnlockAttempt()V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    return-void
.end method

.method public reportFailedSecBiometricUnlockAttempt()V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedSecBiometricUnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedSecBiometricUnlockAttempts:I

    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    return-void
.end method

.method public reportSimUnlocked(I)V
    .locals 3

    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "reportSimUnlocked"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method public sendKeyguardBouncerChanged(Z)V
    .locals 4

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendKeyguardBouncerChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x142

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendKeyguardVisibilityChanged(Z)V
    .locals 4

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendKeyguardVisibilityChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x138

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlternateUnlockEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAlternateUnlockEnabled:Z

    return-void
.end method

.method public setCoverState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCoverState:Z

    return-void
.end method

.method public shouldShowSIMLock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShouldShowSIMLock:Z

    return v0
.end method

.method public updateCMASText(Z)V
    .locals 5

    if-eqz p1, :cond_0

    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCMASText( show = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowingCMAS:Z

    if-eq v2, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowingCMAS:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onCMASChanged()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
