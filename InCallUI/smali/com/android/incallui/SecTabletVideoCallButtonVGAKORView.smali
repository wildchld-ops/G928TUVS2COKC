.class public Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;
.super Lcom/android/incallui/SecTabletVideoCallButtonVGAView;
.source "SecTabletVideoCallButtonVGAKORView.java"


# instance fields
.field protected mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

.field protected mInviteGroupVideoButton:Landroid/widget/ImageButton;

.field protected mSwitchCallButtonViewStub:Landroid/view/ViewStub;

.field protected mSwitchCallButtons:Landroid/view/View;

.field protected mSwitchToVoiceButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private updateGroupVideoCallButtonView()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/secutils/CameraEffect;->cancelEffect()V

    :cond_0
    return-void
.end method

.method private updateInviteGroupVideoCallButton()V
    .locals 4

    const-string v2, "video_conference"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v2, 0x20000

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateInviteGroupVideoCallButton - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v2, 0x8

    goto :goto_0
.end method

.method private updateSwitchToVoiceCallButton()V
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v2, 0x40000

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSwitchToVoiceCallButton - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mSwitchToVoiceButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mSwitchToVoiceButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v2, 0x8

    goto :goto_0
.end method


# virtual methods
.method public deInitView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->deInitView()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mSwitchToVoiceButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mSwitchToVoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/secutils/CameraEffect;->cancelEffect()V

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    :cond_3
    return-void
.end method

.method public hideVideoTogglingViews()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->showPrimaryCallBanner(Z)V

    return-void
.end method

.method protected initView()V
    .locals 3

    invoke-super {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->initView()V

    const v0, 0x7f100293

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mHideShowButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mHideShowButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setHoverPopupType(I)V

    const v0, 0x7f1002b2

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mSwitchCallButtonViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mSwitchCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mSwitchCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v0, 0x7f10030b

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mSwitchCallButtons:Landroid/view/View;

    const v0, 0x7f10030c

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mSwitchToVoiceButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mSwitchToVoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100202

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d019b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected isPossibleToHideButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

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

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecModifyCallProcessor;->requestModifyCall(I)Z

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->showAddUserForConferenceCall()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f100202 -> :sswitch_1
        0x7f10030c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onEndCallButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mSwitchCallButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mSwitchCallButtons:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/secutils/CameraEffect;->cancelEffect()V

    :cond_1
    return-void
.end method

.method public showCameraEffectLayout(Z)V
    .locals 3

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1002ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const-string v1, "inflate camera effect view stub"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100302

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/secutils/CameraEffect;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    invoke-virtual {v1}, Lcom/android/incallui/secutils/CameraEffect;->showEffectLayout()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    invoke-virtual {v1}, Lcom/android/incallui/secutils/CameraEffect;->cancelEffect()V

    goto :goto_0
.end method

.method protected showPrimaryCallBanner(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->showPrimaryCallBanner(Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->updateSwitchButtonLayout(Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->updateCameraEffectLayout(Z)V

    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->updateCallButtons(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOutgoingVideoCall()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->updateOutgoingHideShowButton()V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->updateSwitchToVoiceCallButton()V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->updateInviteGroupVideoCallButton()V

    const-string v0, "video_conference"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->updateGroupVideoCallButtonView()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateCameraEffectLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->isPrimaryVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->updateCameraEffectLayout(Z)V

    return-void
.end method

.method public updateCameraEffectLayout(Z)V
    .locals 4

    const-string v2, "camera_effect"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/android/incallui/secservice/SecVideoCall;->mIsShowingEffect:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0276

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    invoke-static {v2, v0}, Lcom/android/incallui/SecAnimationUtils$Change;->changeTopMargin(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0277

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    goto :goto_1
.end method

.method public updateSwitchButtonLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->isPrimaryVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->updateSwitchButtonLayout(Z)V

    return-void
.end method

.method public updateSwitchButtonLayout(Z)V
    .locals 5

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mSwitchCallButtons:Landroid/view/View;

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    const-string v3, "camera_effect"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/android/incallui/secservice/SecVideoCall;->mIsShowingEffect:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0274

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->mSwitchCallButtons:Landroid/view/View;

    invoke-static {v3, v2}, Lcom/android/incallui/SecAnimationUtils$Change;->changeTopMargin(Landroid/view/View;I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0206

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0275

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAKORView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0207

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    goto :goto_0
.end method
