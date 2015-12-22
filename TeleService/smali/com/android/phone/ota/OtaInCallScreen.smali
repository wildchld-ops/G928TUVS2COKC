.class public Lcom/android/phone/ota/OtaInCallScreen;
.super Landroid/app/Activity;
.source "OtaInCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ota/OtaInCallScreen$2;
    }
.end annotation


# static fields
.field private static mFirstTimeAfterboot:Z

.field private static mIsDestroyed:Z


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mHandler:Landroid/os/Handler;

.field private mIsForegroundActivity:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRegisteredForPhoneStates:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/ota/OtaInCallScreen;->mFirstTimeAfterboot:Z

    sput-boolean v0, Lcom/android/phone/ota/OtaInCallScreen;->mIsDestroyed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mIsForegroundActivity:Z

    new-instance v0, Lcom/android/phone/ota/OtaInCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ota/OtaInCallScreen$1;-><init>(Lcom/android/phone/ota/OtaInCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ota/OtaInCallScreen;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/ota/OtaInCallScreen;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/ota/OtaInCallScreen;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/ota/OtaInCallScreen;)V
    .locals 0
    .param p0    # Lcom/android/phone/ota/OtaInCallScreen;

    invoke-direct {p0}, Lcom/android/phone/ota/OtaInCallScreen;->onPhoneStateChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/ota/OtaInCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0    # Lcom/android/phone/ota/OtaInCallScreen;
    .param p1    # Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/phone/ota/OtaInCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/ota/OtaInCallScreen;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .param p0    # Lcom/android/phone/ota/OtaInCallScreen;

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/ota/OtaInCallScreen;)V
    .locals 0
    .param p0    # Lcom/android/phone/ota/OtaInCallScreen;

    invoke-direct {p0}, Lcom/android/phone/ota/OtaInCallScreen;->updateScreen()V

    return-void
.end method

.method private checkOtaspStateOnResume()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v3, :cond_1

    const-string v3, "checkOtaspStateOnResume: no OtaUtils instance; nothing to do."

    invoke-direct {p0, v3}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v3, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "checkOtaspStateOnResume: app.cdmaOta* objects(s) not initialized"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object v3, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3}, Lcom/android/phone/OtaUtils;->getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    move-result-object v0

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-eq v0, v3, :cond_4

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v0, v3, :cond_5

    :cond_4
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v2, p0}, Lcom/android/phone/OtaUtils;->updateUiWidgets(Lcom/android/phone/ota/OtaInCallScreen;)V

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v0, v2, :cond_6

    const-string v2, "checkOtaspStateOnResume - in OTA Normal mode"

    invoke-direct {p0, v2}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    sget-object v2, Lcom/android/phone/ota/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v2}, Lcom/android/phone/ota/OtaInCallScreen;->setInCallScreenMode(Lcom/android/phone/ota/InCallUiState$InCallScreenMode;)V

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v0, v2, :cond_0

    const-string v2, "checkOtaspStateOnResume - in OTA END mode"

    invoke-direct {p0, v2}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    sget-object v2, Lcom/android/phone/ota/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v2}, Lcom/android/phone/ota/OtaInCallScreen;->setInCallScreenMode(Lcom/android/phone/ota/InCallUiState$InCallScreenMode;)V

    goto :goto_0

    :cond_7
    const-string v3, "checkOtaspStateOnResume - Set OTA NORMAL Mode"

    invoke-direct {p0, v3}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    sget-object v3, Lcom/android/phone/ota/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/ota/OtaInCallScreen;->setInCallScreenMode(Lcom/android/phone/ota/InCallUiState$InCallScreenMode;)V

    iget-object v3, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3, v2}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    goto :goto_0
.end method

