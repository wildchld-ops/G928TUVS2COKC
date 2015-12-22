.class Lcom/sec/daliviews/views/PageIndicator$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/views/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/daliviews/views/PageIndicator;


# direct methods
.method private constructor <init>(Lcom/sec/daliviews/views/PageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/PageIndicator$GestureListener;->this$0:Lcom/sec/daliviews/views/PageIndicator;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/daliviews/views/PageIndicator;Lcom/sec/daliviews/views/PageIndicator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/daliviews/views/PageIndicator$GestureListener;-><init>(Lcom/sec/daliviews/views/PageIndicator;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PageIndicator$GestureListener;->this$0:Lcom/sec/daliviews/views/PageIndicator;

    # getter for: Lcom/sec/daliviews/views/PageIndicator;->mSelf:Lcom/sec/daliviews/views/PageIndicator;
    invoke-static {v0}, Lcom/sec/daliviews/views/PageIndicator;->access$100(Lcom/sec/daliviews/views/PageIndicator;)Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/PageIndicator;->onDown(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PageIndicator$GestureListener;->this$0:Lcom/sec/daliviews/views/PageIndicator;

    # getter for: Lcom/sec/daliviews/views/PageIndicator;->mMultiFinger:Z
    invoke-static {v0}, Lcom/sec/daliviews/views/PageIndicator;->access$200(Lcom/sec/daliviews/views/PageIndicator;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/PageIndicator$GestureListener;->this$0:Lcom/sec/daliviews/views/PageIndicator;

    # getter for: Lcom/sec/daliviews/views/PageIndicator;->mSelf:Lcom/sec/daliviews/views/PageIndicator;
    invoke-static {v0}, Lcom/sec/daliviews/views/PageIndicator;->access$100(Lcom/sec/daliviews/views/PageIndicator;)Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/PageIndicator;->onLongPress(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PageIndicator$GestureListener;->this$0:Lcom/sec/daliviews/views/PageIndicator;

    # getter for: Lcom/sec/daliviews/views/PageIndicator;->mMultiFinger:Z
    invoke-static {v0}, Lcom/sec/daliviews/views/PageIndicator;->access$200(Lcom/sec/daliviews/views/PageIndicator;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/PageIndicator$GestureListener;->this$0:Lcom/sec/daliviews/views/PageIndicator;

    # getter for: Lcom/sec/daliviews/views/PageIndicator;->mSelf:Lcom/sec/daliviews/views/PageIndicator;
    invoke-static {v0}, Lcom/sec/daliviews/views/PageIndicator;->access$100(Lcom/sec/daliviews/views/PageIndicator;)Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/daliviews/views/PageIndicator;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
