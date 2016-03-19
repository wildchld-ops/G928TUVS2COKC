.class public interface abstract Lcom/myscript/atk/inw/InkWidgetApi;
.super Ljava/lang/Object;
.source "InkWidgetApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;,
        Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract clear()V
.end method

.method public abstract clearWithoutInvalidate()V
.end method

.method public abstract getRenderer()Lcom/myscript/atk/inw/renderer/Renderer;
.end method

.method public abstract getStrokeColor()I
.end method

.method public abstract getStrokeDashed()Z
.end method

.method public abstract getStrokeEndCap()Landroid/graphics/Bitmap;
.end method

.method public abstract getStrokeEndMatrix()Landroid/graphics/Matrix;
.end method

.method public abstract getStrokeFrame()Landroid/graphics/RectF;
.end method

.method public abstract getStrokePath()Landroid/graphics/Path;
.end method

.method public abstract getStrokePoints()[Lcom/myscript/atk/inw/InkPoint;
.end method

.method public abstract getStrokeStartCap()Landroid/graphics/Bitmap;
.end method

.method public abstract getStrokeStartMatrix()Landroid/graphics/Matrix;
.end method

.method public abstract getStrokeWidth()F
.end method

.method public abstract getStroker()Lcom/myscript/atk/inw/stroker/Stroker;
.end method

.method public abstract getTransform()Landroid/graphics/Matrix;
.end method

.method public abstract isStrokePointSize()Z
.end method

.method public abstract setOnPointerDragListener(Lcom/myscript/atk/inw/InkWidgetApi$OnPointerDragListener;)V
.end method

.method public abstract setOnStrokeDrawListener(Lcom/myscript/atk/inw/InkWidgetApi$OnStrokeDrawListener;)V
.end method

.method public abstract setRenderer(Lcom/myscript/atk/inw/renderer/Renderer;)V
.end method

.method public abstract setShader(Landroid/graphics/Shader;)V
.end method

.method public abstract setStrokeCaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method public abstract setStrokeColor(I)V
.end method

.method public abstract setStrokeDashed(Z)V
.end method

.method public abstract setStrokeWidth(F)V
.end method

.method public abstract setStroker(Lcom/myscript/atk/inw/stroker/Stroker;)V
.end method

.method public abstract setTransform(Landroid/graphics/Matrix;)V
.end method
