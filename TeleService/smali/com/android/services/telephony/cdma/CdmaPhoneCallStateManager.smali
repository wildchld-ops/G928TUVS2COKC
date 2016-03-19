.class public Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;
.super Ljava/lang/Object;
.source "CdmaPhoneCallStateManager.java"


# static fields
.field private static final sInstance:Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;


# instance fields
.field private mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;

    invoke-direct {v0}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;-><init>()V

    sput-object v0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->sInstance:Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCdmaPhoneCallState()Lcom/android/phone/CdmaPhoneCallState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    return-void
.end method

.method public static getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;
    .locals 1

    sget-object v0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->sInstance:Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;

    return-object v0
.end method


# virtual methods
.method public answerCall()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    goto :goto_0
.end method

.method public isCurrentMergeCapableState()Z
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentMergeState()Z
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentSwapState()Z
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMergeCallsCapable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleActive()Z
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThrwayActive()Z
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeCalls()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    :cond_0
    return-void
.end method

.method public outgoingCall()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    goto :goto_0
.end method

.method public resetCdmaPhoneCallState()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->resetCdmaPhoneCallState()V

    return-void
.end method

.method public setThreeWayCallOrigState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0, p1}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    :cond_0
    return-void
.end method
