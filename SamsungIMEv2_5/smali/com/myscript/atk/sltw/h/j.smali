.class public final Lcom/myscript/atk/sltw/h/j;
.super Ljava/lang/Object;
.source "VOWordView.java"


# instance fields
.field private a:Lcom/myscript/atk/sltw/f/d;

.field private b:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/myscript/atk/sltw/f/d;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/h/j;->b:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x32

    iget-object v3, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/h/j;->b:Landroid/graphics/Rect;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/h/j;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private a([CIIFLandroid/graphics/Canvas;Landroid/graphics/Paint;Z)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    if-eqz p7, :cond_3

    array-length v0, p1

    new-array v1, v0, [C

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v2, v0}, Lcom/myscript/atk/sltw/f/d;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2022

    aput-char v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-char v2, p1, v0

    aput-char v2, v1, v0

    goto :goto_1

    :cond_1
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v0, 0x1

    move v3, v2

    move v2, v0

    move v0, p2

    :goto_2
    add-int v4, p2, p3

    iget-object v5, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/f/d;->a()[Lcom/myscript/atk/sltw/f/a;

    move-result-object v5

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->a()[Lcom/myscript/atk/sltw/f/a;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v4, v3

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v3, Ljava/math/BigDecimal;

    float-to-double v4, v2

    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v3, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v6}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v2, v3, v6, v7}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    new-instance v2, Ljava/math/BigDecimal;

    float-to-double v4, v0

    invoke-direct {v2, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p6, v1, p2, p3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v3

    float-to-double v4, v3

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v6}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v0, v3, v6, v7}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->h()I

    move-result v0

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->q()F

    move-result v5

    move-object v0, p5

    move v2, p2

    move v3, p3

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    :goto_3
    return-void

    :cond_3
    iget-object v0, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->i()I

    move-result v0

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4
    iget-object v0, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->q()F

    move-result v5

    move-object v0, p5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_3
.end method


# virtual methods
.method public final a()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/j;->b:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->f()Landroid/graphics/Paint;

    move-result-object v6

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->g()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->c()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->p()[C

    move-result-object v2

    array-length v0, v2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [C

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-char v3, v2, v0

    aput-char v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/myscript/atk/sltw/f/d$a;

    iget v0, v8, Lcom/myscript/atk/sltw/f/d$a;->b:I

    iget v2, v8, Lcom/myscript/atk/sltw/f/d$a;->c:I

    add-int/2addr v0, v2

    aget-char v10, v1, v0

    iget v0, v8, Lcom/myscript/atk/sltw/f/d$a;->b:I

    iget v2, v8, Lcom/myscript/atk/sltw/f/d$a;->c:I

    add-int/2addr v0, v2

    const/16 v2, 0x200f

    aput-char v2, v1, v0

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    iget v2, v8, Lcom/myscript/atk/sltw/f/d$a;->b:I

    invoke-virtual {v0, v2}, Lcom/myscript/atk/sltw/f/d;->a(I)Z

    move-result v7

    iget v2, v8, Lcom/myscript/atk/sltw/f/d$a;->b:I

    iget v0, v8, Lcom/myscript/atk/sltw/f/d$a;->c:I

    add-int/lit8 v3, v0, 0x1

    iget v4, v8, Lcom/myscript/atk/sltw/f/d$a;->a:F

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/myscript/atk/sltw/h/j;->a([CIIFLandroid/graphics/Canvas;Landroid/graphics/Paint;Z)V

    iget v0, v8, Lcom/myscript/atk/sltw/f/d$a;->b:I

    iget v2, v8, Lcom/myscript/atk/sltw/f/d$a;->c:I

    add-int/2addr v0, v2

    aput-char v10, v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/d$a;

    iget-object v1, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    iget v2, v0, Lcom/myscript/atk/sltw/f/d$a;->b:I

    invoke-virtual {v1, v2}, Lcom/myscript/atk/sltw/f/d;->a(I)Z

    move-result v7

    iget-object v1, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/d;->p()[C

    move-result-object v1

    iget v2, v0, Lcom/myscript/atk/sltw/f/d$a;->b:I

    iget v3, v0, Lcom/myscript/atk/sltw/f/d$a;->c:I

    iget v4, v0, Lcom/myscript/atk/sltw/f/d$a;->a:F

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/myscript/atk/sltw/h/j;->a([CIIFLandroid/graphics/Canvas;Landroid/graphics/Paint;Z)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final a(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/j;->a:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/h/j;->b:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method
