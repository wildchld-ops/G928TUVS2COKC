.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    }
.end annotation


# static fields
.field static final KEYGUARD_ANIMATING_IN:I = 0x1

.field static final KEYGUARD_ANIMATING_OUT:I = 0x3

.field private static final KEYGUARD_ANIM_TIMEOUT_MS:J = 0x3e8L

.field static final KEYGUARD_NOT_SHOWN:I = 0x0

.field static final KEYGUARD_SHOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowAnimator"


# instance fields
.field mAboveUniverseLayer:I

.field private mAnimTransactionSequence:I

.field mAnimating:Z

.field final mAnimationRunnable:Ljava/lang/Runnable;

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentTime:J

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mDualScreenTransition:Lcom/android/server/wm/DualScreenTransition;

.field mForceHiding:I

.field mInitialized:Z

.field mKeyguardGoingAway:Z

.field mKeyguardGoingAwayDisableWindowAnimations:Z

.field mKeyguardGoingAwayToNotificationShade:Z

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iput-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    iput-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mDualScreenTransition:Lcom/android/server/wm/DualScreenTransition;

    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->animateLocked()V

    return-void
.end method

.method private animateLocked()V
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    const/16 v21, 0x8

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v19, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    invoke-static {}, Landroid/view/SurfaceControl;->setAnimationTransaction()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v16

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wm/WindowAnimator;->updateAppWindowsLocked(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    iget-object v0, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v21

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v21

    if-eqz v21, :cond_3

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wm/WindowAnimator;->updateWindowsLocked(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wm/WindowAnimator;->updateWallpaperLocked(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v4, :cond_6

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v21, v0

    or-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    if-nez v8, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v12

    :try_start_1
    const-string v21, "WindowAnimator"

    const-string v22, "Unhandled exception in Window Manager"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :goto_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v16

    const/4 v9, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v9, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v17

    and-int/lit8 v21, v17, 0x4

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v21, v0

    or-int/lit8 v21, v21, 0x20

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_4
    if-eqz v17, :cond_5

    const/4 v13, 0x1

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_6
    move/from16 v0, v16

    if-ge v14, v0, :cond_a

    const/16 v21, 0x4

    move/from16 v0, v21

    if-ge v14, v0, :cond_a

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    iget-object v5, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/android/server/wm/MultiWindowTransition;->isAnimating()Z

    move-result v21

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/MultiWindowTransition;->stepAnimationLocked(J)Z

    move-result v21

    if-eqz v21, :cond_9

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_8
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/WindowManagerService;->finishMultiWindowTransitionLocked(Lcom/android/server/wm/DisplayContent;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v21

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v21

    :cond_a
    const/4 v14, 0x0

    :goto_8
    move/from16 v0, v16

    if-ge v14, v0, :cond_d

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/DisplayContent;->animateDimLayers()Z

    move-result v22

    or-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    if-nez v8, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/AccessibilityController;->drawMagnifiedRegionBorderIfNeededLocked()V

    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowManagerService;->setFocusedStackLayer()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_f
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto/16 :goto_4

    :cond_10
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v21, v0

    if-eqz v21, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowManagerService;->copyAnimToLayoutParamsLocked()Z

    move-result v10

    :cond_11
    if-nez v13, :cond_12

    if-eqz v10, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    goto/16 :goto_0
.end method

.method static bulkUpdateParamsToString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, " WALLPAPER_MAY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string v1, " FORCE_HIDING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    const-string v1, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    const-string v1, " TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private forceHidingToString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEYGUARD STATE UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "KEYGUARD_NOT_SHOWN"

    goto :goto_0

    :pswitch_1
    const-string v0, "KEYGUARD_ANIMATING_IN"

    goto :goto_0

    :pswitch_2
    const-string v0, "KEYGUARD_SHOWN"

    goto :goto_0

    :pswitch_3
    const-string v0, "KEYGUARD_ANIMATING_OUT"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$1;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private shouldForceHide(Lcom/android/server/wm/WindowState;)Z
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v8, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v9, 0x80000

    and-int/2addr v8, v9

    if-eqz v8, :cond_6

    move v4, v6

    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy;->getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_7

    const/4 v0, 0x0

    :goto_1
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy;->getAppsShowWhenLockedLw()Ljava/util/ArrayList;

    move-result-object v1

    iget-boolean v8, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v8, :cond_0

    if-ne v3, p1, :cond_1

    :cond_0
    if-nez v4, :cond_8

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    if-eqz v0, :cond_2

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v0, v8, :cond_8

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v8, v8, 0x100

    if-nez v8, :cond_8

    :cond_2
    move v2, v6

    :goto_2
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    if-ne v8, v6, :cond_3

    if-nez v2, :cond_4

    :cond_3
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    if-eqz v2, :cond_5

    :cond_4
    move v7, v6

    :cond_5
    return v7

    :cond_6
    move v4, v7

    goto :goto_0

    :cond_7
    iget-object v0, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_1

    :cond_8
    move v2, v7

    goto :goto_2
.end method

.method private testTokenMayBeDrawnLocked(I)V
    .locals 12

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    iget-object v7, v9, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_2

    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v8, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v8, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v0, v9, :cond_0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eqz v0, :cond_0

    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v9, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    const/4 v9, 0x4

    const-string/jumbo v10, "testTokenMayBeDrawnLocked: freezingScreen"

    invoke-virtual {p0, v1, v9, v10}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/16 v9, 0x8

    const-string/jumbo v10, "testTokenMayBeDrawnLocked"

    invoke-virtual {p0, v1, v9, v10}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v10

    or-int/2addr v9, v10

    iput-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateAppWindowsLocked(I)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v7, v14, -0x1

    :goto_0
    if-ltz v7, :cond_9

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v9, v14, -0x1

    :goto_1
    if-ltz v9, :cond_4

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/Task;

    iget-object v12, v14, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v12}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v14

    add-int/lit8 v11, v14, -0x1

    :goto_2
    if-ltz v11, :cond_3

    invoke-virtual {v12, v11}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v14, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v14, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v14, :cond_1

    iget-object v14, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v15, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v14, v15, :cond_1

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v3, v14, v15}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(J)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_0
    :goto_4
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    goto :goto_3

    :cond_2
    if-eqz v13, :cond_0

    const/4 v14, 0x4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "appToken "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v3, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " done"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14, v15}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_4
    iget-object v4, v6, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v2, :cond_8

    invoke-virtual {v4, v5}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v14, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v14, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v14, :cond_6

    iget-object v14, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v15, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v14, v15, :cond_6

    const/4 v13, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v3, v14, v15}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(J)Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_5
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    goto :goto_6

    :cond_7
    if-eqz v13, :cond_5

    const/4 v14, 0x4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "exiting appToken "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v3, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " done"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14, v15}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    goto :goto_7

    :cond_8
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private updateWallpaperLocked(I)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v14

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v14}, Lcom/android/server/wm/WindowList;->size()I

    move-result v15

    add-int/lit8 v5, v15, -0x1

    :goto_0
    if-ltz v5, :cond_a

    invoke-virtual {v14, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/WindowState;

    iget-object v13, v12, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v15, v13, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v15, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    iget-object v15, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-boolean v15, v13, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v15, :cond_6

    iget-object v15, v13, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v15, :cond_5

    const/high16 v15, 0x100000

    and-int/2addr v15, v4

    if-eqz v15, :cond_2

    iget-object v15, v13, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v15}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v15

    if-eqz v15, :cond_2

    move-object v3, v12

    :cond_2
    iget-object v15, v13, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v15}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v10

    if-eqz v2, :cond_5

    invoke-virtual {v11}, Lcom/android/server/wm/TaskStack;->isFloatingStack()Z

    move-result v15

    if-nez v15, :cond_5

    iget-object v15, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->width:I

    if-nez v15, :cond_3

    iget-object v15, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eqz v15, :cond_5

    :cond_3
    if-eqz v8, :cond_4

    iget v15, v13, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v0, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    :cond_4
    move-object v7, v11

    move v6, v2

    move-object v8, v13

    add-int/lit8 v9, v9, 0x1

    :cond_5
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_6
    iget-object v1, v13, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v1, :cond_0

    iget-object v15, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v15, :cond_0

    iget-boolean v15, v1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v15, :cond_0

    const/high16 v15, 0x100000

    and-int/2addr v15, v4

    if-eqz v15, :cond_7

    iget-object v15, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v15}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v15

    if-eqz v15, :cond_7

    move-object v3, v12

    :cond_7
    iget-object v15, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v15}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v11

    if-eqz v11, :cond_0

    if-eqz v2, :cond_9

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v10

    invoke-virtual {v11}, Lcom/android/server/wm/TaskStack;->isFloatingStack()Z

    move-result v15

    if-nez v15, :cond_0

    iget-object v15, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v15, v15, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-eqz v15, :cond_0

    if-eqz v8, :cond_8

    iget v15, v13, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v0, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    :cond_8
    move-object v7, v11

    move v6, v2

    move-object v8, v13

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_9
    if-eqz v6, :cond_0

    if-eqz v8, :cond_0

    iget v15, v13, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v0, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    move-object v8, v13

    goto/16 :goto_1

    :cond_a
    if-eqz v7, :cond_b

    const/4 v15, 0x1

    if-ne v9, v15, :cond_d

    if-eqz v8, :cond_d

    iget-object v15, v8, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v15, v15, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v15, :cond_d

    const-string v15, "WindowAnimator"

    const-string v16, "Skip setting animation background if there is an exiting window only."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v15, v3, :cond_c

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_c
    return-void

    :cond_d
    invoke-virtual {v7, v8, v6}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    goto :goto_2
