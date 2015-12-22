.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# instance fields
.field mEmptyRegion:Landroid/graphics/Region;

.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private mInputWindowHandleCount:I

.field private mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mTmpRect:Landroid/graphics/Rect;

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mEmptyRegion:Landroid/graphics/Region;

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    :cond_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    aput-object p1, v0, v1

    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V
    .locals 15

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    and-int/lit8 v12, p3, 0x28

    if-nez v12, :cond_5

    const/4 v5, 0x1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    const/16 v12, 0x800

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    const/4 v12, 0x4

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v5, :cond_c

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v12, :cond_c

    or-int/lit8 p3, p3, 0x20

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Lcom/android/server/wm/TaskStack;->getShownBounds(Landroid/graphics/Rect;)V

    if-nez v7, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v13, 0x20000000

    and-int/2addr v12, v13

    if-eqz v12, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getSubWindowBounds()Landroid/graphics/Rect;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v12

    if-eqz v12, :cond_0

    if-eqz v8, :cond_0

    iget v12, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    iput v12, v9, Landroid/graphics/Rect;->right:I

    iget v12, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    iput v12, v9, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_1
    if-eqz v8, :cond_2

    if-nez v7, :cond_2

    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy;->getScaleWindowResizableSize()I

    move-result v11

    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    neg-int v13, v11

    neg-int v14, v11

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Rect;->inset(II)V

    :cond_2
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v13, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    new-instance v10, Landroid/graphics/Region;

    invoke-direct {v10}, Landroid/graphics/Region;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v13, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v12, v10, v13}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_3
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p2

    if-eq v12, v0, :cond_8

    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12, v10}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v13, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v12, v10, v13}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget-object v13, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v2, v10}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v13, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v12, v10, v13}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_6
    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowState;->getStackBounds(Landroid/graphics/Rect;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v13, 0x20000000

    and-int/2addr v12, v13

    if-eqz v12, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getSubWindowBounds()Landroid/graphics/Rect;

    move-result-object v9

    if-eqz v9, :cond_7

    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_7
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v13, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    :cond_8
    :goto_2
    move/from16 v0, p3

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->layoutParamsSamsungFlags:I

    move/from16 v0, p4

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v12

    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    move/from16 v0, p5

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v12

    move-object/from16 v0, p1

    iput-boolean v12, v0, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    move/from16 v0, p6

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    move/from16 v0, p7

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v12, :cond_d

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v12, v12, Lcom/android/server/wm/AppWindowToken;->paused:Z

    :goto_3
    move-object/from16 v0, p1

    iput-boolean v12, v0, Lcom/android/server/input/InputWindowHandle;->paused:Z

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->layer:I

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v12, v12, Lcom/android/server/wm/Session;->mPid:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v12, v12, Lcom/android/server/wm/Session;->mUid:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v12, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    iget v12, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    iget v12, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    if-eqz v8, :cond_9

    iget v12, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    sub-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget v12, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    sub-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    :cond_9
    if-eqz v7, :cond_a

    iget v12, v3, Landroid/graphics/Rect;->left:I

    iget-object v13, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v13}, Landroid/view/WindowManagerPolicy;->getMinimizeSize()I

    move-result v13

    add-int/2addr v12, v13

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget v12, v3, Landroid/graphics/Rect;->top:I

    iget-object v13, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v13}, Landroid/view/WindowManagerPolicy;->getMinimizeSize()I

    move-result v13

    add-int/2addr v12, v13

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    :cond_a
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_e

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float/2addr v12, v13

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    :goto_4
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v13, 0x1000000

    and-int/2addr v12, v13

    if-eqz v12, :cond_b

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    return-void

    :cond_c
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    goto/16 :goto_2

    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_e
    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    goto :goto_4
.end method

.method private clearInputWindowHandlesLw()V
    .locals 3

    :goto_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public freezeInputDispatchingLw()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    :cond_0
    return-void
.end method

.method public getPointerLayer()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e2

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .locals 4

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v2

    return-wide v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method public interceptKeyBeforeQuickAccess(IFF)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQuickAccess(IFF)V

    return-void
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptMotionBeforeQueueingNonInteractive(JI)I

    move-result v0

    return v0
.end method

