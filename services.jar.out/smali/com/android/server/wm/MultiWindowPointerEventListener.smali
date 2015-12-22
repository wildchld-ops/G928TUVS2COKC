.class public Lcom/android/server/wm/MultiWindowPointerEventListener;
.super Ljava/lang/Object;
.source "MultiWindowPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# static fields
.field static final NONE:I = 0x0

.field static final NOT_SUPPORT:I = 0x2

.field static final NOT_SUPPORT_NO_TOAST:I = 0x3

.field static final RESIZING:I = 0x1

.field static final TASK_UNSET:I = -0x1

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private final DEBUG:Z

.field private final DELTA_H_SCALE:F

.field private final DELTA_H_SCALE_TERMINATE:F

.field private final DELTA_H_SCALE_TERMINATE_TOP:F

.field private final DELTA_V_SCALE:F

.field private final DELTA_V_SCALE_TERMINATE:F

.field private final DELTA_V_SCALE_TERMINATE_TOP:F

.field private INTERPORATION:I

.field private final SAFE_DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mAppToken:Lcom/android/server/wm/AppWindowToken;

.field private mApplicationName:Ljava/lang/CharSequence;

.field private mCenterBarPoint:Landroid/graphics/Point;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

.field private mEdgeFlag:I

.field private mForceDismissGuide:Z

.field private mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

.field private mHandler:Landroid/os/Handler;

.field private mHasSubWindow:Z

.field private mIsRunningTask:Z

.field private mIsSelectiveOrientationMode:Z

.field private mIsSplitWindow:Z

