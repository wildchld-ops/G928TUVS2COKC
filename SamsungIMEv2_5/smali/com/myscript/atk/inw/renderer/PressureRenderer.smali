.class public Lcom/myscript/atk/inw/renderer/PressureRenderer;
.super Ljava/lang/Object;
.source "PressureRenderer.java"

# interfaces
.implements Lcom/myscript/atk/inw/renderer/Renderer;


# instance fields
.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/renderer/PressureRenderer;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/PressureRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/PressureRenderer;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/myscript/atk/inw/renderer/PressureRenderer;
    .locals 2

    new-instance v0, Lcom/myscript/atk/inw/renderer/PressureRenderer;

    invoke-direct {v0}, Lcom/myscript/atk/inw/renderer/PressureRenderer;-><init>()V

    iget-object v1, p0, Lcom/myscript/atk/inw/renderer/PressureRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/inw/renderer/PressureRenderer;->setColor(I)V

    iget-object v1, p0, Lcom/myscript/atk/inw/renderer/PressureRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/inw/renderer/PressureRenderer;->setWidth(F)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/myscript/atk/inw/renderer/Renderer;
    .locals 1

    invoke-virtual {p0}, Lcom/myscript/atk/inw/renderer/PressureRenderer;->clone()Lcom/myscript/atk/inw/renderer/PressureRenderer;

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

    invoke-virtual {p0}, Lcom/myscript/atk/inw/renderer/PressureRenderer;->clone()Lcom/myscript/atk/inw/renderer/PressureRenderer;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Z)V
    .locals 1

    invoke-virtual {p2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/PressureRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
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

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/PressureRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

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

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/PressureRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public rendererType()Lcom/myscript/atk/inw/renderer/Renderer$RendererType;
    .locals 1

    sget-object v0, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;->RendererTypePressure:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    return-object v0
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/PressureRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

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
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/PressureRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public setWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/PressureRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
