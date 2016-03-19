.class public final Lcom/myscript/atk/sltw/h/e;
.super Landroid/view/View;
.source "VOGuideBoxLayoutView.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/h/e;->b:Ljava/util/List;

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/e;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/e;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/myscript/atk/sltw/h/e;->c:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/h/e;->invalidate()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/myscript/atk/sltw/h/e;->b()V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/h/e;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/myscript/atk/sltw/h/e;->b()V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/myscript/atk/sltw/h/e;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/myscript/atk/sltw/h/e;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/myscript/atk/sltw/h/e;->b()V

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    iget-object v2, p0, Lcom/myscript/atk/sltw/h/e;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/myscript/atk/sltw/h/e;->b()V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/e;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/e;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    iget-object v1, p0, Lcom/myscript/atk/sltw/h/e;->a:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x333334

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/myscript/atk/sltw/h/e;->c:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/h/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    iget-object v2, p0, Lcom/myscript/atk/sltw/h/e;->c:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/myscript/atk/sltw/h/e;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/myscript/atk/sltw/h/e;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_4
    return-void
.end method
