.class public final Lcom/myscript/atk/sltw/e/b;
.super Ljava/lang/Object;
.source "LayoutController.java"


# instance fields
.field private a:Lcom/myscript/atk/sltw/e/a;

.field private b:Lcom/myscript/atk/sltw/f/b/a;

.field private c:Lcom/myscript/atk/sltw/f/a/b;

.field private d:Lcom/myscript/atk/sltw/c/o;

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>(Lcom/myscript/atk/sltw/e/a;Lcom/myscript/atk/sltw/f/b/a;Lcom/myscript/atk/sltw/f/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    iput-object p2, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    iput-object p3, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    return-void
.end method

.method private a(Lcom/myscript/atk/sltw/f/d;Lcom/myscript/atk/sltw/f/d;)V
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/e/a;->f()F

    move-result v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/b/a;->b()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/myscript/atk/sltw/f/d;->a(ZFI)F

    move-result v0

    neg-float v0, v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/e/b;->c(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/myscript/atk/sltw/f/d;->b(Z)F

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/myscript/atk/sltw/f/d;->b(Z)F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method private a([Lcom/myscript/atk/sltw/f/d;IIFF)V
    .locals 5

    const/4 v1, 0x0

    if-ne p2, p3, :cond_1

    :cond_0
    return-void

    :cond_1
    move v2, p2

    move v0, v1

    :goto_0
    if-ge v2, p3, :cond_3

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    if-ge p2, p3, :cond_0

    aget-object v2, p1, p2

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v2

    if-eqz v2, :cond_6

    int-to-float v2, v1

    mul-float/2addr v2, v0

    add-float/2addr v2, p4

    add-int/lit8 v3, v1, 0x1

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, p4

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    aget-object v4, p1, p2

    invoke-virtual {v4, v3, v2}, Lcom/myscript/atk/sltw/f/d;->a(FF)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    sub-float v2, p5, p4

    int-to-float v0, v0

    div-float v0, v2, v0

    goto :goto_1

    :cond_5
    aget-object v4, p1, p2

    invoke-virtual {v4, v2, v3}, Lcom/myscript/atk/sltw/f/d;->a(FF)V

    goto :goto_2

    :cond_6
    int-to-float v2, v1

    mul-float/2addr v2, v0

    add-float/2addr v2, p4

    aget-object v3, p1, p2

    invoke-virtual {v3, v2, v2}, Lcom/myscript/atk/sltw/f/d;->a(FF)V

    goto :goto_3
.end method

.method private static a(Lcom/myscript/atk/sltw/f/d;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/myscript/atk/sltw/f/d;F)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->z()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->q()F

    move-result v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/e/a;->g()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->z()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/myscript/atk/sltw/f/d;->a(Z)F

    move-result v2

    cmpl-float v2, v2, p2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->q()F

    move-result v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/e/a;->g()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private b(Lcom/myscript/atk/sltw/f/d;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->d:Lcom/myscript/atk/sltw/c/o;

    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/myscript/atk/sltw/f/d;->b(Z)F

    move-result v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->d:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/c/o;->h()F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->d:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/c/o;->g()F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->d:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/c/o;->g()F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_5

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->d:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/c/o;->h()F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private c(Lcom/myscript/atk/sltw/f/d;)F
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method private c(F)V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->d:Lcom/myscript/atk/sltw/c/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->d:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->i()F

    move-result v0

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/myscript/atk/sltw/e/b;->d:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/sltw/c/o;->h(F)V

    :cond_0
    return-void
.end method

.method private o()Lcom/myscript/atk/sltw/f/d;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->j()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, v2}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/e/b;->b(Lcom/myscript/atk/sltw/f/d;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(ILcom/myscript/atk/sltw/e/b;)F
    .locals 13

    iget-object v7, p2, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v7}, Lcom/myscript/atk/sltw/f/a/b;->g()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LayoutController"

    const-string v1, "Unable to split the current model by adding to a non-empty side model"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/f/a/b;->f(I)F

    move-result v0

    invoke-virtual {p2}, Lcom/myscript/atk/sltw/e/b;->e()F

    move-result v1

    sub-float v8, v1, v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a/b;->j()I

    move-result v5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v12, v1

    move v1, v5

    move v5, v4

    move v4, v3

    move-object v3, v2

    move v2, v12

    :goto_0
    if-eqz v1, :cond_2

    if-ge v4, p1, :cond_2

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3, v2}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    add-int/lit8 v6, v1, -0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v6

    move v12, v4

    move v4, v5

    move v5, v12

    goto :goto_0

    :cond_2
    if-ge v5, p1, :cond_3

    if-ge p1, v4, :cond_3

    iget-object v6, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    const/4 v9, 0x0

    sub-int v10, p1, v5

    iget-object v11, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v11}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v6, v3, v9, v10, v11}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;IILjava/util/List;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v6

    iget-object v9, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    sub-int v10, p1, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v9, v3, v10, v4, v5}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;IILjava/util/List;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v4

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v10}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v5, v4, v8, v9, v10}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;FFLjava/util/List;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->m()[Lcom/myscript/atk/sltw/f/c;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/myscript/atk/sltw/f/a/b;->a([Lcom/myscript/atk/sltw/f/c;)V

    invoke-virtual {v7, v4}, Lcom/myscript/atk/sltw/f/a/b;->b(Lcom/myscript/atk/sltw/f/d;)V

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/d;->m()[Lcom/myscript/atk/sltw/f/c;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/myscript/atk/sltw/f/a/b;->b([Lcom/myscript/atk/sltw/f/c;)V

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v6}, Lcom/myscript/atk/sltw/f/d;->m()[Lcom/myscript/atk/sltw/f/c;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/myscript/atk/sltw/f/a/b;->a([Lcom/myscript/atk/sltw/f/c;)V

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v5, v3, v6}, Lcom/myscript/atk/sltw/f/a/b;->b(Lcom/myscript/atk/sltw/f/d;Lcom/myscript/atk/sltw/f/d;)V

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/myscript/atk/sltw/f/d;->c(Z)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3, v2}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v3

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v6}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v3, v8, v5, v6}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;FFLjava/util/List;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->m()[Lcom/myscript/atk/sltw/f/c;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/myscript/atk/sltw/f/a/b;->a([Lcom/myscript/atk/sltw/f/c;)V

    invoke-virtual {v7, v4}, Lcom/myscript/atk/sltw/f/a/b;->b(Lcom/myscript/atk/sltw/f/d;)V

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/d;->m()[Lcom/myscript/atk/sltw/f/c;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/myscript/atk/sltw/f/a/b;->b([Lcom/myscript/atk/sltw/f/c;)V

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v5, v3}, Lcom/myscript/atk/sltw/f/a/b;->c(Lcom/myscript/atk/sltw/f/d;)V

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/myscript/atk/sltw/f/d;->c(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public final a()Lcom/myscript/atk/sltw/f/a/b;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    return-object v0
.end method

.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/e/b;->f:F

    return-void
.end method

.method public final a(II)V
    .locals 13

    if-le p1, p2, :cond_0

    const-string v0, "LayoutController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to delete characters in invalid range "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/myscript/atk/sltw/e/b;->o()Lcom/myscript/atk/sltw/f/d;

    move-result-object v7

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->j()I

    move-result v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v4, v3

    move v12, v1

    move v1, v0

    move v0, v2

    move v2, v12

    :goto_1
    if-ge v1, v4, :cond_9

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3, v1}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    if-le v3, p1, :cond_7

    if-lt v0, p2, :cond_2

    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0, v6, v2, v5, v8}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;FFLcom/myscript/atk/sltw/f/b/a;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v5

    add-int/lit8 v0, v1, 0x1

    :goto_2
    if-nez v5, :cond_8

    iget-object v1, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v1

    iget-object v8, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v8}, Lcom/myscript/atk/sltw/e/a;->f()F

    move-result v8

    iget-object v9, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v9}, Lcom/myscript/atk/sltw/f/b/a;->b()I

    move-result v9

    invoke-virtual {v6, v1, v8, v9}, Lcom/myscript/atk/sltw/f/d;->a(ZFI)F

    move-result v1

    sub-float v1, v2, v1

    :goto_3
    if-ne v6, v7, :cond_1

    invoke-direct {p0, v6, v5}, Lcom/myscript/atk/sltw/e/b;->a(Lcom/myscript/atk/sltw/f/d;Lcom/myscript/atk/sltw/f/d;)V

    :cond_1
    move v2, v1

    move v1, v0

    move v0, v3

    goto :goto_1

    :cond_2
    if-gt p1, v0, :cond_3

    if-gt v3, p2, :cond_3

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, v6}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    add-int/lit8 v4, v4, -0x1

    move-object v5, v0

    move v0, v1

    goto :goto_2

    :cond_3
    if-ge v0, p1, :cond_5

    if-ge p2, v3, :cond_5

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    const/4 v8, 0x0

    sub-int v9, p1, v0

    iget-object v10, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v10}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v5, v6, v8, v9, v10}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;IILjava/util/List;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v5

    iget-object v8, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    sub-int v9, p2, v0

    sub-int v0, v3, v0

    iget-object v10, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v10}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v8, v6, v9, v0, v10}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;IILjava/util/List;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v8

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v10}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v0, v5, v2, v9, v10}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;FFLjava/util/List;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v9

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->c()I

    move-result v0

    const/4 v10, 0x1

    if-le v0, v10, :cond_4

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/myscript/atk/sltw/f/a/b;->a(I)Lcom/myscript/atk/sltw/f/a;

    move-result-object v0

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lcom/myscript/atk/sltw/f/a/b;->a(I)Lcom/myscript/atk/sltw/f/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v10

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    neg-float v5, v5

    sub-float v0, v5, v0

    sub-int v5, p2, p1

    int-to-float v5, v5

    mul-float/2addr v0, v5

    :goto_4
    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v11}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v5, v8, v0, v10, v11}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;FFLjava/util/List;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v5

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v6}, Lcom/myscript/atk/sltw/f/d;->m()[Lcom/myscript/atk/sltw/f/c;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/myscript/atk/sltw/f/a/b;->b([Lcom/myscript/atk/sltw/f/c;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v9}, Lcom/myscript/atk/sltw/f/d;->m()[Lcom/myscript/atk/sltw/f/c;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/myscript/atk/sltw/f/a/b;->a([Lcom/myscript/atk/sltw/f/c;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/f/d;->m()[Lcom/myscript/atk/sltw/f/c;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/myscript/atk/sltw/f/a/b;->a([Lcom/myscript/atk/sltw/f/c;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, v6}, Lcom/myscript/atk/sltw/f/a/b;->c(Lcom/myscript/atk/sltw/f/d;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, v9, v1}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;I)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v0, v5, v8}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;I)V

    add-int/lit8 v0, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/myscript/atk/sltw/f/d;->b(Z)F

    move-result v0

    add-float/2addr v0, v2

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v5

    invoke-virtual {v8, v5}, Lcom/myscript/atk/sltw/f/d;->a(Z)F

    move-result v5

    sub-float/2addr v0, v5

    goto :goto_4

    :cond_5
    if-ge v0, p2, :cond_6

    if-ge p2, v3, :cond_6

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    sub-int v8, p2, v0

    sub-int v0, v3, v0

    iget-object v9, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v9}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5, v6, v8, v0, v9}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;IILjava/util/List;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    iget-object v8, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v8}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/myscript/atk/sltw/f/d;->a(Z)F

    move-result v8

    add-float/2addr v8, v2

    iget-object v9, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v9}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v9

    invoke-virtual {v0, v9}, Lcom/myscript/atk/sltw/f/d;->a(Z)F

    move-result v9

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v10}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v5, v0, v8, v9, v10}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;FFLjava/util/List;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v5, v6, v0}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;Lcom/myscript/atk/sltw/f/d;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v5

    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_2

    :cond_6
    if-ge v0, p1, :cond_7

    if-ge p1, v3, :cond_7

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    const/4 v8, 0x0

    sub-int v0, p1, v0

    iget-object v9, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v9}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5, v6, v8, v0, v9}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;IILjava/util/List;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v9}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5, v0, v2, v8, v9}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;FFLjava/util/List;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v5, v6, v0}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;Lcom/myscript/atk/sltw/f/d;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v5

    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move-object v5, v6

    goto/16 :goto_2

    :cond_8
    iget-object v1, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v1

    invoke-virtual {v5, v1}, Lcom/myscript/atk/sltw/f/d;->b(Z)F

    move-result v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v2

    invoke-virtual {v6, v2}, Lcom/myscript/atk/sltw/f/d;->b(Z)F

    move-result v2

    sub-float/2addr v1, v2

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    iget-object v1, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0, p1, v1}, Lcom/myscript/atk/sltw/f/a/b;->a(ILcom/myscript/atk/sltw/f/b/a;)V

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->j()V

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->h()V

    goto/16 :goto_0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 14

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/sltw/f/a/b;->f(I)F

    move-result v3

    invoke-static/range {p2 .. p2}, Lcom/myscript/atk/styluscore/StringUtils;->graphemesPositions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    iget-object v1, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/myscript/atk/sltw/e/a;->a(Ljava/lang/String;Ljava/lang/String;FLjava/util/List;Ljava/util/List;)[Landroid/graphics/RectF;

    move-result-object v10

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->g()F

    move-result v8

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->h()F

    move-result v9

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v11

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object v12, v5

    invoke-static/range {v6 .. v12}, Lcom/myscript/atk/sltw/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;FF[Landroid/graphics/RectF;Ljava/util/List;Ljava/util/List;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/InkField;)Ljava/util/List;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->j()I

    move-result v1

    new-array v7, v1, [Lcom/myscript/atk/sltw/f/d;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2, v0}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v2

    aput-object v2, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->e()Z

    move-result v8

    const/4 v0, 0x0

    move v13, v0

    move v0, v1

    move v1, v13

    :goto_2
    array-length v9, v7

    if-ge v1, v9, :cond_4

    if-ge v4, p1, :cond_4

    aget-object v2, v7, v1

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    if-ge v5, p1, :cond_3

    iget-object v9, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v9}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v9

    iget-object v10, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v10}, Lcom/myscript/atk/sltw/e/a;->f()F

    move-result v10

    iget-object v11, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v11}, Lcom/myscript/atk/sltw/f/b/a;->b()I

    move-result v11

    invoke-virtual {v2, v9, v10, v11}, Lcom/myscript/atk/sltw/f/d;->a(ZFI)F

    move-result v9

    add-float/2addr v0, v9

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v13, v5

    move v5, v4

    move v4, v13

    goto :goto_2

    :cond_4
    if-ge v5, p1, :cond_6

    if-ge p1, v4, :cond_6

    iget-object v7, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    const/4 v9, 0x0

    sub-int v10, p1, v5

    iget-object v11, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v11}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v7, v2, v9, v10, v11}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;IILjava/util/List;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v7

    iget-object v9, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    sub-int v10, p1, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v9, v2, v10, v4, v5}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;IILjava/util/List;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v4

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/d;->m()[Lcom/myscript/atk/sltw/f/c;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/myscript/atk/sltw/f/a/b;->b([Lcom/myscript/atk/sltw/f/c;)V

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v7}, Lcom/myscript/atk/sltw/f/d;->m()[Lcom/myscript/atk/sltw/f/c;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/myscript/atk/sltw/f/a/b;->a([Lcom/myscript/atk/sltw/f/c;)V

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->m()[Lcom/myscript/atk/sltw/f/c;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/myscript/atk/sltw/f/a/b;->a([Lcom/myscript/atk/sltw/f/c;)V

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v5, v2}, Lcom/myscript/atk/sltw/f/a/b;->c(Lcom/myscript/atk/sltw/f/d;)V

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v2, v7, v5}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;I)V

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2, v4, v1}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;I)V

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v2

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/e/a;->f()F

    move-result v4

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/f/b/a;->b()I

    move-result v5

    invoke-virtual {v7, v2, v4, v5}, Lcom/myscript/atk/sltw/f/d;->a(ZFI)F

    move-result v2

    add-float/2addr v0, v2

    :cond_5
    :goto_3
    const/4 v5, 0x0

    if-eqz v8, :cond_9

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v5, v4

    move v4, v1

    move v1, v0

    move-object v0, v2

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Segment;Ljava/util/List;)[Lcom/myscript/atk/sltw/f/a;

    move-result-object v2

    iget-object v7, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v2}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/styluscore/Segment;[Lcom/myscript/atk/sltw/f/c;[Lcom/myscript/atk/sltw/f/a;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v9}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2, v0, v1, v7, v9}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;FFLjava/util/List;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/myscript/atk/sltw/f/d;->g(Z)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/myscript/atk/sltw/f/d;->h(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, v2, v4}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;I)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    iget-object v7, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v7}, Lcom/myscript/atk/sltw/e/a;->f()F

    move-result v7

    iget-object v9, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v9}, Lcom/myscript/atk/sltw/f/b/a;->b()I

    move-result v9

    invoke-virtual {v2, v0, v7, v9}, Lcom/myscript/atk/sltw/f/d;->a(ZFI)F

    move-result v0

    add-float/2addr v5, v0

    add-int/lit8 v4, v4, 0x1

    add-float v0, v1, v5

    move v1, v0

    move-object v0, v2

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v4

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/e/a;->f()F

    move-result v5

    iget-object v7, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v7}, Lcom/myscript/atk/sltw/f/b/a;->b()I

    move-result v7

    invoke-virtual {v2, v4, v5, v7}, Lcom/myscript/atk/sltw/f/d;->a(ZFI)F

    move-result v2

    add-float/2addr v0, v2

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v1, v0, v5, v2, v4}, Lcom/myscript/atk/sltw/f/a/b;->b(Lcom/myscript/atk/sltw/f/d;FFLcom/myscript/atk/sltw/f/b/a;)V

    :cond_8
    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    iget-object v1, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0, p1, v1}, Lcom/myscript/atk/sltw/f/a/b;->a(ILcom/myscript/atk/sltw/f/b/a;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0, v1, v2}, Lcom/myscript/atk/sltw/f/a/b;->a(ILcom/myscript/atk/sltw/f/b/a;)V

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->j()V

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->h()V

    if-eqz v8, :cond_d

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->d:Lcom/myscript/atk/sltw/c/o;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->d:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->g()F

    move-result v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_0

    invoke-direct {p0, v5}, Lcom/myscript/atk/sltw/e/b;->c(F)V

    goto/16 :goto_0

    :cond_9
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v0, v6, v7}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/styluscore/Segment;[Lcom/myscript/atk/sltw/f/c;[Lcom/myscript/atk/sltw/f/a;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/myscript/atk/sltw/f/d;->g(Z)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/myscript/atk/sltw/f/d;->h(Z)V

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v4, v0, v1}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->d:Lcom/myscript/atk/sltw/c/o;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/c/o;->g()F

    move-result v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    goto :goto_5

    :cond_d
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->n()V

    goto/16 :goto_0
.end method

.method public final a(Lcom/myscript/atk/sltw/c/o;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/e/b;->d:Lcom/myscript/atk/sltw/c/o;

    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/f/a/b;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->l()I

    move-result v0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->g()F

    move-result v1

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->c()F

    move-result v2

    sub-float/2addr v1, v2

    :goto_0
    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/a/b;->j()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v6}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v2, v1, v4, v5}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;FFLjava/util/List;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v3

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/d;->m()[Lcom/myscript/atk/sltw/f/c;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/myscript/atk/sltw/f/a/b;->b([Lcom/myscript/atk/sltw/f/c;)V

    invoke-virtual {p1, v2}, Lcom/myscript/atk/sltw/f/a/b;->c(Lcom/myscript/atk/sltw/f/d;)V

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/d;->m()[Lcom/myscript/atk/sltw/f/c;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/myscript/atk/sltw/f/a/b;->a([Lcom/myscript/atk/sltw/f/c;)V

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2, v3}, Lcom/myscript/atk/sltw/f/a/b;->b(Lcom/myscript/atk/sltw/f/d;)V

    invoke-virtual {v3, v6}, Lcom/myscript/atk/sltw/f/d;->c(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v1, v0, v2}, Lcom/myscript/atk/sltw/f/a/b;->a(ILcom/myscript/atk/sltw/f/b/a;)V

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->h()V

    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/f/d;I)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LayoutController"

    const-string v1, "Unable to typeset space character"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->w()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LayoutController"

    const-string v1, "Unable to typeset unfrozen word"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    iget-object v1, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/myscript/atk/sltw/f/d;->a(Z)F

    move-result v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;IFLcom/myscript/atk/sltw/f/b/a;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->f()F

    move-result v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/b/a;->b()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/myscript/atk/sltw/f/d;->a(ZFI)F

    move-result v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/e/a;->f()F

    move-result v3

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/b/a;->b()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Lcom/myscript/atk/sltw/f/d;->a(ZFI)F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v2, v1, v5

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v2, v0, v1, v5, v3}, Lcom/myscript/atk/sltw/f/a/b;->b(Lcom/myscript/atk/sltw/f/d;FFLcom/myscript/atk/sltw/f/b/a;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/e/b;->b(Lcom/myscript/atk/sltw/f/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/myscript/atk/sltw/e/b;->a(Lcom/myscript/atk/sltw/f/d;Lcom/myscript/atk/sltw/f/d;)V

    goto :goto_0
.end method

.method public final a(Lcom/myscript/atk/sltw/f/d;IILjava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LayoutController"

    const-string v1, "Unable to typeset space character"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->w()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LayoutController"

    const-string v1, "Unable to typeset unfrozen word"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/myscript/atk/sltw/f/d;->a(Z)F

    move-result v5

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v6, p1}, Lcom/myscript/atk/sltw/f/a/b;->d(Lcom/myscript/atk/sltw/f/d;)I

    move-result v1

    sub-int v2, p2, v1

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;IILjava/lang/String;F)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1, v2}, Lcom/myscript/atk/sltw/f/d;->a(FF)V

    :cond_2
    invoke-virtual {v6, p1, v0}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;Lcom/myscript/atk/sltw/f/d;)Lcom/myscript/atk/sltw/f/d;

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 10

    invoke-direct {p0}, Lcom/myscript/atk/sltw/e/b;->o()Lcom/myscript/atk/sltw/f/d;

    move-result-object v8

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->k()[Lcom/myscript/atk/sltw/f/d;

    move-result-object v9

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->e()F

    move-result v1

    const/4 v2, 0x0

    :goto_0
    array-length v0, v9

    if-ge v2, v0, :cond_6

    aget-object v7, v9, v2

    if-nez p1, :cond_0

    invoke-static {v7}, Lcom/myscript/atk/sltw/e/b;->a(Lcom/myscript/atk/sltw/f/d;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v7}, Lcom/myscript/atk/sltw/f/d;->j()I

    move-result v3

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0, v7, v3, v1, v4}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;IFLcom/myscript/atk/sltw/f/b/a;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-virtual {v7}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v3

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/e/a;->e()F

    move-result v4

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/e/a;->f()F

    move-result v5

    iget-object v6, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v6}, Lcom/myscript/atk/sltw/f/a/b;->e()Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/myscript/atk/sltw/f/d;->a(FIZFFZ)V

    :cond_2
    iget-object v1, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/d;->b(Z)F

    move-result v1

    if-ne v7, v8, :cond_3

    invoke-direct {p0, v7, v0}, Lcom/myscript/atk/sltw/e/b;->a(Lcom/myscript/atk/sltw/f/d;Lcom/myscript/atk/sltw/f/d;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    invoke-virtual {v7, v0, v1}, Lcom/myscript/atk/sltw/f/d;->a(ZF)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v3

    invoke-virtual {v7, v3}, Lcom/myscript/atk/sltw/f/d;->a(Z)F

    move-result v3

    sub-float v3, v1, v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0, v7, v3, v4, v5}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;FFLcom/myscript/atk/sltw/f/b/a;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v7}, Lcom/myscript/atk/sltw/f/d;->j()I

    move-result v3

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0, v7, v3, v1, v4}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;IFLcom/myscript/atk/sltw/f/b/a;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v7

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->h()V

    return-void
