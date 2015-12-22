.class public Lcom/android/phone/EmergencyModeManager;
.super Ljava/lang/Object;
.source "EmergencyModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EmergencyModeManager$Worker;
    }
.end annotation


# static fields
.field private static mRetry:Z


# instance fields
.field private final EXTRA_VOLUME:I

.field private final NATRUAL_SOUND:I

.field private final NOISE_REDUCTION:I

.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mEmergencyMode:I

.field public mIsDisconnectingData:Z

.field private mNetworkChangeSlotId:I

.field private mNetworkType:I

.field private mOriginalNetworkMode:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhone1:Lcom/android/internal/telephony/Phone;

.field private mPhone2:Lcom/android/internal/telephony/Phone;

.field private mRetryTimer:I

.field private mSafetyHandler:Landroid/os/Handler;

.field private mSafetyWorker:Lcom/android/phone/EmergencyModeManager$Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/EmergencyModeManager;->mRetry:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/phone/EmergencyModeManager;->EXTRA_VOLUME:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/EmergencyModeManager;->NATRUAL_SOUND:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/EmergencyModeManager;->NOISE_REDUCTION:I

    iput-boolean v1, p0, Lcom/android/phone/EmergencyModeManager;->mIsDisconnectingData:Z

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/phone/EmergencyModeManager;->mRetryTimer:I

    iput-object v3, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyWorker:Lcom/android/phone/EmergencyModeManager$Worker;

    iput-object v3, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mPhone1:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mPhone2:Lcom/android/internal/telephony/Phone;

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyModeManager;->makeSafetyLooper()V

    return-void
.end method

.method private StartQcomCrossMapping(II)V
    .locals 4
    .param p1    # I
    .param p2    # I

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/phone/EmergencyModeManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1, p2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v1, p0, Lcom/android/phone/EmergencyModeManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->printPreferredNetworkModeValue()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyModeManager;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/phone/EmergencyModeManager;

    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/EmergencyModeManager;)V
    .locals 0
    .param p0    # Lcom/android/phone/EmergencyModeManager;

    invoke-direct {p0}, Lcom/android/phone/EmergencyModeManager;->getCurrentNetworkType()V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/phone/EmergencyModeManager;->mRetry:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/phone/EmergencyModeManager;)V
    .locals 0
    .param p0    # Lcom/android/phone/EmergencyModeManager;

    invoke-direct {p0}, Lcom/android/phone/EmergencyModeManager;->emergencyModeRestoreNetworkMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/EmergencyModeManager;II)V
    .locals 0
    .param p0    # Lcom/android/phone/EmergencyModeManager;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/phone/EmergencyModeManager;->checkNetworkTypeAndChange(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/EmergencyModeManager;I)V
    .locals 0
    .param p0    # Lcom/android/phone/EmergencyModeManager;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyModeManager;->setNetworkInfo(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/EmergencyModeManager;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/EmergencyModeManager;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyModeManager;->setMobileDataEnabled(Z)V

    return-void
.end method

