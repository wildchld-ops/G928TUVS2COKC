.class public Lcom/android/incallui/SecVideoCallHDGlobalFragment;
.super Lcom/android/incallui/SecVideoCallHDFragment;
.source "SecVideoCallHDGlobalFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallHDFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public inflateVideoCallViews()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecVideoCallHDFragment;->inflateVideoCallViews()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallHDFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallHDGlobalFragment;->mVideoViews:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallHDGlobalFragment;->mTouchBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallHDGlobalFragment;->mTouchBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallHDGlobalFragment;->mVideoTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecVideoCallHDFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/SecVideoCallHDFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallHDGlobalFragment;->mTouchBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallHDGlobalFragment;->mTouchBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecVideoCallHDFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallHDFragment;->setCallState(Lcom/android/incallui/Call;)V

    return-void
.end method
