.class public final Lcom/myscript/atk/sltw/f/a/b;
.super Ljava/lang/Object;
.source "VOModelController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/sltw/f/a/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/myscript/atk/sltw/f/b;

.field private b:Lcom/myscript/atk/sltw/f/d;

.field private c:F

.field private d:Lcom/myscript/atk/sltw/f/a/b$a;


# direct methods
.method public constructor <init>(Lcom/myscript/atk/sltw/f/b;Landroid/util/DisplayMetrics;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {v0, p2}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/myscript/atk/sltw/f/a/b;->c:F

    return-void
.end method

.method private static a(Lcom/myscript/atk/sltw/f/d;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->m()[Lcom/myscript/atk/sltw/f/c;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Lcom/myscript/atk/sltw/f/c;->a(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/myscript/atk/sltw/f/d;->f(Z)V

    return-void
.end method

.method private b(Lcom/myscript/atk/sltw/f/c;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/f/b;->b(Lcom/myscript/atk/sltw/f/c;)V

    return-void
.end method

.method private i(I)F
    .locals 2

    invoke-virtual {p0, p1}, Lcom/myscript/atk/sltw/f/a/b;->e(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->d(Lcom/myscript/atk/sltw/f/d;)I

    move-result v1

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->n()[F

    move-result-object v0

    sub-int v1, p1, v1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j(I)F
    .locals 2

    invoke-virtual {p0, p1}, Lcom/myscript/atk/sltw/f/a/b;->e(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->d(Lcom/myscript/atk/sltw/f/d;)I

    move-result v1

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->o()[F

    move-result-object v0

    sub-int v1, p1, v1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k(I)F
    .locals 2

    invoke-direct {p0}, Lcom/myscript/atk/sltw/f/a/b;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0
.end method

.method private l(I)F
    .locals 2

    invoke-direct {p0}, Lcom/myscript/atk/sltw/f/a/b;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method private m(I)Lcom/myscript/atk/sltw/f/d;
    .locals 4

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt p1, v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    sub-int/2addr p1, v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private q()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v2, v0}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/d;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/d;->a()[Lcom/myscript/atk/sltw/f/a;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public final a(F)I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/a/b;->e()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/myscript/atk/sltw/f/a/b;->q()Ljava/util/List;

    move-result-object v4

    const/4 v1, 0x0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    cmpg-float v0, v2, p1

    if-gtz v0, :cond_1

    cmpg-float v0, p1, v3

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v2, v3

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(I)Lcom/myscript/atk/sltw/f/a;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    return-object v0
.end method

.method public final a(FZ)Lcom/myscript/atk/sltw/f/d;
    .locals 8

    const/4 v2, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v5

    const/4 v0, 0x0

    move v4, v0

    move v0, v1

    :goto_0
    if-ge v4, v5, :cond_2

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v1, v4}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    cmpg-float v7, p1, v1

    if-gez v7, :cond_1

    sub-float/2addr v1, p1

    :goto_1
    cmpg-float v6, v1, v0

    if-gez v6, :cond_4

    move v0, v1

    move-object v1, v3

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    goto :goto_0

    :cond_1
    cmpl-float v1, p1, v6

    if-lez v1, :cond_3

    sub-float v1, p1, v6

    goto :goto_1

    :cond_2
    move-object v3, v2

    :cond_3
    return-object v3

    :cond_4
    move-object v1, v2

    goto :goto_2
.end method

.method public final a(II)Lcom/myscript/atk/sltw/f/d;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, p1, :cond_0

    add-int v5, v2, v4

    if-ne v5, p2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/myscript/atk/sltw/f/d;)Lcom/myscript/atk/sltw/f/d;
    .locals 1

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->m()[Lcom/myscript/atk/sltw/f/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->b([Lcom/myscript/atk/sltw/f/c;)V

    invoke-virtual {p0, p1}, Lcom/myscript/atk/sltw/f/a/b;->c(Lcom/myscript/atk/sltw/f/d;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/myscript/atk/sltw/f/d;FFLcom/myscript/atk/sltw/f/b/a;)Lcom/myscript/atk/sltw/f/d;
    .locals 3

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;FFLjava/util/List;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->C()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p2

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/myscript/atk/sltw/f/d;->a(FF)V

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;Lcom/myscript/atk/sltw/f/d;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/myscript/atk/sltw/f/d;IFLcom/myscript/atk/sltw/f/b/a;)Lcom/myscript/atk/sltw/f/d;
    .locals 3

    invoke-virtual {p4, p1, p2, p3}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;IF)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1, v2}, Lcom/myscript/atk/sltw/f/d;->a(FF)V

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;Lcom/myscript/atk/sltw/f/d;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/myscript/atk/sltw/f/d;Lcom/myscript/atk/sltw/f/d;)Lcom/myscript/atk/sltw/f/d;
    .locals 1

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->m()[Lcom/myscript/atk/sltw/f/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->b([Lcom/myscript/atk/sltw/f/c;)V

    invoke-virtual {p2}, Lcom/myscript/atk/sltw/f/d;->m()[Lcom/myscript/atk/sltw/f/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->a([Lcom/myscript/atk/sltw/f/c;)V

    invoke-virtual {p0, p1, p2}, Lcom/myscript/atk/sltw/f/a/b;->b(Lcom/myscript/atk/sltw/f/d;Lcom/myscript/atk/sltw/f/d;)V

    return-object p2
.end method

.method public final a()V
    .locals 2

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->d()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/b;->a(I)Lcom/myscript/atk/sltw/f/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->b(Lcom/myscript/atk/sltw/f/c;)V

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->c(Lcom/myscript/atk/sltw/f/d;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->c()V

    return-void
.end method

.method public final a(IIZ)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/myscript/atk/sltw/f/a/b;->d(Lcom/myscript/atk/sltw/f/d;)I

    move-result v2

    sub-int v3, p1, v2

    sub-int v2, p2, v2

    invoke-virtual {v1, v3, v2, p3}, Lcom/myscript/atk/sltw/f/d;->a(IIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(ILcom/myscript/atk/sltw/f/b/a;)V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/f/a/b;->m(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/myscript/atk/sltw/f/a/b;->e(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v5

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v4, v5}, Lcom/myscript/atk/sltw/f/d;->a(Lcom/myscript/atk/sltw/f/d;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->a()[Lcom/myscript/atk/sltw/f/a;

    move-result-object v6

    array-length v7, v6

    move v3, v2

    :goto_0
    if-ge v3, v7, :cond_0

    aget-object v8, v6, v3

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->e()Lcom/myscript/atk/styluscore/Segment;

    move-result-object v3

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/f/d;->e()Lcom/myscript/atk/styluscore/Segment;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/myscript/atk/sltw/d/a/d;->a(Lcom/myscript/atk/styluscore/Segment;Lcom/myscript/atk/styluscore/Segment;)Lcom/myscript/atk/styluscore/Segment;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/styluscore/Segment;)[Lcom/myscript/atk/sltw/f/c;

    move-result-object v6

    invoke-static {v3, v0}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Segment;Ljava/util/List;)[Lcom/myscript/atk/sltw/f/a;

    move-result-object v0

    invoke-virtual {p2, v3, v6, v0}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/styluscore/Segment;[Lcom/myscript/atk/sltw/f/c;[Lcom/myscript/atk/sltw/f/a;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v3

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->u()B

    move-result v0

    invoke-virtual {v3, v0}, Lcom/myscript/atk/sltw/f/d;->a(B)V

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->w()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/f/d;->w()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/myscript/atk/sltw/f/d;->g(Z)V

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->x()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/f/d;->x()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/myscript/atk/sltw/f/d;->h(Z)V

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->y()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/f/d;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    invoke-virtual {v3, v2}, Lcom/myscript/atk/sltw/f/d;->i(Z)V

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/d;->D()Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v3

    :goto_3
    invoke-virtual {p0, v4}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;)Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {p0, v5, v0}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;Lcom/myscript/atk/sltw/f/d;)Lcom/myscript/atk/sltw/f/d;

    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    invoke-virtual {p2, v3}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    goto :goto_3
.end method

.method public final a(Lcom/myscript/atk/sltw/f/a/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/f/a/b;->d:Lcom/myscript/atk/sltw/f/a/b$a;

    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/f/b$a;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/f/b;->a(Lcom/myscript/atk/sltw/f/b$a;)V

    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/f/c;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/f/b;->a(Lcom/myscript/atk/sltw/f/c;)V

    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/f/d;I)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0, p1, p2}, Lcom/myscript/atk/sltw/f/b;->a(Lcom/myscript/atk/sltw/f/d;I)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/f/b;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a([Lcom/myscript/atk/sltw/f/c;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(ILcom/myscript/atk/sltw/f/b/a;I)Z
    .locals 5

    const/4 v0, 0x0

    add-int/lit8 v2, p1, 0xa

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/b;->b()I

    move-result v1

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/b;->b()I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-gt v1, v2, :cond_0

    invoke-virtual {p2, v1}, Lcom/myscript/atk/sltw/f/b/a;->g(I)Lcom/myscript/atk/sltw/f/a;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/myscript/atk/sltw/f/a/b;->a(Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final a(Ljava/util/List;Lcom/myscript/atk/sltw/f/b/a;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;",
            "Lcom/myscript/atk/sltw/f/b/a;",
            ")Z"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/b;->c()V

    invoke-virtual {p0, p1}, Lcom/myscript/atk/sltw/f/a/b;->a(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_1

    if-ge v3, v6, :cond_1

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a;->b()Z

    move-result v9

    invoke-virtual {v0, v9}, Lcom/myscript/atk/sltw/f/a;->a(Z)V

    invoke-virtual {v8, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-interface {v7}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v1

    new-array v3, v1, [Lcom/myscript/atk/sltw/f/d;

    move v0, v2

    :goto_2
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v4

    invoke-virtual {p2, v4, v8}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;Ljava/util/Map;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    :goto_3
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    aget-object v4, v3, v2

    invoke-virtual {p0, v0, v4}, Lcom/myscript/atk/sltw/f/a/b;->b(Lcom/myscript/atk/sltw/f/d;Lcom/myscript/atk/sltw/f/d;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(FZ)I
    .locals 13

    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/a/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-direct {p0}, Lcom/myscript/atk/sltw/f/a/b;->q()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    add-int/lit8 v0, v4, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v2, v3

    move-object v7, v1

    move v1, v6

    :goto_1
    if-gez v1, :cond_5

    if-ge v2, v4, :cond_5

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/f/a;->a(F)Z

    move-result v9

    if-nez v9, :cond_4

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->right:F

    cmpg-float v9, v9, p1

    if-gtz v9, :cond_3

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->left:F

    cmpg-float v9, p1, v9

    if-gez v9, :cond_3

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v7}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v7

    div-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_4

    move v1, v2

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object v7, v0

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v2, 0x1

    goto :goto_2

    :cond_5
    if-ne v1, v5, :cond_18

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v0

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v12

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_18

    move v0, v3

    :goto_3
    if-ne v0, v6, :cond_6

    move v0, v3

    :cond_6
    move v3, v0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, p1, v5}, Lcom/myscript/atk/sltw/f/a/b;->a(FZ)Lcom/myscript/atk/sltw/f/d;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v4}, Lcom/myscript/atk/sltw/f/a/b;->e(Lcom/myscript/atk/sltw/f/d;)I

    move-result v3

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v4}, Lcom/myscript/atk/sltw/f/a/b;->d(Lcom/myscript/atk/sltw/f/d;)I

    move-result v3

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_b

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->v()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v4}, Lcom/myscript/atk/sltw/f/a/b;->d(Lcom/myscript/atk/sltw/f/d;)I

    move-result v3

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, v4}, Lcom/myscript/atk/sltw/f/a/b;->e(Lcom/myscript/atk/sltw/f/d;)I

    move-result v3

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->a()[Lcom/myscript/atk/sltw/f/a;

    move-result-object v5

    move-object v0, v1

    move v2, v3

    :goto_4
    array-length v1, v5

    if-ge v2, v1, :cond_17

    aget-object v1, v5, v2

    invoke-virtual {v1, p1}, Lcom/myscript/atk/sltw/f/a;->a(F)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_c
    :goto_5
    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->v()Z

    move-result v0

    if-eqz v0, :cond_f

    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v4}, Lcom/myscript/atk/sltw/f/a/b;->e(Lcom/myscript/atk/sltw/f/d;)I

    move-result v1

    add-int v3, v0, v1

    goto/16 :goto_0

    :cond_d
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v6, p1

    if-gez v6, :cond_e

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    cmpg-float v6, p1, v6

    if-gez v6, :cond_e

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float/2addr v0, v12

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_c

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v1

    goto :goto_4

    :cond_f
    invoke-virtual {p0, v4}, Lcom/myscript/atk/sltw/f/a/b;->d(Lcom/myscript/atk/sltw/f/d;)I

    move-result v0

    add-int v3, v2, v0

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->n()[F

    move-result-object v6

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->o()[F

    move-result-object v7

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    move v0, v3

    :goto_6
    if-ge v0, v8, :cond_0

    aget v9, v6, v0

    aget v10, v7, v0

    move v2, v5

    :goto_7
    add-int v1, v0, v2

    if-ge v1, v8, :cond_11

    add-int v1, v0, v2

    aget v1, v6, v1

    cmpl-float v1, v1, v9

    if-nez v1, :cond_11

    add-int v1, v0, v2

    aget v1, v7, v1

    cmpl-float v1, v1, v10

    if-nez v1, :cond_11

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7

    :cond_11
    sub-float v1, v10, v9

    div-float/2addr v1, v12

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->v()Z

    move-result v11

    if-eqz v11, :cond_13

    iget v11, p0, Lcom/myscript/atk/sltw/f/a/b;->c:F

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v1, v10, v1

    :goto_8
    cmpg-float v9, v9, p1

    if-gez v9, :cond_14

    cmpg-float v9, p1, v1

    if-gez v9, :cond_14

    invoke-virtual {p0, v4}, Lcom/myscript/atk/sltw/f/a/b;->d(Lcom/myscript/atk/sltw/f/d;)I

    move-result v1

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->v()Z

    move-result v3

    if-eqz v3, :cond_12

    add-int/2addr v0, v2

    :cond_12
    add-int v3, v1, v0

    goto/16 :goto_0

    :cond_13
    iget v11, p0, Lcom/myscript/atk/sltw/f/a/b;->c:F

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr v1, v9

    goto :goto_8

    :cond_14
    cmpg-float v1, v1, p1

    if-gez v1, :cond_16

    cmpg-float v1, p1, v10

    if-gez v1, :cond_16

    invoke-virtual {p0, v4}, Lcom/myscript/atk/sltw/f/a/b;->d(Lcom/myscript/atk/sltw/f/d;)I

    move-result v1

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->v()Z

    move-result v3

    if-eqz v3, :cond_15

    :goto_9
    add-int v3, v1, v0

    goto/16 :goto_0

    :cond_15
    add-int/2addr v0, v2

    goto :goto_9

    :cond_16
    add-int/2addr v0, v2

    goto :goto_6

    :cond_17
    move v2, v3

    goto/16 :goto_5

    :cond_18
    move v0, v1

    goto/16 :goto_3
.end method

.method public final b(I)Lcom/myscript/atk/sltw/f/c;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->d()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/f/b;->a(I)Lcom/myscript/atk/sltw/f/c;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->d()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/b;->a(I)Lcom/myscript/atk/sltw/f/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->b(Lcom/myscript/atk/sltw/f/c;)V

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->c(Lcom/myscript/atk/sltw/f/d;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final b(Lcom/myscript/atk/sltw/f/d;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/f/b;->a(Lcom/myscript/atk/sltw/f/d;)V

    return-void
.end method

.method public final b(Lcom/myscript/atk/sltw/f/d;FFLcom/myscript/atk/sltw/f/b/a;)V
    .locals 4

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v2

    if-eq p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p2, v3, p4}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;FFLcom/myscript/atk/sltw/f/b/a;)Lcom/myscript/atk/sltw/f/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final b(Lcom/myscript/atk/sltw/f/d;Lcom/myscript/atk/sltw/f/d;)V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/f/b;->c(Lcom/myscript/atk/sltw/f/d;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v1, p1}, Lcom/myscript/atk/sltw/f/b;->b(Lcom/myscript/atk/sltw/f/d;)V

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v1, p2, v0}, Lcom/myscript/atk/sltw/f/b;->a(Lcom/myscript/atk/sltw/f/d;I)V

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->b:Lcom/myscript/atk/sltw/f/d;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/myscript/atk/sltw/f/a/b;->f(Lcom/myscript/atk/sltw/f/d;)V

    :cond_1
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/f/b;->b(Ljava/util/List;)V

    return-void
.end method

.method public final b([Lcom/myscript/atk/sltw/f/c;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/myscript/atk/sltw/f/a/b;->b(Lcom/myscript/atk/sltw/f/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->b()I

    move-result v0

    return v0
.end method

.method public final c(I)Lcom/myscript/atk/sltw/f/d;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Lcom/myscript/atk/sltw/f/d;)V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/f/b;->b(Lcom/myscript/atk/sltw/f/d;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->b:Lcom/myscript/atk/sltw/f/d;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->f(Lcom/myscript/atk/sltw/f/d;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/c;",
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

    check-cast v0, Lcom/myscript/atk/sltw/f/c;

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Lcom/myscript/atk/sltw/f/d;)I
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v4

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v4, :cond_1

    iget-object v3, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v3, v2}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v5, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v5, v2}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v5

    if-ne p1, v5, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final d(I)Lcom/myscript/atk/sltw/f/d;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v4, v0}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    if-gt v2, p1, :cond_0

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/c;",
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

    check-cast v0, Lcom/myscript/atk/sltw/f/c;

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->b(Lcom/myscript/atk/sltw/f/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Lcom/myscript/atk/sltw/f/d;)I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v4, v1}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v5, v1}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v5

    if-ne p1, v5, :cond_1

    add-int v0, v2, v4

    :cond_0
    return v0

    :cond_1
    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final e(I)Lcom/myscript/atk/sltw/f/d;
    .locals 4

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p1, v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    sub-int/2addr p1, v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final e(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/d;",
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

    check-cast v0, Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->c(Lcom/myscript/atk/sltw/f/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/b;->b()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(I)F
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/a/b;->l()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz p1, :cond_0

    if-gt p1, v1, :cond_0

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/a/b;->h()Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/a/b;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v3}, Lcom/myscript/atk/sltw/f/a/b;->l(I)F

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/myscript/atk/sltw/f/a/b;->e(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3}, Lcom/myscript/atk/sltw/f/a/b;->k(I)F

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->v()Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->k(I)F

    move-result v0

    goto :goto_0

    :cond_5
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->l(I)F

    move-result v0

    goto :goto_0

    :cond_6
    if-ne p1, v1, :cond_8

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->i(I)F

    move-result v0

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->j(I)F

    move-result v0

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->v()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/f/a/b;->j(I)F

    move-result v0

    goto :goto_0

    :cond_9
    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/f/a/b;->i(I)F

    move-result v0

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->c()V

    return-void
.end method

.method public final f(Lcom/myscript/atk/sltw/f/d;)V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->b:Lcom/myscript/atk/sltw/f/d;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->b:Lcom/myscript/atk/sltw/f/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->b:Lcom/myscript/atk/sltw/f/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;Z)V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;Z)V

    :cond_3
    iput-object p1, p0, Lcom/myscript/atk/sltw/f/a/b;->b:Lcom/myscript/atk/sltw/f/d;

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->d:Lcom/myscript/atk/sltw/f/a/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->d:Lcom/myscript/atk/sltw/f/a/b$a;

    invoke-interface {v0, p1}, Lcom/myscript/atk/sltw/f/a/b$a;->a(Lcom/myscript/atk/sltw/f/d;)V

    goto :goto_0
.end method

.method public final g(I)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->a(I)Lcom/myscript/atk/sltw/f/a;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/myscript/atk/sltw/f/a/b;->b:Lcom/myscript/atk/sltw/f/d;

    :goto_2
    iget-object v2, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v2, v1}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/myscript/atk/sltw/f/d;->a(Lcom/myscript/atk/sltw/f/a;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    iput-object v2, p0, Lcom/myscript/atk/sltw/f/a/b;->b:Lcom/myscript/atk/sltw/f/d;

    :cond_2
    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a/b;->d:Lcom/myscript/atk/sltw/f/a/b$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a/b;->b:Lcom/myscript/atk/sltw/f/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a/b;->d:Lcom/myscript/atk/sltw/f/a/b$a;

    iget-object v2, p0, Lcom/myscript/atk/sltw/f/a/b;->b:Lcom/myscript/atk/sltw/f/d;

    invoke-interface {v1, v0, v2}, Lcom/myscript/atk/sltw/f/a/b$a;->a(Lcom/myscript/atk/sltw/f/a;Lcom/myscript/atk/sltw/f/d;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p1, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->d()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Lcom/myscript/atk/sltw/f/d;
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    goto :goto_0
.end method

.method public final h(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/f/a/b;->m(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/f/a/b;->f(Lcom/myscript/atk/sltw/f/d;)V

    return-void
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->d()I

    move-result v0

    return v0
.end method

.method public final j()I
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v0

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v3, v0}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v3, v0}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->d()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v3, v1}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/d;->w()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v2, v0}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/myscript/atk/sltw/f/d;->g(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final p()I
    .locals 4

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b;->e()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/myscript/atk/sltw/f/b;->b(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->b:Lcom/myscript/atk/sltw/f/d;

    if-nez v0, :cond_0

    const-string v0, "none"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/myscript/atk/sltw/f/a/b;->a:Lcom/myscript/atk/sltw/f/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selection=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/a/b;->b:Lcom/myscript/atk/sltw/f/d;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
