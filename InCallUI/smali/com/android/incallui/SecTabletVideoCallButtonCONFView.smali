.class public Lcom/android/incallui/SecTabletVideoCallButtonCONFView;
.super Lcom/android/incallui/SecTabletVideoCallButtonView;
.source "SecTabletVideoCallButtonCONFView.java"


# instance fields
.field protected mVideoButtonConfViewsStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletVideoCallButtonView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public hideVideoTogglingViews()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->showPrimaryCallBanner(Z)V

    return-void
.end method

.method public initView()V
    .locals 4

    invoke-super {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->initView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ef

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x7f10017b

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->updateButtonIndicatorArea()V

    const v1, 0x7f1002ac

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mVideoButtonConfViewsStub:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mVideoButtonConfViewsStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mVideoButtonConfViewsStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v1, 0x7f100247

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mInCallButtonContainer:Landroid/view/View;

    const v1, 0x7f100291

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mInCallButtons:Landroid/view/View;

    const v1, 0x7f1002b4

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mInCallHiddenButtons:Landroid/view/View;

    const v1, 0x7f100292

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mEndCallButtonArea:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mEndCallButtonArea:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100033

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mSwitchCameraButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10024f

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10002e

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100293

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mHideShowButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d019b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mHideShowButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/SecTabletVideoCallButtonView;->updateCallButtons(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOutgoingVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->updateOutgoingHideShowButton()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonCONFView;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0
.end method
