.class Lcom/android/server/accessibility/SamsungTouchExplorer;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungTouchExplorer$1;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$ActionDownDelayed;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;
    }
.end annotation


# static fields
.field private static final ACTION_DOWN_DELAY_TIMEOUT:I = 0x32

.field private static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final CLICK_LOCATION_ACCESSIBILITY_FOCUS:I = 0x1

.field private static final CLICK_LOCATION_LAST_TOUCH_EXPLORED:I = 0x2

.field private static final CLICK_LOCATION_NONE:I = 0x0

.field private static final DEBUG:Z = false

.field private static final EXIT_GESTURE_DETECTION_TIMEOUT:I = 0x7d0

.field private static final GESTURE_DETECTION_VELOCITY_DIP:I = 0x3e8

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SamsungTouchExplorer"

.field private static final MAX_DRAGGING_ANGLE_COS:F = 0.52532196f

.field private static final MAX_POINTER_COUNT:I = 0x20

.field private static final MIN_POINTER_DISTANCE_TO_USE_MIDDLE_LOCATION_DIP:I = 0xc8

.field private static final MIN_PREDICTION_SCORE:F = 2.0f

.field private static final MULTI_FINGER_TAP_SLOP_MULTIPLIER:F = 1.1f

.field private static final MULTI_FINGER_TAP_TIME_OFFSET:I = 0x82

.field private static final STATE_DELEGATING:I = 0x4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_ONE_FINGER_GESTURE_DETECTING:I = 0x5

.field private static final STATE_THREE_FINGER_GESTURE_DETECTING:I = 0x7

.field private static final STATE_TOUCH_EXPLORING:I = 0x1

.field private static final STATE_TWO_FINGER_GESTURE_DETECTING:I = 0x6

.field private static final THREE_FINGER_TAP_TIME_OFFSET:I = 0xa0

.field private static final TOUCH_TOLERANCE:I = 0x3


# instance fields
.field private displayHeightLand:I

.field private displayHeightPort:I

.field private isLongPressPerformed:Z

.field private isMovedThresholdDistance:Z

.field private isThreeTapMovementON:Z

.field private mActionDownDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ActionDownDelayed;

.field private mActionDownLock:Z

.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private final mDetermineUserIntentTimeout:I

.field private final mDoubleTapDetector:Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;

.field private final mDoubleTapSlop:I

.field private final mDoubleTapTimeout:I

.field private mDraggingPointerId:I

.field private final mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

.field private mGestureLibrary:Landroid/gesture/GestureLibrary;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

.field private mLastTouchedWindowId:I

.field private mLongPressingPointerDeltaX:I

.field private mLongPressingPointerDeltaY:I

.field private mLongPressingPointerId:I

.field private mMultiFingerTapDetector:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private final mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

.field private mPreviousX:F

.field private mPreviousY:F

.field private final mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

.field private final mScaledGestureDetectionVelocity:I

.field private final mScaledMinPointerDistanceToUseMiddleLocation:I

.field private final mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

.field private final mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

.field private final mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

.field private final mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

.field private mStartX:F

.field private mStartY:F

.field private final mStatusBarHeight:F

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mStrokeBuffers:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mTapAndHoldInProgression:Z

.field private final mTapTimeout:I

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchExplorationInProgress:Z

.field private final mTouchSlop:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;

.field private pxForOneDp:F

