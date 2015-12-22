.class public Lcom/android/incallui/SecVideoCallButtonCONFFragment;
.super Lcom/android/incallui/SecVideoCallButtonFragment;
.source "SecVideoCallButtonCONFFragment.java"


# instance fields
.field protected mVideoButtonConfViewsStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallButtonFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public hideVideoTogglingViews()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->showPrimaryCallBanner(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecVideoCallButtonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v1, 0x7f0400f7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/SecVideoCallButtonFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecVideoCallButtonFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f10017b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->updateButtonIndicatorArea()V

    const v0, 0x7f1002ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mVideoButtonConfViewsStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mVideoButtonConfViewsStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mVideoButtonConfViewsStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v0, 0x7f100247

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mInCallButtonContainer:Landroid/view/View;

    const v0, 0x7f100291

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mInCallButtons:Landroid/view/View;

    const v0, 0x7f1002b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mInCallHiddenButtons:Landroid/view/View;

    const v0, 0x7f100292

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mEndCallButtonArea:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mEndCallButtonArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10024f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100293

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d019b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallButtonFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOutgoingVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->updateOutgoingHideShowButton()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;->mHideShowButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0
.end method
