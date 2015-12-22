.class public Lcom/android/incallui/SecVideoCallVGAChnFragment;
.super Lcom/android/incallui/SecVideoCallVGAFragment;
.source "SecVideoCallVGAChnFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public inflateVideoCallViews()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecVideoCallVGAFragment;->inflateVideoCallViews()V

    return-void
.end method

.method public notifyMediaEvent(Lcom/android/incallui/secservice/SecVideoCall;I)V
    .locals 1

    const-string v0, "notifyMediaEvent"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecVideoCallVGAFragment;->notifyMediaEvent(Lcom/android/incallui/secservice/SecVideoCall;I)V

    const-string v0, "cmcc_color_ringback_tone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/incallui/secservice/SecVideoCall;->mIsFarFrameReady:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOutgoingVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "display farend video first even if call state is not active"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallVGAChnFragment;->showVideoInCall(Z)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallVGAFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAChnFragment;->mVideoViews:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAChnFragment;->mTouchBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAChnFragment;->mTouchBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAChnFragment;->mVideoTouchListener:Landroid/view/View$OnTouchListener;

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

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAChnFragment;->mTouchBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAChnFragment;->mTouchBackground:Landroid/view/View;

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

    return-void
.end method

.method protected showVideoInCall(Z)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/android/incallui/SecInCallActivity;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->isDialpadVisible()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    const-string v3, "cmcc_color_ringback_tone"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v2, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAChnFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->isSurfaceViewSwipe()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallVGAChnFragment;->showVideoInCallSwap(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallVGAChnFragment;->showVideoInCallOriginal(Z)V

    goto :goto_0
.end method
