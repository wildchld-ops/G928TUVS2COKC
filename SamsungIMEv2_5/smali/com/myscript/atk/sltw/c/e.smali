.class public final Lcom/myscript/atk/sltw/c/e;
.super Ljava/lang/Object;
.source "CursorPositionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/sltw/c/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/myscript/atk/sltw/e/b;

.field private b:I

.field private c:F

.field private d:I

.field private e:[Lcom/myscript/atk/sltw/c/e$a;

.field private f:I

.field private g:Z

.field private h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/myscript/atk/sltw/c/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/myscript/atk/sltw/c/e$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/myscript/atk/sltw/e/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/myscript/atk/sltw/c/f;

    invoke-direct {v0, p0}, Lcom/myscript/atk/sltw/c/f;-><init>(Lcom/myscript/atk/sltw/c/e;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/c/e;->h:Ljava/util/Comparator;

    new-instance v0, Lcom/myscript/atk/sltw/c/g;

    invoke-direct {v0, p0}, Lcom/myscript/atk/sltw/c/g;-><init>(Lcom/myscript/atk/sltw/c/e;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/c/e;->i:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/myscript/atk/sltw/c/e;->a:Lcom/myscript/atk/sltw/e/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/myscript/atk/sltw/c/e;->e:[Lcom/myscript/atk/sltw/c/e$a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/myscript/atk/sltw/c/e;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/c/e;->b:I

    return v0
.end method

.method public final a(F)I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/e;->e:[Lcom/myscript/atk/sltw/c/e$a;

    if-eqz v0, :cond_9

    move v0, v1

    :cond_0
    :goto_0
    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/e;->e:[Lcom/myscript/atk/sltw/c/e$a;

    iget v3, p0, Lcom/myscript/atk/sltw/c/e;->d:I

    aget-object v3, v0, v3

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/e;->a:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v3, Lcom/myscript/atk/sltw/c/e$a;->c:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    iget v0, p0, Lcom/myscript/atk/sltw/c/e;->d:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/myscript/atk/sltw/c/e;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/myscript/atk/sltw/c/e;->d:I

    move v0, v1

    :goto_2
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/myscript/atk/sltw/c/e;->e:[Lcom/myscript/atk/sltw/c/e$a;

    iget v4, p0, Lcom/myscript/atk/sltw/c/e;->d:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/myscript/atk/sltw/c/e$a;->a:I

    iput v3, p0, Lcom/myscript/atk/sltw/c/e;->f:I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget v0, v3, Lcom/myscript/atk/sltw/c/e$a;->c:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/e;->a:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, v3, Lcom/myscript/atk/sltw/c/e$a;->d:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    move v0, v2

    :goto_3
    if-eqz v0, :cond_8

    iget v0, p0, Lcom/myscript/atk/sltw/c/e;->d:I

    iget-object v3, p0, Lcom/myscript/atk/sltw/c/e;->e:[Lcom/myscript/atk/sltw/c/e$a;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_8

    iget v0, p0, Lcom/myscript/atk/sltw/c/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/myscript/atk/sltw/c/e;->d:I

    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    iget v0, v3, Lcom/myscript/atk/sltw/c/e$a;->d:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/myscript/atk/sltw/c/e;->f:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/c/e;->b:I

    return-void
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/c/e;->c:F

    return v0
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/e;->a:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->a()Lcom/myscript/atk/sltw/f/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a/b;->l()I

    move-result v0

    iget v1, p0, Lcom/myscript/atk/sltw/c/e;->b:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/myscript/atk/sltw/c/e;->b:I

    if-gt v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/e;->a:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/e/b;->a()Lcom/myscript/atk/sltw/f/a/b;

    move-result-object v1

    iget v2, p0, Lcom/myscript/atk/sltw/c/e;->b:I

    invoke-virtual {v1, v2}, Lcom/myscript/atk/sltw/f/a/b;->f(I)F

    move-result v1

    iput v1, p0, Lcom/myscript/atk/sltw/c/e;->c:F

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 12

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/c/e;->g:Z

    iget v0, p0, Lcom/myscript/atk/sltw/c/e;->b:I

    iput v0, p0, Lcom/myscript/atk/sltw/c/e;->f:I

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/e;->a:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->a()Lcom/myscript/atk/sltw/f/a/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/myscript/atk/sltw/f/a/b;->j()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/myscript/atk/sltw/c/e;->e:[Lcom/myscript/atk/sltw/c/e$a;

    iget v0, p0, Lcom/myscript/atk/sltw/c/e;->f:I

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/e;->e:[Lcom/myscript/atk/sltw/c/e$a;

    if-eqz v1, :cond_a

    :goto_1
    iget-object v1, p0, Lcom/myscript/atk/sltw/c/e;->e:[Lcom/myscript/atk/sltw/c/e$a;

    array-length v1, v1

    if-ge v2, v1, :cond_a

    iget-object v1, p0, Lcom/myscript/atk/sltw/c/e;->e:[Lcom/myscript/atk/sltw/c/e$a;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/myscript/atk/sltw/c/e$a;->a:I

    if-ne v1, v0, :cond_9

    :goto_2
    iput v2, p0, Lcom/myscript/atk/sltw/c/e;->d:I

    return-void

    :cond_0
    invoke-virtual {v6}, Lcom/myscript/atk/sltw/f/a/b;->l()I

    move-result v8

    add-int/lit8 v0, v8, 0x1

    new-array v4, v0, [Lcom/myscript/atk/sltw/c/e$a;

    move v5, v2

    move v1, v2

    :goto_3
    if-ge v5, v7, :cond_3

    invoke-virtual {v6, v5}, Lcom/myscript/atk/sltw/f/a/b;->c(I)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->v()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->o()[F

    move-result-object v0

    :goto_4
    move v3, v1

    move v1, v2

    :goto_5
    array-length v9, v0

    if-ge v1, v9, :cond_2

    new-instance v9, Lcom/myscript/atk/sltw/c/e$a;

    invoke-direct {v9, p0, v2}, Lcom/myscript/atk/sltw/c/e$a;-><init>(Lcom/myscript/atk/sltw/c/e;B)V

    iput v3, v9, Lcom/myscript/atk/sltw/c/e$a;->a:I

    aget v10, v0, v1

    iput v10, v9, Lcom/myscript/atk/sltw/c/e$a;->b:F

    aput-object v9, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1
    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->n()[F

    move-result-object v0

    goto :goto_4

    :cond_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v1, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Lcom/myscript/atk/sltw/f/a/b;->h()Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    new-instance v1, Lcom/myscript/atk/sltw/c/e$a;

    invoke-direct {v1, p0, v2}, Lcom/myscript/atk/sltw/c/e$a;-><init>(Lcom/myscript/atk/sltw/c/e;B)V

    iput v8, v1, Lcom/myscript/atk/sltw/c/e$a;->a:I

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->v()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, v1, Lcom/myscript/atk/sltw/c/e$a;->b:F

    :goto_6
    aput-object v1, v4, v8

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/e;->a:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/myscript/atk/sltw/c/e;->i:Ljava/util/Comparator;

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :goto_7
    move v0, v2

    :goto_8
    array-length v1, v4

    if-ge v0, v1, :cond_8

    aget-object v1, v4, v0

    if-nez v0, :cond_6

    iget-object v3, p0, Lcom/myscript/atk/sltw/c/e;->a:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/e/b;->c()F

    move-result v3

    iput v3, v1, Lcom/myscript/atk/sltw/c/e$a;->c:F

    :goto_9
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_7

    iget-object v3, p0, Lcom/myscript/atk/sltw/c/e;->a:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/e/b;->d()F

    move-result v3

    iput v3, v1, Lcom/myscript/atk/sltw/c/e$a;->d:F

    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_4
    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iput v0, v1, Lcom/myscript/atk/sltw/c/e$a;->b:F

    goto :goto_6

    :cond_5
    iget-object v0, p0, Lcom/myscript/atk/sltw/c/e;->h:Ljava/util/Comparator;

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_7

    :cond_6
    iget v3, v1, Lcom/myscript/atk/sltw/c/e$a;->b:F

    add-int/lit8 v5, v0, -0x1

    aget-object v5, v4, v5

    iget v5, v5, Lcom/myscript/atk/sltw/c/e$a;->b:F

    mul-float/2addr v5, v11

    add-float/2addr v3, v5

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v3, v5

    iput v3, v1, Lcom/myscript/atk/sltw/c/e$a;->c:F

    goto :goto_9

    :cond_7
    iget v3, v1, Lcom/myscript/atk/sltw/c/e$a;->b:F

    add-int/lit8 v5, v0, 0x1

    aget-object v5, v4, v5

    iget v5, v5, Lcom/myscript/atk/sltw/c/e$a;->b:F

    add-float/2addr v3, v5

    div-float/2addr v3, v11

    iput v3, v1, Lcom/myscript/atk/sltw/c/e$a;->d:F

    goto :goto_a

    :cond_8
    move-object v0, v4

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_a
    const-string v1, "CursorPositionController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error searching for character info for out-of-bounds cursor index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto/16 :goto_2
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/c/e;->g:Z

    return-void
.end method