.method private endInCallScreenSession(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endInCallScreenSession("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")...  phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    const-string v0, "OtaInCallScreen"

    const-string v1, "endInCallScreenSession(): FORCING a call to super.finish()!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    sget-object v0, Lcom/android/phone/ota/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/ota/OtaInCallScreen;->setInCallScreenMode(Lcom/android/phone/ota/InCallUiState$InCallScreenMode;)V

    return-void
.end method

.method private handleOtaspDisconnect()V
    .locals 2

    const-string v0, "OtaInCallScreen"

    const-string v1, "handleOtaspDisconnect()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_0

    const-string v0, "OtaInCallScreen"

    const-string v1, "handleOtaspDisconnect: otaUtils is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->onOtaspDisconnect()V

    goto :goto_0
.end method

.method private initInCallScreen()V
    .locals 1

    const-string v0, "initInCallScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method private internalResolveIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Intent;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalResolveIntent: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    const-string v1, "com.android.phone.DISPLAY_ACTIVATION_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received ACTION_DISPLAY_ACTIVATION_SCREEN intent on non-OTASP-capable device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    sget-object v1, Lcom/android/phone/ota/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v1}, Lcom/android/phone/ota/OtaInCallScreen;->setInCallScreenMode(Lcom/android/phone/ota/InCallUiState$InCallScreenMode;)V

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    goto :goto_0

    :cond_3
    const-string v1, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ACTION_PERFORM_CDMA_PROVISIONING received by InCallScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v1, "OtaInCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalResolveIntent: unexpected intent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "OtaInCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1    # Landroid/os/AsyncResult;

    iget-object v3, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getInCallUiState()Lcom/android/phone/ota/InCallUiState;

    move-result-object v1

    iget-object v3, v1, Lcom/android/phone/ota/InCallUiState;->inCallScreenMode:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    sget-object v4, Lcom/android/phone/ota/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v3, v3, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/phone/ota/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/ota/OtaInCallScreen;->setInCallScreenMode(Lcom/android/phone/ota/InCallUiState$InCallScreenMode;)V

    invoke-direct {p0}, Lcom/android/phone/ota/OtaInCallScreen;->updateScreen()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, v1, Lcom/android/phone/ota/InCallUiState;->inCallScreenMode:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    sget-object v4, Lcom/android/phone/ota/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v3, v3, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-eqz v3, :cond_3

    :cond_2
    const-string v3, "onDisconnect: OTA Call end already handled"

    invoke-direct {p0, v3}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "onDisconnect: this was an OTASP call!"

    invoke-direct {p0, v3}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/ota/OtaInCallScreen;->handleOtaspDisconnect()V

    goto :goto_0
.end method

.method private onPhoneStateChanged()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged: current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mIsForegroundActivity:Z

    if-nez v1, :cond_0

    const-string v1, "onPhoneStateChanged: Activity not in foreground! Bailing out..."

    invoke-direct {p0, v1}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/ota/OtaInCallScreen;->requestUpdateScreen()V

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->updateRequestWakeState()V

    goto :goto_0
.end method

.method private registerForPhoneStates()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mRegisteredForPhoneStates:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mRegisteredForPhoneStates:Z

    :cond_0
    return-void
.end method

