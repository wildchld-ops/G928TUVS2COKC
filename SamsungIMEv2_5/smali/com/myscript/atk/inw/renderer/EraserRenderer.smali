.class public Lcom/myscript/atk/inw/renderer/EraserRenderer;
.super Ljava/lang/Object;
.source "EraserRenderer.java"

# interfaces
.implements Lcom/myscript/atk/inw/renderer/Renderer;


# instance fields
.field private mColor:I

.field private mWidth:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/myscript/atk/inw/renderer/EraserRenderer;
    .locals 2

    new-instance v0, Lcom/myscript/atk/inw/renderer/EraserRenderer;

    invoke-direct {v0}, Lcom/myscript/atk/inw/renderer/EraserRenderer;-><init>()V

    iget v1, p0, Lcom/myscript/atk/inw/renderer/EraserRenderer;->mColor:I

    invoke-virtual {v0, v1}, Lcom/myscript/atk/inw/renderer/EraserRenderer;->setColor(I)V

    iget v1, p0, Lcom/myscript/atk/inw/renderer/EraserRenderer;->mWidth:F

    invoke-virtual {v0, v1}, Lcom/myscript/atk/inw/renderer/EraserRenderer;->setWidth(F)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/myscript/atk/inw/renderer/Renderer;
    .locals 1

    invoke-virtual {p0}, Lcom/myscript/atk/inw/renderer/EraserRenderer;->clone()Lcom/myscript/atk/inw/renderer/EraserRenderer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/myscript/atk/inw/renderer/EraserRenderer;->clone()Lcom/myscript/atk/inw/renderer/EraserRenderer;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Z)V
    .locals 0

    return-void
.end method

.method public getBoundingRect(Lcom/myscript/atk/inw/stroker/Stroker;)Landroid/graphics/RectF;
    .locals 1

    invoke-interface {p1}, Lcom/myscript/atk/inw/stroker/Stroker;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/myscript/atk/inw/renderer/EraserRenderer;->mColor:I

    return v0
.end method

.method public getDashed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDirtyRect(Lcom/myscript/atk/inw/stroker/Stroker;)Landroid/graphics/RectF;
    .locals 1

    invoke-interface {p1}, Lcom/myscript/atk/inw/stroker/Stroker;->getDirtyRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getFilled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/myscript/atk/inw/renderer/EraserRenderer;->mWidth:F

    return v0
.end method

.method public rendererType()Lcom/myscript/atk/inw/renderer/Renderer$RendererType;
    .locals 1

    sget-object v0, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;->RendererTypeEraser:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    return-object v0
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/inw/renderer/EraserRenderer;->mColor:I

    return-void
.end method

.method public setDashed(Z)V
    .locals 0

    return-void
.end method

.method public setFilled(Z)V
    .locals 0

    return-void
.end method

.method public setShader(Landroid/graphics/Shader;)V
    .locals 0

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/inw/renderer/EraserRenderer;->mWidth:F

    return-void
.end method
