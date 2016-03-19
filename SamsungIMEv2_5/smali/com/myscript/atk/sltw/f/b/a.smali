.class public final Lcom/myscript/atk/sltw/f/b/a;
.super Ljava/lang/Object;
.source "VOModelFactory.java"


# instance fields
.field private a:Lcom/myscript/atk/sltw/e/a;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:F

.field private n:I

.field private o:F

.field private p:Landroid/graphics/Bitmap;

.field private q:Landroid/graphics/Bitmap;

.field private r:I

.field private s:Lcom/myscript/atk/inw/InkWidget;


# direct methods
.method public constructor <init>(Lcom/myscript/atk/sltw/e/a;Landroid/util/DisplayMetrics;I)V
    .locals 5

    const v4, -0x7f7f80

    const v3, -0xcc4a1b

    const/high16 v2, -0x1000000

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myscript/atk/sltw/f/b/a;->a:Lcom/myscript/atk/sltw/e/a;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0, p2}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/myscript/atk/sltw/f/b/a;->o:F

    iput p3, p0, Lcom/myscript/atk/sltw/f/b/a;->r:I

    iput v2, p0, Lcom/myscript/atk/sltw/f/b/a;->b:I

    iput v3, p0, Lcom/myscript/atk/sltw/f/b/a;->c:I

    iput v4, p0, Lcom/myscript/atk/sltw/f/b/a;->d:I

    iput v2, p0, Lcom/myscript/atk/sltw/f/b/a;->e:I

    iput v3, p0, Lcom/myscript/atk/sltw/f/b/a;->f:I

    iput v4, p0, Lcom/myscript/atk/sltw/f/b/a;->g:I

    invoke-static {v1, p2}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/myscript/atk/sltw/f/b/a;->k:I

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0, p2}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/myscript/atk/sltw/f/b/a;->j:I

    iget v0, p0, Lcom/myscript/atk/sltw/f/b/a;->j:I

    iput v0, p0, Lcom/myscript/atk/sltw/f/b/a;->l:I

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0, p2}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/myscript/atk/sltw/f/b/a;->i:I

    const/high16 v0, 0x43160000    # 150.0f

    invoke-static {v0, p2}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/myscript/atk/sltw/f/b/a;->h:I

    invoke-static {v1, p2}, Lcom/myscript/atk/sltw/b/a;->a(FLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/myscript/atk/sltw/f/b/a;->m:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/myscript/atk/sltw/f/b/a;->n:I

    return-void
.end method

.method public static a(Lcom/myscript/atk/inw/InkWidget;Lcom/myscript/atk/styluscore/VoTimeStamp;Lcom/myscript/atk/styluscore/VoTimeStamp;)Lcom/myscript/atk/sltw/f/c;
    .locals 12

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/myscript/atk/inw/InkWidget;->getStrokePoints()[Lcom/myscript/atk/inw/InkPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/myscript/atk/sltw/f/b/a;->a([Lcom/myscript/atk/inw/InkPoint;)[Lcom/myscript/atk/inw/InkPoint;

    move-result-object v2

    new-instance v1, Lcom/myscript/atk/styluscore/Path;

    invoke-direct {v1}, Lcom/myscript/atk/styluscore/Path;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    if-nez v0, :cond_0

    aget-object v3, v2, v0

    iget v3, v3, Lcom/myscript/atk/inw/InkPoint;->x:F

    aget-object v4, v2, v0

    iget v4, v4, Lcom/myscript/atk/inw/InkPoint;->y:F

    invoke-virtual {v1, v3, v4}, Lcom/myscript/atk/styluscore/Path;->startAt(FF)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-object v3, v2, v0

    iget v3, v3, Lcom/myscript/atk/inw/InkPoint;->x:F

    aget-object v4, v2, v0

    iget v4, v4, Lcom/myscript/atk/inw/InkPoint;->y:F

    invoke-virtual {v1, v3, v4}, Lcom/myscript/atk/styluscore/Path;->lineTo(FF)V

    goto :goto_1

    :cond_1
    invoke-static {v1, p1, p2}, Lcom/myscript/atk/styluscore/InkItem;->createStroke(Lcom/myscript/atk/styluscore/Path;Lcom/myscript/atk/styluscore/VoTimeStamp;Lcom/myscript/atk/styluscore/VoTimeStamp;)Lcom/myscript/atk/styluscore/InkItem;

    move-result-object v1

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/myscript/atk/inw/InkWidget;->getStrokeFrame()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Lcom/myscript/atk/inw/InkWidget;->getStrokePath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {p0}, Lcom/myscript/atk/inw/InkWidget;->getStrokeStartMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v9, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/myscript/atk/inw/InkWidget;->getStrokeStartMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    :goto_2
    invoke-virtual {p0}, Lcom/myscript/atk/inw/InkWidget;->getStrokeEndMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v10, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/myscript/atk/inw/InkWidget;->getStrokeEndMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    :goto_3
    invoke-virtual {p0}, Lcom/myscript/atk/inw/InkWidget;->getRenderer()Lcom/myscript/atk/inw/renderer/Renderer;

    move-result-object v8

    new-instance v0, Lcom/myscript/atk/sltw/f/c;

    invoke-virtual {p0}, Lcom/myscript/atk/inw/InkWidget;->isStrokePointSize()Z

    move-result v5

    invoke-virtual {p0}, Lcom/myscript/atk/inw/InkWidget;->getStrokeStartCap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p0}, Lcom/myscript/atk/inw/InkWidget;->getStrokeEndCap()Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v11, 0x1

    invoke-direct/range {v0 .. v11}, Lcom/myscript/atk/sltw/f/c;-><init>(Lcom/myscript/atk/styluscore/InkItem;[Lcom/myscript/atk/inw/InkPoint;Landroid/graphics/RectF;Landroid/graphics/Path;ZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/myscript/atk/inw/renderer/Renderer;Landroid/graphics/Matrix;Landroid/graphics/Matrix;Z)V

    return-object v0

    :cond_2
    move-object v10, v5

    goto :goto_3

    :cond_3
    move-object v9, v5

    goto :goto_2
.end method

.method private static a([Lcom/myscript/atk/inw/InkPoint;)[Lcom/myscript/atk/inw/InkPoint;
    .locals 4

    const/16 v1, 0x7d0

    array-length v0, p0

    if-le v0, v1, :cond_1

    new-array v1, v1, [Lcom/myscript/atk/inw/InkPoint;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    array-length v2, p0

    mul-int/2addr v2, v0

    array-length v3, v1

    div-int/2addr v2, v3

    aget-object v2, p0, v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object p0, v1

    :cond_1
    return-object p0
.end method

.method public static b(Lcom/myscript/atk/styluscore/InkItem;)Lcom/myscript/atk/sltw/f/a;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/InkItem;->boundingRect()Lcom/myscript/atk/styluscore/Rect;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/myscript/atk/sltw/f/a;

    invoke-direct {v0, p0}, Lcom/myscript/atk/sltw/f/a;-><init>(Lcom/myscript/atk/styluscore/InkItem;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/f/b/a;->m:F

    return v0
.end method

.method public final a(Lcom/myscript/atk/styluscore/InkItem;)Lcom/myscript/atk/sltw/f/c;
    .locals 12

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/b/a;->s:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v1}, Lcom/myscript/atk/inw/InkWidget;->getStrokePoints()[Lcom/myscript/atk/inw/InkPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/myscript/atk/sltw/f/b/a;->a([Lcom/myscript/atk/inw/InkPoint;)[Lcom/myscript/atk/inw/InkPoint;

    move-result-object v2

    new-instance v3, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/b/a;->s:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v1}, Lcom/myscript/atk/inw/InkWidget;->getStrokeFrame()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/b/a;->s:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v1}, Lcom/myscript/atk/inw/InkWidget;->getStrokePath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/b/a;->s:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v1}, Lcom/myscript/atk/inw/InkWidget;->getStrokeStartMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v9, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/b/a;->s:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v1}, Lcom/myscript/atk/inw/InkWidget;->getStrokeStartMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    :goto_0
    iget-object v1, p0, Lcom/myscript/atk/sltw/f/b/a;->s:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v1}, Lcom/myscript/atk/inw/InkWidget;->getStrokeEndMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v10, Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b/a;->s:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v0}, Lcom/myscript/atk/inw/InkWidget;->getStrokeEndMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    :goto_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b/a;->s:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v0}, Lcom/myscript/atk/inw/InkWidget;->getRenderer()Lcom/myscript/atk/inw/renderer/Renderer;

    move-result-object v8

    new-instance v0, Lcom/myscript/atk/sltw/f/c;

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/b/a;->s:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v1}, Lcom/myscript/atk/inw/InkWidget;->isStrokePointSize()Z

    move-result v5

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/b/a;->s:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v1}, Lcom/myscript/atk/inw/InkWidget;->getStrokeStartCap()Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/b/a;->s:Lcom/myscript/atk/inw/InkWidget;

    invoke-virtual {v1}, Lcom/myscript/atk/inw/InkWidget;->getStrokeEndCap()Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v11, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/myscript/atk/sltw/f/c;-><init>(Lcom/myscript/atk/styluscore/InkItem;[Lcom/myscript/atk/inw/InkPoint;Landroid/graphics/RectF;Landroid/graphics/Path;ZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/myscript/atk/inw/renderer/Renderer;Landroid/graphics/Matrix;Landroid/graphics/Matrix;Z)V

    return-object v0

    :cond_0
    move-object v10, v0

    goto :goto_1

    :cond_1
    move-object v9, v0

    goto :goto_0
.end method

.method public final a(Lcom/myscript/atk/sltw/f/d;)Lcom/myscript/atk/sltw/f/d;
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b/a;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    :goto_0
    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->j()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;IF)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->s()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0
.end method

.method public final a(Lcom/myscript/atk/sltw/f/d;FFLjava/util/List;)Lcom/myscript/atk/sltw/f/d;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/sltw/f/d;",
            "FF",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;)",
            "Lcom/myscript/atk/sltw/f/d;"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->e()Lcom/myscript/atk/styluscore/Segment;

    move-result-object v0

    new-instance v1, Lcom/myscript/atk/styluscore/Transform;

    invoke-direct {v1}, Lcom/myscript/atk/styluscore/Transform;-><init>()V

    invoke-virtual {v1, p2, p3}, Lcom/myscript/atk/styluscore/Transform;->translate(FF)Lcom/myscript/atk/styluscore/Transform;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/myscript/atk/styluscore/Segment;->mapped(Lcom/myscript/atk/styluscore/Transform;Ljava/util/List;)Lcom/myscript/atk/styluscore/Segment;

    move-result-object v1

    cmpl-float v0, p3, v8

    if-eqz v0, :cond_2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v4, p2, v8}, Landroid/graphics/RectF;->offset(FF)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v5, v8, p3}, Landroid/graphics/RectF;->offset(FF)V

    new-instance v6, Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->a()Z

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/myscript/atk/sltw/f/a;-><init>(Landroid/graphics/RectF;Z)V

    new-instance v5, Lcom/myscript/atk/sltw/f/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->a()Z

    move-result v7

    invoke-direct {v5, v4, v7}, Lcom/myscript/atk/sltw/f/a;-><init>(Landroid/graphics/RectF;Z)V

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->b()Z

    move-result v4

    invoke-virtual {v6, v4}, Lcom/myscript/atk/sltw/f/a;->a(Z)V

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->b()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/myscript/atk/sltw/f/a;->a(Z)V

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lcom/myscript/atk/sltw/d/a/d;->a(Lcom/myscript/atk/styluscore/Segment;Ljava/util/Map;)Lcom/myscript/atk/styluscore/Segment;

    move-result-object v0

    :goto_1
    invoke-static {v0, p4}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Segment;Ljava/util/List;)[Lcom/myscript/atk/sltw/f/a;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/styluscore/Segment;)[Lcom/myscript/atk/sltw/f/c;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/styluscore/Segment;[Lcom/myscript/atk/sltw/f/c;[Lcom/myscript/atk/sltw/f/a;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->u()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/d;->a(B)V

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/d;->g(Z)V

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->x()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/d;->h(Z)V

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->y()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/d;->i(Z)V

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Lcom/myscript/atk/sltw/f/d;IF)Lcom/myscript/atk/sltw/f/d;
    .locals 8

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b/a;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->e()Lcom/myscript/atk/styluscore/Segment;

    move-result-object v1

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->u()B

    move-result v2

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->a()[Lcom/myscript/atk/sltw/f/a;

    move-result-object v5

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/myscript/atk/sltw/e/a;->a(Lcom/myscript/atk/styluscore/Segment;BIF[Lcom/myscript/atk/sltw/f/a;)[Landroid/graphics/RectF;

    move-result-object v1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b/a;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->g()F

    move-result v2

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b/a;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->h()F

    move-result v3

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->e()Lcom/myscript/atk/styluscore/Segment;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v6, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v7, v1, v0

    invoke-static {v7}, Lcom/myscript/atk/sltw/d/a/c;->a(Landroid/graphics/RectF;)Lcom/myscript/atk/styluscore/Rect;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-direct {v0, v4}, Lcom/myscript/atk/styluscore/Segment;-><init>(Lcom/myscript/atk/styluscore/Segment;)V

    invoke-virtual {v0, p2}, Lcom/myscript/atk/styluscore/Segment;->select(I)Z

    invoke-virtual {v0, v5, v2, v3}, Lcom/myscript/atk/styluscore/Segment;->fontified(Ljava/util/List;FF)Lcom/myscript/atk/styluscore/Segment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->a()[Lcom/myscript/atk/sltw/f/a;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/styluscore/Segment;[Lcom/myscript/atk/sltw/f/c;[Lcom/myscript/atk/sltw/f/a;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->u()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/d;->a(B)V

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/d;->g(Z)V

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->x()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/d;->h(Z)V

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->y()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/d;->i(Z)V

    return-object v0
.end method

.method public final a(Lcom/myscript/atk/sltw/f/d;IILjava/lang/String;F)Lcom/myscript/atk/sltw/f/d;
    .locals 9

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b/a;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->e()Lcom/myscript/atk/styluscore/Segment;

    move-result-object v1

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->u()B

    move-result v2

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->a()[Lcom/myscript/atk/sltw/f/a;

    move-result-object v6

    move v3, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/myscript/atk/sltw/e/a;->a(Lcom/myscript/atk/styluscore/Segment;BILjava/lang/String;F[Lcom/myscript/atk/sltw/f/a;)[Landroid/graphics/RectF;

    move-result-object v1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b/a;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->g()F

    move-result v2

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b/a;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->h()F

    move-result v3

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->e()Lcom/myscript/atk/styluscore/Segment;

    move-result-object v4

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v7, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v7, :cond_0

    aget-object v8, v1, v0

    invoke-static {v8}, Lcom/myscript/atk/sltw/d/a/c;->a(Landroid/graphics/RectF;)Lcom/myscript/atk/styluscore/Rect;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lcom/myscript/atk/styluscore/Segment;->segmentsOfType(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2, p3, v5}, Lcom/myscript/atk/sltw/d/a/e;->a(Ljava/util/List;III)Ljava/util/List;

    move-result-object v1

    new-instance v4, Lcom/myscript/atk/styluscore/Candidate;

    invoke-direct {v4}, Lcom/myscript/atk/styluscore/Candidate;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/myscript/atk/styluscore/Candidate;->setLabel(Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v4, v0}, Lcom/myscript/atk/styluscore/Candidate;->setResemblanceScore(F)V

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v4, v0}, Lcom/myscript/atk/styluscore/Candidate;->append(Lcom/myscript/atk/styluscore/Segment;)V

    goto :goto_2

    :cond_2
    new-instance v5, Lcom/myscript/atk/styluscore/Segment;

    invoke-direct {v5}, Lcom/myscript/atk/styluscore/Segment;-><init>()V

    invoke-virtual {v5, v4}, Lcom/myscript/atk/styluscore/Segment;->append(Lcom/myscript/atk/styluscore/Candidate;)V

    invoke-virtual {v5}, Lcom/myscript/atk/styluscore/Segment;->selectLastCandidate()Z

    invoke-virtual {v4}, Lcom/myscript/atk/styluscore/Candidate;->segments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v7, :cond_3

    invoke-virtual {v4}, Lcom/myscript/atk/styluscore/Candidate;->segments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->inkRange()Lcom/myscript/atk/styluscore/InkRange;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/myscript/atk/styluscore/Segment;->append(Lcom/myscript/atk/styluscore/InkRange;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v5, v6, v2, v3}, Lcom/myscript/atk/styluscore/Segment;->fontified(Ljava/util/List;FF)Lcom/myscript/atk/styluscore/Segment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->a()[Lcom/myscript/atk/sltw/f/a;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/styluscore/Segment;[Lcom/myscript/atk/sltw/f/c;[Lcom/myscript/atk/sltw/f/a;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->u()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/d;->a(B)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/d;->g(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/d;->h(Z)V

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->y()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/d;->i(Z)V

    return-object v0
.end method

.method public final a(Lcom/myscript/atk/sltw/f/d;IILjava/util/List;)Lcom/myscript/atk/sltw/f/d;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/sltw/f/d;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;)",
            "Lcom/myscript/atk/sltw/f/d;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/myscript/atk/sltw/f/d;->e()Lcom/myscript/atk/styluscore/Segment;

    move-result-object v8

    new-instance v9, Lcom/myscript/atk/styluscore/InkRange;

    invoke-direct {v9}, Lcom/myscript/atk/styluscore/InkRange;-><init>()V

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/Candidate;->segments()Ljava/util/List;

    move-result-object v11

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v5, v2

    move-object v2, v4

    move v4, v1

    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_6

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    move/from16 v0, p3

    if-ge v5, v0, :cond_2

    add-int v6, v5, v12

    move/from16 v0, p3

    if-ge v0, v6, :cond_2

    const/4 v6, 0x1

    move v7, v6

    :goto_1
    move/from16 v0, p2

    if-ge v5, v0, :cond_3

    add-int v6, v5, v12

    move/from16 v0, p2

    if-ge v0, v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    if-nez v7, :cond_0

    if-eqz v6, :cond_4

    :cond_0
    new-instance v13, Lcom/myscript/atk/styluscore/Candidate;

    invoke-direct {v13}, Lcom/myscript/atk/styluscore/Candidate;-><init>()V

    move/from16 v0, p2

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int v15, v5, v12

    move/from16 v0, p3

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/myscript/atk/styluscore/Candidate;->setLabel(Ljava/lang/String;)V

    new-instance v14, Lcom/myscript/atk/styluscore/Segment;

    invoke-direct {v14}, Lcom/myscript/atk/styluscore/Segment;-><init>()V

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/Segment;->inkRange()Lcom/myscript/atk/styluscore/InkRange;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/myscript/atk/styluscore/Segment;->append(Lcom/myscript/atk/styluscore/InkRange;)V

    invoke-virtual {v14, v13}, Lcom/myscript/atk/styluscore/Segment;->append(Lcom/myscript/atk/styluscore/Candidate;)V

    invoke-virtual {v14}, Lcom/myscript/atk/styluscore/Segment;->selectLastCandidate()Z

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/Segment;->baseline()F

    move-result v13

    invoke-virtual {v14, v13}, Lcom/myscript/atk/styluscore/Segment;->setBaseline(F)V

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/Segment;->baselineSkew()F

    move-result v13

    invoke-virtual {v14, v13}, Lcom/myscript/atk/styluscore/Segment;->setBaselineSkew(F)V

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/Segment;->midlineShift()F

    move-result v1

    invoke-virtual {v14, v1}, Lcom/myscript/atk/styluscore/Segment;->setMidlineShift(F)V

    if-eqz v7, :cond_1

    invoke-virtual {v14}, Lcom/myscript/atk/styluscore/Segment;->promoted()Lcom/myscript/atk/styluscore/Segment;

    move-result-object v3

    :cond_1
    if-eqz v6, :cond_a

    invoke-virtual {v14}, Lcom/myscript/atk/styluscore/Segment;->promoted()Lcom/myscript/atk/styluscore/Segment;

    move-result-object v1

    :goto_3
    move-object v2, v1

    move-object v1, v3

    :goto_4
    add-int/2addr v5, v12

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v1

    goto/16 :goto_0

    :cond_2
    const/4 v6, 0x0

    move v7, v6

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    move/from16 v0, p2

    if-gt v0, v5, :cond_5

    add-int v6, v5, v12

    move/from16 v0, p3

    if-gt v6, v0, :cond_5

    invoke-virtual {v1}, Lcom/myscript/atk/styluscore/Segment;->inkRange()Lcom/myscript/atk/styluscore/InkRange;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/myscript/atk/styluscore/InkRange;->append(Lcom/myscript/atk/styluscore/InkRange;)Lcom/myscript/atk/styluscore/InkRange;

    :cond_5
    move-object v1, v3

    goto :goto_4

    :cond_6
    new-instance v1, Lcom/myscript/atk/styluscore/Segment;

    invoke-direct {v1}, Lcom/myscript/atk/styluscore/Segment;-><init>()V

    new-instance v4, Lcom/myscript/atk/styluscore/Segment;

    invoke-direct {v4}, Lcom/myscript/atk/styluscore/Segment;-><init>()V

    invoke-virtual {v8, v9, v1, v4}, Lcom/myscript/atk/styluscore/Segment;->split(Lcom/myscript/atk/styluscore/InkRange;Lcom/myscript/atk/styluscore/Segment;Lcom/myscript/atk/styluscore/Segment;)V

    if-eqz v2, :cond_7

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lcom/myscript/atk/styluscore/Segment;->grafted(Lcom/myscript/atk/styluscore/Segment;I)Lcom/myscript/atk/styluscore/Segment;

    move-result-object v1

    :cond_7
    if-eqz v3, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/myscript/atk/styluscore/Segment;->grafted(Lcom/myscript/atk/styluscore/Segment;I)Lcom/myscript/atk/styluscore/Segment;

    move-result-object v1

    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/myscript/atk/styluscore/Segment;->simplified(Ljava/util/List;Ljava/util/List;)Lcom/myscript/atk/styluscore/Segment;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/styluscore/Segment;)[Lcom/myscript/atk/sltw/f/c;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Segment;Ljava/util/List;)[Lcom/myscript/atk/sltw/f/a;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/styluscore/Segment;[Lcom/myscript/atk/sltw/f/c;[Lcom/myscript/atk/sltw/f/a;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/myscript/atk/sltw/f/d;->u()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/myscript/atk/sltw/f/d;->a(B)V

    invoke-virtual/range {p1 .. p1}, Lcom/myscript/atk/sltw/f/d;->w()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/myscript/atk/sltw/f/d;->g(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/myscript/atk/sltw/f/d;->x()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/myscript/atk/sltw/f/d;->h(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/myscript/atk/sltw/f/d;->y()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/myscript/atk/sltw/f/d;->i(Z)V

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/d;->D()Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_5
    return-object v1

    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/sltw/f/d;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v1

    goto :goto_5

    :cond_a
    move-object v1, v2

    goto/16 :goto_3
.end method

.method public final a(Lcom/myscript/atk/sltw/f/d;Ljava/util/Map;)Lcom/myscript/atk/sltw/f/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/sltw/f/d;",
            "Ljava/util/Map",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;)",
            "Lcom/myscript/atk/sltw/f/d;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->e()Lcom/myscript/atk/styluscore/Segment;

    move-result-object v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v0}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Segment;Ljava/util/List;)[Lcom/myscript/atk/sltw/f/a;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v4, :cond_1

    array-length v0, v4

    new-array v2, v0, [Lcom/myscript/atk/sltw/f/a;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v4

    if-ge v1, v0, :cond_0

    aget-object v0, v4, v1

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/a;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    invoke-virtual {p0, v3}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/styluscore/Segment;)[Lcom/myscript/atk/sltw/f/c;

    move-result-object v1

    invoke-static {v3, p2}, Lcom/myscript/atk/sltw/d/a/d;->a(Lcom/myscript/atk/styluscore/Segment;Ljava/util/Map;)Lcom/myscript/atk/styluscore/Segment;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/styluscore/Segment;[Lcom/myscript/atk/sltw/f/c;[Lcom/myscript/atk/sltw/f/a;)Lcom/myscript/atk/sltw/f/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->u()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/d;->a(B)V

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/d;->g(Z)V

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->x()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/d;->h(Z)V

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/d;->y()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/sltw/f/d;->i(Z)V

    return-object v0
.end method

.method public final a(Lcom/myscript/atk/styluscore/Segment;[Lcom/myscript/atk/sltw/f/c;[Lcom/myscript/atk/sltw/f/a;)Lcom/myscript/atk/sltw/f/d;
    .locals 28

    if-nez p2, :cond_10

    const/4 v2, 0x0

    new-array v0, v2, [Lcom/myscript/atk/sltw/f/c;

    move-object/from16 v16, v0

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/myscript/atk/sltw/d/a/d;->a(Lcom/myscript/atk/styluscore/Segment;)I

    move-result v27

    const/4 v2, 0x2

    move/from16 v0, v27

    if-ne v0, v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-le v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x3

    move/from16 v0, v27

    if-ne v0, v2, :cond_f

    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/d/a/d;->a(Lcom/myscript/atk/styluscore/Segment;I)Lcom/myscript/atk/styluscore/Segment;

    move-result-object v9

    :goto_1
    invoke-static {v9}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Segment;)[Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lcom/myscript/atk/styluscore/Segment;->selectedIndex()I

    move-result v14

    invoke-virtual {v9}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v2

    invoke-static {v2}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Candidate;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array v4, v2, [Landroid/graphics/RectF;

    const/4 v2, 0x0

    move v5, v2

    :goto_2
    array-length v2, v4

    if-ge v5, v2, :cond_4

    const/4 v6, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v2}, Lcom/myscript/atk/styluscore/Segment;->items()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/myscript/atk/styluscore/InkItem;

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Lcom/myscript/atk/styluscore/InkItem;->is(I)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v2}, Lcom/myscript/atk/styluscore/InkItem;->boundingRect()Lcom/myscript/atk/styluscore/Rect;

    move-result-object v2

    invoke-static {v2}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Rect;)Landroid/graphics/RectF;

    move-result-object v2

    :goto_4
    move-object v6, v2

    goto :goto_3

    :cond_2
    if-nez v6, :cond_3

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v4, v5

    :goto_5
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    :cond_3
    aput-object v6, v4, v5

    goto :goto_5

    :cond_4
    array-length v2, v15

    if-ge v14, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/sltw/f/b/a;->a:Lcom/myscript/atk/sltw/e/a;

    aget-object v5, v15, v14

    invoke-virtual {v2, v5, v3}, Lcom/myscript/atk/sltw/e/a;->a(Ljava/lang/String;Ljava/util/List;)[C

    move-result-object v5

    array-length v2, v5

    new-array v6, v2, [F

    array-length v2, v5

    new-array v7, v2, [F

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/sltw/f/b/a;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual/range {v2 .. v7}, Lcom/myscript/atk/sltw/e/a;->a(Ljava/util/List;[Landroid/graphics/RectF;[C[F[F)V

    invoke-virtual {v9}, Lcom/myscript/atk/styluscore/Segment;->inkRange()Lcom/myscript/atk/styluscore/InkRange;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myscript/atk/styluscore/InkRange;->boundingRect()Lcom/myscript/atk/styluscore/Rect;

    move-result-object v2

    invoke-static {v2}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Rect;)Landroid/graphics/RectF;

    move-result-object v23

    const/4 v2, 0x3

    move/from16 v0, v27

    if-ne v0, v2, :cond_b

    array-length v2, v5

    add-int/lit8 v3, v2, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, v23

    iget v8, v0, Landroid/graphics/RectF;->left:F

    const/4 v10, 0x0

    aget v10, v6, v10

    cmpl-float v8, v8, v10

    if-lez v8, :cond_9

    const/4 v8, 0x0

    aget v8, v6, v8

    move-object/from16 v0, v23

    iput v8, v0, Landroid/graphics/RectF;->left:F

    :cond_5
    :goto_7
    move-object/from16 v0, v23

    iget v8, v0, Landroid/graphics/RectF;->right:F

    aget v10, v7, v3

    cmpg-float v8, v8, v10

    if-gez v8, :cond_a

    aget v2, v7, v3

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/RectF;->right:F

    :cond_6
    :goto_8
    invoke-virtual {v9}, Lcom/myscript/atk/styluscore/Segment;->baseline()F

    invoke-virtual {v9}, Lcom/myscript/atk/styluscore/Segment;->midlineShift()F

    move-result v22

    invoke-virtual {v9}, Lcom/myscript/atk/styluscore/Segment;->timeStamp()Lcom/myscript/atk/styluscore/VoTimeStamp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myscript/atk/styluscore/VoTimeStamp;->milliseconds()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/sltw/f/b/a;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->g()F

    move-result v21

    new-instance v10, Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/myscript/atk/sltw/f/b/a;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/e/a;->d()Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    new-instance v8, Lcom/myscript/atk/sltw/f/d;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/myscript/atk/sltw/f/b/a;->e:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/myscript/atk/sltw/f/b/a;->f:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/myscript/atk/sltw/f/b/a;->g:I

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v5

    move-object/from16 v26, p3

    invoke-direct/range {v8 .. v26}, Lcom/myscript/atk/sltw/f/d;-><init>(Lcom/myscript/atk/styluscore/Segment;Landroid/graphics/Paint;IIII[Ljava/lang/String;[Lcom/myscript/atk/sltw/f/c;[Landroid/graphics/RectF;[F[F[CFFLandroid/graphics/RectF;J[Lcom/myscript/atk/sltw/f/a;)V

    const/4 v2, 0x2

    move/from16 v0, v27

    if-ne v0, v2, :cond_7

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/myscript/atk/sltw/f/d;->h(Z)V

    :cond_7
    return-object v8

    :cond_8
    const/4 v2, 0x0

    new-array v5, v2, [C

    const/4 v2, 0x0

    new-array v6, v2, [F

    const/4 v2, 0x0

    new-array v7, v2, [F

    goto/16 :goto_6

    :cond_9
    move-object/from16 v0, v23

    iget v8, v0, Landroid/graphics/RectF;->left:F

    const/4 v10, 0x0

    aget v10, v6, v10

    cmpg-float v8, v8, v10

    if-gez v8, :cond_5

    const/4 v2, 0x0

    aget v2, v6, v2

    move-object/from16 v0, v23

    iget v8, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v8

    goto :goto_7

    :cond_a
    aget v3, v7, v3

    add-float/2addr v2, v3

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/RectF;->right:F

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    :goto_9
    array-length v3, v5

    if-ge v2, v3, :cond_6

    aget-char v3, v5, v2

    invoke-static {v3}, Lcom/myscript/atk/sltw/e/a;->a(C)Z

    move-result v3

    if-nez v3, :cond_d

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/RectF;->left:F

    aget v8, v6, v2

    cmpl-float v3, v3, v8

    if-lez v3, :cond_c

    aget v3, v6, v2

    move-object/from16 v0, v23

    iput v3, v0, Landroid/graphics/RectF;->left:F

    :cond_c
    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/RectF;->right:F

    aget v8, v7, v2

    cmpg-float v3, v3, v8

    if-gez v3, :cond_d

    aget v3, v7, v2

    move-object/from16 v0, v23

    iput v3, v0, Landroid/graphics/RectF;->right:F

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_e
    move-object v2, v6

    goto/16 :goto_4

    :cond_f
    move-object/from16 v9, p1

    goto/16 :goto_1

    :cond_10
    move-object/from16 v16, p2

    goto/16 :goto_0
.end method

.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/f/b/a;->o:F

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/f/b/a;->h:I

    return-void
.end method

.method public final a(II)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/f/b/a;->b:I

    iput p2, p0, Lcom/myscript/atk/sltw/f/b/a;->c:I

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/f/b/a;->p:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/myscript/atk/sltw/f/b/a;->q:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final a(Lcom/myscript/atk/inw/InkWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/f/b/a;->s:Lcom/myscript/atk/inw/InkWidget;

    return-void
.end method

.method public final a(Lcom/myscript/atk/styluscore/Segment;)[Lcom/myscript/atk/sltw/f/c;
    .locals 4

    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/Segment;->items()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/myscript/atk/styluscore/InkItem;->is(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Lcom/myscript/atk/sltw/f/c;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/f/b/a;->a(Lcom/myscript/atk/styluscore/InkItem;)Lcom/myscript/atk/sltw/f/c;

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/f/b/a;->j:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/f/b/a;->i:I

    return-void
.end method

.method public final b(II)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/f/b/a;->e:I

    iput p2, p0, Lcom/myscript/atk/sltw/f/b/a;->f:I

    return-void
.end method

.method public final b(Lcom/myscript/atk/inw/InkWidget;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/myscript/atk/sltw/f/b/a;->n:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/myscript/atk/inw/stroker/PressureStroker;->createSimulatedPressureStroker()Lcom/myscript/atk/inw/stroker/PressureStroker;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/myscript/atk/inw/InkWidget;->setStroker(Lcom/myscript/atk/inw/stroker/Stroker;)V

    iget v0, p0, Lcom/myscript/atk/sltw/f/b/a;->o:F

    invoke-virtual {p1, v0}, Lcom/myscript/atk/inw/InkWidget;->setStrokeWidth(F)V

    iget v0, p0, Lcom/myscript/atk/sltw/f/b/a;->c:I

    invoke-virtual {p1, v0}, Lcom/myscript/atk/inw/InkWidget;->setStrokeColor(I)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b/a;->p:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/b/a;->q:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Lcom/myscript/atk/inw/InkWidget;->setStrokeCaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/myscript/atk/sltw/f/b/a;->n:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    new-instance v0, Lcom/myscript/atk/inw/stroker/MarkerStroker;

    invoke-direct {v0}, Lcom/myscript/atk/inw/stroker/MarkerStroker;-><init>()V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/myscript/atk/sltw/f/b/a;->n:I

    if-nez v1, :cond_0

    new-instance v0, Lcom/myscript/atk/inw/stroker/SimpleStroker;

    invoke-direct {v0}, Lcom/myscript/atk/inw/stroker/SimpleStroker;-><init>()V

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/f/b/a;->i:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/f/b/a;->j:I

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/f/b/a;->h:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/f/b/a;->k:I

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/f/b/a;->k:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/f/b/a;->l:I

    return-void
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/f/b/a;->l:I

    return v0
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/myscript/atk/sltw/f/b/a;->n:I

    return-void
.end method

.method public final g(I)Lcom/myscript/atk/sltw/f/a;
    .locals 5

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/b/a;->a:Lcom/myscript/atk/sltw/e/a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/myscript/atk/sltw/f/b/a;->r:I

    iget v1, p0, Lcom/myscript/atk/sltw/f/b/a;->l:I

    iget v2, p0, Lcom/myscript/atk/sltw/f/b/a;->i:I

    iget v3, p0, Lcom/myscript/atk/sltw/f/b/a;->j:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/myscript/atk/sltw/f/b/a;->i:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    :goto_0
    iget v2, p0, Lcom/myscript/atk/sltw/f/b/a;->k:I

    int-to-float v2, v2

    iget v3, p0, Lcom/myscript/atk/sltw/f/b/a;->h:I

    iget v4, p0, Lcom/myscript/atk/sltw/f/b/a;->k:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v2, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v0, Lcom/myscript/atk/sltw/f/a;

    const/4 v1, 0x1

    invoke-direct {v0, v4, v1}, Lcom/myscript/atk/sltw/f/a;-><init>(Landroid/graphics/RectF;Z)V

    return-object v0

    :cond_0
    iget v0, p0, Lcom/myscript/atk/sltw/f/b/a;->l:I

    iget v1, p0, Lcom/myscript/atk/sltw/f/b/a;->i:I

    iget v2, p0, Lcom/myscript/atk/sltw/f/b/a;->j:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lcom/myscript/atk/sltw/f/b/a;->i:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public final h(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/a;",
            ">;"
        }
    .end annotation

    const/16 v3, 0x32

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/f/b/a;->g(I)Lcom/myscript/atk/sltw/f/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
