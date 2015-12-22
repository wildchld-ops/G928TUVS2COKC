.class public Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;
.super Lcom/android/incallui/SecVideoCallButtonVGAFragment;
.source "SecVideoCallButtonVGAUsaFragment.java"


# instance fields
.field private mAcceptButton:Landroid/view/View;

.field private mCameraButtonViewStub:Landroid/view/ViewStub;

.field private mCameraOffButton:Landroid/view/View;

.field private mCameraOnButton:Landroid/view/View;

.field private mCancelButton:Landroid/view/View;

.field private mChangeToVideoButton:Landroid/widget/Button;

.field private mChangeToVideoShareButton:Landroid/widget/Button;

.field private mDeclineButton:Landroid/view/View;

.field private mHiddenButtonViewStub:Landroid/view/ViewStub;

.field private mHiddenGsmEndCall:Landroid/widget/Button;

.field private mHiddenGsmMute:Landroid/widget/Button;

.field private mHiddenGsmSwitchCamera:Landroid/widget/Button;

.field private mHideMeButton:Landroid/view/View;

.field private mModifyCallButtonView:Landroid/view/View;

.field private mModifyCallButtonViewStub:Landroid/view/ViewStub;

.field private mShowMeButton:Landroid/view/View;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mStayOnVoiceButton:Landroid/widget/Button;

.field private mSwitchCameraButtonVzw:Landroid/view/View;

.field private mVideoCallButton:Landroid/view/View;

.field private mVoiceCallButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;-><init>()V

    return-void
.end method

