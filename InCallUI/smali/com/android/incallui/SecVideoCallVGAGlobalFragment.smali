.class public Lcom/android/incallui/SecVideoCallVGAGlobalFragment;
.super Lcom/android/incallui/SecVideoCallVGAFragment;
.source "SecVideoCallVGAGlobalFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAFragment;-><init>()V

    return-void
.end method

.method private updateVideoViewBgColorForCallState(Lcom/android/incallui/Call;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAGlobalFragment;->mVideoViewsContainer:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAGlobalFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAGlobalFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAGlobalFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAGlobalFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public inflateVideoCallViews()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecVideoCallVGAFragment;->inflateVideoCallViews()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallVGAFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAGlobalFragment;->mVideoViews:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAGlobalFragment;->mTouchBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAGlobalFragment;->mTouchBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAGlobalFragment;->mVideoTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecVideoCallVGAFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/SecVideoCallVGAFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAGlobalFragment;->mTouchBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAGlobalFragment;->mTouchBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecVideoCallVGAFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallVGAFragment;->setCallState(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAGlobalFragment;->refreshVideoSurface()V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVideoCallVGAGlobalFragment;->updateVideoViewBgColorForCallState(Lcom/android/incallui/Call;)V

    return-void
.end method
