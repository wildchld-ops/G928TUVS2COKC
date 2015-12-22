.class public Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;
.super Lcom/android/incallui/SecEasyEndCallButtonFragment;
.source "SecEasyOnehandEndCallButtonFragment.java"


# instance fields
.field private mEasyOnehandClickListener:Landroid/view/View$OnClickListener;

.field private mLeftArrowButton:Landroid/view/View;

.field private mRightArrowButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecEasyEndCallButtonFragment;-><init>()V

    new-instance v0, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment$1;-><init>(Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->mEasyOnehandClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public changeArrow(I)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->updateOnehandLayout(I)V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f0400c3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->initView(Landroid/view/View;)V

    const v1, 0x7f100242

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->mEndCallButtonContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f1001ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->mEndCallButtonsLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f100243

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->mLeftArrowButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->mEasyOnehandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x7f100244

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->mRightArrowButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->mEasyOnehandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->updateOneHandMode()V

    return-object v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecEasyEndCallButtonFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->updateOneHandMode()V

    return-void
.end method

.method public updateOneHandMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getCurrentArrowSide()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->changeArrow(I)V

    return-void
.end method

.method public updateOnehandLayout(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->mEndCallButtonContainer:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0434

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->mEndCallButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0435

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_1
.end method
