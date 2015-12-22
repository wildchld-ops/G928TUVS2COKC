.class Lcom/sec/daliviews/views/PageIndicator$1;
.super Landroid/view/GestureDetector;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/daliviews/views/PageIndicator;->initGestures(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/daliviews/views/PageIndicator;


# direct methods
.method constructor <init>(Lcom/sec/daliviews/views/PageIndicator;Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/PageIndicator$1;->this$0:Lcom/sec/daliviews/views/PageIndicator;

    invoke-direct {p0, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
