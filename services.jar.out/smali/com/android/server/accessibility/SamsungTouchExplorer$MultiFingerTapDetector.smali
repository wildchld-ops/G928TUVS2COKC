.class Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiFingerTapDetector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
    }
.end annotation


# static fields
.field private static final LOG_MULTI_FINGER:Ljava/lang/String; = "MultiFingerTapDetector"


# instance fields
.field private final MSG_PERFORM_DOUBLE_TAP:I

.field private final MSG_PERFORM_DOUBLE_TAP_AND_HOLD:I

.field private final MSG_PERFORM_SINGLE_TAP:I

.field private final MSG_PERFORM_TRIPLE_TAP:I

.field private final STATE_CANCEL:I

.field private final STATE_READY:I

.field private final STATE_THREE_FINGER_DETECTION:I

.field private final STATE_TWO_FINGER_DETECTION:I

.field private isFirstTapDone:Z

.field private isSecondTapDone:Z

.field private mDetectionState:I

.field private final mHandler:Landroid/os/Handler;

.field private mPointerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pointerCount:I

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->STATE_READY:I

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->STATE_TWO_FINGER_DETECTION:I

    iput v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->STATE_THREE_FINGER_DETECTION:I

    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->STATE_CANCEL:I

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->MSG_PERFORM_SINGLE_TAP:I

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->MSG_PERFORM_DOUBLE_TAP:I

    iput v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->MSG_PERFORM_DOUBLE_TAP_AND_HOLD:I

    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->MSG_PERFORM_TRIPLE_TAP:I

    new-instance v0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$1;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;Lcom/android/server/accessibility/SamsungTouchExplorer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performSingleTap()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performDoubleTap()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performDoubleTapAndHold()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->performTripleTap()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    return v0
.end method

.method private isMultiFingerTap()Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->isTapEvent()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private performDoubleTap()V
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private performDoubleTapAndHold()V
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private performSingleTap()V
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private performTripleTap()V
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "MultiFingerTapDetector"

    const-string v1, "clear the Multi-Finger tap detector"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2602(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v10, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    new-instance v0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;FFJ)V

    invoke-virtual {v10, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    const/4 v7, 0x0

    :goto_1
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-ge v7, v0, :cond_2

    iget-object v10, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    new-instance v0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;FFJ)V

    invoke-virtual {v10, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    packed-switch v0, :pswitch_data_1

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    :cond_3
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2602(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_4
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    :cond_5
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2602(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->setUpPos(FFJ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :pswitch_6
    const-string v0, "MultiFingerTapDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP - mDetectionState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MultiFingerTapDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP - isFirstTapDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MultiFingerTapDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP - isSecondTapDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MultiFingerTapDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP - pointerCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mPointerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;

    if-eqz v8, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->setUpPos(FFJ)V

    :goto_3
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isMultiFingerTap()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    goto/16 :goto_0

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-nez v0, :cond_e

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    add-int/lit8 v2, v2, 0x5a

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_c
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isFirstTapDone:Z

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_e
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->isSecondTapDone:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_f
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_10
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->pointerCount:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0x82

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    add-int/lit16 v2, v2, 0xa0

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