.method private checkAndHandleCameraOffButton(Lcom/android/incallui/Call;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall(Lcom/android/incallui/Call;)Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    and-int/2addr v1, v2

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecModifyCallProcessor;->requestModifyCall(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    and-int/2addr v1, v2

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    if-ne v1, v2, :cond_0

    const-string v1, "concept_usa_vzw"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecModifyCallProcessor;->requestModifyCall(I)Z

    goto :goto_0
.end method

.method private checkAndHandleCameraOnButton(Lcom/android/incallui/Call;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall(Lcom/android/incallui/Call;)Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    and-int/2addr v1, v2

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecModifyCallProcessor;->requestModifyCall(I)Z

    :cond_0
    return-void
.end method

.method private checkAndHandleCancelButton(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall(Lcom/android/incallui/Call;)Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    and-int/2addr v1, v2

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecModifyCallProcessor;->rejectModifyCall()V

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget v1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_DUMMY:I

    and-int/2addr v1, v2

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_DUMMY:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->cancelModifyRequestDummyType()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    goto :goto_1
.end method

.method private checkAndHandleHideMeButton(Lcom/android/incallui/Call;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall(Lcom/android/incallui/Call;)Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    and-int/2addr v1, v2

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "VIDEO_SHARE_RX"

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/SecModifyCallProcessor;->respondModifyCall(ZLjava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecModifyCallProcessor;->requestModifyCall(I)Z

    goto :goto_0
.end method

.method private checkAndHandleShowMeButton(Lcom/android/incallui/Call;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall(Lcom/android/incallui/Call;)Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v0

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    and-int/2addr v2, v3

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecModifyCallProcessor;->acceptModifyCall()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/incallui/SecModifyCallProcessor;->requestModifyCall(I)Z

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/high16 v2, 0x40000

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->getHoldStateOfTheOtherParty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/Call;->cancelModifyRequestDummyType()V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/incallui/SecModifyCallProcessor;->requestModifyCall(I)Z

    goto :goto_1
.end method

.method private checkAndHandleVideoCallButton(Lcom/android/incallui/Call;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall(Lcom/android/incallui/Call;)Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    and-int/2addr v1, v2

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecModifyCallProcessor;->acceptModifyCall()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v1, 0x40000

    invoke-virtual {p1, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->getHoldStateOfTheOtherParty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->cancelModifyRequestDummyType()V

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecModifyCallProcessor;->requestModifyCall(I)Z

    goto :goto_1
.end method

.method private checkAndHandleVoiceCallButton()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecModifyCallProcessor;->requestModifyCall(I)Z

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private disableCameraButtonsForVzw(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->enableSwitchCamera(Z)V

    goto :goto_0
.end method

.method private enableModifyCallButtons(Z)V
    .locals 1

    const-string v0, "concept_usa_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v0, "concept_usa_att"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "concept_usa_tmo"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ui_for_mpcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "concept_canada_common"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private isPossibleToEnableSwitchCameraButton(Lcom/android/incallui/secservice/SecVideoCall;)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p1, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    and-int/2addr v2, v1

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    if-ne v2, v3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_REQUEST:I

    and-int/2addr v2, v1

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_REQUEST:I

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    and-int/2addr v2, v1

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    if-ne v2, v3, :cond_4

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    and-int/2addr v2, v1

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    if-ne v2, v3, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    sget v2, Lcom/android/incallui/secservice/SecVideoState;->OUTGOING:I

    and-int/2addr v2, v1

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->OUTGOING:I

    if-ne v2, v3, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateButtonForCallHoldState()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->getHoldStateOfTheOtherParty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->enableSwitchCamera(Z)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method private updateCameraButtonForVzw(ZZ)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateInCallButtonLayout()V
    .locals 11

    const v10, 0x7f0d01b8

    const v9, 0x7f0d015b

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a020c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a020d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a020e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a02cf

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a02d0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a02d1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    :cond_2
    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d019a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v6, v4, v5, v4, v0}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    :cond_3
    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v4, v5, v4, v0}, Landroid/widget/ToggleButton;->setPaddingRelative(IIII)V

    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v3}, Landroid/widget/ToggleButton;->setCompoundDrawablePadding(I)V

    :cond_4
    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0192

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v6, v4, v5, v4, v0}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    :cond_5
    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v4, v5, v4, v0}, Landroid/widget/ToggleButton;->setPaddingRelative(IIII)V

    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v3}, Landroid/widget/ToggleButton;->setCompoundDrawablePadding(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/secui/SecUiAdapter;->getCurrentOrientation()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    const/4 v4, 0x1

    :cond_7
    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0283

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v6, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private updateSpeakerButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getAudioMode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateVideoCallButtonsVZW(I)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVideoCallButtonsVZW: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/incallui/secservice/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->isDialpadVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    :goto_0
    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    and-int/2addr v3, p1

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    if-ne v3, v4, :cond_6

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->OUTGOING:I

    and-int/2addr v3, p1

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->OUTGOING:I

    if-ne v3, v4, :cond_5

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->updateSpeakerButton()V

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->updateCameraButtonForVzw(ZZ)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->enableSwitchCamera(Z)V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    and-int/2addr v3, p1

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    if-ne v3, v4, :cond_7

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    and-int/2addr v3, p1

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    if-ne v3, v4, :cond_8

    const/4 v1, 0x1

    const/4 v0, 0x1

    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_REQUEST:I

    and-int/2addr v3, p1

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_REQUEST:I

    if-ne v3, v4, :cond_9

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    goto :goto_1

    :cond_9
    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    and-int/2addr v3, p1

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    if-ne v3, v4, :cond_2

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    and-int/2addr v3, p1

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    if-ne v3, v4, :cond_a

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_1

    :cond_a
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected enableSwitchCamera(Z)V
    .locals 1

    const-string v0, "concept_usa_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSwitchCameraButtonVzw:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSwitchCameraButtonVzw:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->enableSwitchCamera(Z)V

    goto :goto_0
.end method

.method public hideVideoTogglingViews()V
    .locals 1

    const-string v0, "clean_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->showPrimaryCallBanner(Z)V

    :cond_0
    return-void
.end method

.method protected isPossibleToHideButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyMediaEvent(Lcom/android/incallui/secservice/SecVideoCall;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->notifyMediaEvent(Lcom/android/incallui/secservice/SecVideoCall;I)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->isPossibleToEnableSwitchCameraButton(Lcom/android/incallui/secservice/SecVideoCall;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->enableSwitchCamera(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick(View "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")..."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->speakerClicked()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->checkAndHandleCameraOffButton(Lcom/android/incallui/Call;)V

    invoke-direct {p0, v4}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->disableCameraButtonsForVzw(Z)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->checkAndHandleCameraOnButton(Lcom/android/incallui/Call;)V

    invoke-direct {p0, v3}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->disableCameraButtonsForVzw(Z)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->switchCameraClicked()V

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecModifyCallProcessor;->acceptModifyCall()V

    invoke-direct {p0, v4}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->enableModifyCallButtons(Z)V

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecModifyCallProcessor;->acceptModifyCall()V

    invoke-direct {p0, v4}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->enableModifyCallButtons(Z)V

    goto :goto_0

    :sswitch_6
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->getModifyProgressingType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->cancelModifyRequestDummyType()V

    :goto_1
    invoke-direct {p0, v4}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->enableModifyCallButtons(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecModifyCallProcessor;->rejectModifyCall()V

    goto :goto_1

    :sswitch_7
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->onEndCallButtonClicked()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_2

    :sswitch_9
    invoke-direct {p0, v0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->checkAndHandleVideoCallButton(Lcom/android/incallui/Call;)V

    goto :goto_0

    :sswitch_a
    invoke-direct {p0, v0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->checkAndHandleShowMeButton(Lcom/android/incallui/Call;)V

    goto :goto_0

    :sswitch_b
    invoke-direct {p0, v0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->checkAndHandleHideMeButton(Lcom/android/incallui/Call;)V

    goto :goto_0

    :sswitch_c
    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->checkAndHandleVoiceCallButton()V

    goto/16 :goto_0

    :sswitch_d
    invoke-direct {p0, v0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->checkAndHandleCancelButton(Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f100032 -> :sswitch_4
        0x7f1001b4 -> :sswitch_9
        0x7f1001b5 -> :sswitch_c
        0x7f10024d -> :sswitch_0
        0x7f1002b5 -> :sswitch_3
        0x7f1002b7 -> :sswitch_7
        0x7f1002b8 -> :sswitch_8
        0x7f1002eb -> :sswitch_1
        0x7f1002ec -> :sswitch_2
        0x7f1002ed -> :sswitch_3
        0x7f100306 -> :sswitch_a
        0x7f100307 -> :sswitch_b
        0x7f100308 -> :sswitch_d
        0x7f100309 -> :sswitch_9
        0x7f10030a -> :sswitch_d
        0x7f10030d -> :sswitch_5
        0x7f10030e -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSwitchCameraButtonVzw:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSwitchCameraButtonVzw:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHiddenGsmSwitchCamera:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHiddenGsmSwitchCamera:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHiddenGsmEndCall:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHiddenGsmEndCall:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHiddenGsmMute:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHiddenGsmMute:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    return-void
.end method

.method public onSecVideoStateChanged(Lcom/android/incallui/secservice/SecVideoCall;)V
    .locals 1

    iget-object v0, p1, Lcom/android/incallui/secservice/SecVideoCall;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/incallui/secservice/SecVideoCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const v10, 0x7f100305

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0a01dd

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v5, "concept_usa_vzw"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const v5, 0x7f10024d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    const-string v5, "disable_button_sound_effects"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_0
    const v5, 0x7f1002bd

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraButtonViewStub:Landroid/view/ViewStub;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraButtonViewStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_1
    const v5, 0x7f1002eb

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOffButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v5, 0x7f1002ec

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCameraOnButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v5, 0x7f1002ed

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSwitchCameraButtonVzw:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSwitchCameraButtonVzw:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSwitchCameraButtonVzw:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v5, 0x7f1002bb

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_5
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    const v5, 0x7f100032

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const v5, 0x7f10030d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const v5, 0x7f10030e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    :cond_9
    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mStopButton:Landroid/widget/Button;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    :cond_a
    :goto_0
    iput-boolean v8, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mIsReadyToShowView:Z

    iput v7, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoState:I

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->updateCallButtons()V

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->updateInCallButtonLayout()V

    return-void

    :cond_b
    const-string v5, "concept_usa_att"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "concept_usa_tmo"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "ui_for_mpcs"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "concept_canada_common"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_c
    const v5, 0x7f1002be

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHiddenButtonViewStub:Landroid/view/ViewStub;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHiddenButtonViewStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHiddenButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_d
    const v5, 0x7f1002b4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallHiddenButtons:Landroid/view/View;

    const v5, 0x7f1002b5

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHiddenGsmSwitchCamera:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHiddenGsmSwitchCamera:Landroid/widget/Button;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHiddenGsmSwitchCamera:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    const v5, 0x7f1002b7

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHiddenGsmEndCall:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHiddenGsmEndCall:Landroid/widget/Button;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHiddenGsmEndCall:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    const v5, 0x7f1002b8

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHiddenGsmMute:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHiddenGsmMute:Landroid/widget/Button;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHiddenGsmMute:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    const v5, 0x7f1002ae

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mLeftButtons:Landroid/view/View;

    const v5, 0x7f1002b0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mMiddleButtons:Landroid/view/View;

    const v5, 0x7f1002b1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mRightButtons:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v5, :cond_11

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/secui/SecUiAdapter;->getCurrentOrientation()I

    move-result v5

    if-ne v5, v8, :cond_11

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mLeftButtons:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mMiddleButtons:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mRightButtons:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mLeftButtons:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mMiddleButtons:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mRightButtons:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_11
    const v5, 0x7f1002bc

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_12
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    const v5, 0x7f1001b4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    const v5, 0x7f100306

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    const v5, 0x7f100307

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    const v5, 0x7f1001b5

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    const v5, 0x7f100308

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    const v5, 0x7f100309

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    const v5, 0x7f10030a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->updateSpeakerButton()V

    return-void
.end method

.method protected showPrimaryCallBanner(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->showPrimaryCallBanner(Z)V

    return-void
.end method

.method public showSwitchCameraButton(Z)V
    .locals 2

    const-string v0, "concept_usa_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateButtonCleanMode(Z)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "updateButtonCleanMode fragment is detached from activity, return"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "clean_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->getCurrentOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/incallui/SecAnimationUtils$Move;->moveDownToHide(Landroid/view/View;Z)V

    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->updateButtonForCallHoldState()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/incallui/SecAnimationUtils$Move;->moveUpToShow(Landroid/view/View;Z)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v5, v0

    :goto_2
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mLeftButtons:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mMiddleButtons:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mRightButtons:Landroid/view/View;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallHiddenButtons:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/SecAnimationUtils$Scale;->scaleToHide(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v5, v0

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0220

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v5, v0

    :goto_3
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mLeftButtons:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mMiddleButtons:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mRightButtons:Landroid/view/View;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallHiddenButtons:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/SecAnimationUtils$Scale;->scaleToShow(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v5, v0

    goto :goto_3
.end method

.method public updateButtonsAsVideoState(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateButtonsAsVideoState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/secservice/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mIsReadyToShowView:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    iget v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoState:I

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    and-int/2addr v0, p1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    if-eq v0, v1, :cond_2

    sget v0, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    and-int/2addr v0, p1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    if-eq v0, v1, :cond_2

    sget v0, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    and-int/2addr v0, p1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    if-ne v0, v1, :cond_4

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->updateGeneralButtons(I)V

    :cond_3
    :goto_1
    iput p1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoState:I

    goto :goto_0

    :cond_4
    sget v0, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_REQUEST:I

    and-int/2addr v0, p1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_REQUEST:I

    if-ne v0, v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->updateGeneralButtons(I)V

    sget v0, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_DUMMY:I

    and-int/2addr v0, p1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_DUMMY:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->updateModifyRequestDummyButtons()V

    goto :goto_1

    :cond_5
    sget v0, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    and-int/2addr v0, p1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    if-ne v0, v1, :cond_3

    sget v0, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VS_TO_VIDEO:I

    and-int/2addr v0, p1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VS_TO_VIDEO:I

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->updateModifyReceiveVSToVideo()V

    goto :goto_1

    :cond_6
    sget v0, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VIDEO:I

    and-int/2addr v0, p1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VIDEO:I

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->updateModifyReceiveVoiceToVideo()V

    goto :goto_1

    :cond_7
    sget v0, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    and-int/2addr v0, p1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->updateModifyReceiveVoiceToVS()V

    goto :goto_1
.end method

.method public updateButtonsAsVideoState(Lcom/android/incallui/Call;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall(Lcom/android/incallui/Call;)Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->updateButtonsAsVideoState(Lcom/android/incallui/secservice/SecVideoCall;)V

    :cond_0
    return-void
.end method

.method public updateButtonsAsVideoState(Lcom/android/incallui/secservice/SecVideoCall;)V
    .locals 2

    iget v0, p1, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->updateButtonsAsVideoState(IZ)V

    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 2

    const-string v1, "concept_usa_vzw"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall(Lcom/android/incallui/Call;)Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/incallui/secservice/SecVideoCall;->mVideoState:I

    invoke-direct {p0, v1}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->updateVideoCallButtonsVZW(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->updateButtonsAsVideoState(Lcom/android/incallui/Call;)V

    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->updateButtonForCallHoldState()V

    goto :goto_0
.end method

.method public updateGeneralButtons(I)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget v0, Lcom/android/incallui/secservice/SecVideoState;->INCOMING:I

    and-int/2addr v0, p1

    sget v1, Lcom/android/incallui/secservice/SecVideoState;->INCOMING:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "concept_usa_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->updateVideoCallButtonsVZW(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateModifyReceiveVSToVideo()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const-string v0, "updateModifyReceiveVSToVideo"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string v0, "concept_usa_att"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "concept_usa_tmo"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ui_for_mpcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "concept_canada_common"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method protected updateModifyReceiveVoiceToVS()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const-string v0, "updateModifyReceiveVoiceToVS"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string v0, "concept_usa_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->enableModifyCallButtons(Z)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateModifyReceiveVoiceToVideo()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    const-string v0, "updateModifyReceiveVoiceToVideo"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string v0, "concept_usa_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mStayOnVoiceButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mChangeToVideoShareButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->enableModifyCallButtons(Z)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateModifyRequestButtons(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    const-string v1, "updateModifyRequestButtons"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_e
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected updateModifyRequestDummyButtons()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const-string v0, "updateModifyRequestDummyButtons"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "concept_usa_att"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ui_for_mpcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "common_volte_in"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_0
    return-void

    :cond_8
    const-string v0, "concept_usa_tmo"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "concept_canada_common"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVideoCallButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mShowMeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHideMeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mVoiceCallButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mAcceptButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mDeclineButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateMuteButton()V
    .locals 4

    const-string v1, "updateMuteButton()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- isMuted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHiddenGsmMute:Landroid/widget/Button;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHiddenGsmMute:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->mHiddenGsmMute:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090099

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method