.method private changeNetworkType4LongLife(I)V
    .locals 11
    .param p1    # I

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    iput p1, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    iget-object v5, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v3

    const-string v5, "EmergencyModeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeNetworkType4LongLife : change to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , Data state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    iget-object v5, p0, Lcom/android/phone/EmergencyModeManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_5

    const-string v5, "EmergencyModeManager"

    const-string v6, "Phone State is Not IDLE!"

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v5, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0391

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Lcom/android/phone/EmergencyModeManager;->mEmergencyMode:I

    if-eq v5, v10, :cond_0

    iget v5, p0, Lcom/android/phone/EmergencyModeManager;->mEmergencyMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    :cond_0
    iget-object v5, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0392

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_0
    const-string v5, "EmergencyModeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v5, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget v5, p0, Lcom/android/phone/EmergencyModeManager;->mEmergencyMode:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_4

    iget v5, p0, Lcom/android/phone/EmergencyModeManager;->mEmergencyMode:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    :cond_4
    iget-object v5, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0393

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_8

    if-eq v3, v10, :cond_6

    if-ne v3, v8, :cond_8

    :cond_6
    const-string v5, "network_selection_delay"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-ne v3, v8, :cond_7

    const-string v5, "EmergencyModeManager"

    const-string v6, "Currently Data is connecting!"

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0, v9}, Lcom/android/phone/EmergencyModeManager;->setMobileDataEnabled(Z)V

    iput-boolean v8, p0, Lcom/android/phone/EmergencyModeManager;->mIsDisconnectingData:Z

    iget-object v5, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/phone/EmergencyModeManager$4;

    invoke-direct {v6, p0}, Lcom/android/phone/EmergencyModeManager$4;-><init>(Lcom/android/phone/EmergencyModeManager;)V

    const-wide/16 v8, 0x2710

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_7
    const-string v5, "EmergencyModeManager"

    const-string v6, "Currently Data is conncected!"

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0, v9}, Lcom/android/phone/EmergencyModeManager;->setMobileDataEnabled(Z)V

    iput-boolean v8, p0, Lcom/android/phone/EmergencyModeManager;->mIsDisconnectingData:Z

    const-string v5, "EmergencyModeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeNetworkType4LongLife : mIsDisconnectingData ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/phone/EmergencyModeManager;->mIsDisconnectingData:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/EmergencyModeManager;->changeNetworkType()V

    goto :goto_1
.end method

.method private checkNetworkTypeAndChange(II)V
    .locals 5
    .param p1    # I
    .param p2    # I

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    const-string v2, "EmergencyModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkNetworkTypeAndChange : netType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changeNetType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_0

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput p2, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkChangeSlotId:I

    iput p1, p0, Lcom/android/phone/EmergencyModeManager;->mOriginalNetworkMode:I

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyModeManager;->changeNetworkType4LongLife(I)V

    :cond_0
    return-void

    :sswitch_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const-string v2, "network_mode_automatic_cdma_lte_gsm"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_3
        0x16 -> :sswitch_1
    .end sparse-switch
.end method

