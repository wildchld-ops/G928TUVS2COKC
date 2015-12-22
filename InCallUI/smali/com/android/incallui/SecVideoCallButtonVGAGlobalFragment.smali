.class public Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;
.super Lcom/android/incallui/SecVideoCallButtonVGAFragment;
.source "SecVideoCallButtonVGAGlobalFragment.java"


# instance fields
.field protected mSwitchCallButtonViewStub:Landroid/view/ViewStub;

.field protected mSwitchCallButtons:Landroid/view/View;

.field protected mSwitchToVoiceButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;-><init>()V

    return-void
.end method

.method private updateSwitchToVoiceCallButton()V
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v2, 0x40000

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSwitchToVoiceCallButton - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->mSwitchToVoiceButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->mSwitchToVoiceButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v2, 0x8

    goto :goto_0
.end method


# virtual methods
.method public hideVideoTogglingViews()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->showPrimaryCallBanner(Z)V

    return-void
.end method

.method protected isPossibleToHideButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecModifyCallProcessor;->requestModifyCall(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f10030c
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->mSwitchToVoiceButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->mSwitchToVoiceButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected onEndCallButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->mSwitchCallButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->mSwitchCallButtons:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f1002b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->mSwitchCallButtonViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->mSwitchCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->mSwitchCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v0, 0x7f10030b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->mSwitchCallButtons:Landroid/view/View;

    const v0, 0x7f10030c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->mSwitchToVoiceButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->mSwitchToVoiceButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->mSwitchToVoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected showPrimaryCallBanner(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->showPrimaryCallBanner(Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->updateSwitchButtonLayout(Z)V

    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallButtonVGAFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->updateSwitchToVoiceCallButton()V

    return-void
.end method

.method public updateSwitchButtonLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->isPrimaryVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->updateSwitchButtonLayout(Z)V

    return-void
.end method

.method public updateSwitchButtonLayout(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->mSwitchCallButtons:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0206

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->mSwitchCallButtons:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/android/incallui/SecAnimationUtils$Change;->changeTopMargin(Landroid/view/View;I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0207

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method
