.class public Lcom/android/incallui/SecVideoCallVGAKorFragment;
.super Lcom/android/incallui/SecVideoCallVGAFragment;
.source "SecVideoCallVGAKorFragment.java"


# instance fields
.field private mResizedView:Landroid/view/View;

.field private mResizedViewsStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mResizedViewsStub:Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mResizedView:Landroid/view/View;

    return-void
.end method

.method private inflateResizedView()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mResizedViewsStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAKorFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mResizedViewsStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mResizedViewsStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mResizedViewsStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mResizedView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mResizedView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mResizedView:Landroid/view/View;

    const v1, 0x7f1002d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mFarEndContainerResizeTemplate:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mResizedView:Landroid/view/View;

    const v1, 0x7f100311

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mResizedTouchArea:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private updateGroupVideoCallView()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAKorFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isScreenResized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAKorFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isSurfaceViewSwipe()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallVGAKorFragment;->showVideoInCall(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAKorFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setSurfaceViewSwipe(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAKorFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setScreenResized(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAKorFragment;->resizeAndChangeVideoLocation()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
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

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mVideoViews:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mTouchBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mTouchBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mVideoTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAKorFragment;->inflateResizedView()V

    :cond_1
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

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mTouchBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mTouchBackground:Landroid/view/View;

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

.method protected resizeAndChangeVideoLocation()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAKorFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->isSurfaceViewSwipe()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resizeSurfaceView : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xfa

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAKorFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->isScreenResized()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mFarEndContainerResizeTemplate:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v4, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v4, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->bringToFront()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mFarEndContainerResizeTemplate:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v4, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v4, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->bringToFront()V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v4, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v4, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->bringToFront()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v4, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v4, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->bringToFront()V

    goto :goto_0
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallVGAFragment;->setCallState(Lcom/android/incallui/Call;)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecVideoCallVGAKorFragment;->changeOrientaiton(I)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVgaLandscapeVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAKorFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecVideoCallVGAKorFragment;->setVisibleCameraPreview(Z)V

    :cond_0
    const-string v0, "video_conference"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAKorFragment;->updateGroupVideoCallView()V

    :cond_1
    return-void
.end method

.method public showPrimaryCallBanner(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallVGAFragment;->showPrimaryCallBanner(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAKorFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/secui/SecUiAdapter;->updateSwitchButtonLayout(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAKorFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/secui/SecUiAdapter;->updateCameraEffectLayout(Z)V

    return-void
.end method

.method public showVideoUi(Z)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallVGAFragment;->showVideoUi(Z)V

    goto :goto_0
.end method