.end method

.method private updateWindowsLocked(I)V
    .locals 37

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v36

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    if-eqz v2, :cond_1

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v21, v2, -0x1

    :goto_0
    if-ltz v21, :cond_1

    move-object/from16 v0, v36

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v4}, Landroid/view/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v21, v21, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v35, v0

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_c

    move-object/from16 v0, v35

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v2, :cond_1

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v35

    iput-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v2, 0x0

    move-object/from16 v0, v35

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    const-wide/16 v4, -0x1

    move-object/from16 v0, v35

    iput-wide v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    :cond_1
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    const/16 v33, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v21, v2, -0x1

    :goto_2
    if-ltz v21, :cond_30

    move-object/from16 v0, v36

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v35, v0

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wm/WindowAnimator;->shouldForceHide(Lcom/android/server/wm/WindowState;)Z

    move-result v27

    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_2a

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v26

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    or-int v2, v2, v26

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-eqz v34, :cond_2

    move-object/from16 v0, v35

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v4, "updateWindowsAndWallpaperLocked 2"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/wm/WindowState;->mHideBySViewCover:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isForceHideBySViewCover()Z

    move-result v2

    if-eqz v2, :cond_10

    if-nez p1, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->canBeForceHiddenBySViewCover(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v15

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/android/server/wm/WindowState;->mHideBySViewCover:Z

    if-eqz v15, :cond_3

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x80000

    and-int/2addr v2, v4

    if-eqz v2, :cond_d

    const/16 v28, 0x1

    :goto_3
    if-eqz v28, :cond_3

    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_3
    :goto_4
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v4, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v2, v4, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    :cond_5
    const/high16 v2, 0x100000

    and-int v2, v2, v19

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v4, "updateWindowsAndWallpaperLocked 5"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_6
    :goto_5
    iget-object v12, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_8

    if-eqz v12, :cond_7

    iget-boolean v2, v12, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_8

    :cond_7
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v4, "updateWindowsAndWallpaperLocked 5"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_8
    move-object/from16 v0, v35

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v10, :cond_a

    iget-object v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_a

    iget v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    if-eq v2, v4, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    iput v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    const/4 v2, 0x0

    iput v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    :cond_9
    iget v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move-object/from16 v0, v35

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v2, v4, :cond_a

    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    :cond_a
    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v2, :cond_2c

    move-object/from16 v32, v3

    :cond_b
    :goto_6
    add-int/lit8 v21, v21, -0x1

    goto/16 :goto_2

    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    goto/16 :goto_1

    :cond_d
    const/16 v28, 0x0

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->isNeedLayoutCoverApplication(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v15

    goto/16 :goto_4

    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isHMTconnected()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->canBeForceHiddenByVR(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v20

    if-eqz v20, :cond_6

    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hide by VR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isForceHideByNightClock()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->canBeForceHiddenByNightClock(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hide by Edge NightClock "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v2, :cond_6

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x80000

    and-int/2addr v2, v4

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v4}, Landroid/view/WindowManagerPolicy;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_19

    if-nez v34, :cond_14

    if-eqz v26, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/4 v2, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v4, "updateWindowsAndWallpaperLocked 3"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    :cond_13
    :goto_7
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v26, :cond_16

    move-object/from16 v0, v35

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    if-eqz v2, :cond_13

    if-nez v26, :cond_13

    const-string v2, "WindowAnimator"

    const-string v4, "Timeout waiting for animation to startup"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-interface {v2, v4, v5, v6, v7}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    goto :goto_7

    :cond_15
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_5

    :cond_16
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    const/4 v2, 0x2

    :goto_8
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_5

    :cond_18
    const/4 v2, 0x0

    goto :goto_8

    :cond_19
    if-eqz v13, :cond_6

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1a

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x832

    if-eq v2, v4, :cond_6

    :cond_1a
    if-eqz v27, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x80000

    and-int/2addr v2, v4

    if-eqz v2, :cond_1d

    const/16 v28, 0x1

    :goto_9
    if-eqz v28, :cond_1b

    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v2, :cond_1b

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_1b
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_1c
    :goto_a
    const/high16 v2, 0x100000

    and-int v2, v2, v19

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v4, "updateWindowsAndWallpaperLocked 4"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_1d
    const/16 v28, 0x0

    goto :goto_9

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_1f

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :goto_b
    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_20

    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    :goto_c
    invoke-interface/range {v2 .. v8}, Landroid/view/WindowManagerPolicy;->needForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v14

    if-eqz v14, :cond_1c

    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Now policy needForceHide hideLw: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    goto :goto_a

    :cond_1f
    const/4 v7, 0x0

    goto :goto_b

    :cond_20
    const/4 v8, 0x0

    goto :goto_c

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_22

    move-object/from16 v0, v35

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    if-nez v2, :cond_22

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    if-eqz v2, :cond_22

    const/4 v11, 0x1

    :goto_d
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v2

    if-nez v2, :cond_23

    if-nez v11, :cond_23

    const/high16 v2, 0x100000

    and-int v2, v2, v19

    if-eqz v2, :cond_b

    const/16 v33, 0x1

    goto/16 :goto_6

    :cond_22
    const/4 v11, 0x0

    goto :goto_d

    :cond_23
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v31

    if-nez v31, :cond_24

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto/16 :goto_6

    :cond_24
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_29

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_29

    if-nez v30, :cond_25

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    :cond_25
    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x100000

    and-int v2, v2, v19

    if-eqz v2, :cond_26

    const/16 v33, 0x1

    :cond_26
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_27

    const/16 v29, 0x1

    :cond_27
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v16, v0

    if-eqz v16, :cond_28

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v4, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v2, v4, :cond_1c

    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto/16 :goto_a

    :cond_29
    if-eqz v11, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    invoke-interface {v2, v4, v5}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v9, v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;J)V

    const/4 v2, 0x1

    move-object/from16 v0, v35

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    goto :goto_e

    :cond_2a
    if-eqz v13, :cond_6

    if-eqz v27, :cond_2b

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto/16 :goto_5

    :cond_2b
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    goto/16 :goto_5

    :cond_2c
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-ne v2, v4, :cond_2e

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_2d

    const/16 v23, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isForceHideByNightClock()Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v23, 0x0

    goto/16 :goto_6

    :cond_2d
    const/16 v23, 0x0

    goto :goto_f

    :cond_2e
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x832

    if-ne v2, v4, :cond_b

    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mHideBySViewCover:Z

    if-nez v2, :cond_b

    if-eqz v23, :cond_2f

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowState;->showLw(Z)Z

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_10
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/WindowState;

    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->showLw(Z)Z

    goto :goto_10

    :cond_2f
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_11
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/WindowState;

    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    goto :goto_11

    :cond_30
    if-eqz v30, :cond_36

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayDisableWindowAnimations:Z

    if-nez v2, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mKeyguardWaitingForActivityDrawn:Z

    if-nez v2, :cond_34

    const/16 v18, 0x1

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v21, v2, -0x1

    :goto_12
    if-ltz v21, :cond_35

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v33, :cond_32

    if-nez v29, :cond_32

    const/4 v2, 0x1

    :goto_13
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    invoke-interface {v4, v2, v5}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_33

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    const/4 v2, 0x1

    move-object/from16 v0, v35

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    if-eqz v18, :cond_31

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    const/16 v18, 0x0

    :cond_31
    :goto_14
    add-int/lit8 v21, v21, -0x1

    goto :goto_12

    :cond_32
    const/4 v2, 0x0

    goto :goto_13

    :cond_33
    if-eqz v18, :cond_31

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    if-eqz v2, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-interface {v2, v4, v5, v6, v7}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    const/16 v18, 0x0

    goto :goto_14

    :cond_34
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    if-eqz v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    const-wide/16 v6, 0x0

    invoke-interface {v2, v4, v5, v6, v7}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    :cond_35
    if-nez v33, :cond_36

    if-eqz v32, :cond_36

    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayDisableWindowAnimations:Z

    if-nez v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    invoke-interface {v2, v4}, Landroid/view/WindowManagerPolicy;->createForceHideWallpaperExitAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_36

    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v9}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_37

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    invoke-interface {v2, v4, v5, v6, v7}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    :cond_37
    :goto_15
    return-void

    :cond_38
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_37

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    goto :goto_15
.end method


# virtual methods
.method addDisplayLocked(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "DisplayContentsAnimator #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_0

    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-object v6, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Window #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v8, :cond_2

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mScreenRotationAnimation:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_1

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "no ScreenRotationAnimation "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    if-eqz p3, :cond_4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mAnimTransactionSequence="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " mForceHiding="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->forceHidingToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mCurrentTime="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v8, :cond_5

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mBulkUpdateParams=0x"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_6

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v8, :cond_7

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mUniverseBackground="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v8, " mAboveUniverseLayer="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    :cond_7
    return-void
.end method

.method getDualScreenTransitionLocked()Lcom/android/server/wm/DualScreenTransition;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDualScreenTransition:Lcom/android/server/wm/DualScreenTransition;

    return-object v0
.end method

.method getMultiWindowTransitionLocked(I)Lcom/android/server/wm/MultiWindowTransition;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

    return-object v0
.end method

.method getPendingLayoutChanges(I)I
    .locals 3

    const/4 v1, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_0
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    goto :goto_0
.end method

.method hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    .locals 13

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v11, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v11, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v11, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    if-ne v7, p1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-nez v7, :cond_4

    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_4

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    iget-object v11, v5, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    if-ltz v1, :cond_3

    iget-object v11, v5, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v11, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v11, v9, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v11, :cond_2

    invoke-virtual {v9}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v6, v12}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v11

    const/4 v12, 0x4

    invoke-virtual {p0, v11, v12}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x1

    iput-boolean v11, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method removeDisplayLocked(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowAnimator;->removeMultiWindowTransitionLocked(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method removeMultiWindowTransitionLocked(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowTransition;->clearMultiWindowTransitionAnimation()V

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

    :cond_0
    return-void
.end method

.method setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V
    .locals 6

    new-instance v1, Landroid/util/SparseIntArray;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    iget-object v4, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v4, p3, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method setDualScreenTransitionLocked(Lcom/android/server/wm/DualScreenTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mDualScreenTransition:Lcom/android/server/wm/DualScreenTransition;

    return-void
.end method

.method setMultiWindowTransitionLocked(ILcom/android/server/wm/MultiWindowTransition;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

    return-void
.end method

.method setPendingLayoutChanges(II)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_0
    return-void
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .locals 1

    if-ltz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    :cond_0
    return-void
.end method
