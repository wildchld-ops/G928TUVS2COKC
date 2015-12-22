.class Lcom/android/server/wm/WindowStateAnimator;
.super Ljava/lang/Object;
.source "WindowStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;
    }
.end annotation


# static fields
.field static final COMMIT_DRAW_PENDING:I = 0x2

.field static final DRAW_PENDING:I = 0x1

.field static final HAS_DRAWN:I = 0x4

.field static final NO_SURFACE:I = 0x0

.field static final READY_TO_SHOW:I = 0x3

.field private static final SYSTEM_UI_FLAGS_LAYOUT_STABLE_FULLSCREEN:I = 0x500

.field static final TAG:Ljava/lang/String; = "WindowStateAnimator"

.field private static final bDSSEnabled:Z = true


# instance fields
.field private isGPUlevelChanged:Z

.field private isVRFlingerEnabled:Z

.field mAlpha:F

.field mAnimDh:I

.field mAnimDw:I

.field mAnimLayer:I

.field mAnimating:Z

.field mAnimation:Landroid/view/animation/Animation;

.field mAnimationIsEntrance:Z

.field mAnimationSkipRequested:Z

.field mAnimationStartTime:J

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

.field final mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mAttrType:I

.field mClipRect:Landroid/graphics/Rect;

.field final mContext:Landroid/content/Context;

.field mDrawState:I

.field mDsDx:F

.field mDsDy:F

.field mDtDx:F

.field mDtDy:F

.field mEnterAnimationPending:Z

.field mEnteringAnimation:Z

.field mFullyTransparent:Z

.field private mGpuMaxHelper:Landroid/os/DVFSHelper;

.field private mGpuMinHelper:Landroid/os/DVFSHelper;

.field mHasClipRect:Z

.field mHasLocalTransformation:Z

.field mHasTransformation:Z

.field mHaveMatrix:Z

.field mHiddenBeforeRotationAnimation:Z

.field final mIsWallpaper:Z

.field mKeyguardGoingAwayAnimation:Z

.field mLastAlpha:F

.field mLastAnimationTime:J

.field mLastClipRect:Landroid/graphics/Rect;

.field mLastDsDx:F

.field mLastDsDy:F

.field mLastDtDx:F

.field mLastDtDy:F

.field mLastHidden:Z

.field mLastLayer:I

.field mLayerStack:I

.field mLocalAnimating:Z

.field private mMovedTransparentRegion:Z

.field mPendingDestroySurface:Landroid/view/SurfaceControl;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field private mSecure:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field mShownAlpha:F

.field private mShownFrameChangedInAnimate:Z

.field mSurfaceAlpha:F

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mSurfaceDestroyDeferred:Z

.field mSurfaceH:F

.field mSurfaceInsetRect:Landroid/graphics/Rect;

.field mSurfaceLayer:I

.field mSurfaceLayerStack:I

.field mSurfaceResized:Z

.field mSurfaceShown:Z

.field mSurfaceW:F

.field mSurfaceX:F

.field mSurfaceY:F

.field private mTempShownFrame:Landroid/graphics/RectF;

.field mTmpClipRect:Landroid/graphics/Rect;

.field final mTransformation:Landroid/view/animation/Transformation;

.field private mTransparentRegion:Landroid/graphics/Region;

.field private mTransparentRegionOffset:Landroid/graphics/Point;

.field final mUniverseTransform:Landroid/view/animation/Transformation;

.field mWasAnimating:Z

.field final mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowState;)V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mUniverseTransform:Landroid/view/animation/Transformation;

    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSecure:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iput v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iput v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iput v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mHiddenBeforeRotationAnimation:Z

    iput-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransparentRegion:Landroid/graphics/Region;

    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mMovedTransparentRegion:Z

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransparentRegionOffset:Landroid/graphics/Point;

    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationSkipRequested:Z

    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownFrameChangedInAnimate:Z

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTempShownFrame:Landroid/graphics/RectF;

    iput-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    iput-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mGpuMinHelper:Landroid/os/DVFSHelper;

    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->isGPUlevelChanged:Z

    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->isVRFlingerEnabled:Z

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v3, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDw:I

    iget v3, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDh:I

    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_1

    move-object v3, v4

    :goto_1
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v3, :cond_2

    :goto_2
    iput-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    return-void

    :cond_0
    const-string v3, "WindowStateAnimator"

    const-string v5, "WindowStateAnimator ctor: Display has been removed"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    goto :goto_1

    :cond_2
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto :goto_2
.end method

.method private adjustSurfaceInsetForReduceScreen()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mReduceScreenRunning:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mReduceScreenStarted:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v1, Lcom/android/server/wm/WindowManagerService;->mReduceScreenScale:F

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_2
    return-void
.end method

