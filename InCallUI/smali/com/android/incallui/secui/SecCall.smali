.class public final Lcom/android/incallui/secui/SecCall;
.super Ljava/lang/Object;
.source "SecCall.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mAliveParticipantNumber:Ljava/lang/String;

.field private mCVOStatus:I

.field private mCallCapabilities:I

.field private mCallerDisplayName:Ljava/lang/String;

.field private mCdnipNumber:Ljava/lang/String;

.field private mCurrentCameraId:I

.field private mDomain:I

.field private mEndEarly:Z

.field private mFirstCallerForIMSConference:Ljava/lang/String;

.field private mHDIcon:I

.field private mHeldVideo:Z

.field private mHoldPreview:Z

.field public mHoldStateOfTheOtherParty:Z

.field private mIMSConferenceStateChanged:Z

.field private mIsEpdgCall:I

.field private mLineContolEvent:B

.field private mModifyProgressingType:I

.field private mNameForIMSConference:Ljava/lang/String;

.field private mNumberForIMSConference:Ljava/lang/String;

.field private mReceivedCall:B

.field private mSecCallExtra:Lcom/android/services/telephony/common/SecCallExtra;

.field public mSecVideoState:I

.field public mSessionId:I

.field private mShowGraySurface:Z

.field private mSubId:I

.field private mSupportSessionModify:Z

.field private mType:I

.field private mVideoResolution:I


