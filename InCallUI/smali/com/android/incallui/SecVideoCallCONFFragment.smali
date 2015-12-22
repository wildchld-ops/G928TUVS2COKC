.class public Lcom/android/incallui/SecVideoCallCONFFragment;
.super Lcom/android/incallui/SecVideoCallFragment;
.source "SecVideoCallCONFFragment.java"


# instance fields
.field protected mVideoTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallFragment;-><init>()V

    new-instance v0, Lcom/android/incallui/SecVideoCallCONFFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecVideoCallCONFFragment$1;-><init>(Lcom/android/incallui/SecVideoCallCONFFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallCONFFragment;->mVideoTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method


# virtual methods
.method public inflateVideoCallViews()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecVideoCallFragment;->inflateVideoCallViews()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "onActivityCreated"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCONFFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10017b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallCONFFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCONFFragment;->updateVideoIndicatorArea()V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCONFFragment;->mVideoViews:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCONFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f100296

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallCONFFragment;->mVideoViewsContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCONFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f100297

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallCONFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCONFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f10029d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallCONFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCONFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f100299

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallCONFFragment;->mPreparingAnimation:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCONFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f10029c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallCONFFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCONFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f1002a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallCONFFragment;->mTouchBackground:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCONFFragment;->mTouchBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCONFFragment;->mTouchBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCONFFragment;->mVideoTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCONFFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCONFFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCONFFragment;->setCallState()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecVideoCallFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f04010e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecVideoCallFragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecVideoCallFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallFragment;->setCallState(Lcom/android/incallui/Call;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCONFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCONFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallCONFFragment;->setVisibleCameraPreview(Z)V

    :cond_0
    return-void
.end method

.method protected surfaceTextureCreated(ILandroid/graphics/SurfaceTexture;II)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallCONFFragment;->setVisibleCameraPreview(Z)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/incallui/SecVideoCallFragment;->surfaceTextureCreated(ILandroid/graphics/SurfaceTexture;II)V

    return-void
.end method
