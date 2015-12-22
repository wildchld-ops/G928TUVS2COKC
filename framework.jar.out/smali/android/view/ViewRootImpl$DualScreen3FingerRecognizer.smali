.class Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DualScreen3FingerRecognizer"
.end annotation


# static fields
.field private static final FINISH_HANDLED:I = 0x1

.field private static final FORWARD:I = 0x0

.field static final m3FingerFocusStrokeWidth:I = 0x6


# instance fields
.field final m3FingerEmptyRegion:Landroid/graphics/Region;

.field m3FingerFocusLine:Landroid/graphics/Path;

.field m3FingerFocusPaint:Landroid/graphics/Paint;

.field m3FingerFocusRect:Landroid/graphics/Rect;

.field private m3FingerFocusStartX:[F

.field private m3FingerFocusStartY:[F

.field private m3FingerGestureFound:Z

.field private final m3FingerPowerManager:Landroid/os/PowerManager;

.field private m3FingerTouchDeltaX:F

.field private m3FingerTouchDeltaY:F

.field private final m3FingerTouchSlop:I

.field private m3FingerTouchTimeout:Z

.field private final m3FingerTouchTimeoutDuration:I

.field private final m3FingerTouchTimeoutTask:Ljava/lang/Runnable;

.field m3FingerTracking:Z

.field private mDualScreenManagerFor3Finger:Lcom/samsung/android/dualscreen/DualScreenManager;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerFocusRect:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerFocusPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerFocusLine:Landroid/graphics/Path;

    iput-boolean v2, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTracking:Z

    iput-boolean v2, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerGestureFound:Z

    new-instance v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer$1;-><init>(Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchTimeoutTask:Ljava/lang/Runnable;

    iget-object v0, p1, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchSlop:I

    iget-object v0, p1, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchTimeoutDuration:I

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerEmptyRegion:Landroid/graphics/Region;

    iget-object v0, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerEmptyRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v0, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method static synthetic access$3202(Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchTimeout:Z

    return p1
.end method


# virtual methods
.method public processEvent(Landroid/view/MotionEvent;)I
    .locals 21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTracking:Z

    move/from16 v18, v0

    if-eqz v18, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v3, v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerFocusStartX:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    aput v19, v18, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerFocusStartY:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    aput v19, v18, v15

    :cond_0
    :goto_0
    const/16 v18, 0x1

    :goto_1
    return v18

    :cond_1
    const/16 v18, 0x6

    move/from16 v0, v18

    if-eq v3, v0, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v2, v0, :cond_2

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v2, v0, :cond_0

    :cond_2
    const/16 v18, 0x6

    move/from16 v0, v18

    if-eq v3, v0, :cond_3

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_9

    :cond_3
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v14, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    if-ltz v15, :cond_4

    const/16 v18, 0xf

    move/from16 v0, v18

    if-le v15, v0, :cond_5

    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerFocusStartX:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v5, v18, v19

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerFocusStartY:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v6, v18, v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerGestureFound:Z

    move/from16 v19, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchSlop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v18, v18, v20

    if-gtz v18, :cond_6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchSlop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v18, v18, v20

    if-lez v18, :cond_7

    :cond_6
    const/16 v18, 0x1

    :goto_4
    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerGestureFound:Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchDeltaX:F

    move/from16 v18, v0

    add-float v18, v18, v5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchDeltaX:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchDeltaY:F

    move/from16 v18, v0

    add-float v18, v18, v6

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchDeltaY:F

    goto :goto_3

    :cond_7
    const/16 v18, 0x0

    goto :goto_4

    :cond_8
    const/16 v18, 0x6

    move/from16 v0, v18

    if-ne v3, v0, :cond_9

    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_9
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchTimeout:Z

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTracking:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewRootImpl;->setTransparentRegion(Landroid/graphics/Region;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerGestureFound:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerGestureFound:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getDisplayId()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/dualscreen/DualScreen;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v17

    if-eqz v17, :cond_b

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/dualscreen/TaskInfo;->isCoupled()Z

    move-result v18

    if-nez v18, :cond_b

    const/4 v12, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->mDualScreenManagerFor3Finger:Lcom/samsung/android/dualscreen/DualScreenManager;

    move-object/from16 v18, v0

    if-nez v18, :cond_a

    new-instance v18, Lcom/samsung/android/dualscreen/DualScreenManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/samsung/android/dualscreen/DualScreenManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->mDualScreenManagerFor3Finger:Lcom/samsung/android/dualscreen/DualScreenManager;

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchDeltaX:F

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchDeltaY:F

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    cmpl-float v18, v18, v19

    if-lez v18, :cond_f

    sget-object v18, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v18

    move/from16 v0, v18

    if-ne v7, v0, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchDeltaX:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_c

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->mDualScreenManagerFor3Finger:Lcom/samsung/android/dualscreen/DualScreenManager;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/dualscreen/DualScreenManager;->moveToScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    const-string v18, "ViewRootImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "swap screen!! MAIN -> SUB screen. currentDisplayId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    check-cast v18, Landroid/app/Activity;

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->finishAndRemoveTask()V

    const-string v18, "ViewRootImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Need to finish Activity in MAIN screen. currentDisplayId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    sget-object v18, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v18

    move/from16 v0, v18

    if-ne v7, v0, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchDeltaX:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_e

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->mDualScreenManagerFor3Finger:Lcom/samsung/android/dualscreen/DualScreenManager;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/dualscreen/DualScreenManager;->moveToScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    const-string v18, "ViewRootImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "swap screen!! SUB -> MAIN screen. currentDisplayId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    check-cast v18, Landroid/app/Activity;

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->finishAndRemoveTask()V

    const-string v18, "ViewRootImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Need to finish Activity in SUB screen. currentDisplayId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    sget-object v18, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v18

    move/from16 v0, v18

    if-ne v7, v0, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchDeltaY:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_10

    const-string v18, "ViewRootImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Down side sweep in MAIN screen. currentDisplayId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    const-string v18, "ViewRootImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Up side sweep in MAIN screen. currentDisplayId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    sget-object v18, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v18

    move/from16 v0, v18

    if-ne v7, v0, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchDeltaY:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_12

    const-string v18, "ViewRootImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Down side sweep in SUB screen. currentDisplayId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_12
    const-string v18, "ViewRootImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Up side sweep in SUB screen. currentDisplayId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchTimeout:Z

    move/from16 v18, v0

    if-eqz v18, :cond_18

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v14, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v18, v0

    if-eqz v18, :cond_18

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v14, :cond_16

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    if-ltz v15, :cond_14

    const/16 v18, 0xf

    move/from16 v0, v18

    if-le v15, v0, :cond_15

    :cond_14
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerFocusStartX:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    aput v19, v18, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerFocusStartY:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    aput v19, v18, v15

    goto :goto_7

    :cond_16
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTracking:Z

    const/16 v18, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_17
    :goto_8
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_18
    const/16 v18, 0x5

    move/from16 v0, v18

    if-eq v3, v0, :cond_19

    const/16 v18, 0x6

    move/from16 v0, v18

    if-ne v3, v0, :cond_23

    :cond_19
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v14, v0, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x8

    if-nez v18, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v18, v0

    if-eqz v18, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    check-cast v18, Landroid/app/Activity;

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_1b

    const-string v18, "android.intent.category.HOME"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1a

    const-string v18, "com.samsung.android.dualscreen.intent.category.SAMSUNG_HOME"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1b

    :cond_1a
    const-string v18, "ViewRootImpl"

    const-string v19, "Not support 3 finger gesture in HomeScreen."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_1b
    # getter for: Landroid/view/ViewRootImpl;->m3FingerGestureIgnoreList:[Ljava/lang/String;
    invoke-static {}, Landroid/view/ViewRootImpl;->access$3300()[Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1d

    # getter for: Landroid/view/ViewRootImpl;->m3FingerGestureIgnoreList:[Ljava/lang/String;
    invoke-static {}, Landroid/view/ViewRootImpl;->access$3300()[Ljava/lang/String;

    move-result-object v4

    array-length v13, v4

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v13, :cond_1d

    aget-object v10, v4, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    const-string v18, "ViewRootImpl"

    const-string v19, "This package cannot support 3 finger gesture."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_1c
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerPowerManager:Landroid/os/PowerManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerPowerManager:Landroid/os/PowerManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager;->getMultipleScreenState()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1e

    const-string v18, "ViewRootImpl"

    const-string v19, "3 finger gesture cannot support by main/sub screen off."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string/jumbo v19, "motion_move_app"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-nez v18, :cond_1f

    const-string v18, "ViewRootImpl"

    const-string/jumbo v19, "motion_move_app was turned off."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "access_control_enabled"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_20

    const-string v18, "ViewRootImpl"

    const-string v19, "access_control_enabled was turned on."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_20
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchDeltaY:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchDeltaX:F

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerGestureFound:Z

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchTimeout:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchTimeoutTask:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchTimeoutTask:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerFocusStartX:[F

    move-object/from16 v18, v0

    if-eqz v18, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerFocusStartY:[F

    move-object/from16 v18, v0

    if-nez v18, :cond_17

    :cond_21
    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerFocusStartX:[F

    const/16 v18, 0x10

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerFocusStartY:[F

    goto/16 :goto_8

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchTimeoutTask:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    :cond_23
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v2, v0, :cond_24

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v2, v0, :cond_17

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchTimeout:Z

    move/from16 v18, v0

    if-eqz v18, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewRootImpl;->setTransparentRegion(Landroid/graphics/Region;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    :cond_25
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerGestureFound:Z

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerTouchTimeout:Z

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerFocusStartY:[F

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl$DualScreen3FingerRecognizer;->m3FingerFocusStartX:[F

    goto/16 :goto_8
.end method
