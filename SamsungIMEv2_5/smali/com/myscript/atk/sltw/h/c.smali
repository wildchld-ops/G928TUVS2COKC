.class public final Lcom/myscript/atk/sltw/h/c;
.super Landroid/view/View;
.source "InsertWindowView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/h/c;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/c;->a:Landroid/graphics/Paint;

    const v1, 0x66c7e1e8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/c;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/h/c;->d:F

    return-void
.end method

.method public final a(FF)V
    .locals 2

    iput p1, p0, Lcom/myscript/atk/sltw/h/c;->b:F

    iput p2, p0, Lcom/myscript/atk/sltw/h/c;->c:F

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/h/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/myscript/atk/sltw/h/c;->b:F

    iget v1, p0, Lcom/myscript/atk/sltw/h/c;->d:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/myscript/atk/sltw/h/c;->c:F

    :cond_0
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/h/c;->invalidate()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/h/c;->invalidate()V

    return-void
.end method

.method public final a()Z
    .locals 3

    iget v0, p0, Lcom/myscript/atk/sltw/h/c;->b:F

    iget v1, p0, Lcom/myscript/atk/sltw/h/c;->c:F

    iget v2, p0, Lcom/myscript/atk/sltw/h/c;->d:F

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/myscript/atk/sltw/h/c;->b:F

    const/4 v2, 0x0

    iget v3, p0, Lcom/myscript/atk/sltw/h/c;->c:F

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/h/c;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/myscript/atk/sltw/h/c;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
