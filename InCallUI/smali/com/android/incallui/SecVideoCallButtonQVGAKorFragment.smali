.class public Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;
.super Lcom/android/incallui/SecVideoCallButtonVGAFragment;
.source "SecVideoCallButtonQVGAKorFragment.java"


# instance fields
.field private mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public hideVideoTogglingViews()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->showPrimaryCallBanner(Z)V

    return-void
.end method

.method protected isPossibleToHideButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/secutils/CameraEffect;->cancelEffect()V

    iput-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    :cond_1
    return-void
.end method

.method protected onEndCallButtonClicked()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    invoke-virtual {v0}, Lcom/android/incallui/secutils/CameraEffect;->cancelEffect()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f100293

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d019b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public showCameraEffectLayout(Z)V
    .locals 3

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->getView()Landroid/view/View;

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

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100302

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/secutils/CameraEffect;

    iput-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    invoke-virtual {v1}, Lcom/android/incallui/secutils/CameraEffect;->showEffectLayout()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    invoke-virtual {v1}, Lcom/android/incallui/secutils/CameraEffect;->cancelEffect()V

    goto :goto_0
.end method

.method protected showPrimaryCallBanner(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->showPrimaryCallBanner(Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->updateCameraEffectLayout(Z)V

    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOutgoingVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->updateOutgoingHideShowButton()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateCameraEffectLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->isPrimaryVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->updateCameraEffectLayout(Z)V

    return-void
.end method

.method public updateCameraEffectLayout(Z)V
    .locals 4

    const-string v2, "camera_effect"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

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

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0276

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->mCameraEffectLayout:Lcom/android/incallui/secutils/CameraEffect;

    invoke-static {v2, v0}, Lcom/android/incallui/SecAnimationUtils$Change;->changeTopMargin(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0277

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    goto :goto_1
.end method