.end method

.method public final b()Lcom/myscript/atk/sltw/c/o;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->d:Lcom/myscript/atk/sltw/c/o;

    return-object v0
.end method

.method public final b(F)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/e/b;->e:F

    return-void
.end method

.method public final b(Z)V
    .locals 11

    invoke-direct {p0}, Lcom/myscript/atk/sltw/e/b;->o()Lcom/myscript/atk/sltw/f/d;

    move-result-object v8

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->k()[Lcom/myscript/atk/sltw/f/d;

    move-result-object v9

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->g()F

    move-result v10

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->e()F

    move-result v1

    const/4 v0, 0x0

    move v6, v0

    move v0, v1

    :goto_0
    array-length v1, v9

    if-ge v6, v1, :cond_6

    aget-object v7, v9, v6

    iget-object v1, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a/b;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/myscript/atk/sltw/f/d;->d(Z)F

    move-result v1

    :goto_1
    if-nez p1, :cond_0

    invoke-static {v7}, Lcom/myscript/atk/sltw/e/b;->a(Lcom/myscript/atk/sltw/f/d;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v7}, Lcom/myscript/atk/sltw/f/d;->j()I

    move-result v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0, v7, v2, v1, v3}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;IFLcom/myscript/atk/sltw/f/b/a;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    :goto_2
    invoke-virtual {v7}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/e/a;->e()F

    move-result v3

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/e/a;->f()F

    move-result v4

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/f/a/b;->e()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/myscript/atk/sltw/f/d;->a(FZFFZ)V

    :cond_1
    if-ne v7, v8, :cond_2

    invoke-direct {p0, v7, v0}, Lcom/myscript/atk/sltw/e/b;->a(Lcom/myscript/atk/sltw/f/d;Lcom/myscript/atk/sltw/f/d;)V

    :cond_2
    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/a/b;->e()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/e/a;->f()F

    move-result v3

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/b/a;->b()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/myscript/atk/sltw/f/d;->a(ZFI)F

    move-result v0

    add-float/2addr v1, v0

    :cond_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-direct {p0, v7, v1}, Lcom/myscript/atk/sltw/e/b;->a(Lcom/myscript/atk/sltw/f/d;F)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v2

    invoke-virtual {v7, v2}, Lcom/myscript/atk/sltw/f/d;->a(Z)F

    move-result v2

    sub-float v2, v1, v2

    invoke-virtual {v7}, Lcom/myscript/atk/sltw/f/d;->q()F

    move-result v3

    sub-float v3, v10, v3

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0, v7, v2, v3, v4}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;FFLcom/myscript/atk/sltw/f/b/a;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v7

    goto :goto_2

    :cond_6
    return-void

    :cond_7
    move v1, v0

    goto/16 :goto_1
