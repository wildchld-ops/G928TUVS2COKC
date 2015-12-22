.class Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StackTapPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/StackTapPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/StackTapPointerEventListener;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/StackTapPointerEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/StackTapPointerEventListener;Lcom/android/server/wm/StackTapPointerEventListener$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;-><init>(Lcom/android/server/wm/StackTapPointerEventListener;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 11

    iget-object v7, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    const/4 v10, 0x0

    # invokes: Lcom/android/server/wm/StackTapPointerEventListener;->findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    invoke-static {v7, v8, v9, v10}, Lcom/android/server/wm/StackTapPointerEventListener;->access$100(Lcom/android/server/wm/StackTapPointerEventListener;FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    if-eqz v7, :cond_e

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x898

    if-eq v7, v8, :cond_0

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x3e8

    if-ne v7, v8, :cond_1

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_1
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v7}, Lcom/android/server/wm/StackTapPointerEventListener;->access$300(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v8}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v7}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v7, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v7}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v1, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v1, v7, :cond_8

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->y:I

    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v7}, Lcom/android/server/wm/StackTapPointerEventListener;->access$300(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v8}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    invoke-virtual {v7, v8, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V

    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.sec.android.extra.CONTROL_BAR_POS"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v7}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/16 v7, 0xc

    if-ne v6, v7, :cond_4

    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v7, v7, 0x14

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_4
    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_5
    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v7, v7, 0x14

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_6
    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v7, v7, 0x14

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_7
    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v7, v7, 0x14

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v7, v7, 0x14

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    :cond_8
    const/4 v7, 0x3

    if-ne v6, v7, :cond_9

    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->x:I

    goto/16 :goto_1

    :cond_9
    const/16 v7, 0xc

    if-ne v6, v7, :cond_a

    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v7, v7, 0x14

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->x:I

    goto/16 :goto_1

    :cond_a
    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    :cond_b
    const/4 v7, 0x2

    if-ne v6, v7, :cond_c

    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v7, v7, 0x14

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    :cond_c
    const/4 v7, 0x4

    if-ne v6, v7, :cond_d

    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v7, v7, 0x14

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v7, v7, 0x50

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    :cond_d
    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    iget v7, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v7, v7, 0x14

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v7, v7, 0x14

    div-int/lit8 v7, v7, 0x64

    iput v7, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    # invokes: Lcom/android/server/wm/StackTapPointerEventListener;->findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/wm/StackTapPointerEventListener;->access$100(Lcom/android/server/wm/StackTapPointerEventListener;FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    if-eq v2, v4, :cond_0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_0

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v5, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, v7}, Landroid/view/WindowManagerPolicy;->closeMultiWindowTrayBar(Z)Z

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    # invokes: Lcom/android/server/wm/StackTapPointerEventListener;->findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    invoke-static {v7, v8, v9, v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$100(Lcom/android/server/wm/StackTapPointerEventListener;FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    if-nez v7, :cond_2

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->checkFixedBound()Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x898

    if-eq v7, v8, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v7, 0x1000

    invoke-virtual {v3, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZoneLevel()I

    move-result v7

    if-ne v7, v6, :cond_0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v5, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v1, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v1, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$300(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v7}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    invoke-virtual {v5, v7, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.sec.android.extra.CONTROL_BAR_POS"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v5, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v7, 0x1f

    iget-object v8, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F
    invoke-static {v8}, Lcom/android/server/wm/StackTapPointerEventListener;->access$500(Lcom/android/server/wm/StackTapPointerEventListener;)F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F
    invoke-static {v9}, Lcom/android/server/wm/StackTapPointerEventListener;->access$600(Lcom/android/server/wm/StackTapPointerEventListener;)F

    move-result v9

    float-to-int v9, v9

    iget-object v10, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v10}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    move v5, v6

    goto/16 :goto_0
.end method