.field private mIvt:[B

.field private mLastX:I

.field private mLastY:I

.field private mMaxScale:F

.field private mMinScale:F

.field private mMoved:Z

.field private mResizeState:I

.field private mScreenHeight:I

.field private mScreenRatio:F

.field private mScreenWidth:I

.field private mSelectiveOrientationHeight:I

.field private mSelectiveOrientationWidth:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTaskId:I

.field private mTerminate:Z

.field private mValidMotion:Z

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mWasTargetChecked:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "MultiWindowConverter"

    iput-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->TAG:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DEBUG:Z

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    const v0, 0x3d8f5c29    # 0.07f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_H_SCALE:F

    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_V_SCALE:F

    const v0, 0x3e051eb8    # 0.13f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_H_SCALE_TERMINATE:F

    const v0, 0x3e3851ec    # 0.18f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_V_SCALE_TERMINATE:F

    const v0, 0x3e570a3d    # 0.21f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_H_SCALE_TERMINATE_TOP:F

    const v0, 0x3db851ec    # 0.09f

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->DELTA_V_SCALE_TERMINATE_TOP:F

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->INTERPORATION:I

    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mForceDismissGuide:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsRunningTask:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHasSubWindow:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIvt:[B

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x12t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x30t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x5et
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/wm/MultiWindowPointerEventListener;)Lcom/samsung/android/multiwindow/ui/GuideView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/MultiWindowPointerEventListener;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/wm/MultiWindowPointerEventListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/wm/MultiWindowPointerEventListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    return p1
.end method

.method private calcPosX(II)I
    .locals 2

    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenRatio:F

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    sub-int/2addr v1, p2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return p1

    :pswitch_0
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    sub-int p1, v0, p1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private calcPosY(II)I
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v0, p2

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinScale:F

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinScale:F

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    :cond_0
    :goto_0
    return p2

    :cond_1
    int-to-float v0, p2

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMaxScale:F

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMaxScale:F

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    float-to-int p2, v0

    goto :goto_0
.end method

.method private findApplicationTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    .locals 17

    move/from16 v0, p1

    float-to-int v11, v0

    move/from16 v0, p2

    float-to-int v12, v0

    new-instance v7, Landroid/graphics/Region;

    invoke-direct {v7}, Landroid/graphics/Region;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v13, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v14

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v10

    const/4 v6, 0x0

    invoke-virtual {v10}, Lcom/android/server/wm/WindowList;->size()I

    move-result v13

    add-int/lit8 v4, v13, -0x1

    :goto_0
    if-ltz v4, :cond_13

    invoke-virtual {v10, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    if-eqz v13, :cond_0

    const-string v13, "MultiWindowConverter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "finding target window : ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v13, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    const/16 v13, 0x7d0

    if-ne v8, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v9, 0x0

    monitor-exit v14

    :goto_1
    return-object v9

    :cond_1
    const/16 v13, 0x7d0

    if-ne v8, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->isSharedDeviceKeyguardLocked()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "MultiWindowConverter"

    const-string v15, "Pop up view is blocked by Shared device"

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    monitor-exit v14

    goto :goto_1

    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    :cond_2
    :try_start_1
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v13

    if-nez v13, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v13

    if-nez v13, :cond_3

    and-int/lit8 v13, v3, 0x10

    if-nez v13, :cond_3

    and-int/lit8 v13, v3, 0x8

    if-nez v13, :cond_3

    const/16 v13, 0x82f

    if-ne v8, v13, :cond_5

    const/4 v9, 0x0

    monitor-exit v14

    goto :goto_1

    :cond_5
    const/16 v13, 0x89b

    if-ne v8, v13, :cond_6

    const/4 v9, 0x0

    monitor-exit v14

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/android/server/wm/WindowManagerService;->canRequestMultiWindowTransition(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    iget-boolean v13, v9, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    if-nez v13, :cond_7

    if-nez v2, :cond_8

    :cond_7
    const-string v13, "MultiWindowConverter"

    const-string v15, "Skip changing to pen window because multi window transition is running."

    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "MultiWindowConverter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "win.mMultiWindowStyleChanging="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-boolean v0, v9, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " canChangeMultiWindowStyle="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    monitor-exit v14

    goto/16 :goto_1

    :cond_8
    and-int/lit16 v13, v5, 0x80

    if-eqz v13, :cond_a

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_9
    monitor-exit v14

    goto/16 :goto_1

    :cond_a
    const/4 v13, 0x2

    if-eq v8, v13, :cond_b

    const/4 v13, 0x1

    if-eq v8, v13, :cond_b

    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v15, -0x1

    if-ne v13, v15, :cond_3

    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v13, v15, :cond_3

    const/16 v13, 0x7d0

    if-lt v8, v13, :cond_3

    const/16 v13, 0xbb7

    if-gt v8, v13, :cond_3

    const/4 v9, 0x0

    monitor-exit v14

    goto/16 :goto_1

    :cond_b
    if-eqz p3, :cond_c

    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v15, -0x80000000

    and-int/2addr v13, v15

    if-nez v13, :cond_3

    :cond_c
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object v6, v9

    goto/16 :goto_2

    :cond_d
    if-eqz v6, :cond_f

    iget-object v13, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v15, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v13, v15, :cond_e

    monitor-exit v14

    move-object v9, v6

    goto/16 :goto_1

    :cond_e
    move-object v6, v9

    :cond_f
    const/4 v13, 0x2

    if-eq v8, v13, :cond_10

    const/4 v13, 0x1

    if-ne v8, v13, :cond_11

    :cond_10
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v13

    const/high16 v15, 0x200000

    invoke-virtual {v13, v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v13

    if-eqz v13, :cond_11

    const-string v13, "MultiWindowConverter"

    const-string v15, "An activity with OPTION_FULLSCREEN_ONLY doesn\'t support the multi-window"

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v14

    goto/16 :goto_1

    :cond_11
    invoke-virtual {v9, v7}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Region;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_3

    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v15, 0x20000000

    and-int/2addr v13, v15

    if-eqz v13, :cond_12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHasSubWindow:Z

    :cond_12
    monitor-exit v14

    goto/16 :goto_1

    :cond_13
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method private getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 11

    const/4 v8, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    const/4 v9, 0x2

    if-ge v7, v9, :cond_1

    move-object v1, v8

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v7, Landroid/content/ComponentName;

    const/4 v9, 0x0

    aget-object v9, v5, v9

    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-direct {v7, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7, v9, v10}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v7, "MultiWindowConverter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getApplicationName is error:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v8

    goto :goto_0
.end method

.method private isCancelArea(II)Z
    .locals 4

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMaxScale:F

    sub-float/2addr v2, v3

    const v3, 0x3d4ccccd    # 0.05f

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v0, v1

    if-ge p2, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTerminativeArea(II)Z
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const v0, 0x3e051eb8    # 0.13f

    const v2, 0x3e3851ec    # 0.18f

    const v1, 0x3e570a3d    # 0.21f

    const v3, 0x3db851ec    # 0.09f

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    iget v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    if-ge v5, v6, :cond_0

    const v0, 0x3db851ec    # 0.09f

    const v2, 0x3e570a3d    # 0.21f

    const v1, 0x3e3851ec    # 0.18f

    const v3, 0x3e051eb8    # 0.13f

    :cond_0
    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    sparse-switch v5, :sswitch_data_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return v4

    :sswitch_0
    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    if-ge p1, v5, :cond_2

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    if-le p2, v5, :cond_2

    const-string v5, "MultiWindowConverter"

    const-string v6, "MultiWindow changing is blocked by terminative area"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    if-le p1, v5, :cond_1

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    if-ge p2, v5, :cond_1

    const-string v5, "MultiWindowConverter"

    const-string v6, "MultiWindow changing is blocked by terminative area"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    int-to-float v5, v5

    sub-float v6, v7, v0

    mul-float/2addr v5, v6

    float-to-int v5, v5

    if-le p1, v5, :cond_3

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    if-le p2, v5, :cond_3

    const-string v5, "MultiWindowConverter"

    const-string v6, "MultiWindow changing is blocked by terminative area"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    int-to-float v5, v5

    sub-float v6, v7, v1

    mul-float/2addr v5, v6

    float-to-int v5, v5

    if-ge p1, v5, :cond_1

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    if-ge p2, v5, :cond_1

    const-string v5, "MultiWindowConverter"

    const-string v6, "MultiWindow changing is blocked by terminative area"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private isValidMotion(II)Z
    .locals 6

    const/4 v3, 0x0

    const v0, 0x3d8f5c29    # 0.07f

    const v1, 0x3d4ccccd    # 0.05f

    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    if-ge v4, v5, :cond_0

    const v0, 0x3d4ccccd    # 0.05f

    const v1, 0x3d8f5c29    # 0.07f

    :cond_0
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v2, v4

    if-ge p2, v2, :cond_2

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    if-lt v4, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private setStackBoundOffset(Landroid/graphics/Rect;)V
    .locals 8

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v5, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, v0, Landroid/view/DisplayInfo;->appWidth:I

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v7, v0, Landroid/view/DisplayInfo;->appHeight:I

    sub-int/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHasSubWindow:Z

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    int-to-float v6, v6

    div-float v1, v5, v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    int-to-float v6, v6

    div-float v4, v5, v6

    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v2, v5

    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v6, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v3, v5

    neg-int v5, v2

    neg-int v6, v3

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0
.end method

.method private showFullScreenGuide()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, v1, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showGuide(II)V

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showGuide(II)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private showGuide(II)V
    .locals 8

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    sub-int v2, v4, p1

    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    sub-int v0, v4, p2

    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    if-ge v4, v5, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-boolean v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    if-eqz v4, :cond_0

    if-nez p2, :cond_0

    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v0, v4, Landroid/graphics/Point;->y:I

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    if-nez v4, :cond_1

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    sparse-switch v4, :sswitch_data_0

    :goto_2
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v4, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v2, v4, v5

    goto :goto_1

    :sswitch_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v3, p1, p2, v2, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_2

    :sswitch_1
    iget-boolean v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    if-nez p2, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v3, v6, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v4, v3, p2, p1, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private showMovingGuide(II)V
    .locals 5

    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSelectiveOrientationWidth:I

    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSelectiveOrientationHeight:I

    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    iget v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    if-ge v3, v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    if-eqz v3, :cond_0

    if-nez p2, :cond_0

    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v0, v3, Landroid/graphics/Point;->y:I

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    if-nez v3, :cond_1

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    sparse-switch v3, :sswitch_data_0

    :goto_2
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v3, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int v2, v3, v4

    goto :goto_1

    :sswitch_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v3, p1, p2, v2, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_2

    :sswitch_1
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    sub-int v4, p1, v2

    invoke-virtual {v3, v4, p2, v2, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public canBeResizing(Lcom/android/server/wm/WindowState;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    const/high16 v4, 0x1000000

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eqz v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public dismissGuide(Z)V
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->getGuideViewAttached()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MultiWindowConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissGuide() : Before attaching the guide view, mForceDismissGuide : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mForceDismissGuide:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mForceDismissGuide:Z

    const-string v0, "MultiWindowConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissGuide() : to dissmis guide by WindowManagerService while relayouting window, mForceDismissGuide : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mForceDismissGuide:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/MultiWindowPointerEventListener$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener$1;-><init>(Lcom/android/server/wm/MultiWindowPointerEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    goto :goto_0
.end method

.method public init()V
    .locals 6

    const/high16 v5, 0x447a0000    # 1000.0f

    new-instance v0, Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/16 v3, 0x8d5

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;Landroid/os/IBinder;ILandroid/view/Display;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setMultiWindowFlags(I)V

    new-instance v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinScale:F

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMaxScale:F

    return-void
.end method

.method public isValidMotion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    return v0
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    and-int/lit16 v1, v12, 0xff

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_2

    iget v12, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    iget v12, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    if-nez v12, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v12, v5, Landroid/view/DisplayInfo;->appWidth:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    iget v12, v5, Landroid/view/DisplayInfo;->appHeight:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy;->isLockTaskModeEnabled()Z

    move-result v12

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mForceDismissGuide:Z

    if-eqz v12, :cond_6

    if-eqz v1, :cond_4

    const/4 v12, 0x2

    if-ne v1, v12, :cond_6

    :cond_4
    if-nez v1, :cond_5

    const-string v12, "MultiWindowConverter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onPointerEvent() ACTION_DOWN, mForceDismissGuide : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mForceDismissGuide:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const/4 v12, 0x2

    if-ne v1, v12, :cond_1

    const-string v12, "MultiWindowConverter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onPointerEvent() ACTION_MOVE, mForceDismissGuide : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mForceDismissGuide:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTerminate:Z

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenRatio:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastY:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    int-to-float v13, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastY:I

    int-to-float v14, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v12}, Lcom/android/server/wm/MultiWindowPointerEventListener;->findApplicationTargetWindow(FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/wm/MultiWindowPointerEventListener;->startResizing(Lcom/android/server/wm/WindowState;)Z

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->getEdgeFlag(ILandroid/view/MotionEvent;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    const-string v12, "MultiWindowConverter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Start to resize multiwindow: mResizing="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",flag="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeFlag:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",x="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",y="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastY:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    const/4 v12, 0x0

    goto :goto_2

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v10, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastX:I

    sub-int/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->INTERPORATION:I

    if-gt v12, v13, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mLastY:I

    sub-int/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->INTERPORATION:I

    if-le v12, v13, :cond_1

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    if-nez v12, :cond_9

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTerminate:Z

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isTerminativeArea(II)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTerminate:Z

    if-nez v12, :cond_1

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    if-nez v12, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isValidMotion(II)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mValidMotion:Z

    if-eqz v12, :cond_1

    :cond_a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    if-nez v12, :cond_1

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    if-nez v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIvt:[B

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v14}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showFullScreenGuide()V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_c

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_e

    :cond_c
    new-instance v4, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v13, 0x103012b

    invoke-direct {v4, v12, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040b6e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v4, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    sput-object v12, Lcom/android/server/wm/MultiWindowPointerEventListener;->toastAlert:Landroid/widget/Toast;

    sget-object v12, Lcom/android/server/wm/MultiWindowPointerEventListener;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v12}, Landroid/widget/Toast;->setShowForAllUsers()V

    sget-object v12, Lcom/android/server/wm/MultiWindowPointerEventListener;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    :goto_3
    const-string v12, "MultiWindowConverter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mApplicationName:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is not supported popup window"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040b6f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v4, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    sput-object v12, Lcom/android/server/wm/MultiWindowPointerEventListener;->toastAlert:Landroid/widget/Toast;

    sget-object v12, Lcom/android/server/wm/MultiWindowPointerEventListener;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v12}, Landroid/widget/Toast;->setShowForAllUsers()V

    sget-object v12, Lcom/android/server/wm/MultiWindowPointerEventListener;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_e
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/am/MultiWindowFacadeService;->isEnableMakePenWindow()Z

    move-result v12

    if-nez v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    goto/16 :goto_1

    :cond_f
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isCancelArea(II)Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showFullScreenGuide()V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSelectiveOrientationMode:Z

    if-eqz v12, :cond_12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showMovingGuide(II)V

    goto/16 :goto_1

    :cond_12
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/wm/MultiWindowPointerEventListener;->calcPosY(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3}, Lcom/android/server/wm/MultiWindowPointerEventListener;->calcPosX(II)I

    move-result v2

    if-eq v3, v11, :cond_13

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinScale:F

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    sub-float/2addr v12, v13

    float-to-int v12, v12

    if-lt v3, v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showGuide(II)V

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    goto :goto_4

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoved:Z

    if-eqz v12, :cond_17

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/wm/MultiWindowPointerEventListener;->dismissGuide(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIvt:[B

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v14}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    new-instance v7, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x2

    invoke-direct {v7, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/ui/GuideView;->getLastBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-direct {v8, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wm/MultiWindowPointerEventListener;->setStackBoundOffset(Landroid/graphics/Rect;)V

    :cond_14
    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-virtual {v7, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    const/16 v12, 0x800

    const/4 v13, 0x1

    invoke-virtual {v7, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13, v7}, Lcom/android/server/wm/WindowManagerService;->changeMultiWindowStyle(Lcom/android/server/wm/AppWindowToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsRunningTask:Z

    if-eqz v12, :cond_15

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_15

    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15, v7}, Lcom/android/server/am/MultiWindowFacadeService;->moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V

    const-string v12, "MultiWindowConverter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "moveOnlySpecificTaskToFront - style: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsRunningTask:Z

    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    :cond_15
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v9

    if-eqz v9, :cond_16

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v13, "GEST"

    invoke-static {v12, v13, v6}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "MultiWindowConverter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MultiWindow changing is finished by gesture. app:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",bound="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/ui/GuideView;->getLastBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :pswitch_3
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/wm/MultiWindowPointerEventListener;->dismissGuide(Z)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mWasTargetChecked:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mHasSubWindow:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mForceDismissGuide:Z

    const-string v12, "MultiWindowConverter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MultiWindow changing is ended by gesture.:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public showMultiWindowGestureHelp()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->showMultiWindowGestureHelp()V

    return-void
.end method

.method public startResizing(Lcom/android/server/wm/WindowState;)Z
    .locals 21

    if-nez p1, :cond_0

    const-string v16, "MultiWindowConverter"

    const-string v17, "The top window does not support multi-window"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    const/16 v16, 0x0

    :goto_0
    return v16

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v13

    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mApplicationName:Ljava/lang/CharSequence;

    const/4 v15, 0x0

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual {v13}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/Task;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x100

    move/from16 v16, v0

    if-eqz v16, :cond_1

    if-eqz v15, :cond_1

    iget-object v0, v15, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    const/16 v16, 0x3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    const-string v16, "MultiWindowConverter"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "This window does not support multiwindow. It may be the ResolverActivity. win="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_1
    if-eqz v13, :cond_2

    iget v0, v13, Lcom/android/server/wm/TaskStack;->mStackId:I

    move/from16 v16, v0

    if-nez v16, :cond_2

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    const-string v16, "MultiWindowConverter"

    const-string v17, "MultiWindow Gesture is not supported with launcher"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    const/16 v16, 0x3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    const-string v16, "MultiWindowConverter"

    const-string v17, "This application or window do not support multiwindow"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    if-eqz v13, :cond_4

    :try_start_0
    invoke-virtual {v13}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual {v13}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/android/server/wm/Task;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v4, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x2

    if-eqz v16, :cond_5

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    array-length v0, v11

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    const/16 v17, 0x1a

    new-instance v18, Landroid/content/ComponentName;

    const/16 v19, 0x0

    aget-object v19, v11, v19

    const/16 v20, 0x1

    aget-object v20, v11, v20

    invoke-direct/range {v18 .. v20}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v18}, Lcom/android/server/wm/WindowManagerService;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    const/16 v16, 0x3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    const-string v16, "MultiWindowConverter"

    const-string v17, "MultiWindow Gesture is not supported with DISABLE_TRAY_BAR"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_4
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_1

    :catch_0
    move-exception v7

    const-string v16, "TAG"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "mainWindowTitle is error:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    goto/16 :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    const/high16 v16, 0x1000000

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v16

    if-eqz v16, :cond_6

    const/high16 v16, 0x200000

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v16

    if-nez v16, :cond_6

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v16

    if-nez v16, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v16

    if-eqz v16, :cond_8

    if-eqz v15, :cond_6

    iget-object v0, v15, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    :cond_6
    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    new-instance v16, Landroid/graphics/Point;

    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/am/MultiWindowFacadeService;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mCenterBarPoint:Landroid/graphics/Point;

    :cond_7
    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wm/MultiWindowPointerEventListener;->getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mApplicationName:Ljava/lang/CharSequence;

    const/16 v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    const-string v16, "MultiWindowConverter"

    const-string v17, "This application or window do not support multiwindow"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v10, 0x0

    goto :goto_2

    :cond_9
    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v16

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wm/MultiWindowPointerEventListener;->getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mApplicationName:Ljava/lang/CharSequence;

    const-string v16, "MultiWindowConverter"

    const-string v17, "MultiWindow Gesture is not supported with ISOLATED or FullScreenOnly"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_a
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v16

    iget v0, v4, Lcom/android/server/wm/Task;->taskId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/server/am/MultiWindowFacadeService;->needMoveOnlySpecificTaskToFront(I)Z

    move-result v16

    if-eqz v16, :cond_b

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsRunningTask:Z

    iget v0, v4, Lcom/android/server/wm/Task;->taskId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    :cond_b
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mResizeState:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const-string v16, "MultiWindowConverter"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "MultiWindow is changing by gesture:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->hasSubWindow()Z

    move-result v16

    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    iget v0, v6, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    move/from16 v16, v0

    iget v0, v6, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_f

    iget v0, v6, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSelective1Orientation(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_e

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSelectiveOrientationMode:Z

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->convertToConfigurationOrientation(II)I

    move-result v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSplitWindow:Z

    move/from16 v16, v0

    if-eqz v16, :cond_d

    if-eq v14, v3, :cond_d

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSelectiveOrientationMode:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x10e00dc

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x447a0000    # 1000.0f

    div-float v12, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v12

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSelectiveOrientationWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v12

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mSelectiveOrientationHeight:I

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    move/from16 v16, v0

    if-eqz v16, :cond_e

    const-string v16, "MultiWindowConverter"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "target win= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " appRequestedOrientation="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mIsSelectiveOrientationMode="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsSelectiveOrientationMode:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_f
    iget v0, v6, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mScreenWidth:I

    goto/16 :goto_3
.end method
