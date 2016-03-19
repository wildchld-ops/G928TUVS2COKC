.class public Lcom/myscript/atk/inw/renderer/SimpleRenderer;
.super Ljava/lang/Object;
.source "SimpleRenderer.java"

# interfaces
.implements Lcom/myscript/atk/inw/renderer/Renderer;


# instance fields
.field private mFilled:Z

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mFilled:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/myscript/atk/inw/renderer/Renderer;
    .locals 1

    invoke-virtual {p0}, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->clone()Lcom/myscript/atk/inw/renderer/SimpleRenderer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/myscript/atk/inw/renderer/SimpleRenderer;
    .locals 2

    new-instance v0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;

    invoke-direct {v0}, Lcom/myscript/atk/inw/renderer/SimpleRenderer;-><init>()V

    iget-object v1, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->setColor(I)V

    iget-object v1, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->setWidth(F)V

    iget-object v1, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->setShader(Landroid/graphics/Shader;)V

    invoke-virtual {p0}, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->getFilled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->setFilled(Z)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->clone()Lcom/myscript/atk/inw/renderer/SimpleRenderer;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Z)V
    .locals 2

    invoke-virtual {p2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mFilled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method public getBoundingRect(Lcom/myscript/atk/inw/stroker/Stroker;)Landroid/graphics/RectF;
    .locals 1

    invoke-interface {p1}, Lcom/myscript/atk/inw/stroker/Stroker;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getDashed()Z
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDirtyRect(Lcom/myscript/atk/inw/stroker/Stroker;)Landroid/graphics/RectF;
    .locals 1

    invoke-virtual {p0}, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->getFilled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->getBoundingRect(Lcom/myscript/atk/inw/stroker/Stroker;)Landroid/graphics/RectF;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/myscript/atk/inw/stroker/Stroker;->getDirtyRect()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mFilled:Z

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public rendererType()Lcom/myscript/atk/inw/renderer/Renderer$RendererType;
    .locals 1

    sget-object v0, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;->RendererTypeSimple:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    return-object v0
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setDashed(Z)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iget-object v1, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x40c00000    # 6.0f
        0x40800000    # 4.0f
    .end array-data
.end method

.method public setFilled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mFilled:Z

    return-void
.end method

.method public setShader(Landroid/graphics/Shader;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public setWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/SimpleRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
