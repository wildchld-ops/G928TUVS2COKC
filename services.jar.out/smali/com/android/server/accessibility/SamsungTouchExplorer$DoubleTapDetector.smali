.class Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapDetector"
.end annotation


# instance fields
.field private mDownEvent:Landroid/view/MotionEvent;

.field private mFirstTapEvent:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;Lcom/android/server/accessibility/SamsungTouchExplorer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    :cond_1
    return-void
.end method

.method public firstTapDetected()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$900(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;I)V
    .locals 26

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1100(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1200(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1300(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1400(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1400(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1500(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1500(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTempPoint:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1600(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/graphics/Point;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    move-object/from16 v0, v20

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I
    invoke-static {v4, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1700(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/graphics/Point;)I

    move-result v24

    if-eqz v24, :cond_0

    const/4 v4, 0x1

    new-array v10, v4, [Landroid/view/MotionEvent$PointerProperties;

    const/4 v4, 0x0

    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v10, v4

    const/4 v4, 0x0

    aget-object v4, v10, v4

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    const/4 v4, 0x1

    new-array v11, v4, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v4, 0x0

    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v11, v4

    const/4 v4, 0x0

    aget-object v4, v11, v4

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v4, 0x0

    aget-object v4, v11, v4

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v21

    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_4

    const/16 v25, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    move-object/from16 v0, v21

    move/from16 v1, p2

    move/from16 v2, v25

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1800(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/view/MotionEvent;IZ)V

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    :cond_4
    const/16 v25, 0x0

    goto :goto_1
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-static {v2, p1}, Lcom/android/server/accessibility/GestureUtils;->isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->clear()V

    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-static {v2, p1}, Lcom/android/server/accessibility/GestureUtils;->isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->clear()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchSlop:I
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$800(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v4

    invoke-static {v2, p1, v3, v4, v1}, Lcom/android/server/accessibility/GestureUtils;->isTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapTimeout:I
    invoke-static {v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$900(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/android/server/accessibility/GestureUtils;->isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    iput-object v5, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapTimeout:I
    invoke-static {v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$900(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapSlop:I
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1000(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v4

    invoke-static {v2, p1, v3, v4, v1}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->onDoubleTap(Landroid/view/MotionEvent;I)V

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    iput-object v5, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    iput-object v5, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    iput-object v5, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    iput-object v5, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    iput-object v5, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
