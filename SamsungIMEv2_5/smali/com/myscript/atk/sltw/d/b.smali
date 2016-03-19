.class public final Lcom/myscript/atk/sltw/d/b;
.super Ljava/lang/Object;
.source "RecognizerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/sltw/d/b$c;,
        Lcom/myscript/atk/sltw/d/b$a;,
        Lcom/myscript/atk/sltw/d/b$e;,
        Lcom/myscript/atk/sltw/d/b$f;,
        Lcom/myscript/atk/sltw/d/b$d;,
        Lcom/myscript/atk/sltw/d/b$b;
    }
.end annotation


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:Lcom/myscript/atk/styluscore/InputMethod;

.field private d:Lcom/myscript/atk/styluscore/InputMethodListener;

.field private e:Z

.field private f:[Ljava/lang/String;

.field private g:[B

.field private final h:F

.field private i:Ljava/lang/String;

.field private j:Z

.field private final k:F

.field private l:Lcom/myscript/atk/styluscore/InkField;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Z

.field private p:Lcom/myscript/atk/sltw/d/b$a;

.field private q:Lcom/myscript/atk/sltw/d/b$d;

.field private r:Lcom/myscript/atk/sltw/d/b$f;

.field private s:Lcom/myscript/atk/sltw/d/b$e;

.field private t:Lcom/myscript/atk/sltw/d/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/myscript/atk/sltw/d/b;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/myscript/atk/sltw/d/b;->k:F

    iput p2, p0, Lcom/myscript/atk/sltw/d/b;->h:F

    const-string v0, ""

    iput-object v0, p0, Lcom/myscript/atk/sltw/d/b;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/d/b;->o:Z

    return-void
.end method

.method static synthetic a(Lcom/myscript/atk/sltw/d/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/d/b;->m()V

    return-void
.end method

.method static synthetic a(Lcom/myscript/atk/sltw/d/b;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BIZLandroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/myscript/atk/sltw/d/b;->b(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BIZLandroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/myscript/atk/sltw/d/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/myscript/atk/sltw/d/b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/myscript/atk/sltw/d/b;->p:Lcom/myscript/atk/sltw/d/b$a;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->l:Lcom/myscript/atk/styluscore/InkField;

    iget-boolean v1, p0, Lcom/myscript/atk/sltw/d/b;->e:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/myscript/atk/sltw/d/b;->k:F

    invoke-direct {p0}, Lcom/myscript/atk/sltw/d/b;->l()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/myscript/atk/sltw/d/a/a;->a(Lcom/myscript/atk/styluscore/InkField;FLjava/util/List;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkField;->pendingStrokes()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/myscript/atk/sltw/d/b;->m:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v1}, Lcom/myscript/atk/styluscore/InkField;->setPendingStrokes(Ljava/util/List;)V

    iget-object v1, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    invoke-virtual {v1, v0}, Lcom/myscript/atk/styluscore/InputMethod;->setField(Lcom/myscript/atk/styluscore/InkField;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iput-boolean p1, p0, Lcom/myscript/atk/sltw/d/b;->o:Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->q:Lcom/myscript/atk/sltw/d/b$d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->q:Lcom/myscript/atk/sltw/d/b$d;

    invoke-interface {v0, p1}, Lcom/myscript/atk/sltw/d/b$d;->a(Z)V

    :cond_1
    sget-object v0, Lcom/myscript/atk/sltw/d/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/myscript/atk/sltw/d/b;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :cond_3
    const-string v0, "RecognizerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error configuring handwriting recognition engine ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/myscript/atk/sltw/d/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a([Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ak-iso"

    invoke-static {p0, v0}, Lcom/myscript/atk/sltw/d/b;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/myscript/atk/sltw/d/b;)Lcom/myscript/atk/styluscore/InputMethod;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    return-object v0
.end method

.method private b(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BIZLandroid/content/Context;)V
    .locals 10

    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/d/b;->j:Z

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/myscript/atk/sltw/d/b;->f:[Ljava/lang/String;

    :cond_0
    if-eqz p5, :cond_1

    iput-object p5, p0, Lcom/myscript/atk/sltw/d/b;->g:[B

    :cond_1
    invoke-static {}, Lcom/myscript/atk/sltw/d/a;->a()Lcom/myscript/atk/sltw/d/a;

    move-result-object v4

    iget-object v2, p0, Lcom/myscript/atk/sltw/d/b;->f:[Ljava/lang/String;

    const-string v3, "ak-iso"

    invoke-static {v2, v3}, Lcom/myscript/atk/sltw/d/b;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v2, "mr"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/myscript/atk/sltw/d/b;->e:Z

    if-eq v5, v3, :cond_4

    iget-boolean v3, p0, Lcom/myscript/atk/sltw/d/b;->o:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/myscript/atk/sltw/d/b;->n:Z

    invoke-virtual {v4, p1, v5}, Lcom/myscript/atk/sltw/d/a;->a(IZ)Lcom/myscript/atk/styluscore/InputMethod;

    move-result-object v3

    iput-object v3, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    iget-object v3, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    if-nez v3, :cond_5

    invoke-direct {p0}, Lcom/myscript/atk/sltw/d/b;->m()V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/myscript/atk/sltw/d/b;->a(Z)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    iput p1, p0, Lcom/myscript/atk/sltw/d/b;->b:I

    iput-object p2, p0, Lcom/myscript/atk/sltw/d/b;->i:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/myscript/atk/sltw/d/b;->e:Z

    iget-object v3, p0, Lcom/myscript/atk/sltw/d/b;->l:Lcom/myscript/atk/styluscore/InkField;

    if-nez v3, :cond_6

    iget v3, p0, Lcom/myscript/atk/sltw/d/b;->k:F

    invoke-direct {p0}, Lcom/myscript/atk/sltw/d/b;->l()Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/myscript/atk/sltw/d/a/a;->a(FLjava/util/List;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v3

    iput-object v3, p0, Lcom/myscript/atk/sltw/d/b;->l:Lcom/myscript/atk/styluscore/InkField;

    :cond_6
    iget-object v3, p0, Lcom/myscript/atk/sltw/d/b;->m:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/myscript/atk/sltw/d/b;->m:Ljava/util/ArrayList;

    :cond_7
    new-instance v3, Lcom/myscript/atk/sltw/d/b$c;

    iget-boolean v5, p0, Lcom/myscript/atk/sltw/d/b;->e:Z

    invoke-direct {v3, p0, v5}, Lcom/myscript/atk/sltw/d/b$c;-><init>(Lcom/myscript/atk/sltw/d/b;Z)V

    iput-object v3, p0, Lcom/myscript/atk/sltw/d/b;->d:Lcom/myscript/atk/styluscore/InputMethodListener;

    iget-object v3, p0, Lcom/myscript/atk/sltw/d/b;->d:Lcom/myscript/atk/styluscore/InputMethodListener;

    iget-boolean v5, p0, Lcom/myscript/atk/sltw/d/b;->e:Z

    invoke-virtual {v4, p1, v3, v5}, Lcom/myscript/atk/sltw/d/a;->a(ILcom/myscript/atk/styluscore/InputMethodListener;Z)V

    iget-object v3, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    const v4, 0xffff

    invoke-virtual {v3, v4}, Lcom/myscript/atk/styluscore/InputMethod;->disableGestures(I)V

    if-eqz v2, :cond_c

    const/16 v3, 0x1e8

    :goto_3
    iget-object v4, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    invoke-virtual {v4, v3}, Lcom/myscript/atk/styluscore/InputMethod;->enableGestures(I)V

    new-instance v5, Lcom/myscript/atk/styluscore/InputMethodConfig;

    invoke-direct {v5}, Lcom/myscript/atk/styluscore/InputMethodConfig;-><init>()V

    const-string v3, "_"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v3, "zh"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "ja"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v2, :cond_e

    :cond_8
    const/4 v2, 0x5

    :goto_4
    const-string v3, "zh"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "ja"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "ko"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "hi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_9
    const/16 v3, 0xa28

    move/from16 v0, p6

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_5
    const-string v6, "zh"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "ja"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "ko"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "hi"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_a
    const/4 v4, 0x3

    :goto_6
    new-instance v6, Lcom/myscript/atk/styluscore/RuntimeEngineListener;

    move-object/from16 v0, p8

    invoke-direct {v6, v0}, Lcom/myscript/atk/styluscore/RuntimeEngineListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Lcom/myscript/atk/styluscore/InputMethodConfig;->setProtectionListener(Lcom/myscript/atk/styluscore/styluscore$IRuntimeEngineListener;)V

    const v6, 0x2dde304

    invoke-virtual {v5, v6}, Lcom/myscript/atk/styluscore/InputMethodConfig;->setProductID(I)V

    invoke-virtual {v5, p2}, Lcom/myscript/atk/styluscore/InputMethodConfig;->setLocale(Ljava/lang/String;)V

    const/16 v6, 0xdd

    invoke-virtual {v5, v6}, Lcom/myscript/atk/styluscore/InputMethodConfig;->setSpeedQualityCompromise(I)V

    const/4 v6, 0x1

    const-wide/16 v8, 0x5

    invoke-virtual {v5, v6, v8, v9}, Lcom/myscript/atk/styluscore/InputMethodConfig;->setCandidateListSize(IJ)V

    const/4 v6, 0x2

    int-to-long v8, v2

    invoke-virtual {v5, v6, v8, v9}, Lcom/myscript/atk/styluscore/InputMethodConfig;->setCandidateListSize(IJ)V

    invoke-virtual {v5, v3}, Lcom/myscript/atk/styluscore/InputMethodConfig;->setFreezeTimeout(I)V

    invoke-virtual {v5, v4}, Lcom/myscript/atk/styluscore/InputMethodConfig;->setUnfreezeWordCount(I)V

    iget v2, p0, Lcom/myscript/atk/sltw/d/b;->h:F

    invoke-virtual {v5, v2}, Lcom/myscript/atk/styluscore/InputMethodConfig;->setCoordinateResolution(F)V

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Lcom/myscript/atk/styluscore/InputMethodConfig;->setStrictAlienCharacters(Z)V

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Lcom/myscript/atk/styluscore/InputMethodConfig;->setPrefixRecognition(Z)V

    iget-object v2, p0, Lcom/myscript/atk/sltw/d/b;->f:[Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v3, p0, Lcom/myscript/atk/sltw/d/b;->f:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v4, :cond_11

    aget-object v6, v3, v2

    if-eqz v6, :cond_b

    invoke-virtual {v5, v6}, Lcom/myscript/atk/styluscore/InputMethodConfig;->addResource(Ljava/lang/String;)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    iget-boolean v3, p0, Lcom/myscript/atk/sltw/d/b;->e:Z

    if-eqz v3, :cond_d

    const/4 v3, 0x4

    goto/16 :goto_3

    :cond_d
    const/16 v3, 0x5fc

    goto/16 :goto_3

    :cond_e
    const/4 v2, 0x1

    goto/16 :goto_4

    :cond_f
    const/16 v3, 0x28a

    move/from16 v0, p6

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto/16 :goto_5

    :cond_10
    const/4 v4, 0x1

    goto :goto_6

    :cond_11
    if-eqz p4, :cond_12

    array-length v3, p4

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v3, :cond_12

    aget-object v4, p4, v2

    invoke-virtual {v5, v4}, Lcom/myscript/atk/styluscore/InputMethodConfig;->addLexiconEntry(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    iget-object v2, p0, Lcom/myscript/atk/sltw/d/b;->g:[B

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/myscript/atk/sltw/d/b;->g:[B

    invoke-virtual {v5, v2}, Lcom/myscript/atk/styluscore/InputMethodConfig;->setCertificate([B)V

    :cond_13
    iget-object v2, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    invoke-virtual {v2}, Lcom/myscript/atk/styluscore/InputMethod;->config()Lcom/myscript/atk/styluscore/InputMethodConfig;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x1

    :goto_9
    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    invoke-virtual {v2}, Lcom/myscript/atk/styluscore/InputMethod;->failed()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-direct {p0}, Lcom/myscript/atk/sltw/d/b;->n()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/myscript/atk/sltw/d/b;->m()V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/myscript/atk/sltw/d/b;->a(Z)V

    goto/16 :goto_2

    :cond_14
    const/4 v2, 0x0

    goto :goto_9

    :cond_15
    new-instance v2, Lcom/myscript/atk/sltw/d/b$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/myscript/atk/sltw/d/b$a;-><init>(Lcom/myscript/atk/sltw/d/b;B)V

    iput-object v2, p0, Lcom/myscript/atk/sltw/d/b;->p:Lcom/myscript/atk/sltw/d/b$a;

    iget-object v2, p0, Lcom/myscript/atk/sltw/d/b;->p:Lcom/myscript/atk/sltw/d/b$a;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/myscript/atk/styluscore/InputMethodConfig;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/myscript/atk/sltw/d/b$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2
.end method

.method public static b([Ljava/lang/String;)Z
    .locals 1

    const-string v0, "tamil-ak-iso"

    invoke-static {p0, v0}, Lcom/myscript/atk/sltw/d/b;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/myscript/atk/sltw/d/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/d/b;->e:Z

    return v0
.end method

.method public static c([Ljava/lang/String;)Z
    .locals 1

    const-string v0, "devanagari-ak-iso"

    invoke-static {p0, v0}, Lcom/myscript/atk/sltw/d/b;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/myscript/atk/sltw/d/b;)Lcom/myscript/atk/sltw/d/b$f;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->r:Lcom/myscript/atk/sltw/d/b$f;

    return-object v0
.end method

.method static synthetic e(Lcom/myscript/atk/sltw/d/b;)Lcom/myscript/atk/sltw/d/b$e;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->s:Lcom/myscript/atk/sltw/d/b$e;

    return-object v0
.end method

.method private l()Ljava/util/List;
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

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/d/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->t:Lcom/myscript/atk/sltw/d/b$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->t:Lcom/myscript/atk/sltw/d/b$b;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/d/b$b;->v()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/d/b;->n:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/myscript/atk/sltw/d/b;->k:F

    invoke-direct {p0}, Lcom/myscript/atk/sltw/d/b;->l()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/d/a/a;->a(FLjava/util/List;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    iput-object v0, p0, Lcom/myscript/atk/sltw/d/b;->l:Lcom/myscript/atk/styluscore/InkField;

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/myscript/atk/sltw/d/b;->n:Z

    iput-boolean v2, p0, Lcom/myscript/atk/sltw/d/b;->o:Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->q:Lcom/myscript/atk/sltw/d/b$d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->q:Lcom/myscript/atk/sltw/d/b$d;

    invoke-interface {v0}, Lcom/myscript/atk/sltw/d/b$d;->c()V

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/myscript/atk/sltw/d/b;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InputMethod;->field()Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    iput-object v0, p0, Lcom/myscript/atk/sltw/d/b;->l:Lcom/myscript/atk/styluscore/InkField;

    goto :goto_0
.end method

.method private n()Z
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->p:Lcom/myscript/atk/sltw/d/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->p:Lcom/myscript/atk/sltw/d/b$a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/d/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/d/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->t:Lcom/myscript/atk/sltw/d/b$b;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/myscript/atk/sltw/d/b;->k:F

    iget-object v1, p0, Lcom/myscript/atk/sltw/d/b;->t:Lcom/myscript/atk/sltw/d/b$b;

    invoke-interface {v1}, Lcom/myscript/atk/sltw/d/b$b;->v()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/myscript/atk/sltw/d/a/a;->a(FLjava/util/List;)Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItem;->createFlowMarker(I)Lcom/myscript/atk/styluscore/InkItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/myscript/atk/styluscore/InkField;->setPendingStrokes(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/myscript/atk/sltw/d/b;->a(Lcom/myscript/atk/styluscore/InkField;)V

    :cond_0
    return-void
.end method

.method public final a(ILandroid/content/Context;)V
    .locals 9

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/d/b;->o:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/d/b;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v1, p0, Lcom/myscript/atk/sltw/d/b;->b:I

    iget-object v2, p0, Lcom/myscript/atk/sltw/d/b;->i:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/myscript/atk/sltw/d/b;->j:Z

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move v6, p1

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/myscript/atk/sltw/d/b;->a(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BIZLandroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public final a(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BIZLandroid/content/Context;)V
    .locals 10

    invoke-direct {p0}, Lcom/myscript/atk/sltw/d/b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/myscript/atk/sltw/d/c;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/myscript/atk/sltw/d/c;-><init>(Lcom/myscript/atk/sltw/d/b;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BIZLandroid/content/Context;)V

    sget-object v1, Lcom/myscript/atk/sltw/d/b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/myscript/atk/sltw/d/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct/range {p0 .. p8}, Lcom/myscript/atk/sltw/d/b;->b(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BIZLandroid/content/Context;)V

    goto :goto_0
.end method

.method public final a(Lcom/myscript/atk/sltw/d/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/d/b;->t:Lcom/myscript/atk/sltw/d/b$b;

    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/d/b$d;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/d/b;->q:Lcom/myscript/atk/sltw/d/b$d;

    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/d/b$e;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/d/b;->s:Lcom/myscript/atk/sltw/d/b$e;

    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/d/b$f;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/d/b;->r:Lcom/myscript/atk/sltw/d/b$f;

    return-void
.end method

.method public final a(Lcom/myscript/atk/sltw/f/c;)V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/myscript/atk/sltw/d/b;->m:Ljava/util/ArrayList;

    :cond_0
    iget-boolean v0, p0, Lcom/myscript/atk/sltw/d/b;->o:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/myscript/atk/sltw/d/b;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/c;->a()Lcom/myscript/atk/styluscore/InkItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    invoke-virtual {p1}, Lcom/myscript/atk/sltw/f/c;->a()Lcom/myscript/atk/styluscore/InkItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/myscript/atk/styluscore/InputMethod;->addStroke(Lcom/myscript/atk/styluscore/InkItem;)V

    goto :goto_0
.end method

.method public final a(Lcom/myscript/atk/styluscore/InkField;)V
    .locals 4

    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/InkField;->inkLayout()Lcom/myscript/atk/styluscore/InkLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InkLayout;->modifiers()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Lcom/myscript/atk/styluscore/InkLayout;->setModifiers(I)V

    invoke-virtual {p1, v0}, Lcom/myscript/atk/styluscore/InkField;->setInkLayout(Lcom/myscript/atk/styluscore/InkLayout;)V

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/d/b;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/d/b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/myscript/atk/sltw/d/b;->l:Lcom/myscript/atk/styluscore/InkField;

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/myscript/atk/styluscore/InkField;->pendingStrokes()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1}, Lcom/myscript/atk/styluscore/InkField;->setPendingStrokes(Ljava/util/List;)V

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    invoke-virtual {v0, p1}, Lcom/myscript/atk/styluscore/InputMethod;->setField(Lcom/myscript/atk/styluscore/InkField;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/d/b;->e:Z

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InputMethod;->errorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_9
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_a
    const/16 v0, 0xb

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    if-nez v0, :cond_0

    const-string v0, "StylusCore library is not loaded"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InputMethod;->errorString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 3

    invoke-static {}, Lcom/myscript/atk/sltw/d/a;->a()Lcom/myscript/atk/sltw/d/a;

    move-result-object v0

    iget v1, p0, Lcom/myscript/atk/sltw/d/b;->b:I

    iget-boolean v2, p0, Lcom/myscript/atk/sltw/d/b;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/myscript/atk/sltw/d/a;->b(IZ)Lcom/myscript/atk/styluscore/InputMethodListener;

    move-result-object v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/d/b;->d:Lcom/myscript/atk/styluscore/InputMethodListener;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcom/myscript/atk/sltw/d/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/myscript/atk/sltw/d/b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->p:Lcom/myscript/atk/sltw/d/b$a;

    invoke-virtual {v0}, Lcom/myscript/atk/sltw/d/b$a;->b()V

    iput-object v1, p0, Lcom/myscript/atk/sltw/d/b;->p:Lcom/myscript/atk/sltw/d/b$a;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/sltw/d/b;->o:Z

    iput-object v1, p0, Lcom/myscript/atk/sltw/d/b;->l:Lcom/myscript/atk/styluscore/InkField;

    iput-object v1, p0, Lcom/myscript/atk/sltw/d/b;->m:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    iput-object v1, p0, Lcom/myscript/atk/sltw/d/b;->d:Lcom/myscript/atk/styluscore/InputMethodListener;

    invoke-static {}, Lcom/myscript/atk/sltw/d/a;->a()Lcom/myscript/atk/sltw/d/a;

    move-result-object v0

    iget v1, p0, Lcom/myscript/atk/sltw/d/b;->b:I

    iget-boolean v2, p0, Lcom/myscript/atk/sltw/d/b;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/myscript/atk/sltw/d/a;->c(IZ)V

    return-void
.end method

.method public final g()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->l:Lcom/myscript/atk/styluscore/InkField;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InputMethod;->field()Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InputMethod;->field()Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/a/e;->b(Lcom/myscript/atk/styluscore/InkField;)I

    move-result v0

    iget-object v3, p0, Lcom/myscript/atk/sltw/d/b;->l:Lcom/myscript/atk/styluscore/InkField;

    invoke-static {v3}, Lcom/myscript/atk/sltw/d/a/e;->b(Lcom/myscript/atk/styluscore/InkField;)I

    move-result v3

    if-eq v0, v3, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/myscript/atk/sltw/d/b;->l:Lcom/myscript/atk/styluscore/InkField;

    invoke-virtual {v3}, Lcom/myscript/atk/styluscore/InkField;->selectedLabel()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    invoke-virtual {v4}, Lcom/myscript/atk/styluscore/InputMethod;->field()Lcom/myscript/atk/styluscore/InkField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/myscript/atk/styluscore/InkField;->selectedLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v1

    :goto_2
    if-nez v0, :cond_2

    if-eqz v3, :cond_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2
.end method

.method public final h()V
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/d/b;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/d/b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InputMethod;->penDown()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/d/b;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/d/b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InputMethod;->penUp()V

    :cond_0
    return-void
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/myscript/atk/sltw/d/b;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/myscript/atk/sltw/d/b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->c:Lcom/myscript/atk/styluscore/InputMethod;

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InputMethod;->field()Lcom/myscript/atk/styluscore/InkField;

    move-result-object v0

    invoke-static {v0}, Lcom/myscript/atk/sltw/d/a/e;->c(Lcom/myscript/atk/styluscore/InkField;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/d/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/myscript/atk/styluscore/InputMethodConfig;
    .locals 3

    invoke-static {}, Lcom/myscript/atk/sltw/d/a;->a()Lcom/myscript/atk/sltw/d/a;

    move-result-object v0

    iget v1, p0, Lcom/myscript/atk/sltw/d/b;->b:I

    iget-boolean v2, p0, Lcom/myscript/atk/sltw/d/b;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/myscript/atk/sltw/d/a;->a(IZ)Lcom/myscript/atk/styluscore/InputMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myscript/atk/styluscore/InputMethod;->config()Lcom/myscript/atk/styluscore/InputMethodConfig;

    move-result-object v0

    return-object v0
.end method
