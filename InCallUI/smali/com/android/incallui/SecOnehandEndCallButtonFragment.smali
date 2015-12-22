.class public Lcom/android/incallui/SecOnehandEndCallButtonFragment;
.super Lcom/android/incallui/SecEndCallButtonFragment;
.source "SecOnehandEndCallButtonFragment.java"


# instance fields
.field private mLeftArrowButton:Landroid/view/View;

.field private mOnehandClickListener:Landroid/view/View$OnClickListener;

.field private mRightArrowButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecEndCallButtonFragment;-><init>()V

    new-instance v0, Lcom/android/incallui/SecOnehandEndCallButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment$1;-><init>(Lcom/android/incallui/SecOnehandEndCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mOnehandClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public changeArrow(I)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->updateOnehandLayout(I)V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected getPaddingSide(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0419

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0418

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a041a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method

.method protected getPaddingSideForMultiSim(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a041a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0419

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :cond_0
    return v0
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
    .locals 4

    const/4 v3, 0x0

    const v1, 0x7f0400c4

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100242

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mEndCallButtonContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f1001ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mEndCallButtonsLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f1001af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    const v1, 0x7f1001b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mEndCallButtonsUnder:Landroid/view/ViewGroup;

    const v1, 0x7f1001b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f1001b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1001b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "ims_callplus"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1001b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mEndCallButtonsMiddleStub:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mEndCallButtonsMiddleStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v1, 0x7f1001bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mEndCallButtonsMiddle:Landroid/view/ViewGroup;

    const v1, 0x7f1000d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const-string v1, "change_order_of_endcall_buttons"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    const v1, 0x7f1001b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mVideoCallButtonStub:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mVideoCallButtonStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mVideoCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mVideoCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    const v1, 0x7f100097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    const v1, 0x7f1001b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mCreateContactButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1001b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mUpdateContactButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mUpdateContactButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1001b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mViewContactButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mViewContactButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1001b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mAddEventButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mAddEventButton:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mAddEventButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->updateMultiSimEndCallButton(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->updatePadding()V

    :cond_4
    const-string v1, "att_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "mpcs_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "canada_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->changeVideoCallIcon()V

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->updatePadding()V

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->hideDelayedEndCallButtonsLayout()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableWhitepages"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/whitepages/nameid/NameIDHelper;->isNameIDInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/whitepages/nameid/NameIDHelper;->init(Landroid/content/Context;)V

    :cond_7
    const v1, 0x7f100243

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mOnehandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    const v1, 0x7f100244

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mOnehandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->updateOneHandMode()V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->updateOneHandMode()V

    return-void
.end method

.method protected updateEndCallButtons()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->updateEndCallButtons()V

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->updatePadding()V

    return-void
.end method

.method public updateOneHandMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getCurrentArrowSide()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->changeArrow(I)V

    return-void
.end method

.method public updateOnehandLayout(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mEndCallButtonContainer:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0434

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mEndCallButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0435

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_1
.end method

.method protected updatePadding()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->updatePaddingInternal(Landroid/view/ViewGroup;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mEndCallButtonsUnder:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mEndCallButtonsUnder:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->updatePaddingInternal(Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method

.method protected updatePaddingInternal(Landroid/view/ViewGroup;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->getPaddingSide(I)I

    move-result v2

    invoke-virtual {p1, v2, v4, v2, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-static {}, Lcom/android/incallui/InCallUtilsMultiSIM;->checkMultiSim()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mEndCallButtonsUnder:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->getPaddingSideForMultiSim(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;->mEndCallButtonsUnder:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, v4, v2, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
.end method
