.class Landroid/view/ScaleGestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mQuickScaleDoubleTapY:I

.field mQuickScaleSpanSlop:I

.field final synthetic this$0:Landroid/view/ScaleGestureDetector;


# direct methods
.method constructor <init>(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iput-object p1, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iget-object v0, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    # getter for: Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/ScaleGestureDetector;->access$000(Landroid/view/ScaleGestureDetector;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/ScaleGestureDetector$1;->mQuickScaleSpanSlop:I

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    # setter for: Landroid/view/ScaleGestureDetector;->mDoubleTapEvent:Landroid/view/MotionEvent;
    invoke-static {v0, p1}, Landroid/view/ScaleGestureDetector;->access$102(Landroid/view/ScaleGestureDetector;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/view/ScaleGestureDetector$1;->mQuickScaleDoubleTapY:I

    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    iget v1, p0, Landroid/view/ScaleGestureDetector$1;->mQuickScaleDoubleTapY:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v0, v1

    iget v1, p0, Landroid/view/ScaleGestureDetector$1;->mQuickScaleSpanSlop:I

    if-le v0, v1, :cond_0

    iget-object v1, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    # setter for: Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I
    invoke-static {v1, v3}, Landroid/view/ScaleGestureDetector;->access$202(Landroid/view/ScaleGestureDetector;I)I

    :cond_0
    return v3
.end method
