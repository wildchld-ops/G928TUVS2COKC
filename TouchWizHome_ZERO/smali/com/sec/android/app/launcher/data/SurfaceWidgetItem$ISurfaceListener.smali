.class public interface abstract Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$ISurfaceListener;
.super Ljava/lang/Object;
.source "SurfaceWidgetItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISurfaceListener"
.end annotation


# virtual methods
.method public abstract onSurfaceCreated(Landroid/view/Surface;II)V
.end method

.method public abstract onSurfaceDestroyed(Landroid/view/Surface;)V
.end method

.method public abstract onSurfaceSizeChanged(Landroid/view/Surface;II)V
.end method

.method public abstract onSurfaceVisible(Z)V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method
