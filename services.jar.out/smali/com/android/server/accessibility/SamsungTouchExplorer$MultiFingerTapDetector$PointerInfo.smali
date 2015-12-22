.class Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PointerInfo"
.end annotation


# instance fields
.field private downTime:J

.field private downX:F

.field private downY:F

.field final synthetic this$1:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

.field private upTime:J

.field private upX:F

.field private upY:F


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;FFJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->this$1:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->downX:F

    iput p3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->downY:F

    iput-wide p4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->downTime:J

    return-void
.end method


# virtual methods
.method public isTapEvent()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->this$1:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->mDetectionState:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->access$2700(Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->upTime:J

    iget-wide v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->downTime:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->this$1:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    iget-object v4, v4, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v4

    add-int/lit16 v4, v4, 0x82

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->downX:F

    iget v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->downY:F

    iget v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->upX:F

    iget v5, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->upY:F

    invoke-static {v2, v3, v4, v5}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->this$1:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    iget-object v3, v3, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchSlop:I
    invoke-static {v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$800(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->upTime:J

    iget-wide v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->downTime:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->this$1:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    iget-object v4, v4, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v4

    add-int/lit16 v4, v4, 0xa0

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public setUpPos(FFJ)V
    .locals 1

    iput p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->upX:F

    iput p2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->upY:F

    iput-wide p3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector$PointerInfo;->upTime:J

    return-void
.end method