.method private emergencyModeRestoreNetworkMode()V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "support_safetycare_not_change_network_mode"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "EmergencyModeManager"

    const-string v2, "handleEmergencyModeStateChanged : skip network mode change"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "backup_network_pref_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "EmergencyModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "emergencyModeRestoreNetworkMode - backup:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_0

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_3

    add-int/lit16 v0, v0, -0x7d0

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkChangeSlotId:I

    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyModeManager;->changeNetworkType4LongLife(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_4

    add-int/lit16 v0, v0, -0x3e8

    iput v4, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkChangeSlotId:I

    goto :goto_1

    :cond_4
    iput v4, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkChangeSlotId:I

    goto :goto_1
.end method

.method private getCurrentNetworkType()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "EmergencyModeManager"

    const-string v1, "getCurrentNetworkType "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sim2_2g_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mPhone1:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mPhone2:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private makeSafetyLooper()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyWorker:Lcom/android/phone/EmergencyModeManager$Worker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/EmergencyModeManager$Worker;

    const-string v1, "emergencymodemanager"

    invoke-direct {v0, v1}, Lcom/android/phone/EmergencyModeManager$Worker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyWorker:Lcom/android/phone/EmergencyModeManager$Worker;

    new-instance v0, Lcom/android/phone/EmergencyModeManager$3;

    iget-object v1, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyWorker:Lcom/android/phone/EmergencyModeManager$Worker;

    invoke-virtual {v1}, Lcom/android/phone/EmergencyModeManager$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/EmergencyModeManager$3;-><init>(Lcom/android/phone/EmergencyModeManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 4
    .param p1    # Z

    iget-object v2, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setNetworkInfo(I)V
    .locals 7
    .param p1    # I

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v2, "EmergencyModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNetworkInfo slotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "kor_phone_via_chip"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "preferred_network_mode"

    iget v3, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget v2, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    :cond_1
    const-string v2, "EmergencyModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LTEON ] Network mode is Automode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<< current mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "persist.radio.netmode.auto"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "EmergencyModeManager"

    const-string v3, "[LTEON ] User change YES"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "persist.radio.user.change"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "qcom_cross_mapping"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_a

    const-string v2, "persist.radio.user.change"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne p1, v5, :cond_b

    const-string v2, "slot2_netType"

    iget v3, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/EmergencyModeManager;->getEmergencyMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/EmergencyModeManager;->getEmergencyMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_d

    :cond_4
    const-string v2, "preferred_network_mode"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-ne p1, v5, :cond_c

    iget v2, p0, Lcom/android/phone/EmergencyModeManager;->mOriginalNetworkMode:I

    add-int/lit16 v1, v2, 0x7d0

    :cond_5
    :goto_3
    const-string v2, "EmergencyModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNetworkInfo netType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v2, "backup_network_pref_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    :goto_4
    const-string v2, "qcom_cross_mapping"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "preferred_network_mode"

    iget v3, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    return-void

    :cond_9
    const-string v2, "EmergencyModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LTEON ] Network mode is G or W only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<< current mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "persist.radio.netmode.auto"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v2, "persist.radio.user.change"

    const-string v3, "2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    if-nez p1, :cond_3

    const-string v2, "slot1_netType"

    iget v3, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_c
    if-nez p1, :cond_5

    iget v2, p0, Lcom/android/phone/EmergencyModeManager;->mOriginalNetworkMode:I

    add-int/lit16 v1, v2, 0x3e8

    goto :goto_3

    :cond_d
    invoke-virtual {p0}, Lcom/android/phone/EmergencyModeManager;->getEmergencyMode()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_e

    invoke-virtual {p0}, Lcom/android/phone/EmergencyModeManager;->getEmergencyMode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    :cond_e
    sget-boolean v2, Lcom/android/phone/EmergencyModeManager;->mRetry:Z

    if-eqz v2, :cond_7

    sput-boolean v6, Lcom/android/phone/EmergencyModeManager;->mRetry:Z

    const-string v2, "backup_network_pref_mode"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4
.end method


# virtual methods
.method public changeNetworkType()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "EmergencyModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeNetworkType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "EmergencyModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeNetworkType - mNetworkChangeSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkChangeSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mNetworkType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v0, "qcom_cross_mapping"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkChangeSlotId:I

    iget v1, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/EmergencyModeManager;->StartQcomCrossMapping(II)V

    :cond_0
    iget v0, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkChangeSlotId:I

    if-ne v4, v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mPhone2:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    iget-object v2, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->printPreferredNetworkModeValue()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mPhone1:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    iget-object v2, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/EmergencyModeManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/EmergencyModeManager;->mNetworkType:I

    iget-object v2, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method public getEmergencyMode()I
    .locals 3

    const-string v0, "EmergencyModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmergencyMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/EmergencyModeManager;->mEmergencyMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/phone/EmergencyModeManager;->mEmergencyMode:I

    return v0
.end method

.method public onChange(Landroid/content/Intent;)V
    .locals 12
    .param p1    # Landroid/content/Intent;

    const-string v8, "reason"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v8, "EmergencyModeManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setEmergencyMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/phone/EmergencyModeManager;->mEmergencyMode:I

    const/4 v1, 0x0

    const/4 v7, 0x0

    const-string v8, "vzw_volte_ui"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x7

    iget-object v9, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v8, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "volteVTEnabled"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    :cond_0
    const-string v8, "automatic_answering_machine"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->updateAMNotificationAtStartUp()V

    const/4 v8, 0x2

    if-eq v4, v8, :cond_1

    const/4 v8, 0x3

    if-ne v4, v8, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->cancelAnswerMsgNotification()V

    :cond_2
    const/4 v8, 0x3

    if-ne v4, v8, :cond_b

    const-string v8, "vzw_volte_ui"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    if-eqz v1, :cond_3

    const-string v8, "EmergencyModeManager"

    const-string v9, "Emergency mode enabled, setLTEVideoCallDisable!"

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setLTEVideoCallDisable()V

    :cond_3
    const-string v8, "support_safetycare_not_change_network_mode"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "EmergencyModeManager"

    const-string v9, "handleEmergencyModeStateChanged : skip network mode change"

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isSafetyAssistanceMode()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/phone/PhoneUtilsCommon;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    or-int/lit8 v6, v6, 0x1

    iget-object v8, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v8, "extraVolume=false"

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_5
    iget-object v8, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "call_natural_sound"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_6

    or-int/lit8 v6, v6, 0x2

    iget-object v8, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtilsCommon;->naturalSoundBroadcast(Landroid/content/Context;I)V

    :cond_6
    iget-object v8, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "call_noise_reduction"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_7

    or-int/lit8 v6, v6, 0x4

    iget-object v8, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtilsCommon;->noiseReductionBroadcast(Landroid/content/Context;I)V

    :cond_7
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtilsCommon;->setVoiceCallEq(ZZ)V

    iget-object v8, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "safety_sound_effect_values"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    const-string v8, "support_spam_call"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v8}, Lcom/android/phone/NotificationMgr;->cancelSpamCallsFilterNotification()V

    :cond_9
    :goto_1
    return-void

    :cond_a
    invoke-direct {p0}, Lcom/android/phone/EmergencyModeManager;->getCurrentNetworkType()V

    iget-object v8, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/phone/EmergencyModeManager$1;

    invoke-direct {v9, p0}, Lcom/android/phone/EmergencyModeManager$1;-><init>(Lcom/android/phone/EmergencyModeManager;)V

    iget v10, p0, Lcom/android/phone/EmergencyModeManager;->mRetryTimer:I

    int-to-long v10, v10

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_b
    const/4 v8, 0x5

    if-ne v4, v8, :cond_9

    const-string v8, "vzw_volte_ui"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    if-eqz v1, :cond_c

    const-string v8, "EmergencyModeManager"

    const-string v9, "Emergency mode disabled, setLTEVideoCallEnable!"

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setLTEVideoCallEnable()V

    :cond_c
    invoke-direct {p0}, Lcom/android/phone/EmergencyModeManager;->emergencyModeRestoreNetworkMode()V

    iget-object v8, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/phone/EmergencyModeManager;->mSafetyHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/phone/EmergencyModeManager$2;

    invoke-direct {v9, p0}, Lcom/android/phone/EmergencyModeManager$2;-><init>(Lcom/android/phone/EmergencyModeManager;)V

    iget v10, p0, Lcom/android/phone/EmergencyModeManager;->mRetryTimer:I

    int-to-long v10, v10

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    iget-object v8, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "safety_sound_effect_values"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v8, 0x1

    and-int/lit8 v9, v6, 0x1

    if-ne v8, v9, :cond_e

    iget-object v8, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v8, "extraVolume=true"

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_e
    const/4 v8, 0x2

    and-int/lit8 v9, v6, 0x2

    if-ne v8, v9, :cond_f

    iget-object v8, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtilsCommon;->naturalSoundBroadcast(Landroid/content/Context;I)V

    :cond_f
    const/4 v8, 0x4

    and-int/lit8 v9, v6, 0x4

    if-ne v8, v9, :cond_10

    iget-object v8, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtilsCommon;->noiseReductionBroadcast(Landroid/content/Context;I)V

    :cond_10
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtilsCommon;->setVoiceCallEq(ZZ)V

    const-string v8, "support_spam_call"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "spam_calls_dialog_do_not_show"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_11

    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v8}, Lcom/android/phone/NotificationMgr;->showSpamCallsFilterNotification()V

    goto/16 :goto_1

    :cond_11
    const/4 v5, 0x0

    goto :goto_2
.end method