.method private setInCallScreenMode(Lcom/android/phone/ota/InCallUiState$InCallScreenMode;)V
    .locals 2
    .param p1    # Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInCallScreenMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallUiState()Lcom/android/phone/ota/InCallUiState;

    move-result-object v0

    iput-object p1, v0, Lcom/android/phone/ota/InCallUiState;->inCallScreenMode:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    sget-object v0, Lcom/android/phone/ota/OtaInCallScreen$2;->$SwitchMap$com$android$phone$ota$InCallUiState$InCallScreenMode:[I

    invoke-virtual {p1}, Lcom/android/phone/ota/InCallUiState$InCallScreenMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/ota/OtaInCallScreen;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "WARNING: Setting mode to UNDEFINED but phone is OFFHOOK, skip cleanOtaScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private unregisterForPhoneStates()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mRegisteredForPhoneStates:Z

    return-void
.end method

.method private updateScreen()V
    .locals 4

    const-string v2, "updateScreen()..."

    invoke-direct {p0, v2}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getInCallUiState()Lcom/android/phone/ota/InCallUiState;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/ota/InCallUiState;->inCallScreenMode:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    iget-object v2, p0, Lcom/android/phone/ota/OtaInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - phone state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - inCallScreenMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/phone/ota/OtaInCallScreen;->mIsForegroundActivity:Z

    if-nez v2, :cond_1

    const-string v2, "- updateScreen: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v2}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/phone/ota/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    if-ne v0, v2, :cond_3

    const-string v2, "- updateScreen: OTA call state NORMAL (NOT updating in-call UI)..."

    invoke-direct {p0, v2}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v2}, Lcom/android/phone/OtaUtils;->otaShowProperScreen()V

    goto :goto_0

    :cond_2
    const-string v2, "OtaInCallScreen"

    const-string v3, "OtaUtils object is null, not showing any screen for that."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/phone/ota/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    if-ne v0, v2, :cond_5

    const-string v2, "- updateScreen: OTA call ended state (NOT updating in-call UI)..."

    invoke-direct {p0, v2}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    iget-object v2, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v2, v3, :cond_4

    const-string v2, "- updateScreen: OTA_STATUS_ACTIVATION"

    invoke-direct {p0, v2}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v2, :cond_0

    const-string v2, "- updateScreen: mApp.otaUtils is not null, call otaShowActivationScreen"

    invoke-direct {p0, v2}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v2}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    goto :goto_0

    :cond_4
    const-string v2, "- updateScreen: OTA Call end state for Dialogs"

    invoke-direct {p0, v2}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v2, :cond_0

    const-string v2, "- updateScreen: Show OTA Success Failure dialog"

    invoke-direct {p0, v2}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v2}, Lcom/android/phone/OtaUtils;->otaShowSuccessFailure()V

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/android/phone/ota/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    if-ne v0, v2, :cond_6

    const-string v2, "- updateScreen: call ended state..."

    invoke-direct {p0, v2}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    :cond_6
    const-string v2, "- updateScreen: updating the in-call UI..."

    invoke-direct {p0, v2}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public endInCallScreenSession()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endInCallScreenSession()... phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/ota/OtaInCallScreen;->endInCallScreenSession(Z)V

    return-void
.end method

.method public handleOtaCallEnd()V
    .locals 2

    const-string v0, "handleOtaCallEnd entering"

    invoke-direct {p0, v0}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getInCallUiState()Lcom/android/phone/ota/InCallUiState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/ota/InCallUiState;->inCallScreenMode:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/ota/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_1

    const-string v0, "handleOtaCallEnd - Set OTA Call End stater"

    invoke-direct {p0, v0}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ota/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/ota/OtaInCallScreen;->setInCallScreenMode(Lcom/android/phone/ota/InCallUiState$InCallScreenMode;)V

    invoke-direct {p0}, Lcom/android/phone/ota/OtaInCallScreen;->updateScreen()V

    :cond_1
    return-void
.end method

