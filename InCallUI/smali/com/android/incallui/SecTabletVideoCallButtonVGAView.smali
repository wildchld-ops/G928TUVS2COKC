.class public Lcom/android/incallui/SecTabletVideoCallButtonVGAView;
.super Lcom/android/incallui/SecTabletVideoCallButtonView;
.source "SecTabletVideoCallButtonVGAView.java"


# instance fields
.field protected mIsReadyToShowView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletVideoCallButtonView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->mIsReadyToShowView:Z

    return-void
.end method


# virtual methods
.method public deInitView()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->deInitView()V

    return-void
.end method

.method protected initView()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/incallui/SecTabletVideoCallButtonView;->initView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040101

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x7f10017b

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->updateButtonIndicatorArea()V

    const v1, 0x7f100247

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->mInCallButtonContainer:Landroid/view/View;

    const v1, 0x7f100291

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->mInCallButtons:Landroid/view/View;

    const v1, 0x7f100292

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->mEndCallButtonArea:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->mEndCallButtonArea:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100033

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->mSwitchCameraButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10002f

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->mDialpadButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10024f

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10002e

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallButtonVGAView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setHoverPopupType(I)V

    return-void
.end method