.method private applyFadeoutDuringKeyguardExitAnimation()V
    .locals 14

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v10}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v10}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iget-wide v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAnimationTime:J

    sub-long v2, v10, v8

    sub-long v4, v0, v2

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-gtz v10, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x0

    invoke-direct {v7, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AnimationSet;->setStartTime(J)V

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    const v11, 0x10a0011

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v6, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDw:I

    iget v13, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDh:I

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    iput-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method private stepAnimation(J)Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method applyAnimationLocked(IZ)Z
    .locals 12

    const/16 v11, 0x832

    const/4 v10, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, -0x1

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    if-ne v7, v11, :cond_1

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayDisableWindowAnimations:Z

    if-eqz v7, :cond_1

    move v5, v6

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-boolean v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eq v7, p2, :cond_3

    :cond_2
    iget-boolean v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    if-eqz v7, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    if-eqz v6, :cond_0

    if-ne p1, v10, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->applyFadeoutDuringKeyguardExitAnimation()V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->okToDisplay(I)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-interface {v7, v8, p1}, Landroid/view/WindowManagerPolicy;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v0, 0x0

    if-eqz v1, :cond_8

    if-eq v1, v9, :cond_7

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    invoke-static {v7, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :cond_5
    :goto_1
    if-eqz v0, :cond_a

    if-ne p1, v10, :cond_6

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v7

    if-ne v7, v9, :cond_6

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/AppWindowToken;->updateStartingAnimAdjustment(Lcom/android/server/wm/WindowState;)V

    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    iput-boolean p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v7, v11, :cond_a

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v7, v0}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    packed-switch p1, :pswitch_data_0

    :goto_3
    if-ltz v2, :cond_5

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, v8, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    const/4 v2, 0x0

    goto :goto_3

    :pswitch_1
    const/4 v2, 0x1

    goto :goto_3

    :pswitch_2
    const/4 v2, 0x2

    goto :goto_3

    :pswitch_3
    const/4 v2, 0x3

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    :cond_a
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v7, :cond_0

    move v5, v6

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method applyDecorRect(Landroid/graphics/Rect;)V
    .locals 12

    const/4 v8, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v6, v4, Lcom/android/server/wm/WindowState;->mXOffset:I

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int v1, v6, v7

    iget v6, v4, Lcom/android/server/wm/WindowState;->mYOffset:I

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int v3, v6, v7

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8, v8, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v1

    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v3

    iget v9, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v1

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    iget-boolean v6, v4, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v6, :cond_0

    iget v6, v4, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    iget v2, v4, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    sub-float/2addr v7, v11

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    sub-float/2addr v7, v11

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    mul-float/2addr v7, v2

    sub-float/2addr v7, v11

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    mul-float/2addr v7, v2

    sub-float/2addr v7, v11

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method applyEnterAnimationLocked()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationSkipRequested:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationSkipRequested:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method cancelExitAnimationForNextAnimationLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    :cond_0
    return-void
.end method

.method public clearAnimation()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    :cond_0
    return-void
.end method

.method commitFinishDrawingLocked(J)Z
    .locals 5

    const/4 v4, 0x3

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v4, :cond_0

    const-string v1, "WindowStateAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commitFinishDrawingLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cur mDrawState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-eq v1, v4, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method computeShownFrameLocked()V
    .locals 47

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v42, v0

    if-eqz v42, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move/from16 v42, v0

    if-eqz v42, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v42, v0

    if-eqz v42, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    move/from16 v42, v0

    if-eqz v42, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v5, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    :goto_1
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v42

    if-eqz v42, :cond_0

    const/16 v16, 0x1

    :cond_0
    if-eqz v16, :cond_20

    if-eqz v20, :cond_20

    move-object/from16 v38, v20

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    move/from16 v42, v0

    if-eqz v42, :cond_3

    if-eqz v38, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimateWallpaperWithTarget:Z

    move/from16 v42, v0

    if-eqz v42, :cond_3

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move/from16 v42, v0

    if-eqz v42, :cond_1

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v42, v0

    if-eqz v42, :cond_1

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v42

    if-nez v42, :cond_1

    move-object/from16 v0, v37

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    :cond_1
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v42, v0

    if-nez v42, :cond_21

    const/16 v39, 0x0

    :goto_3
    if-eqz v39, :cond_2

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    move/from16 v42, v0

    if-eqz v42, :cond_2

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v42, v0

    if-eqz v42, :cond_2

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v42

    if-nez v42, :cond_2

    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v42

    const/16 v43, 0x0

    cmpl-float v42, v42, v43

    if-nez v42, :cond_3

    if-eqz v20, :cond_3

    if-eqz v19, :cond_3

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_22

    move-object/from16 v26, v20

    :goto_4
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v42, v0

    if-nez v42, :cond_23

    const/16 v25, 0x0

    :goto_5
    if-eqz v25, :cond_3

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    move/from16 v42, v0

    if-eqz v42, :cond_3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v42, v0

    if-eqz v42, :cond_3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v42

    if-nez v42, :cond_3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    move-object/from16 v42, v0

    if-eqz v42, :cond_3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v42

    const/16 v43, 0x0

    cmpl-float v42, v42, v43

    if-eqz v42, :cond_3

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v30

    if-eqz v30, :cond_24

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v42

    if-eqz v42, :cond_24

    const/16 v29, 0x1

    :goto_6
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    if-nez v31, :cond_4

    if-nez v8, :cond_4

    if-nez v5, :cond_4

    if-eqz v29, :cond_2e

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v35, v0

    if-eqz v29, :cond_2c

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    move-result v42

    if-eqz v42, :cond_2c

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v42

    move/from16 v0, v42

    int-to-float v15, v0

    const/high16 v42, 0x3f800000    # 1.0f

    cmpl-float v42, v36, v42

    if-ltz v42, :cond_25

    const/high16 v42, 0x3f800000    # 1.0f

    cmpl-float v42, v15, v42

    if-ltz v42, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v42

    if-nez v42, :cond_25

    const/high16 v42, 0x3f800000    # 1.0f

    const/high16 v43, 0x40000000    # 2.0f

    div-float v43, v43, v36

    add-float v42, v42, v43

    const/high16 v43, 0x3f800000    # 1.0f

    const/high16 v44, 0x40000000    # 2.0f

    div-float v44, v44, v15

    add-float v43, v43, v44

    const/high16 v44, 0x40000000    # 2.0f

    div-float v44, v36, v44

    const/high16 v45, 0x40000000    # 2.0f

    div-float v45, v15, v45

    move-object/from16 v0, v35

    move/from16 v1, v42

    move/from16 v2, v43

    move/from16 v3, v44

    move/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    :goto_7
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHiddenBeforeRotationAnimation:Z

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v43, v0

    move-object/from16 v0, v35

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    if-eqz v31, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v42

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_5
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v43, v0

    add-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v44, v0

    add-int v43, v43, v44

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, v35

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v42, v0

    const/16 v43, 0x8d4

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_6

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v42

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v42

    if-eqz v42, :cond_2d

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_7
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v42, v0

    if-eqz v42, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mUniverseTransform:Landroid/view/animation/Transformation;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v42

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_8
    if-eqz v29, :cond_9

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v42

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_9
    if-nez v12, :cond_d

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v42, v0

    if-eqz v42, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v32

    :cond_a
    if-eqz v32, :cond_b

    invoke-virtual/range {v32 .. v32}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v42

    if-eqz v42, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v32

    :cond_c
    if-eqz v32, :cond_d

    invoke-virtual/range {v32 .. v32}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v42

    if-nez v42, :cond_d

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v42, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v43, v0

    move-object/from16 v0, v35

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v42, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v43, v0

    move-object/from16 v0, v35

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_d
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v42, 0x0

    aget v42, v34, v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    const/16 v42, 0x3

    aget v42, v34, v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    const/16 v42, 0x1

    aget v42, v34, v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    const/16 v42, 0x4

    aget v42, v34, v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    const/16 v42, 0x2

    aget v40, v34, v42

    const/16 v42, 0x5

    aget v41, v34, v42

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v36

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTempShownFrame:Landroid/graphics/RectF;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v42, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v43, v0

    add-float v43, v43, v40

    int-to-float v0, v15

    move/from16 v44, v0

    add-float v44, v44, v41

    move-object/from16 v0, v42

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v43

    move/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTempShownFrame:Landroid/graphics/RectF;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v43, v0

    cmpl-float v42, v42, v43

    if-nez v42, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTempShownFrame:Landroid/graphics/RectF;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v43, v0

    cmpl-float v42, v42, v43

    if-eqz v42, :cond_f

    :cond_e
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownFrameChangedInAnimate:Z

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    move/from16 v42, v0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    move/from16 v42, v0

    if-eqz v42, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v42

    if-eqz v42, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    move/from16 v46, v0

    invoke-virtual/range {v42 .. v46}, Lcom/android/server/wm/WindowState;->isIdentityMatrix(FFFF)Z

    move-result v42

    if-eqz v42, :cond_1a

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    cmpl-float v42, v40, v42

    if-nez v42, :cond_1a

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    cmpl-float v42, v41, v42

    if-nez v42, :cond_1a

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move/from16 v42, v0

    and-int/lit8 v13, v42, 0xc

    if-eqz v31, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v43

    mul-float v42, v42, v43

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_11
    if-eqz v8, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v42, v0

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v43

    mul-float v42, v42, v43

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_12
    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v42, v0

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v43

    mul-float v42, v42, v43

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result v42

    if-eqz v42, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v42, v0

    if-eqz v42, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    if-eqz v42, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    if-eqz v42, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wm/WindowState;->getMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v22

    if-eqz v22, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v42

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v42, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v43, v0

    sub-float v9, v42, v43

    const/high16 v42, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    move/from16 v43, v0

    sub-float v42, v42, v43

    mul-float v42, v42, v9

    add-float v9, v9, v42

    const/16 v42, 0x0

    cmpl-float v42, v9, v42

    if-lez v42, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    const/high16 v43, 0x3f000000    # 0.5f

    add-float v43, v43, v9

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    neg-int v0, v0

    move/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Landroid/graphics/Rect;->offset(II)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v42, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v43, v0

    sub-float v10, v42, v43

    const/high16 v42, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    move/from16 v43, v0

    sub-float v42, v42, v43

    mul-float v42, v42, v10

    add-float v10, v10, v42

    const/16 v42, 0x0

    cmpl-float v42, v10, v42

    if-lez v42, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/high16 v44, 0x3f000000    # 0.5f

    add-float v44, v44, v10

    move/from16 v0, v44

    float-to-int v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    neg-int v0, v0

    move/from16 v44, v0

    invoke-virtual/range {v42 .. v44}, Landroid/graphics/Rect;->offset(II)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v42, v0

    const/16 v43, 0x0

    cmpl-float v42, v42, v43

    if-lez v42, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v44, v0

    div-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v44, v0

    div-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->right:I

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v42, v0

    const/16 v43, 0x0

    cmpl-float v42, v42, v43

    if-lez v42, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v44, v0

    div-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v44, v0

    div-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v42, v0

    move/from16 v0, v42

    and-int/lit16 v0, v0, 0x4000

    move/from16 v42, v0

    if-eqz v42, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v43, v0

    sub-int v24, v42, v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    sub-int v23, v42, v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    add-int v43, v43, v24

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    add-int v43, v43, v23

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_17
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v42, v0

    if-eqz v42, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mUniverseTransform:Landroid/view/animation/Transformation;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v43

    mul-float v42, v42, v43

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_19
    if-eqz v29, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v42, v0

    if-nez v42, :cond_1a

    if-nez v13, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v42, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v43

    mul-float v42, v42, v43

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    move/from16 v42, v0

    if-nez v42, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v42, v0

    if-eqz v42, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mWaitingForMaximizeAnim:Z

    move/from16 v42, v0

    if-eqz v42, :cond_1c

    :cond_1b
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v42, v0

    if-eqz v42, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mIsLastShownWhenLocked:Z

    move/from16 v42, v0

    if-eqz v42, :cond_1d

    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_1d
    :goto_a
    return-void

    :cond_1e
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_1f
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_20
    move-object/from16 v38, v21

    goto/16 :goto_2

    :cond_21
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v39, v0

    goto/16 :goto_3

    :cond_22
    move-object/from16 v26, v19

    goto/16 :goto_4

    :cond_23
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v25, v0

    goto/16 :goto_5

    :cond_24
    const/16 v29, 0x0

    goto/16 :goto_6

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v42

    if-eqz v42, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v42, v0

    const/16 v43, 0x3e9

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_27

    const/16 v17, 0x1

    :goto_b
    const/high16 v42, 0x3f800000    # 1.0f

    cmpl-float v42, v36, v42

    if-ltz v42, :cond_2b

    const/high16 v42, 0x3f800000    # 1.0f

    cmpl-float v42, v15, v42

    if-ltz v42, :cond_2b

    if-eqz v17, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->width()I

    move-result v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/graphics/Rect;->width()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-ge v0, v1, :cond_28

    const/16 v27, 0x4

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->height()I

    move-result v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/graphics/Rect;->height()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-ge v0, v1, :cond_29

    const/16 v28, 0x4

    :goto_d
    if-gtz v27, :cond_26

    if-lez v28, :cond_2a

    :cond_26
    const/high16 v42, 0x3f800000    # 1.0f

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v43, v0

    div-float v43, v43, v36

    add-float v42, v42, v43

    const/high16 v43, 0x3f800000    # 1.0f

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v44, v0

    div-float v44, v44, v15

    add-float v43, v43, v44

    const/high16 v44, 0x40000000    # 2.0f

    div-float v44, v36, v44

    const/high16 v45, 0x40000000    # 2.0f

    div-float v45, v15, v45

    move-object/from16 v0, v35

    move/from16 v1, v42

    move/from16 v2, v43

    move/from16 v3, v44

    move/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto/16 :goto_7

    :cond_27
    const/16 v17, 0x0

    goto/16 :goto_b

    :cond_28
    const/16 v27, 0x0

    goto :goto_c

    :cond_29
    const/16 v28, 0x0

    goto :goto_d

    :cond_2a
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_7

    :cond_2b
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_7

    :cond_2c
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_8

    :cond_2d
    const/16 v42, 0x9

    move/from16 v0, v42

    new-array v0, v0, [F

    move-object/from16 v18, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v42, 0x2

    aget v40, v18, v42

    const/16 v42, 0x5

    aget v41, v18, v42

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    const/high16 v42, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v43, v0

    div-float v42, v42, v43

    const/high16 v43, 0x3f800000    # 1.0f

    sub-float v11, v42, v43

    mul-float v42, v40, v11

    mul-float v43, v41, v11

    move-object/from16 v0, v35

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_9

    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    move/from16 v42, v0

    if-eqz v42, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperActionPending:Z

    move/from16 v42, v0

    if-nez v42, :cond_1d

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v42, v0

    if-eqz v42, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v42, v0

    const/16 v43, 0x7e9

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-ge v0, v1, :cond_3b

    const/4 v7, 0x1

    :goto_e
    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v42, v0

    if-eqz v42, :cond_30

    if-nez v12, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v32

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v42

    if-nez v42, :cond_32

    if-eqz v32, :cond_31

    invoke-virtual/range {v32 .. v32}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v42

    if-eqz v42, :cond_32

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v32

    :cond_32
    if-nez v7, :cond_33

    if-eqz v32, :cond_3c

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v43, v0

    move-object/from16 v0, v35

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v43, v0

    add-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v44, v0

    add-int v43, v43, v44

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, v35

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-eqz v7, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mUniverseTransform:Landroid/view/animation/Transformation;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v42

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_34
    if-eqz v32, :cond_35

    invoke-virtual/range {v32 .. v32}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v42

    if-nez v42, :cond_35

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v42, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v43, v0

    move-object/from16 v0, v35

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v42, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v43, v0

    move-object/from16 v0, v35

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_35
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    const/16 v42, 0x0

    aget v42, v34, v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    const/16 v42, 0x3

    aget v42, v34, v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    const/16 v42, 0x1

    aget v42, v34, v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    const/16 v42, 0x4

    aget v42, v34, v42

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    const/16 v42, 0x2

    aget v40, v34, v42

    const/16 v42, 0x5

    aget v41, v34, v42

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v36

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v42, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v43, v0

    add-float v43, v43, v40

    int-to-float v0, v15

    move/from16 v44, v0

    add-float v44, v44, v41

    move-object/from16 v0, v42

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v43

    move/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    move/from16 v42, v0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    if-eqz v7, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mUniverseTransform:Landroid/view/animation/Transformation;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v43

    mul-float v42, v42, v43

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_36
    :goto_f
    if-eqz v30, :cond_37

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v42

    if-nez v42, :cond_37

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHiddenBeforeRotationAnimation:Z

    move/from16 v42, v0

    if-eqz v42, :cond_37

    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    move/from16 v42, v0

    if-nez v42, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v42, v0

    if-eqz v42, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mWaitingForMaximizeAnim:Z

    move/from16 v42, v0

    if-eqz v42, :cond_39

    :cond_38
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_39
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownFrameChangedInAnimate:Z

    move/from16 v42, v0

    if-eqz v42, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v42, v0

    if-eqz v42, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v42

    if-nez v42, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    :cond_3a
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownFrameChangedInAnimate:Z

    goto/16 :goto_a

    :cond_3b
    const/4 v7, 0x0

    goto/16 :goto_e

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v42, v0

    if-nez v42, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v42, v0

    if-eqz v42, :cond_3e

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    invoke-virtual/range {v42 .. v44}, Landroid/graphics/RectF;->offset(FF)V

    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    move/from16 v42, v0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v42, v0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v42, v0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    goto/16 :goto_f
.end method

.method createSurfaceLocked()Landroid/view/SurfaceControl;
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_e

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_0

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v2, :cond_f

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    const/4 v8, 0x4

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    const/high16 v2, -0x80000000

    or-int/2addr v8, v2

    :cond_1
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_2

    or-int/lit16 v8, v8, 0x80

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSecure:Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->isScreenCaptureDisabledLocked(I)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit16 v8, v8, 0x80

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSecure:Z

    :cond_3
    invoke-static {}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getInstance()Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getInstance()Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/high16 v2, 0x8000000

    or-int/2addr v8, v2

    :cond_4
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_5

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v8, v2

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v15

    if-eqz v15, :cond_6

    const/4 v2, 0x2

    if-ne v15, v2, :cond_10

    :cond_6
    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isCascadeRunning()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getRequestedOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFakeTarget(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v8, v2

    :cond_7
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_11

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    :goto_2
    if-gtz v5, :cond_8

    const/4 v5, 0x1

    :cond_8
    if-gtz v6, :cond_9

    const/4 v6, 0x1

    :cond_9
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int/2addr v2, v3

    int-to-float v13, v2

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget-object v3, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->adjustSurfaceInsetForReduceScreen()V

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v2

    if-eqz v2, :cond_12

    int-to-float v2, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v5, v2

    int-to-float v2, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v2, v3

    sub-float/2addr v13, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v2, v3

    sub-float v16, v16, v2

    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayerStack:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceAlpha:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    int-to-float v2, v5

    :try_start_0
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    int-to-float v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_13

    const/4 v12, 0x1

    :goto_4
    if-eqz v12, :cond_14

    const/4 v7, -0x3

    :goto_5
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v2}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_a

    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_a

    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_a

    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_a

    or-int/lit16 v8, v8, 0x400

    :cond_a
    new-instance v2, Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v3, v3, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v2 .. v8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string/jumbo v2, "sys.hmt.connected"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/server/wm/VrHelper;->getInstance()Lcom/android/server/wm/VrHelper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/VrHelper;->isVRFlingerMode()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v2, "sys.vrflinger.enable"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->isVRFlingerEnabled:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setVRCinemaMode(Z)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->isGPUlevelChanged:Z

    if-nez v2, :cond_b

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowStateAnimator;->setGPUlevel(I)I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->isGPUlevelChanged:Z

    :cond_b
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SAFE_DEBUG:Z

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->printWindowHasSurface()V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_c
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_1
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mDssScale:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v19, v0

    mul-float v4, v4, v19

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getLayerStack()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getLayerStack()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mLayerStack:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayerStack:I

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayer(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_7
    const/4 v2, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    :goto_8
    return-object v2

    :cond_f
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    goto/16 :goto_0

    :cond_10
    const/4 v14, 0x2

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v5, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v13, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float v16, v16, v2

    goto/16 :goto_3

    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_14
    :try_start_4
    iget v7, v9, Landroid/view/WindowManager$LayoutParams;->format:I
    :try_end_4
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_5

    :catch_0
    move-exception v11

    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const-string v2, "WindowStateAnimator"

    const-string v3, "OutOfResourcesException creating surface"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v3, "create"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v2, 0x0

    goto :goto_8

    :catch_1
    move-exception v11

    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const-string v2, "WindowStateAnimator"

    const-string v3, "Exception creating surface"

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_15
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_6

    :catch_2
    move-exception v11

    :try_start_6
    const-string v2, "WindowStateAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating surface in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v3, "create-init"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v2
.end method

.method destroyDeferredSurfaceLocked()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "WindowStateAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when destroying Window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method destroySurfaceLocked()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v6, v3, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput v6, v3, Lcom/android/server/wm/AppWindowToken;->startingAnimLayerAdjustment:I

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->isVRFlingerEnabled:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "sys.vrflinger.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->isVRFlingerEnabled:Z

    :cond_2
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->isGPUlevelChanged:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->releaseGPUMhz()V

    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->isGPUlevelChanged:Z

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    :goto_0
    if-lez v2, :cond_4

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    goto :goto_0

    :cond_4
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->destroy()V

    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->hide()V

    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowAnimator;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v6, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    :cond_7
    return-void

    :cond_8
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->destroy()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown when destroying Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method drawStateToString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "NO_SURFACE"

    goto :goto_0

    :pswitch_1
    const-string v0, "DRAW_PENDING"

    goto :goto_0

    :pswitch_2
    const-string v0, "COMMIT_DRAW_PENDING"

    goto :goto_0

    :pswitch_3
    const-string v0, "READY_TO_SHOW"

    goto :goto_0

    :pswitch_4
    const-string v0, "HAS_DRAWN"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAnimating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mLocalAnimating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mAnimationIsEntrance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mAnimation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "XForm: has="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " hasLocal="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_5

    if-eqz p3, :cond_4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDrawState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLastHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Surface: shown="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " layer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " secure="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSecure:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " rect=("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, ") "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " x "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingDestroySurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSurfaceResized="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mSurfaceDestroyDeferred="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e9

    if-ne v0, v1, :cond_9

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUniverseTransform="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mUniverseTransform:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_9
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_b

    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShownAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mLastAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    :cond_b
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_d

    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mGlobalScale="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mDsDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mDtDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mDsDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mDtDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    :cond_d
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationSkipRequested:Z

    if-eqz v0, :cond_e

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAnimationSkipRequested="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationSkipRequested:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_e
    return-void
.end method

.method finishDrawingLocked()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    move v0, v1

    :goto_0
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    const-string v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finishing drawing window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": mDrawState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v3, v1, :cond_3

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    const-string v2, "WindowStateAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Draw state now committed in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    :goto_1
    return v1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method finishExit()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->dispatchWindowShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isWindowAnimating()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v2, :cond_4

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isWindowAnimating()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v4, v2, Lcom/android/server/wm/WindowState;->mExiting:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v4, v2, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method hide()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WindowStateAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception hiding surface in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hideSurfaceBeofreScreenRotationAnimation(Landroid/graphics/Matrix;F)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHiddenBeforeRotationAnimation:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method isAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDummyAnimation()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWindowAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method performShowLocked()Z
    .locals 10

    const/4 v5, 0x1

    const/4 v9, 0x3

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v9, :cond_2

    const/4 v2, 0x0

    const-string v7, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "performShow on "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ": mDrawState="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " readyForDisplay="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->isReadyForDisplayIgnoringKeyguard()Z

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " starting="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v9, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " during animation: policyVis="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " attHidden="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " tok.hiddenRequested="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    :goto_2
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " tok.hidden="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    :goto_3
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " animating="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " tok animating="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    :goto_4
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v4, v9, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isReadyForDisplayIgnoringKeyguard()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v9, :cond_3

    const-string v7, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Showing "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " during animation: policyVis="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " attHidden="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " tok.hiddenRequested="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    :goto_5
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " tok.hidden="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    :goto_6
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " animating="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " tok animating="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    :goto_7
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    :cond_4
    :goto_8
    if-lez v3, :cond_c

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-eqz v4, :cond_4

    iput-boolean v6, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_4

    iput-boolean v5, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto :goto_8

    :cond_5
    move v4, v6

    goto/16 :goto_1

    :cond_6
    move v4, v6

    goto/16 :goto_2

    :cond_7
    move v4, v6

    goto/16 :goto_3

    :cond_8
    move v4, v6

    goto/16 :goto_4

    :cond_9
    move v4, v6

    goto/16 :goto_5

    :cond_a
    move v4, v6

    goto :goto_6

    :cond_b
    move v4, v6

    goto :goto_7

    :cond_c
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v9, :cond_e

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v5, v4, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v4, :cond_d

    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-nez v4, :cond_f

    :goto_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_d
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_e
    move v6, v5

    goto/16 :goto_0

    :cond_f
    const-string v4, "WindowStateAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finish starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": first real window is shown, no animation"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public prepareSurfaceLocked(Z)V
    .locals 12

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v6, :cond_2

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mWaitingForOrientation:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v5, v4, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v5, v5, -0x9

    iput v5, v4, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->stopWaitingForOrientation()V

    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    iget-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    :cond_3
    :goto_1
    if-eqz v0, :cond_10

    iget-boolean v6, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v6, v5, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v6, v6, -0x9

    iput v6, v5, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v3, v5, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    :cond_4
    :goto_2
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v4, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    goto :goto_0

    :cond_5
    iget-boolean v6, v3, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v6, :cond_6

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/WindowAnimator;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V

    iget-boolean v6, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v6, :cond_3

    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->stopWaitingForOrientation()V

    goto :goto_1

    :cond_7
    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ne v6, v7, :cond_8

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    iget v6, v3, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iget v7, v3, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    iget v6, v3, Lcom/android/server/wm/WindowState;->mLastVScale:F

    iget v7, v3, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v6, :cond_e

    :cond_8
    const/4 v0, 0x1

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    iget v6, v3, Lcom/android/server/wm/WindowState;->mHScale:F

    iput v6, v3, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iget v6, v3, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v6, v3, Lcom/android/server/wm/WindowState;->mLastVScale:F

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_3

    :try_start_0
    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceAlpha:F

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl;->setLayer(I)V

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e9

    if-ne v6, v7, :cond_b

    move v2, v4

    :goto_3
    if-eqz v2, :cond_c

    iget-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v6, :cond_c

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_c

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_c

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowStateAnimator;->setCascadedSurfaceMatrixLocked(Lcom/android/server/wm/WindowState;)V

    :goto_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->updateFixedOrientationWindowInTransactionLocked()V

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowStateAnimator;->updateSOTranlateInfo(I)V

    iget-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->showSurfaceRobustlyLocked()Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    iget-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v7}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    :cond_9
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v7

    const/16 v8, 0x8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    :cond_a
    :goto_5
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_3

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/wm/WindowToken;->hasVisible:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string v6, "WindowStateAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error updating surface in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p1, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v7, "update"

    invoke-virtual {v6, p0, v7, v4}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_1

    :cond_b
    move v2, v5

    goto :goto_3

    :cond_c
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v8, v3, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v9, v3, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget v10, v3, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v11, v3, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_4

    :cond_d
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->stopWaitingForOrientation()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_f
    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->stopWaitingForOrientation()V

    goto/16 :goto_2

    :cond_10
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->stopWaitingForOrientation()V

    goto/16 :goto_0
.end method

.method printWindowHasSurface()V
    .locals 8

    const-string v5, "WindowStateAnimator"

    const-string/jumbo v6, "hasSurface window list"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_1
    if-ltz v3, :cond_2

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-boolean v5, v2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    if-ne v2, v5, :cond_1

    const-string v5, "WindowStateAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Window #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(*)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    const-string v5, "WindowStateAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Window #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public releaseGPUMhz()V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mGpuMinHelper:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;J)V

    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;J)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    iput-wide p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method setCascadedSurfaceMatrixLocked(Lcom/android/server/wm/WindowState;)V
    .locals 7

    const/high16 v4, 0x3f800000    # 1.0f

    iget v0, p1, Lcom/android/server/wm/WindowState;->mHScale:F

    iget v1, p1, Lcom/android/server/wm/WindowState;->mVScale:F

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget v2, p1, Lcom/android/server/wm/WindowState;->mHScale:F

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    div-float v0, v2, v3

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget v2, p1, Lcom/android/server/wm/WindowState;->mVScale:F

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    div-float v1, v2, v3

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    mul-float/2addr v5, v1

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    mul-float/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    return-void
.end method

.method public setGPUlevel(I)I
    .locals 10

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mGpuMinHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    const-string v2, "VR_GPU_MIN"

    const/16 v3, 0x10

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mGpuMinHelper:Landroid/os/DVFSHelper;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v7, v0, -0x1

    if-le p1, v7, :cond_2

    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mGpuMinHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mGpuMinHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    aget v2, v2, v6

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    aget v0, v0, v6

    return v0

    :cond_2
    sub-int v6, v7, p1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method setLayerStack(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLayerStack:I

    return-void
.end method

.method setOpaqueLocked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method public setSecureLocked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSecure:Z

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_0

    :cond_2
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V

    iput-boolean p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSecure:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method setSurfaceBoundariesLocked(Z)V
    .locals 15

    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v11, v11, 0x4000

    if-eqz v11, :cond_c

    iget v10, v9, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v2, v9, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    :goto_0
    const/4 v11, 0x1

    if-ge v10, v11, :cond_0

    const/4 v10, 0x1

    :cond_0
    const/4 v11, 0x1

    if-ge v2, v11, :cond_1

    const/4 v2, 0x1

    :cond_1
    iget v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    int-to-float v12, v10

    cmpl-float v11, v11, v12

    if-nez v11, :cond_2

    iget v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    int-to-float v12, v2

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_4

    :cond_2
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v11, v11, 0x10

    if-nez v11, :cond_3

    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v11, :cond_4

    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v11, v11, 0x10

    if-eqz v11, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    :cond_4
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v4, v11, Landroid/graphics/RectF;->left:F

    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v8, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget-object v12, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->adjustSurfaceInsetForReduceScreen()V

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v11

    if-eqz v11, :cond_d

    int-to-float v11, v10

    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iget-object v13, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    iget v13, v9, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v10, v11

    int-to-float v11, v2

    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iget-object v13, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    iget v13, v9, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v2, v11

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget v12, v9, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v11, v12

    sub-float/2addr v4, v11

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    iget v12, v9, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v11, v12

    sub-float/2addr v8, v11

    :goto_1
    iget-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mMovedTransparentRegion:Z

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mMovedTransparentRegion:Z

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransparentRegion:Landroid/graphics/Region;

    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransparentRegionOffset:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    neg-int v12, v12

    iget-object v13, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransparentRegionOffset:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    neg-int v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Region;->translate(II)V

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v11, v12}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    :cond_5
    iget v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    cmpl-float v11, v11, v4

    if-nez v11, :cond_6

    iget v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    cmpl-float v11, v11, v8

    if-eqz v11, :cond_e

    :cond_6
    const/4 v6, 0x1

    :goto_2
    if-eqz v6, :cond_8

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    iput v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    :try_start_0
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v12, 0x1000000

    and-int/2addr v11, v12

    if-eqz v11, :cond_f

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    iget v13, v9, Lcom/android/server/wm/WindowState;->mDssScale:F

    mul-float/2addr v12, v13

    iget v13, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    iget v14, v9, Lcom/android/server/wm/WindowState;->mDssScale:F

    mul-float/2addr v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/view/SurfaceControl;->setPosition(FF)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->updateFixedOrientationWindowInTransactionLocked()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_4
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/server/wm/WindowStateAnimator;->updateSOTranlateInfo(I)V

    :cond_8
    iget v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    int-to-float v12, v10

    cmpl-float v11, v11, v12

    if-nez v11, :cond_9

    iget v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    int-to-float v12, v2

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_10

    :cond_9
    const/4 v7, 0x1

    :goto_5
    if-eqz v7, :cond_b

    int-to-float v11, v10

    iput v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    int-to-float v11, v2

    iput v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    :try_start_1
    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v11, v10, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x3e9

    if-ne v11, v12, :cond_11

    const/4 v3, 0x1

    :goto_6
    if-eqz v3, :cond_a

    iget v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_a

    iget v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_a

    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowStateAnimator;->setCascadedSurfaceMatrixLocked(Lcom/android/server/wm/WindowState;)V

    :cond_a
    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v12

    const/4 v13, 0x4

    invoke-virtual {v11, v12, v13}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v11, v11, Lcom/android/server/wm/WindowManagerService;->mShouldIgnoreDimEffect:Z

    if-nez v11, :cond_b

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-nez v11, :cond_b

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5, p0}, Lcom/android/server/wm/TaskStack;->startDimmingIfNeeded(Lcom/android/server/wm/WindowStateAnimator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_b
    :goto_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowStateAnimator;->updateSurfaceWindowCrop(Z)V

    return-void

    :cond_c
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto/16 :goto_0

    :cond_d
    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    add-int/2addr v2, v11

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    sub-float/2addr v4, v11

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    sub-float/2addr v8, v11

    goto/16 :goto_1

    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_f
    :try_start_2
    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    iget v13, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    invoke-virtual {v11, v12, v13}, Landroid/view/SurfaceControl;->setPosition(FF)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    const-string v11, "WindowStateAnimator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error positioning surface of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pos=("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p1, :cond_7

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v12, "position"

    const/4 v13, 0x1

    invoke-virtual {v11, p0, v12, v13}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_4

    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_6

    :catch_1
    move-exception v1

    const-string v11, "WindowStateAnimator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error resizing surface of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " size=("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p1, :cond_b

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v12, "size"

    const/4 v13, 0x1

    invoke-virtual {v11, p0, v12, v13}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_7
.end method

.method setTransparentRegionHintLocked(Landroid/graphics/Region;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    const-string v0, "WindowStateAnimator"

    const-string/jumbo v1, "setTransparentRegionHint: null mSurface after mHasSurface true"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransparentRegion:Landroid/graphics/Region;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method setWallpaperOffset(Landroid/graphics/RectF;)V
    .locals 7

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v4, p1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v2, v4, v5

    iget v4, p1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v5

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    int-to-float v5, v2

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    :cond_0
    int-to-float v4, v2

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    int-to-float v4, v3

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowStateAnimator;->updateSurfaceWindowCrop(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v4, "WindowStateAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error positioning surface of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pos=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v4
.end method

.method showSurfaceRobustlyLocked()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->show()V

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v4, v3, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure showing surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v4, "show"

    invoke-virtual {v3, p0, v4, v1}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    move v1, v2

    goto :goto_0
.end method

.method stepAnimationLocked(J)Z
    .locals 13

    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    iput-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->okToDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_2

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDw:I

    iget v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDh:I

    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v4, v2, Landroid/view/DisplayInfo;->appWidth:I

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDw:I

    iget v4, v2, Landroid/view/DisplayInfo;->appHeight:I

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDh:I

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-wide v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    :goto_0
    invoke-virtual {v7, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v4, :cond_2

    iput-wide p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAnimationTime:J

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimation(J)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    return v3

    :cond_1
    move-wide v4, p1

    goto :goto_0

    :cond_2
    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_4

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    move v3, v6

    goto :goto_1

    :cond_4
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    if-eqz v4, :cond_6

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    :cond_5
    :goto_2
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-nez v4, :cond_8

    move v3, v6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_5

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_5

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    goto :goto_2

    :cond_8
    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    iput-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    :cond_9
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    if-ne v4, v5, :cond_a

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v11, v4, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    :cond_a
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v10, :cond_b

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_b

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v5, v5, Lcom/android/server/wm/AppWindowToken;->startingAnimLayerAdjustment:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    :cond_b
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v4, :cond_13

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    :cond_c
    :goto_3
    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eq v4, v5, :cond_f

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    iput-boolean v5, v4, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_d

    iput-boolean v3, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    :cond_d
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v4, :cond_f

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    if-ne v4, v5, :cond_e

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v4, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    :cond_e
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    :cond_f
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_14

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v10, :cond_14

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v4, :cond_14

    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v3, :cond_10

    const-string v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finish starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": first real window done animating"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_11
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/16 v4, 0x8

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "WindowStateAnimator"

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_12
    move v3, v6

    goto/16 :goto_1

    :cond_13
    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v4, :cond_c

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    goto/16 :goto_3

    :cond_14
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/16 v5, 0x7d0

    if-ne v4, v5, :cond_11

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v4, :cond_11

    if-eqz v0, :cond_11

    iput-boolean v3, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "WindowStateAnimator{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFixedOrientationWindowInTransactionLocked()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move/from16 v21, v0

    and-int/lit8 v11, v21, 0xc

    if-eqz v11, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    :goto_1
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    iget v0, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v21, v0

    iget v0, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_10

    const/4 v12, 0x1

    :goto_2
    iget v0, v10, Landroid/view/DisplayInfo;->appWidth:I

    move/from16 v16, v0

    iget v15, v10, Landroid/view/DisplayInfo;->appHeight:I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    if-eqz v21, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move/from16 v21, v0

    const/high16 v22, 0x20000000

    and-int v21, v21, v22

    if-eqz v21, :cond_0

    iget v0, v10, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    move/from16 v16, v0

    iget v15, v10, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v21

    if-eqz v21, :cond_0

    if-eqz v12, :cond_12

    iget v0, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v21, v0

    iget v0, v10, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    move/from16 v22, v0

    sub-int v8, v21, v22

    :cond_0
    :goto_4
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v11, v0, :cond_15

    if-eqz v12, :cond_13

    iget v0, v10, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v21, v0

    if-eqz v21, :cond_1

    iget v0, v10, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    :cond_1
    const/4 v7, 0x1

    :cond_2
    :goto_5
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_3
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v7}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v21

    if-eqz v21, :cond_5

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x105022e

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int v22, v22, v19

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_7
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v21

    if-nez v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v18

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v21

    if-nez v21, :cond_a

    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v21

    if-eqz v21, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v18

    :cond_a
    if-eqz v18, :cond_b

    invoke-virtual/range {v18 .. v18}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v21

    if-nez v21, :cond_b

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_b
    const/16 v21, 0x9

    move/from16 v0, v21

    new-array v13, v0, [F

    invoke-virtual {v14, v13}, Landroid/graphics/Matrix;->getValues([F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v21

    if-nez v21, :cond_c

    const/16 v21, 0x0

    aget v22, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    aput v22, v13, v21

    const/16 v21, 0x4

    aget v22, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    aput v22, v13, v21

    const/16 v21, 0x3

    aget v22, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    aput v22, v13, v21

    const/16 v21, 0x1

    aget v22, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    aput v22, v13, v21

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v22, v13, v22

    const/16 v23, 0x5

    aget v23, v13, v23

    invoke-virtual/range {v21 .. v23}, Landroid/view/SurfaceControl;->setPosition(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v22, v13, v22

    const/16 v23, 0x3

    aget v23, v13, v23

    const/16 v24, 0x1

    aget v24, v13, v24

    const/16 v25, 0x4

    aget v25, v13, v25

    invoke-virtual/range {v21 .. v25}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    :cond_d
    return-void

    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    goto/16 :goto_3

    :cond_12
    iget v0, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v21, v0

    iget v0, v10, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    move/from16 v22, v0

    sub-int v8, v21, v22

    goto/16 :goto_4

    :cond_13
    if-nez v12, :cond_2

    iget v0, v10, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    iget v0, v10, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    :cond_14
    const/4 v7, 0x1

    goto/16 :goto_5

    :cond_15
    const/16 v21, 0x8

    move/from16 v0, v21

    if-ne v11, v0, :cond_3

    if-eqz v12, :cond_18

    iget v0, v10, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_16

    iget v0, v10, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_18

    :cond_16
    const/4 v7, 0x1

    :cond_17
    :goto_8
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto/16 :goto_6

    :cond_18
    if-nez v12, :cond_17

    iget v0, v10, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v21, v0

    if-eqz v21, :cond_19

    iget v0, v10, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    :cond_19
    const/4 v7, 0x1

    goto :goto_8

    :pswitch_0
    invoke-virtual {v14}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v22, v0

    add-int v22, v22, v8

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_7

    :pswitch_1
    const/high16 v21, 0x42b40000    # 90.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v14, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v21, v0

    sub-int v21, v3, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_7

    :pswitch_2
    const/high16 v21, 0x43340000    # 180.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v14, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v21, v0

    sub-int v21, v5, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v22, v0

    sub-int v22, v3, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_7

    :pswitch_3
    const/high16 v21, 0x43870000    # 270.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v14, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v21, v0

    add-int v21, v21, v8

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v22, v0

    sub-int v22, v5, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method updateFullyTransparent(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mFullyTransparent:Z

    if-ne v1, v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl;->setTransparent(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mFullyTransparent:Z

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "WindowStateAnimator"

    const-string v3, "Error toggling transparency. "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mFullyTransparent:Z

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mFullyTransparent:Z

    throw v2
.end method

.method public updateSOTranlateInfo(I)V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSelective2Orientation(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v4

    const/4 v3, 0x2

    if-eqz v4, :cond_2

    if-ne v4, v10, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->isCascadeRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->getPreferredOrientation()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v3, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->shouldFakeOrientation(IILandroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/high16 v0, -0x3d4c0000    # -90.0f

    if-ne v3, v9, :cond_5

    const/high16 v0, 0x42b40000    # 90.0f

    :cond_4
    :goto_1
    new-instance v1, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-direct {v1, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iput v6, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iput v6, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v8, v8, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v8, v8, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v1, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget v6, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/16 v6, 0x9

    new-array v2, v6, [F

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    aget v7, v2, v10

    const/4 v8, 0x5

    aget v8, v2, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    aget v7, v2, v12

    aget v8, v2, v11

    aget v9, v2, v9

    aget v10, v2, v13

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_0

    :cond_5
    if-ne v4, v11, :cond_4

    const/high16 v0, 0x42b40000    # 90.0f

    goto/16 :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getRequestedOrientation()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFakeTarget(I)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getRequestedOrientation()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFakeTarget(I)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_7
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    const/16 v6, 0x9

    new-array v2, v6, [F

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    aget v7, v2, v10

    const/4 v8, 0x5

    aget v8, v2, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    aget v7, v2, v12

    aget v8, v2, v11

    aget v9, v2, v9

    aget v10, v2, v13

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_0
.end method

.method updateSurfaceWindowCrop(Z)V
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    if-nez v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x4000

    move/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v25, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move/from16 v26, v0

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v22

    if-eqz v22, :cond_10

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v22

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_f

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/wm/WindowManagerService;->getAppTransitionForDisplayLocked(I)Lcom/android/server/wm/AppTransition;

    move-result-object v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v22, v0

    if-eqz v22, :cond_17

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    if-eqz v22, :cond_17

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v22, v0

    const/16 v23, 0x3e9

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v22, v0

    const/16 v23, 0x3ec

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_17

    :cond_2
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-nez v22, :cond_17

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v22

    if-nez v22, :cond_6

    const/4 v10, 0x0

    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    const/4 v8, 0x1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v8

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowState;->mFloatingAppHScale:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    :cond_3
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_4

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowState;->mFloatingAppVScale:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v8, :cond_16

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v23, v23, v24

    sub-float v22, v22, v23

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v23, v0

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v4, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v23, v23, v24

    sub-float v22, v22, v23

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v23, v0

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v5, v0

    :goto_3
    new-instance v10, Landroid/graphics/Rect;

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v25, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowState;->mFloatingAppHScale:F

    move/from16 v26, v0

    div-float v25, v25, v26

    div-float v24, v24, v25

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v26, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowState;->mFloatingAppVScale:F

    move/from16 v27, v0

    div-float v26, v26, v27

    div-float v25, v25, v26

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    const/high16 v26, 0x3f000000    # 0.5f

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_5

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    iput v0, v10, Landroid/graphics/Rect;->right:I

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    :cond_5
    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v14

    const-string v22, "WindowStateAnimator"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error setting crop surface of "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " crop="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v9}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    const-string v23, "crop"

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v22

    if-nez v22, :cond_8

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v13

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v25

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->height()I

    move-result v26

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    iget v0, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v25, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    iget v0, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v26, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/Rect;->intersect(IIII)Z

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v22, v0

    if-nez v22, :cond_9

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v25

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->height()I

    move-result v26

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyDecorRect(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v22, v0

    const/16 v23, 0x7e9

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v22, v0

    const/16 v23, 0x899

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_c

    :cond_b
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v25

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->height()I

    move-result v26

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v22, v0

    const/16 v23, 0x7dd

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyDecorRect(Landroid/graphics/Rect;)V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v15

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v22

    if-eqz v22, :cond_e

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v22

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    move/from16 v22, v0

    if-eqz v22, :cond_e

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v25

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->height()I

    move-result v26

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyDecorRect(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_f
    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v22, v0

    const/16 v23, 0x7d2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_11

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v22, v0

    const/16 v23, 0x834

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    :cond_11
    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    iget-object v0, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->adjustSurfaceInsetForReduceScreen()V

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v9, Landroid/graphics/Rect;->right:I

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    move/from16 v22, v0

    if-eqz v22, :cond_14

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x500

    move/from16 v22, v0

    const/16 v23, 0x500

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_13

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v22, v0

    const/high16 v23, -0x80000000

    and-int v22, v22, v23

    if-eqz v22, :cond_15

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_14
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceInsetRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_2

    :cond_15
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v16

    const/16 v22, 0x0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_5

    :cond_16
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x1

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mIsRecentsMultiWindowRunning:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v15

    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v19, Landroid/graphics/Rect;

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1e

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v17

    if-eqz v17, :cond_19

    invoke-virtual/range {v17 .. v17}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v22

    if-nez v22, :cond_19

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_18

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/Rect;->left:I

    :cond_18
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/Rect;->top:I

    :cond_19
    iget v0, v11, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_1a

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/Rect;->right:I

    :cond_1a
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_1b

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/Rect;->bottom:I

    :cond_1b
    :goto_6
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_1c

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1d

    :cond_1c
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1d
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {v9, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_1e
    invoke-virtual {v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v22

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1b

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v22

    if-nez v22, :cond_1b

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1b

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/Rect;->top:I

    goto :goto_6
.end method
