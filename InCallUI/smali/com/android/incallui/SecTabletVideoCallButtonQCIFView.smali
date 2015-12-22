.class public Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;
.super Lcom/android/incallui/SecTabletVideoCallButtonView;
.source "SecTabletVideoCallButtonQCIFView.java"


# instance fields
.field private mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

.field protected mInviteGroupVideoButton:Landroid/widget/ImageButton;

.field protected mInviteGroupVideoButtonStub:Landroid/view/ViewStub;

.field protected mShowInviteButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletVideoCallButtonView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mShowInviteButton:Z

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

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mShowInviteButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/android/incallui/SecAnimationUtils$Fade;->show(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/incallui/SecAnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto :goto_0
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

    iput-boolean v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mShowInviteButton:Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInviteGroupVideoCallButton - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mShowInviteButton:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mShowInviteButton:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->isPrimaryVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->showInviteGroupVideoCallButton(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public deInitView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->deInitView()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/secutils/CameraEffect;->cancelEffect()V

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    :cond_1
    return-void
.end method

.method public hideVideoTogglingViews()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->isPossibleToHideButton()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->showButtonContainer(Z)V

    :cond_0
    return-void
.end method

.method protected initView()V
    .locals 4

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->initView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400fc

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x7f10017b

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->updateButtonIndicatorArea()V

    const v1, 0x7f100247

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInCallButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100291

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInCallButtons:Landroid/view/View;

    const v1, 0x7f1002b4

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInCallHiddenButtons:Landroid/view/View;

    const v1, 0x7f100292

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mEndCallButtonArea:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mEndCallButtonArea:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100033

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mSwitchCameraButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1002af

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mStopButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10002f

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mDialpadButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10024f

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10002e

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setHoverPopupType(I)V

    const v1, 0x7f100293

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mHideShowButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setHoverPopupType(I)V

    const v1, 0x7f1002b5

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mHiddenSwitchCamera:Landroid/widget/ImageView;

    const v1, 0x7f1002b6

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mHiddenStop:Landroid/widget/ImageView;

    const v1, 0x7f1002b8

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mHiddenMute:Landroid/widget/ImageView;

    const v1, 0x7f1002ae

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mLeftButtons:Landroid/view/View;

    const v1, 0x7f1002b0

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mMiddleButtons:Landroid/view/View;

    const v1, 0x7f1002b1

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mRightButtons:Landroid/view/View;

    const-string v1, "video_conference"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1002b9

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInviteGroupVideoButtonStub:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInviteGroupVideoButtonStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInviteGroupVideoButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v1, 0x7f100202

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const-string v1, "ui_for_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d019b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
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

    invoke-super {p0, p1}, Lcom/android/incallui/SecTabletVideoCallButtonView;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->showAddUserForConferenceCall()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f100202
        :pswitch_0
    .end packed-switch
.end method

.method protected onEndCallButtonClicked()V
    .locals 4

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mShowInviteButton:Z

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInviteGroupVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

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
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->mediaDeInitCS()V

    :cond_4
    return-void
.end method

.method protected showButtonContainer(Z)V
    .locals 5

    const/16 v4, 0x64

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mVideoCallButtonHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInCallButtons:Landroid/view/View;

    invoke-static {v1}, Lcom/android/incallui/SecAnimationUtils$Change;->changeToShow(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mVideoCallButtonHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->showPrimaryCallBanner(Z)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->showInviteGroupVideoCallButton(Z)V

    return-void

    :cond_2
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInCallButtons:Landroid/view/View;

    invoke-static {v1}, Lcom/android/incallui/SecAnimationUtils$Change;->changeToHide(Landroid/view/View;)V

    goto :goto_1
.end method

.method public showCameraEffectLayout(Z)V
    .locals 3

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->getView()Landroid/view/View;

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

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100302

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/secutils/CameraEffect;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    invoke-virtual {v1}, Lcom/android/incallui/secutils/CameraEffect;->showEffectLayout()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    invoke-virtual {v1}, Lcom/android/incallui/secutils/CameraEffect;->cancelEffect()V

    goto :goto_0
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/SecTabletVideoCallButtonView;->updateCallButtons(Lcom/android/incallui/Call;)V

    const-string v0, "ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOutgoingVideoCall()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->updateOutgoingHideShowButton()V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->updateInviteGroupVideoCallButton()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->updateCallButtonsBgColor()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateCallButtonsBgColor()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInCallButtons:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->mInCallButtons:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonQCIFView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