.end method

.method public final c()F
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/myscript/atk/sltw/e/b;->f:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()F
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/myscript/atk/sltw/e/b;->f:F

    goto :goto_0
.end method

.method public final e()F
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/myscript/atk/sltw/e/b;->f:F

    iget-object v1, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/b/a;->f()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/b/a;->f()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/myscript/atk/sltw/e/b;->f:F

    iget v1, p0, Lcom/myscript/atk/sltw/e/b;->e:F

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/myscript/atk/sltw/e/b;->e:F

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    return v0
.end method

.method public final g()F
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->e()F

    move-result v2

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->e()F

    move-result v1

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/a/b;->j()I

    move-result v5

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_0

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v4, v3}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v6}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    move v2, v4

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/a/b;->i()I

    move-result v4

    move v7, v0

    move v0, v2

    move v2, v7

    :goto_1
    if-ge v2, v4, :cond_1

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3, v2}, Lcom/myscript/atk/sltw/f/a/b;->b(I)Lcom/myscript/atk/sltw/f/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/f/c;->b()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/f/c;->b()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    return v0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final h()V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->k()[Lcom/myscript/atk/sltw/f/d;

    move-result-object v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/a/b;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_6

    aget-object v2, v1, v0

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/e/a;->e()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/myscript/atk/sltw/f/d;->a(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->e()F

    move-result v4

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->e()F

    move-result v5

    move v3, v0

    move v6, v0

    move v2, v0

    :goto_1
    array-length v0, v1

    if-ge v3, v0, :cond_5

    aget-object v7, v1, v3

    invoke-virtual {v7}, Lcom/myscript/atk/sltw/f/d;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v6, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v6, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v6, v6, 0x1

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->e()F

    move-result v0

    neg-float v0, v0

    :goto_3
    add-float/2addr v5, v0

    move v0, v6

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->e()F

    move-result v0

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v7}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v0

    iget v5, v0, Landroid/graphics/RectF;->right:F

    :goto_4
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/myscript/atk/sltw/e/b;->a([Lcom/myscript/atk/sltw/f/d;IIFF)V

    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v7}, Lcom/myscript/atk/sltw/e/b;->c(Lcom/myscript/atk/sltw/f/d;)F

    move-result v4

    invoke-direct {p0, v7}, Lcom/myscript/atk/sltw/e/b;->c(Lcom/myscript/atk/sltw/f/d;)F

    move-result v5

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v0

    iget v5, v0, Landroid/graphics/RectF;->left:F

    goto :goto_4

    :cond_5
    move-object v0, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/myscript/atk/sltw/e/b;->a([Lcom/myscript/atk/sltw/f/d;IIFF)V

    :cond_6
    return-void
.end method

.method public final i()V
    .locals 12

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->j()I

    move-result v9

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v9, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0, v8}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v10

    invoke-virtual {v10}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/myscript/atk/sltw/e/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v11, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/myscript/atk/sltw/f/d;->a(Z)F

    move-result v3

    invoke-static {}, Lcom/myscript/atk/sltw/e/a;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/myscript/atk/sltw/e/a;->a(Ljava/lang/String;Ljava/lang/String;FLjava/util/List;Ljava/util/List;)[Landroid/graphics/RectF;

    move-result-object v5

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->g()F

    move-result v3

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->h()F

    move-result v4

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/myscript/atk/sltw/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;FF[Landroid/graphics/RectF;Ljava/util/List;Ljava/util/List;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkField;->segments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    iget-object v1, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a/b;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Segment;Ljava/util/List;)[Lcom/myscript/atk/sltw/f/a;

    move-result-object v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/styluscore/Segment;[Lcom/myscript/atk/sltw/f/c;[Lcom/myscript/atk/sltw/f/a;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/d;->g(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/d;->h(Z)V

    invoke-virtual {v11, v10, v0}, Lcom/myscript/atk/sltw/f/a/b;->b(Lcom/myscript/atk/sltw/f/d;Lcom/myscript/atk/sltw/f/d;)V

    :cond_0
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/text/Bidi;

    invoke-direct {v0, v2, v1}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/text/Bidi;->isRightToLeft()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/text/Bidi;->isMixed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v0, Ljava/text/Bidi;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    :cond_1
    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/a/b;->j()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v4, v1}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v0, v2, v5}, Lcom/myscript/atk/sltw/e/a;->a(Ljava/text/Bidi;II)B

    move-result v6

    invoke-virtual {v4, v6}, Lcom/myscript/atk/sltw/f/d;->a(B)V

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final k()[Lcom/myscript/atk/sltw/f/d;
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->j()I

    move-result v3

    new-array v4, v3, [B

    new-array v1, v3, [Lcom/myscript/atk/sltw/f/d;

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v5, v0}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/f/d;->u()B

    move-result v6

    aput-byte v6, v4, v0

    aput-object v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v4, v2, v1, v2, v3}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v3, [Lcom/myscript/atk/sltw/f/d;

    :goto_1
    if-ge v2, v3, :cond_2

    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v2

    aget-object v4, v1, v4

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public final l()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a/b;->j()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v3, v1}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v3

    invoke-static {v3}, Lcom/myscript/atk/sltw/e/b;->a(Lcom/myscript/atk/sltw/f/d;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final m()Z
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->k()[Lcom/myscript/atk/sltw/f/d;

    move-result-object v3

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->e()F

    move-result v0

    move v2, v0

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v4, v3, v0

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/f/a/b;->e()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v2

    invoke-virtual {v4, v2}, Lcom/myscript/atk/sltw/f/d;->d(Z)F

    move-result v2

    :cond_0
    invoke-direct {p0, v4, v2}, Lcom/myscript/atk/sltw/e/b;->a(Lcom/myscript/atk/sltw/f/d;F)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/f/a/b;->e()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v5

    iget-object v6, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v6}, Lcom/myscript/atk/sltw/e/a;->f()F

    move-result v6

    iget-object v7, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v7}, Lcom/myscript/atk/sltw/f/b/a;->b()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/myscript/atk/sltw/f/d;->a(ZFI)F

    move-result v4

    add-float/2addr v2, v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final n()V
    .locals 11

    invoke-direct {p0}, Lcom/myscript/atk/sltw/e/b;->o()Lcom/myscript/atk/sltw/f/d;

    move-result-object v8

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->k()[Lcom/myscript/atk/sltw/f/d;

    move-result-object v9

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->g()F

    move-result v10

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/e/b;->e()F

    move-result v1

    const/4 v0, 0x0

    move v6, v0

    move v0, v1

    :goto_0
    array-length v1, v9

    if-ge v6, v1, :cond_4

    aget-object v7, v9, v6

    iget-object v1, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a/b;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/myscript/atk/sltw/f/d;->d(Z)F

    move-result v1

    :goto_1
    invoke-direct {p0, v7, v1}, Lcom/myscript/atk/sltw/e/b;->a(Lcom/myscript/atk/sltw/f/d;F)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v2

    invoke-virtual {v7, v2}, Lcom/myscript/atk/sltw/f/d;->a(Z)F

    move-result v2

    sub-float v2, v1, v2

    invoke-virtual {v7}, Lcom/myscript/atk/sltw/f/d;->q()F

    move-result v3

    sub-float v3, v10, v3

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v0, v7, v2, v3, v4}, Lcom/myscript/atk/sltw/f/a/b;->a(Lcom/myscript/atk/sltw/f/d;FFLcom/myscript/atk/sltw/f/b/a;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    :goto_2
    invoke-virtual {v7}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/e/a;->e()F

    move-result v3

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/e/a;->f()F

    move-result v4

    iget-object v5, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v5}, Lcom/myscript/atk/sltw/f/a/b;->e()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/myscript/atk/sltw/f/d;->a(FZFFZ)V

    :cond_0
    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->c:Lcom/myscript/atk/sltw/f/a/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/a/b;->e()Z

    move-result v2

    if-nez v2, :cond_2

    if-ne v7, v8, :cond_1

    invoke-direct {p0, v7, v0}, Lcom/myscript/atk/sltw/e/b;->a(Lcom/myscript/atk/sltw/f/d;Lcom/myscript/atk/sltw/f/d;)V

    :cond_1
    iget-object v2, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/e/b;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/e/a;->f()F

    move-result v3

    iget-object v4, p0, Lcom/myscript/atk/sltw/e/b;->b:Lcom/myscript/atk/sltw/f/b/a;

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/b/a;->b()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/myscript/atk/sltw/f/d;->a(ZFI)F

    move-result v0

    add-float/2addr v1, v0

    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v7

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    move v1, v0

    goto :goto_1
.end method
