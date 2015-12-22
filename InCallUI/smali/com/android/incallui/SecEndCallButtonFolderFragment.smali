.class public Lcom/android/incallui/SecEndCallButtonFolderFragment;
.super Lcom/android/incallui/SecEndCallButtonFragment;
.source "SecEndCallButtonFolderFragment.java"

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

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFolderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f1001ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/incallui/SecEndCallButtonFolderFragment;->mEndCallButtonsLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f1001af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecEndCallButtonFolderFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    const v0, 0x7f1001b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecEndCallButtonFolderFragment;->mVideoCallButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFolderFragment;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1001b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecEndCallButtonFolderFragment;->mMessageButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFolderFragment;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1001b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecEndCallButtonFolderFragment;->mCreateContactButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFolderFragment;->mCreateContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1001b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecEndCallButtonFolderFragment;->mUpdateContactButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFolderFragment;->mUpdateContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1001b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecEndCallButtonFolderFragment;->mViewContactButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecEndCallButtonFolderFragment;->mViewContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    const v1, 0x7f040097

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecEndCallButtonFolderFragment;->initView(Landroid/view/View;)V

    return-object v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecEndCallButtonFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFolderFragment;->updateEndCallButtons()V

    return-void
.end method

.method protected showViewContact(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFolderFragment;->mViewContactButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecEndCallButtonFolderFragment;->mViewContactButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFolderFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFolderFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/SecEndCallButtonFolderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/incallui/SecEndCallButtonFolderFragment;->mEndCallButtonsUpper:Landroid/view/ViewGroup;

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
