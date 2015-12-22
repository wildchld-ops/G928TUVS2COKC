.class public Lcom/android/incallui/SecVideoCallFragment;
.super Lcom/android/incallui/BaseFragment;
.source "SecVideoCallFragment.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$EmergencyModeListener;
.implements Lcom/android/incallui/SecVideoCallUi;
.implements Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/VideoCallPresenter;",
        "Lcom/android/incallui/VideoCallPresenter$VideoCallUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$EmergencyModeListener;",
        "Lcom/android/incallui/SecVideoCallUi;",
        "Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;"
    }
.end annotation


# static fields
.field private static mIsShowingVideoUI:Z

.field private static sDisplaySurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

.field private static sPreviewSurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

.field private static sVideoSurfacesInUse:Z


# instance fields
.field protected final DELAYED_ONGLOBALLAYOUT_TIMER:I

.field protected final DELAYED_SHOW_VIDEO_TIMER:I

.field protected final HIDE_INCALL_BANNER_DELAY:I

.field protected final HIDE_NOTIFY_BANNER_DELAY:I

.field private isShowingPreparingAnimation:Z

.field protected mBigTouchArea:Landroid/view/View;

.field public mDelayedVideoState:I

.field protected mFarEndCaptureAnimatinoView:Landroid/view/View;

.field protected mFarEndContainerResizeTemplate:Landroid/view/ViewGroup;

.field protected mFarEndContainerTemplate:Landroid/view/ViewGroup;

.field protected mFarEndDefaultImage:Landroid/widget/ImageView;

.field protected mFarEndPhoto:Landroid/widget/ImageView;

.field protected mFarEndPhotoContainer:Landroid/view/View;

.field private mHeight:I

.field protected mIncomingContainerTemplate:Landroid/view/ViewGroup;

.field protected mIncomingVideo:Landroid/view/TextureView;

.field protected mIndicatorArea:Landroid/view/ViewGroup;

.field private mIsActivityRestart:Z

.field protected mIsInitializedLayout:Z

.field private mIsLandscape:Z

.field private mIsLayoutComplete:Z

.field protected mIsProgressingAnimation:Z

.field protected mNearEndCaptureAnimatinoView:Landroid/view/View;

.field protected mNearEndContainerTemplate:Landroid/view/ViewGroup;

.field protected mNearEndPhoto:Landroid/widget/ImageView;

.field protected mNearEndSwitchAnimationView:Landroid/view/View;

.field public mOldVideoState:I

.field protected mOutgoingContainerTemplate:Landroid/view/ViewGroup;

.field protected mPreparingAnimation:Landroid/view/View;

.field protected mPreviewContainer:Landroid/view/ViewGroup;

.field protected mPreviewVideo:Landroid/view/TextureView;

.field protected mRecInfoFarEnd:Landroid/view/ViewGroup;

.field protected mRecInfoNearEnd:Landroid/view/ViewGroup;

.field protected mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

.field protected mRecInfoTimeTextViewNearEnd:Landroid/widget/TextView;

.field protected mSmallTouchArea:Landroid/view/View;

.field protected mTouchBackground:Landroid/view/View;

.field protected mVideoCallViewHandler:Landroid/os/Handler;

.field protected mVideoContainer:Landroid/view/ViewGroup;

.field public mVideoState:I

.field protected mVideoViews:Landroid/view/View;

