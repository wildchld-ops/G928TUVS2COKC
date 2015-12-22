.class public Lcom/android/server/wm/StackTapPointerEventListener;
.super Ljava/lang/Object;
.source "StackTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/StackTapPointerEventListener$1;,
        Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;
    }
.end annotation


# static fields
.field private static final TAP_MOTION_SLOP_INCHES:F = 0.125f

.field private static final TAP_TIMEOUT_MSEC:I = 0x12c


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDownX:F

.field private mDownY:F

.field private mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mMotionSlop:I

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mPointerId:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object p1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p2, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iput-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x3e000000    # 0.125f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMotionSlop:I

    iget-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "multiwindow_facade"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/StackTapPointerEventListener;FFZ)Lcom/android/server/wm/WindowState;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/StackTapPointerEventListener;->findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/StackTapPointerEventListener;)F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/StackTapPointerEventListener;)F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    return v0
.end method

.method private findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    .locals 13

    const/4 v5, 0x0

    float-to-int v8, p1

    float-to-int v9, p2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iget-object v10, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy;->getScaleWindowResizableSize()I

    move-result v2

    iget-object v10, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v10, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v11

    :try_start_0
    iget-object v10, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    and-int/lit8 v10, v0, 0x10

    if-nez v10, :cond_0

    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x8ca

    if-eq v10, v12, :cond_0

    if-eqz p3, :cond_2

    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v12, -0x80000000

    and-int/2addr v10, v12

    if-nez v10, :cond_0

    :cond_2
    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v10

    const/high16 v12, 0x800000

    invoke-virtual {v10, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v10

    iget v10, v10, Lcom/android/server/wm/TaskStack;->mStackId:I

    iget-object v12, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v12, v12, Lcom/android/server/wm/WindowManagerService;->mTabFrontStack:I

    if-eq v10, v12, :cond_4

    :cond_3
    :goto_1
    monitor-exit v11

    return-object v5

    :cond_4
    move-object v5, v6

    goto :goto_1

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method private isInputMethodWindowsLocked(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7db

    if-eq v1, v2, :cond_2

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7dc

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needCloseMultiWindowPanel(FF)Z
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/StackTapPointerEventListener;->findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x4000000

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->isEdge()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->closeMultiWindowPanel()Z

    move-result v2

    :cond_0
    return v2
.end method

.method private otherAppTouched(FFZ)Z
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/StackTapPointerEventListener;->findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 4

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;-><init>(Lcom/android/server/wm/StackTapPointerEventListener;Lcom/android/server/wm/StackTapPointerEventListener$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    iget-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    :cond_0
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 7

    const/16 v6, 0x1f

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v3

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    and-int/lit16 v3, v0, 0xff

    if-nez v3, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {v3, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mMultiWindowGestureDetector:Lcom/android/server/wm/MultiWindowPointerEventListener;

    invoke-virtual {v3}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isValidMotion()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    iget v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/StackTapPointerEventListener;->needCloseMultiWindowPanel(FF)Z

    iget v3, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    iget v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    invoke-direct {p0, v3, v4, v1}, Lcom/android/server/wm/StackTapPointerEventListener;->otherAppTouched(FFZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget v2, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v6, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    and-int/lit16 v3, v0, 0xff

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    iget v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/StackTapPointerEventListener;->needCloseMultiWindowPanel(FF)Z

    iget v3, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    iget v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v5

    if-eqz v5, :cond_5

    :goto_2
    invoke-direct {p0, v3, v4, v1}, Lcom/android/server/wm/StackTapPointerEventListener;->otherAppTouched(FFZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget v2, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v6, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_5
    move v1, v2

    goto :goto_2
.end method
