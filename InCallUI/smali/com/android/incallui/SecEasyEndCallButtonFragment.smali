.class public Lcom/android/incallui/SecEasyEndCallButtonFragment;
.super Lcom/android/incallui/SecEndCallButtonFragment;
.source "SecEasyEndCallButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecEndCallButtonFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyEndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f1001ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mEndCallButtonsLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f1001af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    const v0, 0x7f1001b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1001b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1001b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1001b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mCreateContactButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1001b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mUpdateContactButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mUpdateContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1001b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mViewContactButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mViewContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "change_order_of_endcall_buttons"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    const v0, 0x7f1001b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mVideoCallButtonStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mVideoCallButtonStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mVideoCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mVideoCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    const v0, 0x7f100097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mpcs_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "canada_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecEasyEndCallButtonFragment;->changeVideoCallIcon()V

    :cond_3
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecEndCallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecEndCallButtonFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f040096

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecEasyEndCallButtonFragment;->initView(Landroid/view/View;)V

    return-object v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyEndCallButtonFragment;->updateEndCallButtons()V

    return-void
.end method

.method protected showViewContact(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mViewContactButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mViewContactButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public updatePadding()V
    .locals 0

    return-void
.end method

.method protected updateVoiceCallButton(Landroid/widget/Button;Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02033e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecEasyEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020182

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected updateVolteEndCallButtonIcon()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVolteIconPossible()Z

    move-result v0

    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isChecked3GHDVoiceForKT()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecEasyEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02015b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    const v3, 0x7f0d01be

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecEasyEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    :cond_1
    return-void
.end method
