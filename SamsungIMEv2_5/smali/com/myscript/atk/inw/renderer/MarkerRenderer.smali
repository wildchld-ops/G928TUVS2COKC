.class public Lcom/myscript/atk/inw/renderer/MarkerRenderer;
.super Ljava/lang/Object;
.source "MarkerRenderer.java"

# interfaces
.implements Lcom/myscript/atk/inw/renderer/Renderer;


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPaintCap:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaintCap:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaintCap:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/myscript/atk/inw/renderer/MarkerRenderer;
    .locals 2

    new-instance v0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;

    invoke-direct {v0}, Lcom/myscript/atk/inw/renderer/MarkerRenderer;-><init>()V

    iget-object v1, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->setColor(I)V

    iget-object v1, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->setWidth(F)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/myscript/atk/inw/renderer/Renderer;
    .locals 1

    invoke-virtual {p0}, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->clone()Lcom/myscript/atk/inw/renderer/MarkerRenderer;

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

    invoke-virtual {p0}, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->clone()Lcom/myscript/atk/inw/renderer/MarkerRenderer;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Z)V
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;ZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;ZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 2

    invoke-virtual {p2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    if-eqz p6, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaintCap:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_0
    if-eqz p5, :cond_1

    if-eqz p7, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaintCap:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, p7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaint:Landroid/graphics/Paint;

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

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaint:Landroid/graphics/Paint;

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

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public rendererType()Lcom/myscript/atk/inw/renderer/Renderer$RendererType;
    .locals 1

    sget-object v0, Lcom/myscript/atk/inw/renderer/Renderer$RendererType;->RendererTypeMarker:Lcom/myscript/atk/inw/renderer/Renderer$RendererType;

    return-object v0
.end method

.method public setColor(I)V
    .locals 3

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaintCap:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaintCap:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LightingColorFilter;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

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

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public setWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/inw/renderer/MarkerRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