# direct methods
.method public constructor <init>(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/secui/SecCall;->mSecCallExtra:Lcom/android/services/telephony/common/SecCallExtra;

    iput v1, p0, Lcom/android/incallui/secui/SecCall;->mType:I

    iput v2, p0, Lcom/android/incallui/secui/SecCall;->mDomain:I

    iput v2, p0, Lcom/android/incallui/secui/SecCall;->mVideoResolution:I

    iput v3, p0, Lcom/android/incallui/secui/SecCall;->mModifyProgressingType:I

    iput v1, p0, Lcom/android/incallui/secui/SecCall;->mHDIcon:I

    iput v2, p0, Lcom/android/incallui/secui/SecCall;->mCVOStatus:I

    iput v1, p0, Lcom/android/incallui/secui/SecCall;->mIsEpdgCall:I

    iput-object v0, p0, Lcom/android/incallui/secui/SecCall;->mNameForIMSConference:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/secui/SecCall;->mNumberForIMSConference:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/secui/SecCall;->mFirstCallerForIMSConference:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/secui/SecCall;->mAliveParticipantNumber:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/incallui/secui/SecCall;->mIMSConferenceStateChanged:Z

    iput-object v0, p0, Lcom/android/incallui/secui/SecCall;->mCdnipNumber:Ljava/lang/String;

    iput v1, p0, Lcom/android/incallui/secui/SecCall;->mSubId:I

    iput-boolean v1, p0, Lcom/android/incallui/secui/SecCall;->mEndEarly:Z

    iput-boolean v1, p0, Lcom/android/incallui/secui/SecCall;->mSupportSessionModify:Z

    sget v0, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_NONE:I

    iput v0, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    iput-boolean v1, p0, Lcom/android/incallui/secui/SecCall;->mHoldStateOfTheOtherParty:Z

    iput v1, p0, Lcom/android/incallui/secui/SecCall;->mCallCapabilities:I

    iput-boolean v1, p0, Lcom/android/incallui/secui/SecCall;->mHoldPreview:Z

    iput-boolean v1, p0, Lcom/android/incallui/secui/SecCall;->mHeldVideo:Z

    iput v1, p0, Lcom/android/incallui/secui/SecCall;->mSessionId:I

    iput-boolean v1, p0, Lcom/android/incallui/secui/SecCall;->mShowGraySurface:Z

    iput v3, p0, Lcom/android/incallui/secui/SecCall;->mCurrentCameraId:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->setCallerDisplayName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->setAddress(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secui/SecCall;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAssisted()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getSecCallExtra()Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getAssisted()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallCapabilities()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/secui/SecCall;->mCallCapabilities:I

    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secui/SecCall;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCdnipNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secui/SecCall;->mCdnipNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentCameraId()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/secui/SecCall;->mCurrentCameraId:I

    return v0
.end method

.method public getDomain()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/secui/SecCall;->mDomain:I

    return v0
.end method

.method public getEpdgCall()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/incallui/secui/SecCall;->mIsEpdgCall:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHDIcon()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/secui/SecCall;->mHDIcon:I

    return v0
.end method

.method public getHoldStateOfTheOtherParty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/secui/SecCall;->mHoldStateOfTheOtherParty:Z

    return v0
.end method

.method public getLineCtrlEvent()B
    .locals 1

    iget-byte v0, p0, Lcom/android/incallui/secui/SecCall;->mLineContolEvent:B

    return v0
.end method

.method public getModifyProgressingType()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/secui/SecCall;->mModifyProgressingType:I

    return v0
.end method

.method public getSecCallExtra()Lcom/android/services/telephony/common/SecCallExtra;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secui/SecCall;->mSecCallExtra:Lcom/android/services/telephony/common/SecCallExtra;

    return-object v0
.end method

.method public getSecVideoState()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/secui/SecCall;->mSessionId:I

    return v0
.end method

.method public getSubId()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/secui/SecCall;->mSubId:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/secui/SecCall;->mType:I

    return v0
.end method

.method public getVideoResolution()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/secui/SecCall;->mVideoResolution:I

    return v0
.end method

.method public isHeldVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/secui/SecCall;->mHeldVideo:Z

    return v0
.end method

.method public isHoldPreview()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/secui/SecCall;->mHoldPreview:Z

    return v0
.end method

.method public isIMSConferenceCall()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secui/SecCall;->mSecCallExtra:Lcom/android/services/telephony/common/SecCallExtra;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secui/SecCall;->mSecCallExtra:Lcom/android/services/telephony/common/SecCallExtra;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->isIMSConferenceCall()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModifyProgressing()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getModifyProgressingType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPSDomain()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getDomain()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowGraySurface()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/secui/SecCall;->mShowGraySurface:Z

    return v0
.end method

.method public isVideoCall()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->isModifyProgressing()Z

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

.method public resetModifyProgressingType(I)V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getModifyProgressingType()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    if-eq p1, v2, :cond_1

    if-eq p1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/incallui/secui/SecCall;->setModifyProgressingType(I)V

    :cond_1
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secui/SecCall;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setAliveParticipantNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secui/SecCall;->mAliveParticipantNumber:Ljava/lang/String;

    return-void
.end method

.method public setCVOStatus(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/secui/SecCall;->mCVOStatus:I

    return-void
.end method

.method public setCallCapabilities(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/secui/SecCall;->mCallCapabilities:I

    return-void
.end method

.method public setCallerDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secui/SecCall;->mCallerDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setCdnipNumber(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getCdnipNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/incallui/secui/SecCall;->mCdnipNumber:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setCurrentCameraId(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/secui/SecCall;->mCurrentCameraId:I

    return-void
.end method

.method public setDomain(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/secui/SecCall;->mDomain:I

    return-void
.end method

.method public setEndEarly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/secui/SecCall;->mEndEarly:Z

    return-void
.end method

.method public setEpdgCall(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/incallui/secui/SecCall;->mIsEpdgCall:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFirstCallerForIMSConference(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secui/SecCall;->mFirstCallerForIMSConference:Ljava/lang/String;

    return-void
.end method

.method public setHDIcon(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getHDIcon()I

    move-result v2

    if-eq p1, v2, :cond_0

    iput p1, p0, Lcom/android/incallui/secui/SecCall;->mHDIcon:I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.phone.ACTION_HD_VOICE_CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "HD_STATUS"

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getHDIcon()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setHeldVideo(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/incallui/secui/SecCall;->mHeldVideo:Z

    iget-boolean v0, p0, Lcom/android/incallui/secui/SecCall;->mHeldVideo:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->HELD_VIDEO:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->HELD_VIDEO:I

    and-int/2addr v0, v1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->HELD_VIDEO:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->HELD_VIDEO:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    goto :goto_0
.end method

.method public setHoldPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/secui/SecCall;->mHoldPreview:Z

    return-void
.end method

.method public setHoldStateOfTheOtherParty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/secui/SecCall;->mHoldStateOfTheOtherParty:Z

    return-void
.end method

.method public setIMSConferenceStateChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/secui/SecCall;->mIMSConferenceStateChanged:Z

    return-void
.end method

.method public setLineCtrlEvent(B)V
    .locals 1

    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getLineCtrlEvent()B

    move-result v0

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    iput-byte p1, p0, Lcom/android/incallui/secui/SecCall;->mLineContolEvent:B

    :cond_0
    return-void
.end method

.method public setModifyProgressingType(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/secui/SecCall;->mModifyProgressingType:I

    return-void
.end method

.method public setNameForIMSConference(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secui/SecCall;->mNameForIMSConference:Ljava/lang/String;

    return-void
.end method

.method public setNumberForIMSConference(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secui/SecCall;->mNumberForIMSConference:Ljava/lang/String;

    return-void
.end method

.method public setReceivedCall(B)V
    .locals 0

    iput-byte p1, p0, Lcom/android/incallui/secui/SecCall;->mReceivedCall:B

    return-void
.end method

.method public setSecCallExtra(Lcom/android/services/telephony/common/SecCallExtra;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secui/SecCall;->mSecCallExtra:Lcom/android/services/telephony/common/SecCallExtra;

    return-void
.end method

.method public setSecVideoState(I)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v0

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_NONE:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getModifyProgressingType()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    iput v1, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    iput-boolean v6, p0, Lcom/android/incallui/secui/SecCall;->mShowGraySurface:Z

    :goto_0
    return-void

    :cond_0
    if-ne v0, v4, :cond_a

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    if-ne p1, v8, :cond_1

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->INCOMING:I

    or-int/2addr v1, v2

    :cond_1
    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    const/4 v2, 0x7

    if-ne p1, v2, :cond_3

    :cond_2
    sget v2, Lcom/android/incallui/secservice/SecVideoState;->OUTGOING:I

    or-int/2addr v1, v2

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->isIMSConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->CONFERENCE:I

    or-int/2addr v1, v2

    :cond_4
    iput-boolean v5, p0, Lcom/android/incallui/secui/SecCall;->mShowGraySurface:Z

    :cond_5
    :goto_1
    const/16 v2, 0x8

    if-ne p1, v2, :cond_6

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->HOLDING:I

    or-int/2addr v1, v2

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getHoldStateOfTheOtherParty()Z

    move-result v2

    if-eqz v2, :cond_7

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    or-int/2addr v1, v2

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->isHeldVideo()Z

    move-result v2

    if-eqz v2, :cond_8

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->HELD_VIDEO:I

    or-int/2addr v1, v2

    :cond_8
    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_NONE:I

    if-ne v1, v2, :cond_9

    iput-boolean v6, p0, Lcom/android/incallui/secui/SecCall;->mShowGraySurface:Z

    :cond_9
    iput v1, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    goto :goto_0

    :cond_a
    if-ne v0, v5, :cond_b

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    goto :goto_1

    :cond_b
    if-ne v0, v7, :cond_c

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    goto :goto_1

    :cond_c
    if-ne v0, v8, :cond_15

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_REQUEST:I

    iget v2, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    and-int/2addr v2, v3

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    if-ne v2, v3, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getModifyProgressingType()I

    move-result v2

    if-ne v2, v4, :cond_d

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VS_TO_VIDEO:I

    or-int/2addr v1, v2

    :cond_d
    :goto_2
    iget v2, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VS_TO_VIDEO:I

    and-int/2addr v2, v3

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VS_TO_VIDEO:I

    if-ne v2, v3, :cond_11

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VS_TO_VIDEO:I

    or-int/2addr v1, v2

    goto :goto_1

    :cond_e
    iget v2, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_NONE:I

    if-eq v2, v3, :cond_f

    iget v2, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_DUMMY:I

    and-int/2addr v2, v3

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_DUMMY:I

    if-ne v2, v3, :cond_d

    :cond_f
    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getModifyProgressingType()I

    move-result v2

    if-ne v2, v4, :cond_10

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VIDEO:I

    or-int/2addr v1, v2

    goto :goto_2

    :cond_10
    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getModifyProgressingType()I

    move-result v2

    if-ne v2, v5, :cond_d

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    or-int/2addr v1, v2

    goto :goto_2

    :cond_11
    iget v2, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VIDEO:I

    and-int/2addr v2, v3

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VIDEO:I

    if-ne v2, v3, :cond_12

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VIDEO:I

    or-int/2addr v1, v2

    goto :goto_1

    :cond_12
    iget v2, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    and-int/2addr v2, v3

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    if-ne v2, v3, :cond_13

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    or-int/2addr v1, v2

    goto/16 :goto_1

    :cond_13
    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getModifyProgressingType()I

    move-result v2

    if-ne v2, v4, :cond_14

    iget v2, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    and-int/2addr v2, v3

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    if-eq v2, v3, :cond_14

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VIDEO:I

    or-int/2addr v1, v2

    goto/16 :goto_1

    :cond_14
    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getModifyProgressingType()I

    move-result v2

    if-ne v2, v5, :cond_5

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    or-int/2addr v1, v2

    goto/16 :goto_1

    :cond_15
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1c

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    iget v2, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    and-int/2addr v2, v3

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    if-ne v2, v3, :cond_17

    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getModifyProgressingType()I

    move-result v2

    if-ne v2, v4, :cond_16

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VS_TO_VIDEO:I

    or-int/2addr v1, v2

    :cond_16
    :goto_3
    iget v2, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VS_TO_VIDEO:I

    and-int/2addr v2, v3

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VS_TO_VIDEO:I

    if-ne v2, v3, :cond_1a

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VS_TO_VIDEO:I

    or-int/2addr v1, v2

    goto/16 :goto_1

    :cond_17
    iget v2, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_NONE:I

    if-eq v2, v3, :cond_18

    iget v2, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_DUMMY:I

    and-int/2addr v2, v3

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_DUMMY:I

    if-ne v2, v3, :cond_16

    :cond_18
    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getModifyProgressingType()I

    move-result v2

    if-ne v2, v4, :cond_19

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VIDEO:I

    or-int/2addr v1, v2

    goto :goto_3

    :cond_19
    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getModifyProgressingType()I

    move-result v2

    if-ne v2, v7, :cond_16

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    or-int/2addr v1, v2

    goto :goto_3

    :cond_1a
    iget v2, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VIDEO:I

    and-int/2addr v2, v3

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VIDEO:I

    if-ne v2, v3, :cond_1b

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VIDEO:I

    or-int/2addr v1, v2

    goto/16 :goto_1

    :cond_1b
    iget v2, p0, Lcom/android/incallui/secui/SecCall;->mSecVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    and-int/2addr v2, v3

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    if-ne v2, v3, :cond_5

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    or-int/2addr v1, v2

    goto/16 :goto_1

    :cond_1c
    invoke-virtual {p0}, Lcom/android/incallui/secui/SecCall;->getModifyProgressingType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_REQUEST:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_DUMMY:I

    or-int v1, v2, v3

    goto/16 :goto_1
.end method

.method public setSessionId(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/secui/SecCall;->mSessionId:I

    return-void
.end method

.method public setSubId(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/secui/SecCall;->mSubId:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/secui/SecCall;->mType:I

    return-void
.end method

.method public setVideoResolution(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/secui/SecCall;->mVideoResolution:I

    return-void
.end method

.method public updateFromSecCallExtra(Lcom/android/services/telephony/common/SecCallExtra;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/secui/SecCall;->setSecCallExtra(Lcom/android/services/telephony/common/SecCallExtra;)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->resetModifyProgressingType(I)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->setType(I)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->setDomain(I)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getVideoResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->setVideoResolution(I)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->setSessionId(I)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getReceivedCall()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->setReceivedCall(B)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgCall()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->setEpdgCall(Z)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getNameForIMSConference()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->setNameForIMSConference(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getNumberForIMSConference()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->setNumberForIMSConference(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getFirstCallerForIMSConference()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->setFirstCallerForIMSConference(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->isIMSConferenceStateChanged()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->setIMSConferenceStateChanged(Z)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getAliveParticipantNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->setAliveParticipantNumber(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->setSubId(I)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getEndEarly()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->setEndEarly(Z)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->isLineCtrl()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->setLineCtrlEvent(B)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getCdnipNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->setCdnipNumber(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getHDIcon()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->setHDIcon(I)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getCVOStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->setCVOStatus(I)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getHoldStateOfTheOtherParty()B

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/secui/SecCall;->setHoldStateOfTheOtherParty(Z)V

    invoke-virtual {p0, p2}, Lcom/android/incallui/secui/SecCall;->setSecVideoState(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public updateFromTelecommCall(Landroid/telecom/Call;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/incallui/secui/SecCall;->updateFromSecCallExtra(Lcom/android/services/telephony/common/SecCallExtra;I)V

    return-void
.end method

.method public upeateModifyRequestDummyType()V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->setModifyProgressingType(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/incallui/secui/SecCall;->setVideoResolution(I)V

    return-void
.end method