.method public notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .locals 13

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    iget-object v9, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v9, p2, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v8, v0

    if-eqz v8, :cond_0

    iget-object v4, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    :cond_0
    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    iget-object v9, p1, Lcom/android/server/input/InputApplicationHandle;->appWindowToken:Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    move-object v4, v0

    :cond_1
    if-eqz v8, :cond_4

    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input event dispatching timed out sending to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v12}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".  Reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v11, 0x7d3

    invoke-interface {v9, v11}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v5

    iget v9, v8, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-le v9, v5, :cond_3

    const/4 v3, 0x1

    :goto_0
    iget-object v9, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    invoke-virtual {v9, v4, v8, v0}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_6

    iget-object v9, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v9, :cond_6

    :try_start_1
    iget-object v9, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-wide v6, v4, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    return-wide v6

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    :try_start_2
    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input event dispatching timed out sending to application "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".  Reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    :cond_5
    :try_start_3
    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input event dispatching timed out .  Reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_6
    if-eqz v8, :cond_7

    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v10, v10, Lcom/android/server/wm/Session;->mPid:I

    move-object/from16 v0, p3

    invoke-interface {v9, v10, v3, v0}, Landroid/app/IActivityManager;->inputDispatchingTimedOut(IZLjava/lang/String;)J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-gez v9, :cond_2

    :cond_7
    :goto_2
    const-wide/16 v6, 0x0

    goto :goto_1

    :catch_0
    move-exception v9

    goto :goto_2

    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyCameraLensCoverSwitchChanged(JZ)V

    return-void
.end method

.method public notifyConfigurationChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyCoverAttachedChanged(JZ)V
    .locals 0

    return-void
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyCoverSwitchStateChanged(JZ)V

    return-void
.end method

.method public notifyGloveSwitchChanged(JZ)V
    .locals 0

    return-void
.end method

.method public notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    return-void
.end method

.method public notifyPenSwitchChanged(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyPenSwitchChanged(JZ)V

    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_0

    iput-boolean v1, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_0
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_0
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    :cond_0
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput-wide v2, v0, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    goto :goto_0
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    if-eqz p2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_1
    return-void
.end method

.method public setUpdateInputWindowsNeededLw()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    return-void
.end method

.method public thawInputDispatchingLw()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    :cond_0
    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .locals 34

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v2, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v14, v2, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_2

    const/16 v23, 0x1

    :goto_1
    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v0, v2, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/16 v22, 0x0

    :goto_3
    move/from16 v0, v22

    if-ge v0, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/FakeWindowImpl;

    iget-object v2, v2, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    :cond_2
    const/16 v23, 0x0

    goto :goto_1

    :cond_3
    const-string v2, "WindowManager"

    const-string v3, "Drag is in progress but there is no drag window handle."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mEmptyRegion:Landroid/graphics/Region;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    :goto_4
    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v26, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v32, v2, -0x1

    :goto_5
    if-ltz v32, :cond_11

    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v25, v0

    if-eqz v24, :cond_5

    if-eqz v25, :cond_5

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v2, :cond_6

    :cond_5
    :goto_6
    add-int/lit8 v32, v32, -0x1

    goto :goto_5

    :cond_6
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v29, v0

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v16

    if-ne v0, v2, :cond_c

    const/4 v11, 0x1

    :goto_7
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v10

    :goto_8
    move/from16 v0, v29

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_7

    const/16 v18, 0x1

    :cond_7
    move-object/from16 v0, v16

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_e

    move/from16 v0, v29

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_e

    if-nez v18, :cond_e

    const/4 v12, 0x1

    :goto_9
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_f

    const/16 v28, 0x1

    :goto_a
    if-eqz v23, :cond_8

    if-eqz v10, :cond_8

    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    :cond_8
    if-eqz v31, :cond_a

    if-nez v15, :cond_a

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-ge v2, v14, :cond_a

    if-eqz v28, :cond_a

    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_9

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    if-eqz v2, :cond_9

    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-ne v4, v2, :cond_10

    const/4 v8, 0x1

    :goto_b
    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    :cond_9
    const/4 v15, 0x1

    :cond_a
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v0, v31

    if-eq v2, v0, :cond_b

    move-object/from16 v5, p0

    move-object/from16 v6, v25

    move-object/from16 v7, v16

    move/from16 v8, v21

    move/from16 v9, v30

    invoke-direct/range {v5 .. v12}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    :cond_b
    sget-boolean v2, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v2, :cond_5

    const-string v2, "com.samsung.android.app.assistantmenu"

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Cursor"

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v0, v2, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    move-object/from16 v17, v0

    goto/16 :goto_6

    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_7

    :cond_d
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v10

    goto/16 :goto_8

    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_9

    :cond_f
    const/16 v28, 0x0

    goto/16 :goto_a

    :cond_10
    const/4 v8, 0x0

    goto :goto_b

    :cond_11
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_4

    :cond_12
    sget-boolean v2, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/view/WindowManagerPolicy;->updateCursorWindowInputRect(Landroid/graphics/Region;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->setInputWindows([Lcom/android/server/input/InputWindowHandle;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/InputMonitor;->clearInputWindowHandlesLw()V

    goto/16 :goto_0
.end method

.method public waitForInputDevicesReady(J)Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
