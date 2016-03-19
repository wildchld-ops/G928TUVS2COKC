.class public final Lcom/myscript/atk/sltw/c/o;
.super Ljava/lang/Object;
.source "WritingAreaViewController.java"

# interfaces
.implements Lcom/myscript/atk/sltw/h/k$b;
.implements Lcom/myscript/atk/sltw/h/k$c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/sltw/c/o$a;,
        Lcom/myscript/atk/sltw/c/o$d;,
        Lcom/myscript/atk/sltw/c/o$c;,
        Lcom/myscript/atk/sltw/c/o$b;
    }
.end annotation


# instance fields
.field private a:Lcom/myscript/atk/sltw/h/k;

.field private b:Landroid/widget/Scroller;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:F

.field private m:Z

.field private n:Lcom/myscript/atk/sltw/c/o$c;

.field private o:Lcom/myscript/atk/sltw/c/o$d;

.field private p:Lcom/myscript/atk/sltw/c/o$b;

.field private q:Lcom/myscript/atk/sltw/c/o$a;


# direct methods
.method public constructor <init>(Lcom/myscript/atk/sltw/h/k;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->m:Z

    iput-object p1, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0, p0}, Lcom/myscript/atk/sltw/h/k;->a(Lcom/myscript/atk/sltw/h/k$c;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0, p0}, Lcom/myscript/atk/sltw/h/k;->a(Lcom/myscript/atk/sltw/h/k$b;)V

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/h/k;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/c/o;->b:Landroid/widget/Scroller;

    return-void
.end method

.method private A()V
    .locals 2

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->k:Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->o:Lcom/myscript/atk/sltw/c/o$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->o:Lcom/myscript/atk/sltw/c/o$d;

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/h/k;->getScrollX()I

    iget v1, p0, Lcom/myscript/atk/sltw/c/o;->l:F

    invoke-interface {v0}, Lcom/myscript/atk/sltw/c/o$d;->m()V

    :cond_0
    return-void
.end method

