.class public Lcom/android/keyguard/EmergencyButton;
.super Landroid/widget/Button;
.source "EmergencyButton.java"


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final ACTION_EMERGENCY_LIST:Ljava/lang/String; = "com.samsung.phone.EmergencyDialer.LIST"

.field private static final EMERGENCY_CALL_TIMEOUT:I = 0x2710

.field private static final SIM_SLOT1:I = 0x0

.field private static final SIM_SLOT2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EmergencyButton"


# instance fields
.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

.field private mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

.field private mPasswordEntryView:Landroid/view/View;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mServiceState:I

.field private mServiceState2:I

.field private mTelephony:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/EmergencyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mTelephony:Landroid/telephony/TelephonyManager;

    iput v1, p0, Lcom/android/keyguard/EmergencyButton;->mServiceState:I

    iput v1, p0, Lcom/android/keyguard/EmergencyButton;->mServiceState2:I

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/view/View;

    new-instance v0, Lcom/android/keyguard/EmergencyButton$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$1;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/keyguard/EmergencyButton;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/EmergencyButton;->mServiceState:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/keyguard/EmergencyButton;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/EmergencyButton;->mServiceState2:I

    return p1
.end method

.method private callToEmergencyLine(Ljava/lang/String;)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    const-string v2, "EmergencyButton"

    const-string v3, "callToEmergencyLine"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "EmergencyButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find the component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchEmergencyDialler()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    const-string v2, "EmergencyButton"

    const-string v3, "launchEmergencyDialler"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "EmergencyButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find the component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateEmergencyCallButton()V
    .locals 11

    const/4 v6, 0x0

    const/4 v10, 0x3

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v7

    if-eqz v7, :cond_3

    if-ne v0, v5, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "EmergencyButton"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CMCC :: serviceState1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/keyguard/EmergencyButton;->mServiceState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "EmergencyButton"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CMCC :: serviceState2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/keyguard/EmergencyButton;->mServiceState2:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/android/keyguard/EmergencyButton;->mServiceState:I

    if-eq v7, v5, :cond_1

    iget v7, p0, Lcom/android/keyguard/EmergencyButton;->mServiceState:I

    if-ne v7, v10, :cond_3

    :cond_1
    iget v7, p0, Lcom/android/keyguard/EmergencyButton;->mServiceState2:I

    if-eq v7, v5, :cond_2

    iget v5, p0, Lcom/android/keyguard/EmergencyButton;->mServiceState2:I

    if-ne v5, v10, :cond_3

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, p0, v0, v6}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;ZZ)V

    return-void

    :cond_4
    iget-object v7, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v2, 0x0

    const-string v7, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v1

    const-string v7, "getLockScreenHiddenItems"

    iget-object v8, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getKnoxIntValue(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    if-eqz v1, :cond_5

    const/4 v7, -0x1

    if-eq v2, v7, :cond_5

    and-int/lit8 v7, v2, 0x8

    if-eqz v7, :cond_5

    const-string v7, "EmergencyButton"

    const-string v8, "KnoxCustom: Emergency Button is disabled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinVoiceSecure()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v7, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallEnabledWhileSimLocked()Z

    move-result v0

    goto/16 :goto_0

    :cond_6
    iget-object v7, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_7

    sget-boolean v7, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v7, :cond_7

    move v0, v5

    :goto_2
    goto/16 :goto_0

    :cond_7
    move v0, v6

    goto :goto_2

    :cond_8
    const-string v7, "EmergencyButton"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CMCC :: serviceState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/keyguard/EmergencyButton;->mServiceState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/android/keyguard/EmergencyButton;->mServiceState:I

    if-eq v7, v5, :cond_9

    iget v5, p0, Lcom/android/keyguard/EmergencyButton;->mServiceState:I

    if-ne v5, v10, :cond_3

    :cond_9
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mTelephony:Landroid/telephony/TelephonyManager;

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    new-instance v1, Lcom/android/keyguard/EmergencyButton$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/EmergencyButton$2;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/EmergencyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/android/keyguard/EmergencyButton$3;

    aget v2, v0, v3

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/EmergencyButton$3;-><init>(Lcom/android/keyguard/EmergencyButton;I)V

    iput-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/android/keyguard/EmergencyButton$4;

    aget v2, v0, v3

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/EmergencyButton$4;-><init>(Lcom/android/keyguard/EmergencyButton;I)V

    iput-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/EmergencyButton;->mServiceState:I

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/EmergencyButton;->mServiceState2:I

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    return-void

    :cond_4
    const-string v1, "EmergencyButton"

    const-string v2, "Slot 1 : subscription Id is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v1, "EmergencyButton"

    const-string v2, "Slot 2 : subscription Id is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    new-instance v1, Lcom/android/keyguard/EmergencyButton$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/EmergencyButton$5;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    iput-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mTelephony:Landroid/telephony/TelephonyManager;

    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/EmergencyButton;->mServiceState:I

    goto :goto_2
.end method

.method public setPasswordEntryView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/view/View;

    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/view/View;

    if-eqz v3, :cond_5

    const-string v1, ""

    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/view/View;

    instance-of v3, v3, Lcom/android/keyguard/PasswordTextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v3}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_1
    :goto_1
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v1}, Lcom/android/keyguard/EmergencyButton;->callToEmergencyLine(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/EditText;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntryView:Landroid/view/View;

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v1, ""

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->launchEmergencyDialler()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->launchEmergencyDialler()V

    goto :goto_0
.end method

.method public takeEmergencyCallList()V
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.phone.EmergencyDialer.LIST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    const-string v3, "EmergencyButton"

    const-string v4, "takeEmergencyCallList"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "EmergencyButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find the component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