.field private waitingForNextPointer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v2, v6, [Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mActionDownLock:Z

    iput-boolean v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->waitingForNextPointer:Z

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    iput-boolean v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isLongPressPerformed:Z

    iput-boolean v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isMovedThresholdDistance:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTempRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTempPoint:Landroid/graphics/Point;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    iput-boolean v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->pxForOneDp:F

    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->displayHeightPort:I

    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->displayHeightLand:I

    iput-boolean v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isThreeTapMovementON:Z

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->getStatusBarHeight()F

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStatusBarHeight:F

    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapTimeout:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchSlop:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapSlop:I

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    invoke-direct {v2, p0, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;Lcom/android/server/accessibility/SamsungTouchExplorer$1;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-direct {v2, p0, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;Lcom/android/server/accessibility/SamsungTouchExplorer$1;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    const v2, 0x1100002

    invoke-static {p1, v2}, Landroid/gesture/GestureLibraries;->fromRawResource(Landroid/content/Context;I)Landroid/gesture/GestureLibrary;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/gesture/GestureLibrary;->setOrientationStyle(I)V

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/gesture/GestureLibrary;->setSequenceType(I)V

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v2}, Landroid/gesture/GestureLibrary;->load()Z

    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    const/16 v3, 0x400

    iget v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;II)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    const/high16 v3, 0x200000

    iget v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;II)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;

    invoke-direct {v2, p0, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;Lcom/android/server/accessibility/SamsungTouchExplorer$1;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mScaledGestureDetectionVelocity:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$ActionDownDelayed;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ActionDownDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mActionDownDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ActionDownDelayed;

    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    invoke-direct {v2, p0, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;Lcom/android/server/accessibility/SamsungTouchExplorer$1;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerTapDetector:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/SamsungTouchExplorer;)I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapSlop:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/graphics/Point;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/view/MotionEvent;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/accessibility/SamsungTouchExplorer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isLongPressPerformed:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/accessibility/SamsungTouchExplorer;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    return p1
.end method

.method static synthetic access$3202(Lcom/android/server/accessibility/SamsungTouchExplorer;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    return p1
.end method

.method static synthetic access$3302(Lcom/android/server/accessibility/SamsungTouchExplorer;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/accessibility/SamsungTouchExplorer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    return-void
.end method

.method static synthetic access$3502(Lcom/android/server/accessibility/SamsungTouchExplorer;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/view/MotionEvent;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void
.end method

.method static synthetic access$3902(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mActionDownLock:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/SamsungTouchExplorer;)I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/SamsungTouchExplorer;)I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapTimeout:I

    return v0
.end method

.method private arePointerMovedEnough(I)Z
    .locals 12

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GesturePoint;

    iget v7, v3, Landroid/gesture/GesturePoint;->x:F

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GesturePoint;

    iget v3, v3, Landroid/gesture/GesturePoint;->x:F

    sub-float v0, v7, v3

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GesturePoint;

    iget v7, v3, Landroid/gesture/GesturePoint;->y:F

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GesturePoint;

    iget v3, v3, Landroid/gesture/GesturePoint;->y:F

    sub-float v1, v7, v3

    float-to-double v8, v0

    float-to-double v10, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    iget v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchSlop:I

    int-to-float v3, v3

    const v7, 0x3f8ccccd    # 1.1f

    mul-float/2addr v3, v7

    float-to-double v8, v3

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_0

    move v3, v6

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private clear(Landroid/view/MotionEvent;I)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->clear()V

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    return-void

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto :goto_0

    :pswitch_2
    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private clearMultiGestureStrokes()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private computeClickLocation(Landroid/graphics/Point;)I
    .locals 3

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x2

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private computeInjectionAction(II)I
    .locals 3

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return p1

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 p1, v1, 0x5

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v2

    if-ne v2, v1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 p1, v1, 0x6

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private dpToPx(I)I
    .locals 4

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->pxForOneDp:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->pxForOneDp:F

    :cond_0
    int-to-float v1, p1

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->pxForOneDp:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    return v0
.end method

.method private getDisplayHeight()I
    .locals 4

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->displayHeightPort:I

    if-nez v2, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->displayHeightPort:I

    :cond_0
    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->displayHeightPort:I

    :goto_0
    return v2

    :cond_1
    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->displayHeightLand:I

    if-nez v2, :cond_2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->displayHeightLand:I

    :cond_2
    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->displayHeightLand:I

    goto :goto_0
.end method

.method private getKeyboardHeight()I
    .locals 3

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result v1

    return v1
.end method

.method private static getStateSymbolicName(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string v0, "STATE_TOUCH_EXPLORING"

    :goto_0
    return-object v0

    :pswitch_2
    const-string v0, "STATE_DRAGGING"

    goto :goto_0

    :pswitch_3
    const-string v0, "STATE_DELEGATING"

    goto :goto_0

    :pswitch_4
    const-string v0, "STATE_ONE_FINGER_GESTURE_DETECTING"

    goto :goto_0

    :pswitch_5
    const-string v0, "STATE_TWO_FINGER_GESTURE_DETECTING"

    goto :goto_0

    :pswitch_6
    const-string v0, "STATE_THREE_FINGER_GESTURE_DETECTING"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getStatusBarHeight()F
    .locals 5

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V
    .locals 6

    const/high16 v5, 0x200000

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :goto_0
    return-void

    :pswitch_1
    const-string v0, "SamsungTouchExplorer"

    const-string v1, "Delegating state can only be reached if there is at least one pointer down!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    invoke-direct {p0, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    invoke-direct {p0, p1, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    if-ltz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->isOffsetRequired(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    neg-int v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object p1

    :cond_0
    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    iput v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    iput v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    invoke-direct {p0, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V
    .locals 18

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    shl-int v11, v14, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    const/high16 v14, 0x200000

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_2
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    packed-switch v14, :pswitch_data_1

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    sub-float v4, v8, v12

    sub-float v5, v9, v13

    float-to-double v14, v4

    float-to-double v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    int-to-double v14, v14

    cmpl-double v14, v6, v14

    if-lez v14, :cond_2

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v4, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_2
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_0

    :cond_3
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    if-ne v10, v14, :cond_0

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    const/high16 v14, 0x200000

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    if-ne v10, v14, :cond_4

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto/16 :goto_0

    :pswitch_7
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleMotionEventStateOneFingerGestureDetecting(Landroid/view/MotionEvent;I)V
    .locals 14

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPreviousX:F

    iput v8, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPreviousY:F

    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v10, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-direct {v10, v7, v8, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPreviousX:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPreviousY:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v9, 0x40400000    # 3.0f

    cmpl-float v9, v1, v9

    if-gez v9, :cond_2

    const/high16 v9, 0x40400000    # 3.0f

    cmpl-float v9, v2, v9

    if-ltz v9, :cond_0

    :cond_2
    iput v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPreviousX:F

    iput v8, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPreviousY:F

    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v10, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-direct {v10, v7, v8, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    const/high16 v9, 0x80000

    invoke-direct {p0, v9}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    const/high16 v9, 0x200000

    invoke-direct {p0, v9}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v10, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-direct {v10, v7, v8, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/gesture/Gesture;

    invoke-direct {v3}, Landroid/gesture/Gesture;-><init>()V

    new-instance v9, Landroid/gesture/GestureStroke;

    iget-object v10, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-direct {v9, v10}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v9}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v9, v3}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    iget-wide v10, v0, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    cmpl-double v9, v10, v12

    if-ltz v9, :cond_3

    :try_start_0
    iget-object v9, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v9}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    const/4 v9, 0x1

    iput v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const-string v9, "SamsungTouchExplorer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Non numeric gesture id:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_3
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private handleMotionEventStateThreeFingerGestureDetecting(Landroid/view/MotionEvent;I)V
    .locals 14

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v7, "SamsungTouchExplorer"

    const-string v8, "TouchExplorer - ACTION_UP x3"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    const/high16 v7, 0x80000

    invoke-direct {p0, v7}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    const/high16 v7, 0x200000

    invoke-direct {p0, v7}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    const/4 v7, 0x3

    if-lt v4, v7, :cond_b

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    const/4 v7, 0x4

    iput v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto :goto_0

    :pswitch_2
    const/4 v7, 0x3

    if-ne v3, v7, :cond_3

    const-string v7, "SamsungTouchExplorer"

    const-string v8, "TouchExplorer - ACTION_POINTER_DOWN x3"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    const/4 v7, 0x3

    if-lt v4, v7, :cond_2

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    const/4 v7, 0x4

    iput v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v7, v7, v4

    new-instance v8, Landroid/gesture/GesturePoint;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-direct {v8, v9, v10, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x3

    if-le v3, v7, :cond_0

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    const/4 v7, 0x4

    iput v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto/16 :goto_0

    :pswitch_3
    const/4 v7, 0x3

    if-ge v3, v7, :cond_5

    iget-boolean v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isThreeTapMovementON:Z

    if-eqz v7, :cond_4

    const/high16 v7, 0x1000000

    invoke-direct {p0, v7}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    :cond_4
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isThreeTapMovementON:Z

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x3

    if-ne v3, v7, :cond_7

    iget-boolean v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isThreeTapMovementON:Z

    if-nez v7, :cond_6

    const/high16 v7, 0x800000

    invoke-direct {p0, v7}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    :cond_6
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isThreeTapMovementON:Z

    :cond_7
    const-string v7, "SamsungTouchExplorer"

    const-string v8, "TouchExplorer - ACTION_MOVE x3"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_8

    const/4 v7, 0x3

    if-ne v3, v7, :cond_8

    iget-boolean v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isThreeTapMovementON:Z

    if-eqz v7, :cond_8

    const/high16 v7, 0x1000000

    invoke-direct {p0, v7}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isThreeTapMovementON:Z

    :cond_8
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_a

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    const/4 v7, 0x3

    if-lt v4, v7, :cond_9

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    const/4 v7, 0x4

    iput v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v7, v7, v4

    new-instance v8, Landroid/gesture/GesturePoint;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-direct {v8, v9, v10, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    const-string v7, "SamsungTouchExplorer"

    const-string v8, "TouchExplorer - ACTION_POINTER_UP x3"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v7, v7, v4

    new-instance v8, Landroid/gesture/GesturePoint;

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-direct {v8, v9, v10, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x3

    invoke-direct {p0, v7}, Lcom/android/server/accessibility/SamsungTouchExplorer;->arePointerMovedEnough(I)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "SamsungTouchExplorer"

    const-string v8, "Three finger gesture detection - NOT MOVED ENOUGH"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    const/4 v7, 0x1

    iput v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto/16 :goto_0

    :cond_c
    new-instance v0, Landroid/gesture/Gesture;

    invoke-direct {v0}, Landroid/gesture/Gesture;-><init>()V

    new-instance v5, Landroid/gesture/Gesture;

    invoke-direct {v5}, Landroid/gesture/Gesture;-><init>()V

    new-instance v6, Landroid/gesture/Gesture;

    invoke-direct {v6}, Landroid/gesture/Gesture;-><init>()V

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_d

    new-instance v7, Landroid/gesture/GestureStroke;

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-direct {v7, v8}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v7}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    :cond_d
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_e

    new-instance v7, Landroid/gesture/GestureStroke;

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-direct {v7, v8}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v5, v7}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    :cond_e
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_f

    new-instance v7, Landroid/gesture/GestureStroke;

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-direct {v7, v8}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    :cond_f
    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/accessibility/SamsungTouchExplorer;->recognizeGesture(Landroid/gesture/Gesture;Landroid/gesture/Gesture;Landroid/gesture/Gesture;)I

    move-result v1

    if-lez v1, :cond_10

    const-string v7, "SamsungTouchExplorer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clear Multi Finger Tap Detector, gesture detected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v7, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerTapDetector:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    :cond_10
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    const/4 v7, 0x1

    iput v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    move-object/from16 v18, v0

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->onMotionEvent(Landroid/view/MotionEvent;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v22

    packed-switch v22, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionStart()V

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mActionDownLock:Z

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->waitingForNextPointer:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateOneFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTwoFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateThreeFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    const/high16 v22, 0x100000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v22

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->firstTapDetected()Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->isLongPressPerformed:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->post(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    move/from16 v22, v0

    if-nez v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->access$500(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v22

    if-nez v22, :cond_5

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v11

    const/16 v22, 0x1

    shl-int v14, v22, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v14, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->post(Landroid/view/MotionEvent;ZII)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTwoFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/16 v22, 0x7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->access$500(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v22

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->post()V

    const/high16 v22, 0x40000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    const/16 v22, 0x1

    shl-int v14, v22, v11

    const/16 v16, 0x0

    const/16 v17, 0x0

    if-eqz p2, :cond_7

    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v22

    packed-switch v22, :pswitch_data_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->access$500(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v22

    if-eqz v22, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    :goto_1
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const-string v22, "SamsungTouchExplorer"

    const-string v23, "action cancled by -1 pointerIndex"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->access$500(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateOneFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTwoFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateThreeFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v22

    sub-float v4, v22, v16

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v22

    sub-float v5, v22, v17

    float-to-double v0, v4

    move-wide/from16 v22, v0

    float-to-double v0, v5

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    cmpl-double v22, v12, v22

    if-lez v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    const/16 v23, 0x3e8

    invoke-virtual/range {v22 .. v23}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mScaledGestureDetectionVelocity:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v22, v10, v22

    if-lez v22, :cond_8

    const/16 v22, 0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->post()V

    const/high16 v22, 0x40000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->forceSendAndRemove()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    const/16 v22, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->isPending()Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->access$600(Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;)Z

    move-result v22

    if-eqz v22, :cond_a

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v22

    sub-float v4, v22, v16

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v22

    sub-float v5, v22, v17

    float-to-double v0, v4

    move-wide/from16 v22, v0

    float-to-double v0, v5

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    cmpl-double v22, v12, v22

    if-lez v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    const/16 v22, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->access$500(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v22

    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTwoFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateThreeFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->waitingForNextPointer:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->waitingForNextPointer:Z

    const-string v22, "SamsungTouchExplorer"

    const-string/jumbo v23, "start waiting for action down delayed"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStatusBarHeight:F

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gtz v22, :cond_10

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mActionDownLock:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_c
    :goto_3
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v23

    sub-float v7, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    sub-float v8, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v22

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v23

    sub-float v19, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v22

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    sub-float v20, v22, v23

    float-to-double v0, v7

    move-wide/from16 v22, v0

    float-to-double v0, v8

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v22

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    cmpl-double v22, v12, v22

    if-ltz v22, :cond_d

    const-string v22, "SamsungTouchExplorer"

    const-string/jumbo v23, "user moved more then the doubleTapSlop"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mActionDownLock:Z

    :cond_d
    const-string v22, "SamsungTouchExplorer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "mActionDownLock: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mActionDownLock:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mActionDownLock:Z

    move/from16 v22, v0

    if-nez v22, :cond_e

    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v22

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z

    move/from16 v22, v0

    if-nez v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/AccessibilityManagerService;->recognizeTwoFingerGestures()Z

    move-result v22

    if-nez v22, :cond_11

    const-string v22, "SamsungTouchExplorer"

    const-string/jumbo v23, "switching to STATE_DRAGGING"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getLastReceivedDownEdgeFlags()I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    const/16 v22, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v22

    sub-float v4, v22, v16

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v22

    sub-float v5, v22, v17

    float-to-double v0, v4

    move-wide/from16 v22, v0

    float-to-double v0, v5

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    cmpg-double v22, v12, v22

    if-ltz v22, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto/16 :goto_2

    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mActionDownDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ActionDownDelayed;

    move-object/from16 v23, v0

    const-wide/16 v24, 0x32

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v6

    const-string v22, "SamsungTouchExplorer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_2
    move-exception v6

    const-string v22, "SamsungTouchExplorer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_11
    const-string v22, "SamsungTouchExplorer"

    const-string/jumbo v23, "switching to STATE_TWO_FINGER_GESTURE_DETECTING"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x6

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    const/high16 v22, 0x40000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    goto/16 :goto_4

    :cond_12
    const-string v22, "SamsungTouchExplorer"

    const-string/jumbo v23, "switching to STATE_DELEGATING"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z

    move/from16 v22, v0

    if-nez v22, :cond_e

    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    const/16 v22, 0x1

    shl-int v14, v22, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->access$500(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v22

    if-eqz v22, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->post(Landroid/view/MotionEvent;II)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v22

    if-nez v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->post()V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto :goto_5

    :pswitch_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handleMotionEventStateTwoFingerGestureDetecting(Landroid/view/MotionEvent;I)V
    .locals 12

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v6, "SamsungTouchExplorer"

    const-string v7, "TouchExplorer - ACTION_DOWN x2"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    const/4 v6, 0x3

    if-lt v4, v6, :cond_2

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    const/4 v6, 0x4

    iput v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    new-instance v7, Landroid/gesture/GesturePoint;

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    const-string v6, "SamsungTouchExplorer"

    const-string v7, "TouchExplorer - ACTION_POINTER_DOWN x2"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    if-le v3, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    const/4 v6, 0x4

    iput v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto :goto_0

    :pswitch_3
    const-string v6, "SamsungTouchExplorer"

    const-string v7, "TouchExplorer - ACTION_MOVE x2"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_4
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    const/4 v6, 0x3

    if-lt v4, v6, :cond_3

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v6}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    const/4 v6, 0x4

    iput v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    new-instance v7, Landroid/gesture/GesturePoint;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const-string v6, "SamsungTouchExplorer"

    const-string v7, "TouchExplorer - ACTION_POINTER_UP x2"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_5
    const-string v6, "SamsungTouchExplorer"

    const-string v7, "TouchExplorer - ACTION_UP x2"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    const/high16 v6, 0x80000

    invoke-direct {p0, v6}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    const/high16 v6, 0x200000

    invoke-direct {p0, v6}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    const/4 v6, 0x3

    if-lt v4, v6, :cond_5

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v6}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    const/4 v6, 0x4

    iput v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    new-instance v7, Landroid/gesture/GesturePoint;

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/android/server/accessibility/SamsungTouchExplorer;->arePointerMovedEnough(I)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "SamsungTouchExplorer"

    const-string v7, "Two finger gesture detection - NOT MOVED ENOUGH"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto/16 :goto_0

    :cond_6
    new-instance v0, Landroid/gesture/Gesture;

    invoke-direct {v0}, Landroid/gesture/Gesture;-><init>()V

    new-instance v5, Landroid/gesture/Gesture;

    invoke-direct {v5}, Landroid/gesture/Gesture;-><init>()V

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    new-instance v6, Landroid/gesture/GestureStroke;

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v6}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    :cond_7
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    new-instance v6, Landroid/gesture/GestureStroke;

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    :cond_8
    invoke-direct {p0, v0, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer;->recognizeGesture(Landroid/gesture/Gesture;Landroid/gesture/Gesture;)I

    move-result v1

    if-lez v1, :cond_9

    const-string v6, "SamsungTouchExplorer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clear Multi Finger Tap Detector, gesture detected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v6, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerTapDetector:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    invoke-virtual {v6}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    :cond_9
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v6}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private isAtHomeActivity()Z
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v3, v7}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    move v5, v7

    goto :goto_0
.end method

.method private isDraggingGesture(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v10, v8}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v0

    invoke-virtual {v10, v8}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v1

    invoke-virtual {v10, v9}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v2

    invoke-virtual {v10, v9}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v3

    iget v8, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStatusBarHeight:F

    const v9, 0x3f067b80

    invoke-static/range {v0 .. v9}, Lcom/android/server/accessibility/GestureUtils;->isDraggingGesture(FFFFFFFFFF)Z

    move-result v8

    return v8
.end method

.method private isExploredLocationInIMEWindowLocked(Landroid/graphics/Point;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->isIMEVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->getDisplayHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->getKeyboardHeight()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOffsetRequired(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v3

    :pswitch_1
    iput-boolean v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isMovedThresholdDistance:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStartY:F

    goto :goto_0

    :pswitch_2
    iget-boolean v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isMovedThresholdDistance:Z

    if-nez v7, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStartX:F

    sub-float v1, v7, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStartY:F

    sub-float v2, v7, v8

    float-to-double v8, v1

    float-to-double v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    int-to-double v8, v7

    cmpl-double v7, v4, v8

    if-lez v7, :cond_1

    iput-boolean v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isMovedThresholdDistance:Z

    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->isAtHomeActivity()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isLongPressPerformed:Z

    if-eqz v7, :cond_0

    move v3, v6

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->isAtHomeActivity()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isLongPressPerformed:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isMovedThresholdDistance:Z

    if-eqz v7, :cond_0

    move v3, v6

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;
    .locals 21

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    invoke-static/range {v19 .. v19}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    aget-object v2, v8, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    aget-object v2, v9, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    aget-object v2, v9, v18

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, p2

    int-to-float v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v2, v9, v18

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v0, p3

    int-to-float v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object p1

    goto :goto_0
.end method

.method private recognizeGesture(Landroid/gesture/Gesture;Landroid/gesture/Gesture;)I
    .locals 12

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v6, p1}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    iget-wide v6, v0, Landroid/gesture/Prediction;->score:D

    cmpl-double v6, v6, v10

    if-ltz v6, :cond_0

    :try_start_0
    iget-object v6, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v6, p2}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    iget-wide v6, v0, Landroid/gesture/Prediction;->score:D

    cmpl-double v6, v6, v10

    if-ltz v6, :cond_1

    :try_start_1
    iget-object v6, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    :cond_1
    :goto_1
    const-string v6, "SamsungTouchExplorer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "recognizeGesture : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v4, :cond_2

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_2
    return v5

    :catch_0
    move-exception v2

    const-string v6, "SamsungTouchExplorer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non numeric gesture id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v6, "SamsungTouchExplorer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non numeric gesture id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    const/16 v5, 0x11

    goto :goto_2

    :pswitch_1
    const/16 v5, 0x12

    goto :goto_2

    :pswitch_2
    const/16 v5, 0x13

    goto :goto_2

    :pswitch_3
    const/16 v5, 0x14

    goto :goto_2

    :pswitch_4
    const/16 v5, 0x15

    goto :goto_2

    :pswitch_5
    const/16 v5, 0x16

    goto :goto_2

    :pswitch_6
    const/16 v5, 0x17

    goto :goto_2

    :pswitch_7
    const/16 v5, 0x18

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private recognizeGesture(Landroid/gesture/Gesture;Landroid/gesture/Gesture;Landroid/gesture/Gesture;)I
    .locals 16

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gesture/Prediction;

    iget-wide v12, v2, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_0

    :try_start_0
    iget-object v12, v2, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gesture/Prediction;

    iget-wide v12, v2, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_1

    :try_start_1
    iget-object v12, v2, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gesture/Prediction;

    iget-wide v12, v2, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_2

    :try_start_2
    iget-object v12, v2, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v11

    :cond_2
    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v7, :cond_3

    if-ne v7, v10, :cond_3

    const/4 v3, 0x1

    move v6, v7

    :cond_3
    if-eqz v10, :cond_4

    if-ne v10, v11, :cond_4

    const/4 v4, 0x1

    move v6, v10

    :cond_4
    if-eqz v11, :cond_5

    if-ne v11, v7, :cond_5

    const/4 v5, 0x1

    move v6, v11

    :cond_5
    if-nez v3, :cond_6

    if-nez v4, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    packed-switch v6, :pswitch_data_0

    const/4 v12, 0x0

    :goto_3
    return v12

    :catch_0
    move-exception v8

    const-string v12, "SamsungTouchExplorer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Non numeric gesture id:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v8

    const-string v12, "SamsungTouchExplorer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Non numeric gesture id:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v8

    const-string v12, "SamsungTouchExplorer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Non numeric gesture id:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_0
    const/16 v12, 0x19

    goto :goto_3

    :pswitch_1
    const/16 v12, 0x1a

    goto :goto_3

    :pswitch_2
    const/16 v12, 0x1b

    goto :goto_3

    :pswitch_3
    const/16 v12, 0x1c

    goto :goto_3

    :pswitch_4
    const/16 v12, 0x1d

    goto :goto_3

    :pswitch_5
    const/16 v12, 0x1e

    goto :goto_3

    :pswitch_6
    const/16 v12, 0x1f

    goto :goto_3

    :pswitch_7
    const/16 v12, 0x20

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private sendAccessibilityEvent(I)V
    .locals 3

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    goto :goto_0

    :sswitch_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
    .end sparse-switch
.end method

.method private sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    shl-int v1, v3, v0

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void
.end method

.method private sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .locals 7

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-direct {p0, v6, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->computeInjectionAction(II)I

    move-result v0

    invoke-direct {p0, p1, v0, v5, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    .locals 4

    const/16 v3, 0xa

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->post()V

    :cond_0
    invoke-direct {p0, v0, v3, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_1
    return-void
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;III)V
    .locals 4

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p3, v1, :cond_3

    move-object v0, p1

    :goto_0
    if-nez p2, :cond_4

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    :goto_1
    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    if-ltz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->isOffsetRequired(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    neg-int v1, v1

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    neg-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object v0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr p4, v1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, p4}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    if-eq v0, p1, :cond_2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getLastInjectedDownEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    goto :goto_1
.end method

.method private sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    const-string v2, "SamsungTouchExplorer"

    const-string/jumbo v3, "sendTouchExplorationGestureStartAndHoverEnterIfNeeded"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x200

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    const/16 v2, 0x9

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_0
    return-void
.end method

.method private sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .locals 8

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    shl-int v6, v7, v4

    or-int/2addr v5, v6

    invoke-direct {p0, v7, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->computeInjectionAction(II)I

    move-result v0

    invoke-direct {p0, p1, v0, v5, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v1

    const/high16 v2, 0x2000000

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    const/16 v2, 0x100

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v0, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    const/high16 v1, 0x200000

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    :cond_1
    sparse-switch v0, :sswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->access$400(Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->access$400(Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->access$402(Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLastTouchedWindowId:I

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLastTouchedWindowId:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x80 -> :sswitch_1
        0x100 -> :sswitch_1
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerTapDetector:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->onMotionEvent(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :goto_0
    return-void

    :pswitch_2
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateOneFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTwoFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateThreeFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SamsungTouchExplorer"

    return-object v0
.end method