.method private b(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->g:Z

    if-eqz v0, :cond_3

    int-to-float v0, p1

    iget v1, p0, Lcom/myscript/atk/sltw/c/o;->e:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/myscript/atk/sltw/c/o;->d:F

    :goto_0
    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/h/k;->f()Lcom/myscript/atk/sltw/h/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/h/c;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/h/k;->f()Lcom/myscript/atk/sltw/h/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/myscript/atk/sltw/h/c;->a(FF)V

    :cond_1
    iget-boolean v2, p0, Lcom/myscript/atk/sltw/c/o;->g:Z

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-static {}, Lcom/myscript/atk/sltw/h/k;->i()I

    const/high16 v0, 0x47000000    # 32768.0f

    sub-float v0, v1, v0

    :cond_2
    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/h/k;->c()Lcom/myscript/atk/sltw/h/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/h/f;->a(F)V

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/h/k;->a()Lcom/myscript/atk/sltw/h/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/h/a;->b(F)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->a()Lcom/myscript/atk/sltw/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/a;->c()V

    return-void

    :cond_3
    iget v1, p0, Lcom/myscript/atk/sltw/c/o;->d:F

    add-int v0, p1, p2

    int-to-float v0, v0

    iget v2, p0, Lcom/myscript/atk/sltw/c/o;->e:F

    sub-float/2addr v0, v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private m(F)V
    .locals 2

    iput p1, p0, Lcom/myscript/atk/sltw/c/o;->d:F

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/h/k;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/myscript/atk/sltw/c/o;->b(II)V

    return-void
.end method

.method private x()V
    .locals 3

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->a()Lcom/myscript/atk/sltw/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/h/k;->f()Lcom/myscript/atk/sltw/h/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/h/c;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v0, v2

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->f()Lcom/myscript/atk/sltw/h/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/h/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private y()F
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/myscript/atk/sltw/c/o;->g:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-static {}, Lcom/myscript/atk/sltw/h/k;->i()I

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/h/k;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/myscript/atk/sltw/c/o;->f:F

    iget v2, p0, Lcom/myscript/atk/sltw/c/o;->c:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v2, v1, v0

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private z()V
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->j:Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->n:Lcom/myscript/atk/sltw/c/o$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->n:Lcom/myscript/atk/sltw/c/o$c;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/c/o$c;->j()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->a()Lcom/myscript/atk/sltw/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/h/k;->a()Lcom/myscript/atk/sltw/h/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/h/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->getHeight()I

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/o;->x()V

    return-void
.end method

.method public final a(FF)V
    .locals 2

    iput p1, p0, Lcom/myscript/atk/sltw/c/o;->d:F

    iput p2, p0, Lcom/myscript/atk/sltw/c/o;->e:F

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/h/k;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/myscript/atk/sltw/c/o;->b(II)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->a()Lcom/myscript/atk/sltw/h/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/a;->a(I)V

    return-void
.end method

.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/myscript/atk/sltw/c/o;->b(II)V

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/o;->x()V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->h()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->h()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final a(Lcom/myscript/atk/sltw/c/o$a;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/c/o;->q:Lcom/myscript/atk/sltw/c/o$a;

    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/c/o$b;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/c/o;->p:Lcom/myscript/atk/sltw/c/o$b;

    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/c/o$c;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/c/o;->n:Lcom/myscript/atk/sltw/c/o$c;

    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/c/o$d;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/c/o;->o:Lcom/myscript/atk/sltw/c/o$d;

    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/h/k$a;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/k;->a(Lcom/myscript/atk/sltw/h/k$a;)V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->f()Lcom/myscript/atk/sltw/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/c;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->f()Lcom/myscript/atk/sltw/h/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/h/c;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/h/k;->f()Lcom/myscript/atk/sltw/h/c;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/myscript/atk/sltw/h/c;->setVisibility(I)V

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->p:Lcom/myscript/atk/sltw/c/o$b;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->p:Lcom/myscript/atk/sltw/c/o$b;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/c/o$b;->a()V

    goto :goto_1
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->f()Lcom/myscript/atk/sltw/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->f()Lcom/myscript/atk/sltw/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/c;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/c/o;->e:F

    return v0
.end method

.method public final b(F)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->a()Lcom/myscript/atk/sltw/h/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/a;->a(F)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->f()Lcom/myscript/atk/sltw/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/c;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    int-to-float v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/h/k;->f()Lcom/myscript/atk/sltw/h/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/h/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->getHeight()I

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/o;->x()V

    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->g()Lcom/myscript/atk/sltw/h/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/d;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->c()Lcom/myscript/atk/sltw/h/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/h/f;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->c()Lcom/myscript/atk/sltw/h/f;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/h/f;->setVisibility(I)V

    goto :goto_0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/c/o;->d:F

    return v0
.end method

.method public final c(F)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->f()Lcom/myscript/atk/sltw/h/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/c;->a(F)V

    return-void
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->f()Lcom/myscript/atk/sltw/h/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/c;->a(I)V

    return-void
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->g()Lcom/myscript/atk/sltw/h/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/d;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/myscript/atk/sltw/c/o;->g:Z

    return-void
.end method

.method public final d()F
    .locals 2

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/c/o;->h()F

    move-result v0

    iget v1, p0, Lcom/myscript/atk/sltw/c/o;->e:F

    add-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/c/o;->h()F

    move-result v0

    iget v1, p0, Lcom/myscript/atk/sltw/c/o;->e:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final d(F)V
    .locals 2

    iput p1, p0, Lcom/myscript/atk/sltw/c/o;->e:F

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/h/k;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/myscript/atk/sltw/c/o;->b(II)V

    return-void
.end method

.method public final d(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->k:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->k:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->k:Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/myscript/atk/sltw/c/o;->l:F

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->o:Lcom/myscript/atk/sltw/c/o$d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->o:Lcom/myscript/atk/sltw/c/o$d;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/c/o$d;->l()V

    :cond_1
    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->k:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->o:Lcom/myscript/atk/sltw/c/o$d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->o:Lcom/myscript/atk/sltw/c/o$d;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/c/o$d;->n()V

    :cond_2
    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->j:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->j:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->n:Lcom/myscript/atk/sltw/c/o$c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->n:Lcom/myscript/atk/sltw/c/o$c;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/c/o$c;->k()V

    :cond_3
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/myscript/atk/sltw/c/o;->b(II)V

    return-void
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->g()Lcom/myscript/atk/sltw/h/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/d;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/myscript/atk/sltw/c/o;->m:Z

    return-void
.end method

.method public final e()F
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/c/o;->c:F

    return v0
.end method

.method public final e(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->g:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/myscript/atk/sltw/c/o;->d:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/c/o;->m(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/myscript/atk/sltw/c/o;->d:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/c/o;->m(F)V

    goto :goto_0
.end method

.method public final e(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->b()Lcom/myscript/atk/sltw/h/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/f;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->c()Lcom/myscript/atk/sltw/h/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/h/f;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final e(Z)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->o:Lcom/myscript/atk/sltw/c/o$d;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->o:Lcom/myscript/atk/sltw/c/o$d;

    invoke-interface {v1}, Lcom/myscript/atk/sltw/c/o$d;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/myscript/atk/sltw/c/o;->k:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final f()F
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->getWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public final f(F)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/c/o;->c:F

    return-void
.end method

.method public final g()F
    .locals 2

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/h/k;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public final g(F)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/c/o;->f:F

    return-void
.end method

.method public final h()F
    .locals 2

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/h/k;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0
.end method

.method public final h(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->k:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->m:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/c/o;->n()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {p0, p1}, Lcom/myscript/atk/sltw/c/o;->j(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/myscript/atk/sltw/h/k;->scrollTo(II)V

    goto :goto_0
.end method

.method public final i()F
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public final i(F)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->k:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->m:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/c/o;->n()V

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->j:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->j:Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->n:Lcom/myscript/atk/sltw/c/o$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->n:Lcom/myscript/atk/sltw/c/o$c;

    :cond_2
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Lcom/myscript/atk/sltw/c/o;->j(F)F

    move-result v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/c/o;->b:Landroid/widget/Scroller;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v2, v3, v4, v0, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0, p0}, Lcom/myscript/atk/sltw/h/k;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final j()F
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/myscript/atk/sltw/c/o;->g:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-static {}, Lcom/myscript/atk/sltw/h/k;->i()I

    const/high16 v1, 0x47000000    # 32768.0f

    iget v2, p0, Lcom/myscript/atk/sltw/c/o;->f:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/myscript/atk/sltw/c/o;->c:F

    sub-float/2addr v1, v2

    cmpg-float v2, v1, v0

    if-gez v2, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-static {}, Lcom/myscript/atk/sltw/h/k;->i()I

    move-result v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/h/k;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    :cond_0
    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->q:Lcom/myscript/atk/sltw/c/o$a;

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/myscript/atk/sltw/c/o;->f:F

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->q:Lcom/myscript/atk/sltw/c/o$a;

    invoke-interface {v1}, Lcom/myscript/atk/sltw/c/o$a;->b()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final j(F)F
    .locals 3

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/c/o;->j()F

    move-result v0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/o;->y()F

    move-result v1

    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method public final k()F
    .locals 2

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/c/o;->h()F

    move-result v0

    iget v1, p0, Lcom/myscript/atk/sltw/c/o;->f:F

    sub-float/2addr v0, v1

    iget-boolean v1, p0, Lcom/myscript/atk/sltw/c/o;->g:Z

    if-eqz v1, :cond_0

    neg-float v0, v0

    :cond_0
    return v0
.end method

.method public final k(F)V
    .locals 3

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->o:Lcom/myscript/atk/sltw/c/o$d;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/c/o$d;->b()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/c/o;->j(F)F

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/myscript/atk/sltw/h/k;->scrollTo(II)V

    return-void
.end method

.method public final l()V
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/c/o;->j()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/c/o;->h(F)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/o;->y()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/c/o;->h(F)V

    goto :goto_0
.end method

.method public final l(F)V
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/c/o;->j()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/o;->y()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->b:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/h/k;->getScrollX()I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v3

    neg-int v3, v3

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0, p0}, Lcom/myscript/atk/sltw/h/k;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final m()V
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/c/o;->j()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/c/o;->i(F)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/o;->y()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/c/o;->i(F)V

    goto :goto_0
.end method

.method public final n()V
    .locals 2

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/o;->z()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0, p0}, Lcom/myscript/atk/sltw/h/k;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->b:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/c/o;->j()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Z
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/o;->y()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->k:Z

    return v0
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/o;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/myscript/atk/sltw/h/k;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/c/o;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0, p0}, Lcom/myscript/atk/sltw/h/k;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->k:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/c/o;->o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/o;->A()V

    :cond_1
    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->j:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/c/o;->o()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/o;->z()V

    :cond_2
    return-void
.end method

.method public final s()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/c/o;->n()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->g()Lcom/myscript/atk/sltw/h/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/h/d;->a(Z)V

    iput-boolean v1, p0, Lcom/myscript/atk/sltw/c/o;->h:Z

    return-void
.end method

.method public final t()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/c/o;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/o;->A()V

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->a:Lcom/myscript/atk/sltw/h/k;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/h/k;->g()Lcom/myscript/atk/sltw/h/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/h/d;->a(Z)V

    iput-boolean v1, p0, Lcom/myscript/atk/sltw/c/o;->h:Z

    return-void
.end method

.method public final u()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->i:Z

    return-void
.end method

.method public final v()V
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/c/o;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/c/o;->A()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/c/o;->i:Z

    return-void
.end method

.method public final w()Z
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->o:Lcom/myscript/atk/sltw/c/o$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/o;->o:Lcom/myscript/atk/sltw/c/o$d;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/c/o$d;->p()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
