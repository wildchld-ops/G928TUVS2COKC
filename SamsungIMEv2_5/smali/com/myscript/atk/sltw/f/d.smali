.class public final Lcom/myscript/atk/sltw/f/d;
.super Ljava/lang/Object;
.source "VOWord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/sltw/f/d$a;,
        Lcom/myscript/atk/sltw/f/d$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Float;


# instance fields
.field private final b:Lcom/myscript/atk/styluscore/Segment;

.field private final c:Landroid/graphics/Paint;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:[Ljava/lang/String;

.field private final i:[Lcom/myscript/atk/sltw/f/c;

.field private final j:[Landroid/graphics/RectF;

.field private final k:[F

.field private final l:[F

.field private final m:[C

.field private final n:F

.field private final o:F

.field private final p:J

.field private final q:[Lcom/myscript/atk/sltw/f/a;

.field private r:Landroid/graphics/RectF;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private t:B

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Lcom/myscript/atk/sltw/f/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/myscript/atk/sltw/f/d;->a:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/Segment;Landroid/graphics/Paint;IIII[Ljava/lang/String;[Lcom/myscript/atk/sltw/f/c;[Landroid/graphics/RectF;[F[F[CFFLandroid/graphics/RectF;J[Lcom/myscript/atk/sltw/f/a;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myscript/atk/sltw/f/d;->b:Lcom/myscript/atk/styluscore/Segment;

    iput-object p2, p0, Lcom/myscript/atk/sltw/f/d;->c:Landroid/graphics/Paint;

    iput p3, p0, Lcom/myscript/atk/sltw/f/d;->d:I

    iput p4, p0, Lcom/myscript/atk/sltw/f/d;->e:I

    iput p5, p0, Lcom/myscript/atk/sltw/f/d;->f:I

    iput p6, p0, Lcom/myscript/atk/sltw/f/d;->g:I

    iput-object p7, p0, Lcom/myscript/atk/sltw/f/d;->h:[Ljava/lang/String;

    iput-object p8, p0, Lcom/myscript/atk/sltw/f/d;->i:[Lcom/myscript/atk/sltw/f/c;

    iput-object p9, p0, Lcom/myscript/atk/sltw/f/d;->j:[Landroid/graphics/RectF;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/myscript/atk/sltw/f/d;->k:[F

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/myscript/atk/sltw/f/d;->l:[F

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/myscript/atk/sltw/f/d;->m:[C

    move/from16 v0, p13

    iput v0, p0, Lcom/myscript/atk/sltw/f/d;->n:F

    move/from16 v0, p14

    iput v0, p0, Lcom/myscript/atk/sltw/f/d;->o:F

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/myscript/atk/sltw/f/d;->r:Landroid/graphics/RectF;

    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/myscript/atk/sltw/f/d;->p:J

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    iget-object v2, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    array-length v2, v2

    if-lez v2, :cond_1

    iget-object v3, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    if-nez v5, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Non empty guide boxes list contains null guide box"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/myscript/atk/sltw/f/d;->E()V

    return-void
.end method

.method private E()V
    .locals 13

    const/4 v12, 0x2

    const/4 v9, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/f/d;->s:Ljava/util/List;

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->b:Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v0

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/a/e;->a(Lcom/myscript/atk/styluscore/Candidate;)Ljava/util/List;

    move-result-object v10

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->m:[C

    array-length v0, v0

    if-ge v3, v0, :cond_4

    move v4, v2

    move v5, v2

    move v6, v2

    :goto_1
    add-int v0, v3, v6

    iget-object v11, p0, Lcom/myscript/atk/sltw/f/d;->m:[C

    array-length v11, v11

    if-ge v0, v11, :cond_2

    add-int v0, v1, v5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ge v0, v11, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->m:[C

    add-int v11, v3, v6

    aget-char v0, v0, v11

    if-lez v6, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/myscript/atk/sltw/g/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->j:[Landroid/graphics/RectF;

    add-int v11, v1, v5

    aget-object v11, v0, v11

    add-int v0, v1, v5

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v11}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    move v4, v7

    :cond_1
    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v6, v0

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->s:Ljava/util/List;

    iget-object v4, p0, Lcom/myscript/atk/sltw/f/d;->k:[F

    aget v4, v4, v3

    invoke-direct {p0, v4, v3, v6}, Lcom/myscript/atk/sltw/f/d;->a(FII)Lcom/myscript/atk/sltw/f/d$a;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/2addr v3, v6

    add-int v0, v1, v5

    move v1, v0

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v8, :cond_8

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->m:[C

    array-length v0, v0

    if-ne v0, v8, :cond_5

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->m:[C

    aget-char v0, v0, v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/f/d;->m:[C

    aget-char v3, v3, v7

    iget-object v4, p0, Lcom/myscript/atk/sltw/f/d;->m:[C

    aget-char v4, v4, v12

    invoke-static {v0, v3, v4}, Lcom/myscript/atk/sltw/g/a;->a(CCC)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->s:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/d$a;

    iget v0, v0, Lcom/myscript/atk/sltw/f/d$a;->a:F

    invoke-direct {p0, v0, v2, v8}, Lcom/myscript/atk/sltw/f/d;->a(FII)Lcom/myscript/atk/sltw/f/d$a;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v8

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v7, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-le v0, v3, :cond_6

    if-nez v2, :cond_6

    invoke-direct {p0, v1}, Lcom/myscript/atk/sltw/f/d;->a(Ljava/util/List;)I

    move-result v2

    :cond_6
    if-lez v2, :cond_7

    iput-object v1, p0, Lcom/myscript/atk/sltw/f/d;->s:Ljava/util/List;

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v9, :cond_9

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->m:[C

    array-length v0, v0

    if-ne v0, v9, :cond_5

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->m:[C

    aget-char v0, v0, v2

    iget-object v3, p0, Lcom/myscript/atk/sltw/f/d;->m:[C

    aget-char v3, v3, v7

    iget-object v4, p0, Lcom/myscript/atk/sltw/f/d;->m:[C

    aget-char v4, v4, v12

    iget-object v5, p0, Lcom/myscript/atk/sltw/f/d;->m:[C

    aget-char v5, v5, v8

    invoke-static {v0, v3, v4, v5}, Lcom/myscript/atk/sltw/g/a;->a(CCCC)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->s:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/d$a;

    iget v0, v0, Lcom/myscript/atk/sltw/f/d$a;->a:F

    invoke-direct {p0, v0, v2, v7}, Lcom/myscript/atk/sltw/f/d;->a(FII)Lcom/myscript/atk/sltw/f/d$a;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->s:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/d$a;

    iget v0, v0, Lcom/myscript/atk/sltw/f/d$a;->a:F

    invoke-direct {p0, v0, v7, v8}, Lcom/myscript/atk/sltw/f/d;->a(FII)Lcom/myscript/atk/sltw/f/d$a;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v9

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v9, :cond_5

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/myscript/atk/sltw/f/d;->a(Ljava/util/List;I)I

    move-result v2

    goto :goto_2
.end method

.method private a(Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/d$a;",
            ">;)I"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v3, 0x0

    move v2, v3

    move v4, v3

    move v5, v3

    :goto_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->s:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/d$a;

    const/4 v1, 0x0

    iget v7, v0, Lcom/myscript/atk/sltw/f/d$a;->b:I

    iget v8, v0, Lcom/myscript/atk/sltw/f/d$a;->c:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/myscript/atk/sltw/f/d;->m:[C

    array-length v8, v8

    if-ge v7, v8, :cond_1

    iget-object v8, p0, Lcom/myscript/atk/sltw/f/d;->m:[C

    add-int/lit8 v9, v7, -0x1

    aget-char v8, v8, v9

    invoke-static {v8}, Lcom/myscript/atk/sltw/g/a;->b(C)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/myscript/atk/sltw/f/d;->m:[C

    aget-char v7, v8, v7

    const/16 v8, 0xe33

    if-ne v7, v8, :cond_1

    iget v1, v0, Lcom/myscript/atk/sltw/f/d$a;->a:F

    iget v5, v0, Lcom/myscript/atk/sltw/f/d$a;->b:I

    iget v0, v0, Lcom/myscript/atk/sltw/f/d$a;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v1, v5, v0}, Lcom/myscript/atk/sltw/f/d;->a(FII)Lcom/myscript/atk/sltw/f/d$a;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    move v1, v4

    move v4, v6

    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v5, v4

    move v4, v1

    goto :goto_0

    :cond_1
    if-ne v5, v6, :cond_2

    iget v5, v0, Lcom/myscript/atk/sltw/f/d$a;->c:I

    if-le v5, v6, :cond_4

    iget v1, v0, Lcom/myscript/atk/sltw/f/d$a;->a:F

    iget v5, v0, Lcom/myscript/atk/sltw/f/d$a;->b:I

    add-int/lit8 v5, v5, 0x1

    iget v0, v0, Lcom/myscript/atk/sltw/f/d$a;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v1, v5, v0}, Lcom/myscript/atk/sltw/f/d;->a(FII)Lcom/myscript/atk/sltw/f/d$a;

    move-result-object v0

    :goto_2
    move v1, v4

    move v4, v3

    goto :goto_1

    :cond_2
    iget v1, v0, Lcom/myscript/atk/sltw/f/d$a;->a:F

    iget v7, v0, Lcom/myscript/atk/sltw/f/d$a;->b:I

    iget v0, v0, Lcom/myscript/atk/sltw/f/d$a;->c:I

    invoke-direct {p0, v1, v7, v0}, Lcom/myscript/atk/sltw/f/d;->a(FII)Lcom/myscript/atk/sltw/f/d$a;

    move-result-object v0

    move v1, v4

    move v4, v5

    goto :goto_1

    :cond_3
    return v4

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method private a(Ljava/util/List;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/d$a;",
            ">;I)I"
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v0, 0x0

    const/4 v2, 0x4

    if-le p2, v2, :cond_1

    iget-object v2, p0, Lcom/myscript/atk/sltw/f/d;->m:[C

    add-int/lit8 v3, p2, -0x3

    aget-char v2, v2, v3

    iget-object v3, p0, Lcom/myscript/atk/sltw/f/d;->m:[C

    add-int/lit8 v4, p2, -0x2

    aget-char v3, v3, v4

    iget-object v4, p0, Lcom/myscript/atk/sltw/f/d;->m:[C

    add-int/lit8 v5, p2, -0x1

    aget-char v4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/myscript/atk/sltw/g/a;->a(CCC)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    add-int/lit8 v2, p2, -0x3

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/myscript/atk/sltw/f/d;->s:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->s:Ljava/util/List;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/sltw/f/d$a;

    iget v0, v0, Lcom/myscript/atk/sltw/f/d$a;->a:F

    add-int/lit8 v2, p2, -0x3

    invoke-direct {p0, v0, v2, v1}, Lcom/myscript/atk/sltw/f/d;->a(FII)Lcom/myscript/atk/sltw/f/d$a;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    :cond_1
    return v0
.end method

.method private a(FII)Lcom/myscript/atk/sltw/f/d$a;
    .locals 1

    new-instance v0, Lcom/myscript/atk/sltw/f/d$a;

    invoke-direct {v0, p0}, Lcom/myscript/atk/sltw/f/d$a;-><init>(Lcom/myscript/atk/sltw/f/d;)V

    iput p1, v0, Lcom/myscript/atk/sltw/f/d$a;->a:F

    iput p2, v0, Lcom/myscript/atk/sltw/f/d$a;->b:I

    iput p3, v0, Lcom/myscript/atk/sltw/f/d$a;->c:I

    return-object v0
.end method


# virtual methods
.method public final A()Z
    .locals 2

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final B()Z
    .locals 2

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/myscript/atk/sltw/e/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final C()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/myscript/atk/sltw/e/a;->a(C)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final D()Z
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->i:[Lcom/myscript/atk/sltw/f/c;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Z)F
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0
.end method

.method public final a(ZFI)F
    .locals 3

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    int-to-float v1, p3

    add-float p2, v0, v1

    :cond_0
    :goto_1
    return p2

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    iget-object v2, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float v0, v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->r:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    neg-float p2, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->r:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p2

    goto :goto_1
.end method

.method public final a(ILjava/lang/String;)I
    .locals 4

    const/4 v1, -0x1

    invoke-virtual {p0, p1}, Lcom/myscript/atk/sltw/f/d;->b(I)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/myscript/atk/sltw/f/a;)I
    .locals 5

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/myscript/atk/sltw/f/d;->h:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/d;->h:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final a(B)V
    .locals 0

    iput-byte p1, p0, Lcom/myscript/atk/sltw/f/d;->t:B

    return-void
.end method

.method public final a(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    add-float v1, v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/myscript/atk/sltw/f/d;->a(FF)V

    :cond_0
    return-void
.end method

.method public final a(FF)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->C()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VOWord"

    const-string v1, "Unable to set bounds of a non-space or a non-Bidi marker word"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/myscript/atk/sltw/f/d;->k:[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/myscript/atk/sltw/f/d;->k:[F

    aput p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->l:[F

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->l:[F

    aput p2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/myscript/atk/sltw/f/d;->n:F

    iget v2, p0, Lcom/myscript/atk/sltw/f/d;->n:F

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/myscript/atk/sltw/f/d;->r:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method public final a(FIZFFZ)V
    .locals 6

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->r:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, p4

    if-gez v0, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/myscript/atk/sltw/f/d;->a(FZFFZ)V

    :cond_0
    return-void
.end method

.method public final a(FZFFZ)V
    .locals 1

    if-eqz p5, :cond_0

    invoke-virtual {p0, p3}, Lcom/myscript/atk/sltw/f/d;->a(F)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    add-float v0, p1, p4

    invoke-virtual {p0, v0, p1}, Lcom/myscript/atk/sltw/f/d;->a(FF)V

    goto :goto_0

    :cond_1
    add-float v0, p1, p4

    invoke-virtual {p0, p1, v0}, Lcom/myscript/atk/sltw/f/d;->a(FF)V

    goto :goto_0
.end method

.method public final a(IIZ)V
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    aget-object v5, v3, v0

    if-lt v0, p1, :cond_1

    if-gt v0, p2, :cond_1

    move v3, p3

    :goto_1
    invoke-virtual {v5}, Lcom/myscript/atk/sltw/f/a;->b()Z

    move-result v6

    if-eq v3, v6, :cond_0

    invoke-virtual {v5, v3}, Lcom/myscript/atk/sltw/f/a;->a(Z)V

    move v2, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->y:Lcom/myscript/atk/sltw/f/d$b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->y:Lcom/myscript/atk/sltw/f/d$b;

    invoke-interface {v0, p0}, Lcom/myscript/atk/sltw/f/d$b;->b(Lcom/myscript/atk/sltw/f/d;)V

    :cond_4
    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/f/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/f/d;->y:Lcom/myscript/atk/sltw/f/d$b;

    return-void
.end method

.method public final a(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/f/a;->b()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/myscript/atk/sltw/f/d;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/myscript/atk/styluscore/VoString;

    iget-object v2, p0, Lcom/myscript/atk/sltw/f/d;->b:Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v2}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/myscript/atk/styluscore/VoString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/VoString;->lastChar()Lcom/myscript/atk/styluscore/Char;

    move-result-object v0

    new-instance v2, Lcom/myscript/atk/styluscore/VoString;

    iget-object v3, p1, Lcom/myscript/atk/sltw/f/d;->b:Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v3}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/myscript/atk/styluscore/VoString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/myscript/atk/styluscore/VoString;->firstChar()Lcom/myscript/atk/styluscore/Char;

    move-result-object v2

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Char;->isCJKFullSizeCharacter()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/myscript/atk/styluscore/Char;->isCJKFullSizeCharacter()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Char;->isThaiLetter()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Lcom/myscript/atk/styluscore/Char;->isThaiLetter()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->b:Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->segments()Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lcom/myscript/atk/sltw/f/d;->b:Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v2}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/myscript/atk/styluscore/Candidate;->segments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/myscript/atk/styluscore/Candidate;->seamlesslyGraftsTo(Lcom/myscript/atk/styluscore/Candidate;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public final a(ZF)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/myscript/atk/sltw/f/d;->a(Z)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/myscript/atk/sltw/f/d;->a(Z)F

    move-result v2

    cmpg-float v2, v2, p2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final a()[Lcom/myscript/atk/sltw/f/a;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    return-object v0
.end method

.method public final b(Z)F
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->b:Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->b:Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->segments()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_0

    if-ne v0, p1, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/a/e;->b(Lcom/myscript/atk/styluscore/Segment;)[Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/a/e;->b(Lcom/myscript/atk/styluscore/Segment;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final c(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->b:Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->b:Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->segments()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_0

    if-ne v0, p1, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Segment;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Segment;->selectedCandidate()Lcom/myscript/atk/styluscore/Candidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/Candidate;->label()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public final c(Z)V
    .locals 4

    iget-object v1, p0, Lcom/myscript/atk/sltw/f/d;->i:[Lcom/myscript/atk/sltw/f/c;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Lcom/myscript/atk/sltw/f/c;->b(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/myscript/atk/sltw/f/d;->v:Z

    return-void
.end method

.method public final c()Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/a;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final d(Z)F
    .locals 5

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    if-nez v0, :cond_1

    sget-object v0, Lcom/myscript/atk/sltw/f/d;->a:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/myscript/atk/sltw/f/d;->q:[Lcom/myscript/atk/sltw/f/a;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    if-eqz p1, :cond_3

    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/myscript/atk/sltw/f/a;->d()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_2
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/sltw/f/d$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->s:Ljava/util/List;

    return-object v0
.end method

.method public final e()Lcom/myscript/atk/styluscore/Segment;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->b:Lcom/myscript/atk/styluscore/Segment;

    return-object v0
.end method

.method public final e(Z)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-byte v1, p0, Lcom/myscript/atk/sltw/f/d;->t:B

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    iget-byte v1, p0, Lcom/myscript/atk/sltw/f/d;->t:B

    if-eq v1, v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->c:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final f(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/f/d;->u:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/myscript/atk/sltw/f/d;->u:Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->y:Lcom/myscript/atk/sltw/f/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->y:Lcom/myscript/atk/sltw/f/d$b;

    invoke-interface {v0, p0}, Lcom/myscript/atk/sltw/f/d$b;->a(Lcom/myscript/atk/sltw/f/d;)V

    :cond_0
    return-void
.end method

.method public final g()I
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/f/d;->v:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/myscript/atk/sltw/f/d;->f:I

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/myscript/atk/sltw/f/d;->u:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/myscript/atk/sltw/f/d;->e:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/myscript/atk/sltw/f/d;->d:I

    goto :goto_0
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/myscript/atk/sltw/f/d;->w:Z

    return-void
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/f/d;->d:I

    return v0
.end method

.method public final h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/myscript/atk/sltw/f/d;->x:Z

    return-void
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/f/d;->e:I

    return v0
.end method

.method public final i(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/myscript/atk/sltw/f/d;->v:Z

    return-void
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/f/d;->g:I

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->h:[Ljava/lang/String;

    iget v1, p0, Lcom/myscript/atk/sltw/f/d;->g:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final l()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public final m()[Lcom/myscript/atk/sltw/f/c;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->i:[Lcom/myscript/atk/sltw/f/c;

    return-object v0
.end method

.method public final n()[F
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->k:[F

    return-object v0
.end method

.method public final o()[F
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->l:[F

    return-object v0
.end method

.method public final p()[C
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->m:[C

    return-object v0
.end method

.method public final q()F
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/f/d;->n:F

    return v0
.end method

.method public final r()F
    .locals 1

    iget v0, p0, Lcom/myscript/atk/sltw/f/d;->o:F

    return v0
.end method

.method public final s()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/f/d;->r:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final t()Lcom/myscript/atk/styluscore/Char;
    .locals 2

    new-instance v0, Lcom/myscript/atk/styluscore/VoString;

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/myscript/atk/styluscore/VoString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/VoString;->lastChar()Lcom/myscript/atk/styluscore/Char;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[%.1f-%.1f] (Bidi marker)"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/myscript/atk/sltw/f/d;->r:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/myscript/atk/sltw/f/d;->r:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\"%s\" [%.1f-%.1f] (level %d)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/myscript/atk/sltw/f/d;->r:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/myscript/atk/sltw/f/d;->r:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    iget-byte v3, p0, Lcom/myscript/atk/sltw/f/d;->t:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v6, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final u()B
    .locals 1

    iget-byte v0, p0, Lcom/myscript/atk/sltw/f/d;->t:B

    return v0
.end method

.method public final v()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/myscript/atk/sltw/f/d;->t:B

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/f/d;->w:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/f/d;->x:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->A()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/f/d;->v:Z

    return v0
.end method

.method public final z()Z
    .locals 2

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/f/d;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
