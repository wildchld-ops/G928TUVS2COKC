.class public final Lcom/myscript/atk/sltw/h/a;
.super Landroid/view/View;
.source "BaselineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/sltw/h/a$a;
    }
.end annotation


# static fields
.field private static final a:[I


# instance fields
.field private b:F

.field private c:Landroid/graphics/Paint;

.field private d:[F

.field private e:I

.field private f:Landroid/graphics/Paint;

.field private g:[F

.field private h:I

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/BitmapShader;

.field private k:Lcom/myscript/atk/sltw/e/b;

.field private l:Lcom/myscript/atk/sltw/e/b;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/myscript/atk/sltw/h/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/myscript/atk/sltw/h/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private o:F

.field private p:F

.field private q:F

.field private r:Z

.field private s:Z

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private u:F

.field private v:F

.field private w:F

.field private x:Z

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/myscript/atk/sltw/h/a;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0x5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/16 v5, 0x190

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/h/a;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lcom/myscript/atk/sltw/h/a;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v1, Lcom/myscript/atk/sltw/h/a;->a:[I

    aget v1, v1, v4

    add-int/2addr v0, v1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/myscript/atk/sltw/h/a;->i:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/myscript/atk/sltw/h/a;->i:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/h/a;->j:Landroid/graphics/BitmapShader;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/h/a;->f:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/myscript/atk/sltw/h/a;->j:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const v0, -0x6b6b6c

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/h/a;->a(I)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/h/a;->a(F)V

    new-array v0, v5, [F

    iput-object v0, p0, Lcom/myscript/atk/sltw/h/a;->d:[F

    new-array v0, v5, [F

    iput-object v0, p0, Lcom/myscript/atk/sltw/h/a;->g:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/h/a;->m:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/h/a;->n:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/h/a;->t:Ljava/util/List;

    iput-boolean v4, p0, Lcom/myscript/atk/sltw/h/a;->x:Z

    iput-boolean v4, p0, Lcom/myscript/atk/sltw/h/a;->s:Z

    return-void
.end method

.method static synthetic a(Lcom/myscript/atk/sltw/h/a;)Lcom/myscript/atk/sltw/e/b;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->k:Lcom/myscript/atk/sltw/e/b;

    return-object v0
.end method

.method private a(Lcom/myscript/atk/sltw/e/b;Ljava/util/ArrayList;F)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/sltw/e/b;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/myscript/atk/sltw/h/a$a;",
            ">;F)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/e/b;->k()[Lcom/myscript/atk/sltw/f/d;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/myscript/atk/sltw/f/d;->c()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/myscript/atk/sltw/h/a$a;

    invoke-direct {v4, p0, v1}, Lcom/myscript/atk/sltw/h/a$a;-><init>(Lcom/myscript/atk/sltw/h/a;B)V

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/e/b;->f()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/myscript/atk/sltw/f/d;->a(Z)F

    move-result v5

    add-float/2addr v5, p3

    iput v5, v4, Lcom/myscript/atk/sltw/h/a$a;->a:F

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/e/b;->f()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/myscript/atk/sltw/f/d;->b(Z)F

    move-result v3

    add-float/2addr v3, p3

    iput v3, v4, Lcom/myscript/atk/sltw/h/a$a;->b:F

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/h/a$a;",
            ">;)V"
        }
    .end annotation

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/h/a;->d()F

    move-result v3

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/h/a;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/myscript/atk/sltw/h/a;->b:F

    div-float/2addr v1, v6

    sub-float/2addr v0, v1

    sub-float v4, v0, v2

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/h/a;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->k:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/myscript/atk/sltw/h/a;->b:F

    neg-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr v0, v2

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v6, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/h/a$a;

    iget v7, v0, Lcom/myscript/atk/sltw/h/a$a;->a:F

    add-float/2addr v7, v1

    invoke-direct {p0, v7, v3}, Lcom/myscript/atk/sltw/h/a;->c(FF)V

    iget v7, v0, Lcom/myscript/atk/sltw/h/a$a;->b:F

    sub-float/2addr v7, v1

    invoke-direct {p0, v7, v3}, Lcom/myscript/atk/sltw/h/a;->c(FF)V

    iget v7, v0, Lcom/myscript/atk/sltw/h/a$a;->a:F

    add-float/2addr v7, v1

    invoke-direct {p0, v7, v8}, Lcom/myscript/atk/sltw/h/a;->b(FF)V

    iget v7, v0, Lcom/myscript/atk/sltw/h/a$a;->a:F

    add-float/2addr v7, v1

    invoke-direct {p0, v7, v5}, Lcom/myscript/atk/sltw/h/a;->b(FF)V

    iget v7, v0, Lcom/myscript/atk/sltw/h/a$a;->a:F

    add-float/2addr v7, v1

    invoke-direct {p0, v7, v4}, Lcom/myscript/atk/sltw/h/a;->b(FF)V

    iget v7, v0, Lcom/myscript/atk/sltw/h/a$a;->b:F

    sub-float/2addr v7, v1

    invoke-direct {p0, v7, v4}, Lcom/myscript/atk/sltw/h/a;->b(FF)V

    iget v7, v0, Lcom/myscript/atk/sltw/h/a$a;->b:F

    sub-float/2addr v7, v1

    invoke-direct {p0, v7, v5}, Lcom/myscript/atk/sltw/h/a;->b(FF)V

    iget v0, v0, Lcom/myscript/atk/sltw/h/a$a;->b:F

    sub-float/2addr v0, v1

    invoke-direct {p0, v0, v8}, Lcom/myscript/atk/sltw/h/a;->b(FF)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/myscript/atk/sltw/h/a;->d()F

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(FF)V
    .locals 3

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->d:[F

    iget v1, p0, Lcom/myscript/atk/sltw/h/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/myscript/atk/sltw/h/a;->e:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->d:[F

    iget v1, p0, Lcom/myscript/atk/sltw/h/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/myscript/atk/sltw/h/a;->e:I

    aput p2, v0, v1

    return-void
.end method

.method private c(FF)V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->t:Ljava/util/List;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private d()F
    .locals 2

    iget v0, p0, Lcom/myscript/atk/sltw/h/a;->b:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    return v0
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/h/a;->s:Z

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/h/a;->invalidate()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/myscript/atk/sltw/h/a;->p:F

    iput v0, p0, Lcom/myscript/atk/sltw/h/a;->q:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/h/a;->r:Z

    invoke-direct {p0}, Lcom/myscript/atk/sltw/h/a;->e()V

    return-void
.end method

.method public final a(F)V
    .locals 1

    iput p1, p0, Lcom/myscript/atk/sltw/h/a;->b:F

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-direct {p0}, Lcom/myscript/atk/sltw/h/a;->e()V

    return-void
.end method

.method public final a(FF)V
    .locals 1

    iput p1, p0, Lcom/myscript/atk/sltw/h/a;->p:F

    iput p2, p0, Lcom/myscript/atk/sltw/h/a;->q:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/h/a;->r:Z

    invoke-direct {p0}, Lcom/myscript/atk/sltw/h/a;->e()V

    return-void
.end method

.method public final a(FFFIZ)V
    .locals 0

    iput-boolean p5, p0, Lcom/myscript/atk/sltw/h/a;->x:Z

    iput p1, p0, Lcom/myscript/atk/sltw/h/a;->u:F

    iput p2, p0, Lcom/myscript/atk/sltw/h/a;->v:F

    iput p4, p0, Lcom/myscript/atk/sltw/h/a;->y:I

    iput p3, p0, Lcom/myscript/atk/sltw/h/a;->w:F

    invoke-direct {p0}, Lcom/myscript/atk/sltw/h/a;->e()V

    return-void
.end method

.method public final a(I)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    move v0, v1

    :goto_0
    sget-object v2, Lcom/myscript/atk/sltw/h/a;->a:[I

    aget v2, v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/myscript/atk/sltw/h/a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0, v1, p1}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/h/a;->invalidate()V

    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/e/b;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/h/a;->k:Lcom/myscript/atk/sltw/e/b;

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->k:Lcom/myscript/atk/sltw/e/b;

    iget-object v1, p0, Lcom/myscript/atk/sltw/h/a;->m:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/sltw/h/a;->a(Lcom/myscript/atk/sltw/e/b;Ljava/util/ArrayList;F)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->l:Lcom/myscript/atk/sltw/e/b;

    iget-object v1, p0, Lcom/myscript/atk/sltw/h/a;->n:Ljava/util/ArrayList;

    iget v2, p0, Lcom/myscript/atk/sltw/h/a;->o:F

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/sltw/h/a;->a(Lcom/myscript/atk/sltw/e/b;Ljava/util/ArrayList;F)V

    invoke-direct {p0}, Lcom/myscript/atk/sltw/h/a;->e()V

    return-void
.end method

.method public final b(F)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/h/a;->o:F

    return-void
.end method

.method public final b(Lcom/myscript/atk/sltw/e/b;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/h/a;->l:Lcom/myscript/atk/sltw/e/b;

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->l:Lcom/myscript/atk/sltw/e/b;

    iget-object v1, p0, Lcom/myscript/atk/sltw/h/a;->n:Ljava/util/ArrayList;

    iget v2, p0, Lcom/myscript/atk/sltw/h/a;->o:F

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/sltw/h/a;->a(Lcom/myscript/atk/sltw/e/b;Ljava/util/ArrayList;F)V

    invoke-direct {p0}, Lcom/myscript/atk/sltw/h/a;->e()V

    return-void
.end method

.method public final c(F)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/myscript/atk/sltw/h/a;->r:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/myscript/atk/sltw/h/a;->k:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/b;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/myscript/atk/sltw/h/a;->q:F

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    iget v2, p0, Lcom/myscript/atk/sltw/h/a;->p:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/myscript/atk/sltw/h/a;->p:F

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    iget v2, p0, Lcom/myscript/atk/sltw/h/a;->q:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final d(F)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/myscript/atk/sltw/h/a;->r:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/myscript/atk/sltw/h/a;->k:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/b;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/myscript/atk/sltw/h/a;->p:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/myscript/atk/sltw/h/a;->p:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/h/a;->s:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/myscript/atk/sltw/h/a;->s:Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/myscript/atk/sltw/h/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/myscript/atk/sltw/h/a;->d:[F

    array-length v2, v2

    if-ge v2, v0, :cond_0

    add-int/lit16 v2, v0, 0x190

    rem-int/lit16 v0, v0, 0x190

    sub-int v0, v2, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/myscript/atk/sltw/h/a;->d:[F

    :cond_0
    iput v1, p0, Lcom/myscript/atk/sltw/h/a;->e:I

    iput v1, p0, Lcom/myscript/atk/sltw/h/a;->h:I

    invoke-direct {p0}, Lcom/myscript/atk/sltw/h/a;->d()F

    move-result v2

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/h/a;->x:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->k:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->c()F

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/myscript/atk/sltw/h/a;->c(FF)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->m:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/h/a;->a(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/h/a;->r:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/myscript/atk/sltw/h/a;->d()F

    move-result v3

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/h/a;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/myscript/atk/sltw/h/a;->b:F

    div-float/2addr v4, v8

    sub-float/2addr v0, v4

    sub-float v4, v0, v6

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/h/a;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->k:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/myscript/atk/sltw/h/a;->b:F

    neg-float v0, v0

    div-float/2addr v0, v8

    add-float/2addr v0, v6

    :goto_0
    iget v6, p0, Lcom/myscript/atk/sltw/h/a;->p:F

    add-float/2addr v6, v0

    invoke-direct {p0, v6, v3}, Lcom/myscript/atk/sltw/h/a;->c(FF)V

    iget v6, p0, Lcom/myscript/atk/sltw/h/a;->p:F

    add-float/2addr v6, v0

    invoke-direct {p0, v6, v4}, Lcom/myscript/atk/sltw/h/a;->c(FF)V

    iget v6, p0, Lcom/myscript/atk/sltw/h/a;->q:F

    sub-float/2addr v6, v0

    invoke-direct {p0, v6, v4}, Lcom/myscript/atk/sltw/h/a;->c(FF)V

    iget v4, p0, Lcom/myscript/atk/sltw/h/a;->q:F

    sub-float/2addr v4, v0

    invoke-direct {p0, v4, v3}, Lcom/myscript/atk/sltw/h/a;->c(FF)V

    iget v3, p0, Lcom/myscript/atk/sltw/h/a;->p:F

    add-float/2addr v3, v0

    invoke-direct {p0, v3, v7}, Lcom/myscript/atk/sltw/h/a;->b(FF)V

    iget v3, p0, Lcom/myscript/atk/sltw/h/a;->p:F

    add-float/2addr v3, v0

    invoke-direct {p0, v3, v5}, Lcom/myscript/atk/sltw/h/a;->b(FF)V

    iget v3, p0, Lcom/myscript/atk/sltw/h/a;->q:F

    sub-float/2addr v3, v0

    invoke-direct {p0, v3, v5}, Lcom/myscript/atk/sltw/h/a;->b(FF)V

    iget v3, p0, Lcom/myscript/atk/sltw/h/a;->q:F

    sub-float v0, v3, v0

    invoke-direct {p0, v0, v7}, Lcom/myscript/atk/sltw/h/a;->b(FF)V

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->n:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/myscript/atk/sltw/h/a;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->k:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->d()F

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/myscript/atk/sltw/h/a;->c(FF)V

    :cond_2
    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->t:Ljava/util/List;

    new-instance v2, Lcom/myscript/atk/sltw/h/b;

    invoke-direct {v2, p0}, Lcom/myscript/atk/sltw/h/b;-><init>(Lcom/myscript/atk/sltw/h/a;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/myscript/atk/sltw/h/a;->g:[F

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/myscript/atk/sltw/h/a;->g:[F

    iget v4, p0, Lcom/myscript/atk/sltw/h/a;->h:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/myscript/atk/sltw/h/a;->h:I

    iget v5, v0, Landroid/graphics/PointF;->x:F

    aput v5, v3, v4

    iget-object v3, p0, Lcom/myscript/atk/sltw/h/a;->g:[F

    iget v4, p0, Lcom/myscript/atk/sltw/h/a;->h:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/myscript/atk/sltw/h/a;->h:I

    iget v0, v0, Landroid/graphics/PointF;->y:F

    aput v0, v3, v4

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/myscript/atk/sltw/h/a;->d()F

    move-result v0

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/myscript/atk/sltw/h/a;->d()F

    move-result v3

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->k:Lcom/myscript/atk/sltw/e/b;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/b;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/h/a;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/myscript/atk/sltw/h/a;->u:F

    sub-float/2addr v0, v2

    move v2, v0

    move v0, v1

    :goto_2
    iget v4, p0, Lcom/myscript/atk/sltw/h/a;->y:I

    if-ge v0, v4, :cond_2

    invoke-direct {p0, v2, v3}, Lcom/myscript/atk/sltw/h/a;->c(FF)V

    iget v4, p0, Lcom/myscript/atk/sltw/h/a;->v:F

    sub-float/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/myscript/atk/sltw/h/a;->c(FF)V

    iget v4, p0, Lcom/myscript/atk/sltw/h/a;->w:F

    sub-float/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/myscript/atk/sltw/h/a;->u:F

    move v2, v0

    move v0, v1

    :goto_3
    iget v4, p0, Lcom/myscript/atk/sltw/h/a;->y:I

    if-ge v0, v4, :cond_2

    invoke-direct {p0, v2, v3}, Lcom/myscript/atk/sltw/h/a;->c(FF)V

    iget v4, p0, Lcom/myscript/atk/sltw/h/a;->v:F

    add-float/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/myscript/atk/sltw/h/a;->c(FF)V

    iget v4, p0, Lcom/myscript/atk/sltw/h/a;->w:F

    add-float/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->d:[F

    iget v2, p0, Lcom/myscript/atk/sltw/h/a;->e:I

    iget-object v3, p0, Lcom/myscript/atk/sltw/h/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/h/a;->g:[F

    iget v2, p0, Lcom/myscript/atk/sltw/h/a;->h:I

    iget-object v3, p0, Lcom/myscript/atk/sltw/h/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    return-void
.end method
