.class public Lcom/android/phone/CdmaAdditionalCallOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CdmaAdditionalCallOptions.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaAdditionalCallOptions$13;,
        Lcom/android/phone/CdmaAdditionalCallOptions$AppState;
    }
.end annotation


# static fields
.field public static DBG:Z

.field public static mSimId:I


# instance fields
.field doActivate:Ljava/lang/Runnable;

.field doDeactivate:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

.field private mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

.field private mEnhancedVPHandler:Landroid/os/Handler;

.field private mErrAlertPopup:Landroid/app/AlertDialog;

.field private mFdnSetting:Landroid/preference/PreferenceScreen;

.field private mGetCallWaitingComplete:Landroid/os/Handler;

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrevBusyDialog:I

.field private mQueryVoicePrivacyComplete:Landroid/os/Handler;

.field private mSetOptionComplete:Landroid/os/Handler;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mVoiceCallVisible:Z

.field private mVoicePrivacy:Landroid/preference/CheckBoxPreference;

.field private mWaitPopup:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    sput v0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mWaitPopup:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mErrAlertPopup:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$5;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$5;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mGetCallWaitingComplete:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$6;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$6;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSetOptionComplete:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$7;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$7;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$10;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$10;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mEnhancedVPHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$11;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$11;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mQueryVoicePrivacyComplete:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/CdmaAdditionalCallOptions$12;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$12;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CdmaAdditionalCallOptions;Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CdmaAdditionalCallOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/CdmaAdditionalCallOptions;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->dismissCallWaiting()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/CdmaAdditionalCallOptions;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->handleGetVPResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/CdmaAdditionalCallOptions;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->handleSetVPMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CdmaAdditionalCallOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->updateSummaryAutoAreaCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CdmaAdditionalCallOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->updateAutoAreaCodeOnOff(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CdmaAdditionalCallOptions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallVisible:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/CdmaAdditionalCallOptions;Landroid/os/AsyncResult;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->handleGetCWMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/CdmaAdditionalCallOptions;Lcom/android/phone/CdmaAdditionalCallOptions$AppState;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/phone/CdmaAdditionalCallOptions;->setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->handleSetCWMessage()V

    return-void
.end method

.method private deleteBusyDialog()V
    .locals 2

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " deleteBusyDialog mPrevBusyDialog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPrevBusyDialog:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ####"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPrevBusyDialog:I

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->removeDialog(I)V

    return-void
.end method

.method private dismissCallWaiting()V
    .locals 1

    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->finish()V

    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private handleGetCWMessage(Landroid/os/AsyncResult;)I
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "handleGetCWMessage: Error getting CW enable state."

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0xc8

    :goto_0
    return v1

    :cond_1
    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "handleGetCWMessage: CW enable state successfully queried."

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncCWState: Setting UI state consistent with CW enable state of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v1, v0, v6

    if-ne v1, v5, :cond_6

    const-string v1, "ENABLED"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_3
    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service Class = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%08X"

    new-array v3, v5, [Ljava/lang/Object;

    aget v4, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_4
    aget v1, v0, v6

    if-ne v1, v5, :cond_5

    aget v1, v0, v5

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    const v1, 0x7f0a03f1

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->displayToast(Ljava/lang/String;)V

    :cond_5
    const/16 v1, 0x64

    goto :goto_0

    :cond_6
    const-string v1, "DISABLED"

    goto :goto_1
.end method

.method private handleGetVPResponse(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetVPResponse: ar.exception="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    sget-boolean v2, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "handleGetVPResponse: VP state successfully queried."

    invoke-static {v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v3

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enhanced_voice_privacy_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method private handleSetCWMessage()V
    .locals 3

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "handleSetCWMessage"

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mGetCallWaitingComplete:Landroid/os/Handler;

    const/16 v2, 0x190

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    return-void
.end method

.method private handleSetVPMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetVPResponse: ar.exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "handleSetVPResponse: re get"

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mQueryVoicePrivacyComplete:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CdmaAdditionalOtions"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onCreateMultiSIM()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v0

    if-ne v0, v2, :cond_3

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "multisim CG Mode"

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSimId:I

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateMultiSIM : mSimId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/CdmaAdditionalCallOptions;->mSimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_2
    sget v0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_1
    return-void

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "multisim GC Mode"

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_4
    sput v2, Lcom/android/phone/CdmaAdditionalCallOptions;->mSimId:I

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_1
.end method

.method private setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-ne p1, v0, :cond_1

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "setAppState: illegal error state without reason."

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;I)V

    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaAdditionalCallOptions$AppState;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState() mAppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,requestedState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",msgStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-ne p1, v0, :cond_2

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-ne p1, v0, :cond_4

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_3
    sparse-switch p2, :sswitch_data_0

    :goto_1
    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->deleteBusyDialog()V

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto :goto_1

    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->deleteBusyDialog()V

    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto :goto_1

    :cond_4
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_5
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$13;->$SwitchMap$com$android$phone$CdmaAdditionalCallOptions$AppState:[I

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_6
    :goto_2
    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-eq p1, v0, :cond_6

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: displaying busy dialog, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_8
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-ne p1, v0, :cond_9

    const/16 v0, 0x384

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto :goto_2

    :cond_9
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-ne p1, v0, :cond_6

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto :goto_2

    :pswitch_2
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-eq p1, v0, :cond_b

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->deleteBusyDialog()V

    goto :goto_2

    :pswitch_3
    sget-object v0, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    if-eq p1, v0, :cond_d

    sget-boolean v0, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->deleteBusyDialog()V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x320 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateAutoAreaCodeOnOff(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v3

    :goto_0
    const-string v0, "area_code_enabled"

    if-eqz v1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAutoAreaCodeOnOff : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1
.end method

.method private updateSummaryAutoAreaCode(Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSummaryAutoAreaCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    new-array v0, v4, [Ljava/lang/String;

    const-string v6, "%d"

    aput-object v6, v0, v5

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v5

    const v4, 0x7f0a02f1

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v0, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    const v5, 0x7f0a02f2

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->onCreateMultiSIM()V

    const v4, 0x7f070015

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "voiceprivacy_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    new-instance v4, Lcom/android/phone/CdmaAdditionalCallOptions$1;

    invoke-direct {v4, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$1;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->doActivate:Ljava/lang/Runnable;

    new-instance v4, Lcom/android/phone/CdmaAdditionalCallOptions$2;

    invoke-direct {v4, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$2;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    iput-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->doDeactivate:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a00b9

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setTitle(I)V

    sget-object v4, Lcom/android/phone/CdmaAdditionalCallOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    iput-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAppState:Lcom/android/phone/CdmaAdditionalCallOptions$AppState;

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mQueryVoicePrivacyComplete:Landroid/os/Handler;

    invoke-static {v5, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enhanced_voice_privacy_enabled"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_a

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "button_fdn_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mFdnSetting:Landroid/preference/PreferenceScreen;

    :cond_1
    const-string v4, "edittext_areacode_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    new-instance v5, Lcom/android/phone/CdmaAdditionalCallOptions$3;

    invoke-direct {v5, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$3;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    new-instance v5, Lcom/android/phone/CdmaAdditionalCallOptions$4;

    invoke-direct {v5, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$4;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    const-string v4, "chn_cdma_setting_on_all_rat"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "cdma call setting on all rat"

    invoke-static {v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    const-string v4, "china_cdma_call"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "remove_cdma_call_barring"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const-string v4, "voicecall_barring_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    const-string v4, "button_clir_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    const-string v4, "edittext_areacode_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-eq v4, v6, :cond_7

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_c

    :cond_7
    const-string v4, "feature_ctc"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "chn_cdma_setting_on_all_rat"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const/16 v4, 0xc8

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    :cond_8
    const-string v4, "sim card status is wrong"

    invoke-static {v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_9
    :goto_2
    return-void

    :cond_a
    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_b
    const-string v4, "button_clir_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_c
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "button_cdma_voicecall_forwarding"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v4, "voicecall_barring_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v4, "button_cw_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v4, "voiceprivacy_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v4, "button_fdn_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_d
    const-string v4, "disable_auto_area_code"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "edittext_areacode_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-boolean v4, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayDialog() mWaitPopup:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mWaitPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    const/16 v4, 0x64

    if-eq p1, v4, :cond_1

    const/16 v4, 0x384

    if-ne p1, v4, :cond_3

    :cond_1
    iput p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPrevBusyDialog:I

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    sparse-switch p1, :sswitch_data_0

    :cond_2
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v4, 0x7f0a00ea

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v4, 0x7f0a00e9

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v5, 0x258

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    const/16 v4, 0x12c

    if-eq p1, v4, :cond_4

    const/16 v4, 0xc8

    if-eq p1, v4, :cond_4

    const/16 v4, 0x320

    if-ne p1, v4, :cond_2

    :cond_4
    const v3, 0x7f0a00e8

    sparse-switch p1, :sswitch_data_1

    const v2, 0x7f0a00ed

    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0a0282

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/phone/CdmaAdditionalCallOptions$8;

    invoke-direct {v5, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$8;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v4, Lcom/android/phone/CdmaAdditionalCallOptions$9;

    invoke-direct {v4, p0}, Lcom/android/phone/CdmaAdditionalCallOptions$9;-><init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    :sswitch_2
    const v2, 0x7f0a00ec

    goto :goto_1

    :sswitch_3
    const v2, 0x7f0a00ee

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x384 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x12c -> :sswitch_2
        0x320 -> :sswitch_3
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->finish()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mFdnSetting:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/phone/FdnSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-boolean v1, Lcom/android/phone/CdmaAdditionalCallOptions;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick : mSimId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/CdmaAdditionalCallOptions;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    const-string v1, "CallSettingTab"

    sget v2, Lcom/android/phone/CdmaAdditionalCallOptions;->mSimId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallVisible:Z

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "area_code_value"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_additional_setting_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaAdditionalCallOptions;->updateSummaryAutoAreaCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========== onSharedPreferenceChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "voiceprivacy_preference"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mQueryVoicePrivacyComplete:Landroid/os/Handler;

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallVisible:Z

    return-void
.end method
