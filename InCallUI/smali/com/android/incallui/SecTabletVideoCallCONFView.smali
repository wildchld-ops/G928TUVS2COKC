.class public Lcom/android/incallui/SecTabletVideoCallCONFView;
.super Lcom/android/incallui/SecTabletVideoCallView;
.source "SecTabletVideoCallCONFView.java"


# instance fields
.field protected mVideoTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletVideoCallView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/incallui/SecTabletVideoCallCONFView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecTabletVideoCallCONFView$1;-><init>(Lcom/android/incallui/SecTabletVideoCallCONFView;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCONFView;->mVideoTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method


# virtual methods
.method public inflateVideoCallViews()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecTabletVideoCallView;->inflateVideoCallViews()V

    return-void
.end method

.method public initView()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCONFView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400f1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-super {p0}, Lcom/android/incallui/SecTabletVideoCallView;->initView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCONFView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10017b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCONFView;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCONFView;->updateVideoIndicatorArea()V

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCONFView;->mVideoViews:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCONFView;->mVideoViews:Landroid/view/View;

    const v2, 0x7f100296

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCONFView;->mVideoViewsContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCONFView;->mVideoViews:Landroid/view/View;

    const v2, 0x7f100297

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCONFView;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCONFView;->mVideoViews:Landroid/view/View;

    const v2, 0x7f10029d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCONFView;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCONFView;->mVideoViews:Landroid/view/View;

    const v2, 0x7f100299

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCONFView;->mPreparingAnimation:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCONFView;->mVideoViews:Landroid/view/View;

    const v2, 0x7f10029c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCONFView;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCONFView;->mVideoViews:Landroid/view/View;

    const v2, 0x7f1002a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCONFView;->mTouchBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCONFView;->mTouchBackground:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCONFView;->mTouchBackground:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCONFView;->mVideoTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCONFView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCONFView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCONFView;->setCallState()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecTabletVideoCallView;->onDetachedFromWindow()V

    return-void
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/SecTabletVideoCallView;->setCallState(Lcom/android/incallui/Call;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCONFView;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCONFView;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallCONFView;->setVisibleCameraPreview(Z)V

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

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallCONFView;->setVisibleCameraPreview(Z)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/incallui/SecTabletVideoCallView;->surfaceTextureCreated(ILandroid/graphics/SurfaceTexture;II)V

    return-void
.end method
