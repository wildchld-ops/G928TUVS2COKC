.class public interface abstract Lcom/myscript/atk/inw/renderer/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/inw/renderer/Renderer$RendererType;
    }
.end annotation


# virtual methods
.method public abstract clone()Lcom/myscript/atk/inw/renderer/Renderer;
.end method

.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Z)V
.end method

.method public abstract getBoundingRect(Lcom/myscript/atk/inw/stroker/Stroker;)Landroid/graphics/RectF;
.end method

.method public abstract getColor()I
.end method

.method public abstract getDashed()Z
.end method

.method public abstract getDirtyRect(Lcom/myscript/atk/inw/stroker/Stroker;)Landroid/graphics/RectF;
.end method

.method public abstract getFilled()Z
.end method

.method public abstract getWidth()F
.end method

.method public abstract rendererType()Lcom/myscript/atk/inw/renderer/Renderer$RendererType;
.end method

.method public abstract setColor(I)V
.end method

.method public abstract setDashed(Z)V
.end method

.method public abstract setFilled(Z)V
.end method

.method public abstract setShader(Landroid/graphics/Shader;)V
.end method

.method public abstract setWidth(F)V
.end method
