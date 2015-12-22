.class Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierTouchGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MagnifierSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/MagnifierSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierTouchGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;


# direct methods
.method private constructor <init>(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierTouchGestureListener;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accessibility/MagnifierSurfaceView;Lcom/android/settings/accessibility/MagnifierSurfaceView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierTouchGestureListener;-><init>(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierTouchGestureListener;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    # invokes: Lcom/android/settings/accessibility/MagnifierSurfaceView;->injectAccessibilityMotionEvent(IZ)V
    invoke-static {v0, v1, v1}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->access$700(Lcom/android/settings/accessibility/MagnifierSurfaceView;IZ)V

    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
