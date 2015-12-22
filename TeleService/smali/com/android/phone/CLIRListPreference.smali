.class public Lcom/android/phone/CLIRListPreference;
.super Landroid/preference/ListPreference;
.source "CLIRListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CLIRListPreference$MyHandler;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field clirArray:[I

.field private mDialog:Landroid/app/AlertDialog;

.field private final mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSimId:I

.field private mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

.field private prev_CLIR_value:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CLIRListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CLIRListPreference;->DBG:Z

    new-instance v0, Lcom/android/phone/CLIRListPreference$MyHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/CLIRListPreference$MyHandler;-><init>(Lcom/android/phone/CLIRListPreference;Lcom/android/phone/CLIRListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CLIRListPreference;->mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    iput-object v2, p0, Lcom/android/phone/CLIRListPreference;->mDialog:Landroid/app/AlertDialog;

    iput v1, p0, Lcom/android/phone/CLIRListPreference;->prev_CLIR_value:I

    iput v1, p0, Lcom/android/phone/CLIRListPreference;->mSimId:I

    const-string v0, "feature_multisim_dsda"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getSimId()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/phone/CLIRListPreference;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CLIRListPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CLIRListPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private saveClirInSystemSettings(I)V
    .locals 4

    const-string v1, "CLIRListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveClirInSystemSettings value - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/CLIRListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "clir_preference"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CLIRListPreference"

    const-string v2, "could not persist clir in system setting - "

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method handleGetCLIRResult([I)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    aget v5, p1, v4

    if-eq v5, v4, :cond_0

    aget v5, p1, v4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    aget v5, p1, v4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    :cond_0
    move v0, v4

    :goto_0
    const-string v5, "disable_outgoing_callbarring_cmcc"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/phone/CLIRListPreference;->mSimId:I

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCUSIM(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "CLIRListPreference"

    const-string v6, "USIM is CMCC SIM. Disable CLIR."

    invoke-static {v5, v6, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_1
    const/4 v2, 0x0

    aget v4, p1, v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/phone/CLIRListPreference;->setValueIndex(I)V

    iput v2, p0, Lcom/android/phone/CLIRListPreference;->prev_CLIR_value:I

    const v1, 0x7f0a00c8

    packed-switch v2, :pswitch_data_1

    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/phone/CLIRListPreference;->setSummary(I)V

    invoke-direct {p0, v2}, Lcom/android/phone/CLIRListPreference;->saveClirInSystemSettings(I)V

    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/phone/CLIRListPreference;->setEnabled(Z)V

    goto :goto_1

    :pswitch_1
    aget v3, p1, v3

    packed-switch v3, :pswitch_data_2

    const/4 v2, 0x0

    goto :goto_2

    :pswitch_2
    const/4 v2, 0x1

    goto :goto_2

    :pswitch_3
    const/4 v2, 0x2

    goto :goto_2

    :pswitch_4
    const v1, 0x7f0a00c7

    goto :goto_3

    :pswitch_5
    const v1, 0x7f0a00c6

    goto :goto_3

    :pswitch_6
    const v1, 0x7f0a00c8

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/android/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CLIRListPreference;->mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    invoke-virtual {v2, v3, v3, v3}, Lcom/android/phone/CLIRListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    if-ne v1, v4, :cond_2

    :cond_0
    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "feature_hktw"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CLIRListPreference"

    const-string v2, "USIM is absent. Skip display of busy dialog"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_0
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V
    .locals 1

    invoke-static {p3}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iput p3, p0, Lcom/android/phone/CLIRListPreference;->mSimId:I

    invoke-virtual {p0, p1, p2}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    iget v0, p0, Lcom/android/phone/CLIRListPreference;->prev_CLIR_value:I

    invoke-virtual {p0}, Lcom/android/phone/CLIRListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CLIRListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "CLIRListPreference"

    const-string v1, "CLIR value is not changed. Do not update CLIR value"

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/CLIRListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CLIRListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/CLIRListPreference;->mHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    invoke-virtual {v2, v3}, Lcom/android/phone/CLIRListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/CLIRListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/phone/CLIRListPreference;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->mDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/phone/CLIRListPreference$1;

    invoke-direct {v1, p0}, Lcom/android/phone/CLIRListPreference$1;-><init>(Lcom/android/phone/CLIRListPreference;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
