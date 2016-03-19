.class public Lcom/ime/framework/engine/bsthwr/FullScreenHWView;
.super Lcom/ime/framework/engine/bsthwr/TransparentView;
.source "FullScreenHWView.java"


# instance fields
.field private DEBUG:Z

.field private final DELIVER_TOUCH_DOWN_EVENT:I

.field private final DELIVER_TOUCH_UP_EVENT:I

.field private final LONGPRESS_TIMEOUT:I

.field private final LONG_TOUCH_TIME_OUT:I

.field private final NATIVE_LONGPRESS_TIMEOUT:I

.field private RawX:F

.field private RawY:F

.field private final SET_NOT_TOUCHABLE:I

.field private final SET_NOT_TOUCHABLE_LONG:I

.field private final SET_TOUCHABLE:I

.field private TAG:Ljava/lang/String;

.field private final TAP_TIMEOUT:I

.field downTime:J

.field private evDown:Landroid/view/MotionEvent;

.field private evUp:Landroid/view/MotionEvent;

.field private isLongPressed:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/ime/framework/engine/bsthwr/TransparentView;-><init>(Landroid/content/Context;)V

    const-string v0, "FullScreenHWView"

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->TAG:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->DEBUG:Z

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->LONGPRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->TAP_TIMEOUT:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->NATIVE_LONGPRESS_TIMEOUT:I

    iput-boolean v2, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->isLongPressed:Z

    iput v2, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->SET_NOT_TOUCHABLE:I

    iput v3, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->SET_NOT_TOUCHABLE_LONG:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->DELIVER_TOUCH_DOWN_EVENT:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->DELIVER_TOUCH_UP_EVENT:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->SET_TOUCHABLE:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->LONG_TOUCH_TIME_OUT:I

    iput v1, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->RawX:F

    iput v1, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->RawY:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->downTime:J

    new-instance v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;

    invoke-direct {v0, p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;-><init>(Lcom/ime/framework/engine/bsthwr/FullScreenHWView;)V

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090816

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->MAX_MOVE_COUNT:I

    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/engine/bsthwr/FullScreenHWView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->isLongPressed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/ime/framework/engine/bsthwr/FullScreenHWView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->isLongPressed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/ime/framework/engine/bsthwr/FullScreenHWView;)Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->evDown:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/framework/engine/bsthwr/FullScreenHWView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/framework/engine/bsthwr/FullScreenHWView;)I
    .locals 1

    iget v0, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->TAP_TIMEOUT:I

    return v0
.end method

.method static synthetic access$400(Lcom/ime/framework/engine/bsthwr/FullScreenHWView;)Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->evUp:Landroid/view/MotionEvent;

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/engine/bsthwr/HWManager;->getFullScreenViewMeaHeight()I

    move-result v0

    move v2, v3

    move v1, v0

    iget-object v5, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---onMeasure----measuredHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/ime/framework/engine/bsthwr/TransparentView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getToolbarPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getToolbarPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->isShown()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/framework/engine/bsthwr/HWManager;->resetFullViewMeasureHeight()V

    :cond_3
    const/4 v2, 0x1

    new-array v8, v2, [Landroid/view/MotionEvent$PointerProperties;

    const/4 v2, 0x0

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v8, v2

    const/4 v2, 0x1

    new-array v9, v2, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v2, 0x0

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v9, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->x:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->y:I

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->isStartWriting:Z

    if-nez v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->y:I

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/framework/engine/bsthwr/HWManager;->getScreenHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->getCurrentWindowHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_6

    const/16 v19, 0x0

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->isStartWriting:Z

    if-nez v2, :cond_8

    if-nez v19, :cond_8

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->y:I

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/engine/bsthwr/HWManager;->getRealWindowHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Lcom/ime/framework/common/InputManager;->dispatchTouchEventOnSoftInputPanel(Landroid/view/MotionEvent;)V

    :cond_5
    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_6
    const/16 v19, 0x1

    goto :goto_1

    :cond_7
    const/16 v19, 0x0

    goto :goto_1

    :cond_8
    invoke-super/range {p0 .. p1}, Lcom/ime/framework/engine/bsthwr/TransparentView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->RawX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->RawY:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->isLongPressed:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->RawX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->RawY:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v8, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v9, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->downTime:J

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->downTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->downTime:J

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->RawX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->RawY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->evDown:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->TAP_TIMEOUT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->LONGPRESS_TIMEOUT:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/framework/engine/bsthwr/HWManager;->cancelRecognize()V

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->stroke_count:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->MAX_MOVE_COUNT:I

    if-le v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->DEBUG:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent MotionEvent.ACTION_UP MAX_MOVE_COUNT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->MAX_MOVE_COUNT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stroke_count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->stroke_count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->stroke_count:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->MAX_MOVE_COUNT:I

    if-ge v2, v3, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->orgX:I

    if-le v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->orgX:I

    sub-int/2addr v2, v3

    :goto_3
    move-object/from16 v0, p0

    iput v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->orgDx:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->y:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->orgY:I

    if-le v2, v3, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->y:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->orgY:I

    sub-int/2addr v2, v3

    :goto_4
    move-object/from16 v0, p0

    iput v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->orgDy:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->stroke_count:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->orgDx:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->orgDy:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->stroke_count:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->stroke_count:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->MAX_MOVE_COUNT:I

    if-ge v2, v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/framework/engine/bsthwr/HWManager;->isStorkeMode()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->TAG:Ljava/lang/String;

    const-string v3, "---clear---"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->clear()V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/framework/engine/bsthwr/HWManager;->isLandscapeFullScreen()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/ime/framework/common/InputManager;->dispatchTouchEventOnSoftInputPanel(Landroid/view/MotionEvent;)V

    :cond_b
    :goto_5
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->orgX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->x:I

    sub-int/2addr v2, v3

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->orgY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->y:I

    sub-int/2addr v2, v3

    goto :goto_4

    :cond_e
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v8, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v9, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->downTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->downTime:J

    move-object/from16 v0, p0

    iget v6, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->TAP_TIMEOUT:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->RawX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->RawY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->evUp:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->evDown:Landroid/view/MotionEvent;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->evUp:Landroid/view/MotionEvent;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->mSpeed:I

    invoke-virtual {v2, v3}, Lcom/ime/framework/engine/bsthwr/HWManager;->startRecognize(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/framework/engine/bsthwr/HWManager;->isStorkeMode()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->invalidate()V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/framework/engine/bsthwr/HWManager;->cancelRecognize()V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