.field protected mVideoViewsContainer:Landroid/view/View;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/SecVideoCallFragment;->sVideoSurfacesInUse:Z

    sput-object v1, Lcom/android/incallui/SecVideoCallFragment;->sPreviewSurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    sput-object v1, Lcom/android/incallui/SecVideoCallFragment;->sDisplaySurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    sput-boolean v0, Lcom/android/incallui/SecVideoCallFragment;->mIsShowingVideoUI:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x1388

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoViews:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mTouchBackground:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mBigTouchArea:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mSmallTouchArea:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mRecInfoNearEnd:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mRecInfoTimeTextViewNearEnd:Landroid/widget/TextView;

    iput-boolean v1, p0, Lcom/android/incallui/SecVideoCallFragment;->mIsLayoutComplete:Z

    iput v2, p0, Lcom/android/incallui/SecVideoCallFragment;->mWidth:I

    iput v2, p0, Lcom/android/incallui/SecVideoCallFragment;->mHeight:I

    iput-boolean v1, p0, Lcom/android/incallui/SecVideoCallFragment;->isShowingPreparingAnimation:Z

    sget v0, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_NONE:I

    iput v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoState:I

    sget v0, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_NONE:I

    iput v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mOldVideoState:I

    sget v0, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_NONE:I

    iput v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mDelayedVideoState:I

    iput-boolean v1, p0, Lcom/android/incallui/SecVideoCallFragment;->mIsProgressingAnimation:Z

    iput-boolean v1, p0, Lcom/android/incallui/SecVideoCallFragment;->mIsInitializedLayout:Z

    iput v3, p0, Lcom/android/incallui/SecVideoCallFragment;->HIDE_INCALL_BANNER_DELAY:I

    iput v3, p0, Lcom/android/incallui/SecVideoCallFragment;->HIDE_NOTIFY_BANNER_DELAY:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/incallui/SecVideoCallFragment;->DELAYED_SHOW_VIDEO_TIMER:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/SecVideoCallFragment;->DELAYED_ONGLOBALLAYOUT_TIMER:I

    new-instance v0, Lcom/android/incallui/SecVideoCallFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecVideoCallFragment$1;-><init>(Lcom/android/incallui/SecVideoCallFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoCallViewHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/SecVideoCallFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/SecVideoCallFragment;->mWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/incallui/SecVideoCallFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/SecVideoCallFragment;->mHeight:I

    return p1
.end method

.method private checkStorageMemorySpace(Z)Z
    .locals 18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v10, Ljava/io/File;

    const-string v14, "/sdcard/"

    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Landroid/os/StatFs;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v14

    int-to-long v4, v14

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockCount()I

    move-result v14

    int-to-long v12, v14

    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v14

    int-to-long v2, v14

    mul-long v14, v12, v4

    const-wide/16 v16, 0x400

    div-long v6, v14, v16

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Memory Size Avialable is in Kb : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-wide/16 v14, 0x3c

    cmp-long v14, v2, v14

    if-lez v14, :cond_0

    const/4 v14, 0x1

    :goto_0
    return v14

    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v14, 0x2

    cmp-long v14, v2, v14

    if-lez v14, :cond_2

    const/4 v14, 0x1

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    goto :goto_0
.end method

.method private updatePreparingAnimation(Lcom/android/incallui/Call;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecCall;->isModifyProgressing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isFarFrameReady()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallFragment;->showPreparingAnimation(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelTimer(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoCallViewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoCallViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoCallViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public captureSurfaceImage(Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVideoCallFragment;->checkStorageMemorySpace(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/secservice/SecVideoCallManager;->captureSurfaceImage(Z)V

    if-nez p1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/incallui/SecVideoCallFragment$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/SecVideoCallFragment$2;-><init>(Lcom/android/incallui/SecVideoCallFragment;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0d0209

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->displayToastLong(I)V

    const-string v0, "captureSurfaceImage - Memory is Full"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public changeOrientaiton(I)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVgaLandscapeVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->setDisplayOrientation()V

    :cond_1
    return-void
.end method

.method public cleanupSurfaces()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/android/incallui/SecVideoCallFragment;->sDisplaySurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_0

    sput-object v1, Lcom/android/incallui/SecVideoCallFragment;->sDisplaySurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallFragment;->surfaceTextureDestroyed(I)V

    :cond_0
    sget-object v0, Lcom/android/incallui/SecVideoCallFragment;->sPreviewSurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_1

    sput-object v1, Lcom/android/incallui/SecVideoCallFragment;->sPreviewSurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallFragment;->surfaceTextureDestroyed(I)V

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/SecVideoCallFragment;->sVideoSurfacesInUse:Z

    return-void
.end method

.method protected copyParams(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->createPresenter()Lcom/android/incallui/VideoCallPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/android/incallui/VideoCallPresenter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/VideoCallPresenter;->getInstance()Lcom/android/incallui/VideoCallPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayVideoSurface()Landroid/view/Surface;
    .locals 1

    sget-object v0, Lcom/android/incallui/SecVideoCallFragment;->sDisplaySurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/SecVideoCallFragment;->sDisplaySurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayVideoSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    sget-object v0, Lcom/android/incallui/SecVideoCallFragment;->sDisplaySurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/SecVideoCallFragment;->sDisplaySurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviewVideoSurface()Landroid/view/Surface;
    .locals 1

    sget-object v0, Lcom/android/incallui/SecVideoCallFragment;->sPreviewSurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/SecVideoCallFragment;->sPreviewSurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviewVideoSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    sget-object v0, Lcom/android/incallui/SecVideoCallFragment;->sPreviewSurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/SecVideoCallFragment;->sPreviewSurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0
.end method

.method protected getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    return-object v0
.end method

.method getUi()Lcom/android/incallui/SecVideoCallUi;
    .locals 0

    return-object p0
.end method

.method bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getUi()Lcom/android/incallui/SecVideoCallUi;

    move-result-object v0

    return-object v0
.end method

.method protected getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;
    .locals 1

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    return-object v0
.end method

.method protected hideDialpadWithAniamation()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/secui/SecUiAdapter;->displayDialpad(ZZ)V

    :cond_0
    return-void
.end method

.method public inflateVideoCallViews()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "inflateVideoCallViews"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoViews:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/incallui/SecVideoCallFragment;->sVideoSurfacesInUse:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallFragment;->mIncomingVideo:Landroid/view/TextureView;

    invoke-direct {v0, p0, v3, v1}, Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;-><init>(Lcom/android/incallui/SecVideoCallFragment;ILandroid/view/TextureView;)V

    sput-object v0, Lcom/android/incallui/SecVideoCallFragment;->sDisplaySurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    new-instance v0, Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;-><init>(Lcom/android/incallui/SecVideoCallFragment;ILandroid/view/TextureView;)V

    sput-object v0, Lcom/android/incallui/SecVideoCallFragment;->sPreviewSurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    sput-boolean v3, Lcom/android/incallui/SecVideoCallFragment;->sVideoSurfacesInUse:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/incallui/SecVideoCallFragment;->sDisplaySurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallFragment;->mIncomingVideo:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;->recreateView(Landroid/view/TextureView;)V

    sget-object v0, Lcom/android/incallui/SecVideoCallFragment;->sPreviewSurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;->recreateView(Landroid/view/TextureView;)V

    goto :goto_0
.end method

.method public invalidateUi()V
    .locals 1

    sget-boolean v0, Lcom/android/incallui/SecVideoCallFragment;->mIsShowingVideoUI:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallFragment;->showVideoUi(Z)V

    return-void
.end method

.method public isActivityRestart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mIsActivityRestart:Z

    return v0
.end method

.method public isDisplayVideoSurfaceCreated()Z
    .locals 1

    sget-object v0, Lcom/android/incallui/SecVideoCallFragment;->sDisplaySurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/SecVideoCallFragment;->sDisplaySurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPossibleToHideBanner()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoCallViewHandler:Landroid/os/Handler;

    const/16 v5, 0x68

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecUiAdapter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v4, "isPossibleToHideBanner : Activity is null!"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v4, "isPossibleToHideBanner : Call is null!"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v3

    if-eq v3, v6, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->isDialpadVisible()Z

    move-result v3

    if-ne v3, v6, :cond_5

    :cond_4
    const/4 v2, 0x0

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPossibleToHideBanner ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, v2

    goto :goto_0
.end method

.method public isPreviewVideoSurfaceCreated()Z
    .locals 1

    sget-object v0, Lcom/android/incallui/SecVideoCallFragment;->sPreviewSurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/SecVideoCallFragment;->sPreviewSurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPrimaryVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->isPrimaryVisible()Z

    move-result v0

    return v0
.end method

.method public notifyMediaEvent(Lcom/android/incallui/secservice/SecVideoCall;I)V
    .locals 2

    const/4 v1, 0x0

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-boolean v0, p1, Lcom/android/incallui/secservice/SecVideoCall;->mIsSwitchCameraClicked:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecVideoCallFragment;->showSwitchCameraAnimation(Z)V

    iput-boolean v1, p1, Lcom/android/incallui/secservice/SecVideoCall;->mIsSwitchCameraClicked:Z

    goto :goto_0

    :sswitch_2
    iget-boolean v0, p1, Lcom/android/incallui/secservice/SecVideoCall;->mIsSwitchCameraClicked:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecVideoCallFragment;->showSwitchCameraAnimation(Z)V

    iput-boolean v1, p1, Lcom/android/incallui/secservice/SecVideoCall;->mIsSwitchCameraClicked:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->hideDialpadWithAniamation()V

    iget-boolean v0, p1, Lcom/android/incallui/secservice/SecVideoCall;->mIsFarFrameReady:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallFragment;->showPreparingAnimation(Z)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->showNearEndCaptureAnimation()V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->showFarEndCaptureAnimation()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_1
        0x68 -> :sswitch_2
        0xc9 -> :sswitch_3
        0x12d -> :sswitch_5
        0x12e -> :sswitch_0
        0x12f -> :sswitch_4
        0x130 -> :sswitch_0
        0x193 -> :sswitch_0
        0x194 -> :sswitch_0
    .end sparse-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const/16 v2, 0x8

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mIsLandscape:Z

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoViews:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f100298

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mIncomingVideo:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mIncomingVideo:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mIncomingVideo:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f10029e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityCreated - mIsLandscape : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/SecVideoCallFragment;->mIsLandscape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/android/incallui/SecVideoCallFragment;->sVideoSurfacesInUse:Z

    iput-boolean v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mIsActivityRestart:Z

    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->addListener(Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;)V

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroy()V

    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeEmergencyModeListener(Lcom/android/incallui/InCallPresenter$EmergencyModeListener;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/16 v1, 0x64

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->removeListener(Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->cleanupSurfaces()V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoCallViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoCallViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public onEmergencyModeChange(I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isFarEndRecord()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopRecordingFarEndView(Z)V

    invoke-virtual {p0, v1, v1}, Lcom/android/incallui/SecVideoCallFragment;->showRecordingInfo(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isNearEndRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopRecordingNearEndView(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/SecVideoCallFragment;->showRecordingInfo(ZZ)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    sget-boolean v0, Lcom/android/incallui/SecVideoCallFragment;->mIsShowingVideoUI:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallFragment;->showVideoUi(Z)V

    return-void
.end method

.method public onSecVideoStateChanged(Lcom/android/incallui/secservice/SecVideoCall;)V
    .locals 1

    iget-object v0, p1, Lcom/android/incallui/secservice/SecVideoCall;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/incallui/secservice/SecVideoCall;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallFragment;->setCallState(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoViews:Landroid/view/View;

    return-void
.end method

.method protected refreshVideoSurface()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->resetFarEndSurface()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->resetNearEndSurface()V

    return-void
.end method

.method protected resetFarEndSurface()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getDisplayVideoSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v3, v3}, Lcom/android/incallui/SecVideoCallFragment;->surfaceTextureCreated(ILandroid/graphics/SurfaceTexture;II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)Landroid/view/Surface;

    goto :goto_0
.end method

.method protected resetNearEndSurface()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getPreviewVideoSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, v3, v3}, Lcom/android/incallui/SecVideoCallFragment;->surfaceTextureCreated(ILandroid/graphics/SurfaceTexture;II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)Landroid/view/Surface;

    goto :goto_0
.end method

.method protected resizeAndChangeVideoLocation()V
    .locals 0

    return-void
.end method

.method public setCallState()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallFragment;->setCallState(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVideoCallFragment;->updatePreparingAnimation(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public setDisplayVideoSurface(Landroid/view/Surface;)V
    .locals 1

    sget-object v0, Lcom/android/incallui/SecVideoCallFragment;->sDisplaySurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/SecVideoCallFragment;->sDisplaySurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;->setSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0

    return-void
.end method

.method public setPreviewVideoSurface(Landroid/view/Surface;)V
    .locals 1

    sget-object v0, Lcom/android/incallui/SecVideoCallFragment;->sPreviewSurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/SecVideoCallFragment;->sPreviewSurface:Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SecVideoCallFragment$VideoCallSurface;->setSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 8

    const-wide/16 v6, 0x3e8

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->isFarEndRecord()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secservice/SecVideoCallManager;->getRecordingStartTimeFarEnd()J

    move-result-wide v4

    sub-long v0, v2, v4

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    div-long v4, v0, v6

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->isNearEndRecord()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallFragment;->mRecInfoTimeTextViewNearEnd:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secservice/SecVideoCallManager;->getRecordingStartTimeNearEnd()J

    move-result-wide v4

    sub-long v0, v2, v4

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallFragment;->mRecInfoTimeTextViewNearEnd:Landroid/widget/TextView;

    div-long v4, v0, v6

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    return-void
.end method

.method public setVisibleCameraPreview(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public showCallBannerByDialpad(Z)V
    .locals 0

    return-void
.end method

.method public showFarEndCaptureAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showIncomingHideMeImage(Z)V
    .locals 0

    return-void
.end method

.method public showNearEndCaptureAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showPreparingAnimation(Z)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/SecVideoCallFragment;->isShowingPreparingAnimation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mPreparingAnimation:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/SecVideoCallFragment;->isShowingPreparingAnimation:Z

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mPreparingAnimation:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mPreparingAnimation:Landroid/view/View;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/incallui/SecVideoCallFragment;->isShowingPreparingAnimation:Z

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mPreparingAnimation:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showPrimaryCallBanner(Z)V
    .locals 4

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoCallViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoCallViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoCallViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/secui/SecUiAdapter;->setPrimaryVisible(Z)V

    return-void
.end method

.method public showRecordingInfo(ZZ)V
    .locals 0

    return-void
.end method

.method public showSwitchCameraAnimation(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method protected showVideoAsVideoState()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->getSecVideoState()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/SecVideoCallFragment;->showVideoAsVideoState(IZ)V

    :cond_0
    return-void
.end method

.method protected showVideoAsVideoState(I)V
    .locals 0

    return-void
.end method

.method protected showVideoAsVideoState(IZ)V
    .locals 0

    return-void
.end method

.method public showVideoAsVideoState(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getVideoState()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/SecVideoCallFragment;->showVideoAsVideoState(IZ)V

    return-void
.end method

.method protected showVideoInCall(Z)V
    .locals 0

    return-void
.end method

.method protected showVideoInCallOriginal(Z)V
    .locals 0

    return-void
.end method

.method public showVideoInCallResize(Z)V
    .locals 0

    return-void
.end method

.method protected showVideoInCallRestoreSwap(Z)V
    .locals 0

    return-void
.end method

.method protected showVideoInCallReverse(Z)V
    .locals 0

    return-void
.end method

.method protected showVideoInCallSwap(Z)V
    .locals 0

    return-void
.end method

.method protected showVideoIncoming(Z)V
    .locals 0

    return-void
.end method

.method public showVideoIndicatorArea(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected showVideoOutgoing(Z)V
    .locals 0

    return-void
.end method

.method public showVideoStateMessageUi(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showVideoUi(Z)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showVideoUi-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->inflateVideoCallViews()V

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoViews:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sput-boolean p1, Lcom/android/incallui/SecVideoCallFragment;->mIsShowingVideoUI:Z

    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->cleanupSurfaces()V

    goto :goto_1
.end method

.method public startTimer(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoCallViewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoCallViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoCallViewHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method protected surfaceTextureCreated(ILandroid/graphics/SurfaceTexture;II)V
    .locals 3

    const-string v2, "surfaceTextureCreated"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4}, Lcom/android/incallui/secservice/SecVideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallFragment;->setDisplayVideoSurface(Landroid/view/Surface;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4}, Lcom/android/incallui/secservice/SecVideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecVideoCallFragment;->setPreviewVideoSurface(Landroid/view/Surface;)V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->setDisplayOrientation()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected surfaceTextureDestroyed(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "surfaceTextureDestroyed"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)Landroid/view/Surface;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)Landroid/view/Surface;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected surfaceTextureUpdated(ILandroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method protected togglePrimaryCallBanner()V
    .locals 5

    const/16 v3, 0x64

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "clean_mode"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoCallViewHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallFragment;->mVideoCallViewHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->isPrimaryVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->isPossibleToHideBanner()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallFragment;->mTouchBackground:Landroid/view/View;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallFragment;->mTouchBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "togglePrimaryCallBanner : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecVideoCallFragment;->showPrimaryCallBanner(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->isModifyBannerShow()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "concept_usa_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallFragment;->mTouchBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public updateModifyBannerLayout(Z)V
    .locals 0

    return-void
.end method

.method public updateVideoCleanMode(Z)V
    .locals 0

    return-void
.end method

.method public updateVideoIndicatorArea()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->isPenMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallFragment;->showVideoIndicatorArea(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallFragment;->showVideoIndicatorArea(Z)V

    goto :goto_0
.end method
