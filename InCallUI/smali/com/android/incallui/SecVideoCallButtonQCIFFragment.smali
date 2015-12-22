.class public Lcom/android/incallui/SecVideoCallButtonQCIFFragment;
.super Lcom/android/incallui/SecVideoCallButtonFragment;
.source "SecVideoCallButtonQCIFFragment.java"


# instance fields
.field private mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

.field protected mInviteGroupVideoButton:Landroid/widget/ImageButton;

.field protected mInviteGroupVideoButtonStub:Landroid/view/ViewStub;

.field protected mShowInviteButton:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallButtonFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mShowInviteButton:Z

    return-void
.end method

.method private showInviteGroupVideoCallButton(Z)V
    .locals 2

    const-string v0, "video_conference"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mShowInviteButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/android/incallui/SecAnimationUtils$Fade;->show(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/incallui/SecAnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private showRecordingInfo(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/secui/SecUiAdapter;->showRecordingInfo(ZZ)V

    return-void
.end method

.method private updateInviteGroupVideoCallButton()V
    .locals 3

    const-string v1, "video_conference"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mShowInviteButton:Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInviteGroupVideoCallButton - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mShowInviteButton:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mShowInviteButton:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->isPrimaryVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->showInviteGroupVideoCallButton(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public hideVideoTogglingViews()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->isPossibleToHideButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->showButtonContainer(Z)V

    :cond_0
    return-void
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

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallButtonFragment;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->showAddUserForConferenceCall()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f100202
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecVideoCallButtonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0400fd

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOneHandModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0400fb

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0400fe

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0400fc

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/SecVideoCallButtonFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/secutils/CameraEffect;->cancelEffect()V

    iput-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    :cond_1
    return-void
.end method

.method protected onEndCallButtonClicked()V
    .locals 4

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mShowInviteButton:Z

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    invoke-virtual {v1}, Lcom/android/incallui/secutils/CameraEffect;->cancelEffect()V

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDomain()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->mediaDeInitCS()V

    :cond_4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7f10017b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->updateButtonIndicatorArea()V

    const v0, 0x7f100247

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100291

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f1002b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInCallHiddenButtons:Landroid/view/View;

    const v0, 0x7f1002b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mHiddenSwitchCamera:Landroid/widget/ImageView;

    const v0, 0x7f1002b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mHiddenStop:Landroid/widget/ImageView;

    const v0, 0x7f1002b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mHiddenMute:Landroid/widget/ImageView;

    :cond_0
    const v0, 0x7f100292

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mEndCallButtonArea:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mEndCallButtonArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1002af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mStopButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10024f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100293

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1002ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mLeftButtons:Landroid/view/View;

    const v0, 0x7f1002b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mMiddleButtons:Landroid/view/View;

    const v0, 0x7f1002b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mRightButtons:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOneHandModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f100243

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mLeftArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setHoverPopupType(I)V

    :cond_1
    const v0, 0x7f100244

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mRightArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setHoverPopupType(I)V

    :cond_2
    const-string v0, "video_conference"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f1002b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInviteGroupVideoButtonStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInviteGroupVideoButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInviteGroupVideoButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_3
    const v0, 0x7f100202

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const-string v0, "ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d019b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method protected showButtonContainer(Z)V
    .locals 10

    const-wide/16 v8, 0x1388

    const v3, 0x7f0a01dc

    const/16 v7, 0x64

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v5, v0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-static {v0}, Lcom/android/incallui/SecAnimationUtils$Change;->changeToShow(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->showPrimaryCallBanner(Z)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->showInviteGroupVideoCallButton(Z)V

    return-void

    :cond_2
    const/4 v0, -0x1

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    invoke-static {v0}, Lcom/android/incallui/SecAnimationUtils$Change;->changeToHide(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a021f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_2
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mLeftButtons:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mMiddleButtons:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mRightButtons:Landroid/view/View;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInCallHiddenButtons:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/SecAnimationUtils$Scale;->scaleToShow(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_3
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInCallButtons:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mLeftButtons:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mMiddleButtons:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mRightButtons:Landroid/view/View;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mInCallHiddenButtons:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/SecAnimationUtils$Scale;->scaleToHide(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_3
.end method

.method public showCameraEffectLayout(Z)V
    .locals 3

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->getView()Landroid/view/View;

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

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100302

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/secutils/CameraEffect;

    iput-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    invoke-virtual {v1}, Lcom/android/incallui/secutils/CameraEffect;->showEffectLayout()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    invoke-virtual {v1}, Lcom/android/incallui/secutils/CameraEffect;->cancelEffect()V

    goto :goto_0
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallButtonFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    const-string v1, "ui_for_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOutgoingVideoCall()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->updateOutgoingHideShowButton()V

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->updateInviteGroupVideoCallButton()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isFarEndRecord()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isNearEndRecord()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->showRecordingInfo(ZZ)V

    :cond_4
    const-string v1, "support_dialpad_by_hardkey"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecUiAdapter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->showButtonContainer(Z)V

    :cond_5
    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0
.end method
