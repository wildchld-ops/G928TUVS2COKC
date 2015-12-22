.class public Lcom/android/incallui/SecVideoCallButtonVGAFragment;
.super Lcom/android/incallui/SecVideoCallButtonFragment;
.source "SecVideoCallButtonVGAFragment.java"


# instance fields
.field protected mIsReadyToShowView:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallButtonFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mIsReadyToShowView:Z

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecVideoCallButtonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f040102

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

    const v0, 0x7f040100

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f040103

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0400ff

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v0, 0x7f040101

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecVideoCallButtonFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f10017b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->updateButtonIndicatorArea()V

    const v0, 0x7f100247

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    const v0, 0x7f100291

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    const v0, 0x7f100292

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mEndCallButtonArea:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mEndCallButtonArea:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mEndCallButtonArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f100033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f10002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x7f10024f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f10002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOneHandModeOn()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f100243

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mLeftArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const v0, 0x7f100244

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mRightArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void
.end method