.method public isForegroundActivity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method public okToDialDTMFTones()Z
    .locals 5

    iget-object v3, p0, Lcom/android/phone/ota/OtaInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    iget-object v3, p0, Lcom/android/phone/ota/OtaInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v3, :cond_1

    :cond_0
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getInCallUiState()Lcom/android/phone/ota/InCallUiState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/ota/InCallUiState;->inCallScreenMode:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    sget-object v4, Lcom/android/phone/ota/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    if-eq v3, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[okToDialDTMFTones] foreground state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ringing state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", call screen mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getInCallUiState()Lcom/android/phone/ota/InCallUiState;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/ota/InCallUiState;->inCallScreenMode:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getInCallUiState()Lcom/android/phone/ota/InCallUiState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/ota/InCallUiState;->inCallScreenMode:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    sget-object v2, Lcom/android/phone/ota/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getInCallUiState()Lcom/android/phone/ota/InCallUiState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/ota/InCallUiState;->inCallScreenMode:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    sget-object v2, Lcom/android/phone/ota/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1, v0}, Lcom/android/phone/OtaUtils;->onClickHandler(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->userActivity()V

    return-void

    :cond_1
    const-string v1, "OtaInCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click from ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (View = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/ota/OtaInCallScreen;->mIsDestroyed:Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/ota/OtaInCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    const v0, 0x7f04006a

    invoke-virtual {p0, v0}, Lcom/android/phone/ota/OtaInCallScreen;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/phone/ota/OtaInCallScreen;->initInCallScreen()V

    invoke-direct {p0}, Lcom/android/phone/ota/OtaInCallScreen;->registerForPhoneStates()V

    if-nez p1, :cond_0

    const-string v0, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v0}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ota/OtaInCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ota/OtaInCallScreen;->internalResolveIntent(Landroid/content/Intent;)V

    const-string v0, "start_ota_screen_directly"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/ota/OtaInCallScreen;->mFirstTimeAfterboot:Z

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const-string v0, "OtaInCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy()...  this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/ota/OtaInCallScreen;->mIsDestroyed:Z

    invoke-direct {p0}, Lcom/android/phone/ota/OtaInCallScreen;->unregisterForPhoneStates()V

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->clearUiWidgets()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/phone/ota/OtaInCallScreen;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/phone/ota/OtaInCallScreen;->internalResolveIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    const-string v0, "onPause()..."

    invoke-direct {p0, v0}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mIsForegroundActivity:Z

    return-void
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x0

    const-string v2, "onResume()..."

    invoke-direct {p0, v2}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-boolean v2, Lcom/android/phone/ota/OtaInCallScreen;->mFirstTimeAfterboot:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v2, v3}, Lcom/android/phone/OtaUtils;->otaPlaceCall(Z)V

    invoke-virtual {p0}, Lcom/android/phone/ota/OtaInCallScreen;->requestUpdateScreen()V

    iget-object v2, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->userActivity()V

    sput-boolean v3, Lcom/android/phone/ota/OtaInCallScreen;->mFirstTimeAfterboot:Z

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/ota/OtaInCallScreen;->mIsForegroundActivity:Z

    iget-object v2, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getInCallUiState()Lcom/android/phone/ota/InCallUiState;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/ota/OtaInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/phone/ota/OtaInCallScreen;->checkOtaspStateOnResume()Z

    move-result v1

    :cond_1
    iget-object v2, p0, Lcom/android/phone/ota/OtaInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/phone/ota/InCallUiState;->inCallScreenMode:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    sget-object v3, Lcom/android/phone/ota/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    if-eq v2, v3, :cond_2

    iget-object v2, v0, Lcom/android/phone/ota/InCallUiState;->inCallScreenMode:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    sget-object v3, Lcom/android/phone/ota/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/ota/InCallUiState$InCallScreenMode;

    if-ne v2, v3, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/ota/OtaInCallScreen;->updateScreen()V

    :cond_3
    return-void
.end method

.method protected onStop()V
    .locals 3

    const-string v1, "onStop()..."

    invoke-direct {p0, v1}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v1, :cond_0

    const-string v1, "- onStop: calling finish() to clear activity history..."

    invoke-direct {p0, v1}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    :cond_0
    return-void
.end method

.method public requestCloseOtaFailureNotice(J)V
    .locals 3
    .param p1    # J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseOtaFailureNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public requestCloseSpcErrorNotice(J)V
    .locals 3
    .param p1    # J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseSpcErrorNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public requestUpdateScreen()V
    .locals 2

    const/16 v1, 0x7a

    const-string v0, "requestUpdateScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/ota/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/ota/OtaInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1    # Lcom/android/internal/telephony/Phone;

    iput-object p1, p0, Lcom/android/phone/ota/OtaInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method
