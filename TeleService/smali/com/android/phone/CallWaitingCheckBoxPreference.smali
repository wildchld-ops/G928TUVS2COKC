.class public Lcom/android/phone/CallWaitingCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "CallWaitingCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallWaitingCheckBoxPreference$1;,
        Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

.field private mIsVoLTE:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSimId:I

.field private mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallWaitingCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/CallWaitingCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->DBG:Z

    new-instance v3, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/CallWaitingCheckBoxPreference;Lcom/android/phone/CallWaitingCheckBoxPreference$1;)V

    iput-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    iput-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mSimId:I

    iput-boolean v2, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mIsVoLTE:Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v3, "feature_multisim_dsda"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getSimId()I

    move-result v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_0
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object p1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mContext:Landroid/content/Context;

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "volte_call_waiting_terminal"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object p1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mContext:Landroid/content/Context;

    const-string v3, "ril.ss.routing"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "CallWaitingCheckBoxPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "routing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-ne v0, v1, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mIsVoLTE:Z

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/phone/CallWaitingCheckBoxPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallWaitingCheckBoxPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallWaitingCheckBoxPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallWaitingCheckBoxPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mSimId:I

    return v0
.end method


# virtual methods
.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-virtual {v1, v2, v2, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    :cond_0
    return-void
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V
    .locals 1

    iput p3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mSimId:I

    iget v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1, p2}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    return-void
.end method

.method protected onClick()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "volte_call_waiting_terminal"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "CallWaitingCheckBoxPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick : isChecked() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/CallWaitingCheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "volte_call_waiting"

    invoke-virtual {p0}, Lcom/android/phone/CallWaitingCheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mIsVoLTE:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/CallWaitingCheckBoxPreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/CallWaitingCheckBoxPreference;->isChecked()Z

    move-result v4

    iget-object v5, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-virtual {v5, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_1

    :cond_4
    const-string v1, "feature_sbm"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/CallWaitingCheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    const-string v1, "CallWaitingCheckBoxPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCallWaiting : serviceClass() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/CallWaitingCheckBoxPreference;->isChecked()Z

    move-result v4

    iget-object v5, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-virtual {v5, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v4, v0, v2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZILandroid/os/Message;)V

    :goto_2
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/CallWaitingCheckBoxPreference;->isChecked()Z

    move-result v4

    iget-object v5, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-virtual {v5, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto :goto_2
.end method
