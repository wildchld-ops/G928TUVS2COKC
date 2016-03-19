.class public final Lcom/nuance/nmdp/speechkit/al;
.super Ljava/lang/Object;


# static fields
.field private static A:I

.field private static B:I

.field private static y:[[Ljava/lang/String;

.field private static z:I


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Z

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/nuance/nmdp/speechkit/ab;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

.field private final q:Z

.field private r:I

.field private s:I

.field private final t:I

.field private final u:Z

.field private final v:Z

.field private final w:Z

.field private final x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v6, [[Ljava/lang/String;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "NVC_ASR_CMD"

    aput-object v2, v1, v4

    const-string v2, "NVC_DATA_UPLOAD_CMD"

    aput-object v2, v1, v5

    const-string v2, "NVC_LOG_REVISION_CMD"

    aput-object v2, v1, v6

    const-string v2, "NVC_RESET_USER_PROFILE_CMD"

    aput-object v2, v1, v7

    const-string v2, "NVC_APPSERVER_CMD"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "NVC_GET_DICTATION_LANGUAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "NVC_TTS_CMD"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DRAGON_NLU_ASR_CMD"

    aput-object v2, v1, v4

    const-string v2, "DRAGON_NLU_DATA_UPLOAD_CMD"

    aput-object v2, v1, v5

    const-string v2, "DRAGON_NLU_LOG_REVISION_CMD"

    aput-object v2, v1, v6

    const-string v2, "DRAGON_NLU_RESET_USER_PROFILE_CMD"

    aput-object v2, v1, v7

    const-string v2, "DRAGON_NLU_APPSERVER_CMD"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "ACADIA_GET_DICTATION_LANGUAGE_V2"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "DRAGON_NLU_TTS_CMD"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/nmdp/speechkit/al;->y:[[Ljava/lang/String;

    const v0, 0x19120623

    sput v0, Lcom/nuance/nmdp/speechkit/al;->z:I

    const v0, 0x18f8a016

    sput v0, Lcom/nuance/nmdp/speechkit/al;->A:I

    const v0, 0x5580f982

    sput v0, Lcom/nuance/nmdp/speechkit/al;->B:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;IZLjava/lang/String;[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;ZIIIZZZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/nuance/nmdp/speechkit/al;->a:Ljava/lang/String;

    iput-object p6, p0, Lcom/nuance/nmdp/speechkit/al;->b:[B

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/al;->c:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/nmdp/speechkit/al;->d:I

    iput-boolean p4, p0, Lcom/nuance/nmdp/speechkit/al;->e:Z

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/al;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/al;->i:Z

    new-instance v1, Lcom/nuance/nmdp/speechkit/ab;

    invoke-direct {v1, p1}, Lcom/nuance/nmdp/speechkit/ab;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/al;->h:Lcom/nuance/nmdp/speechkit/ab;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/al;->h:Lcom/nuance/nmdp/speechkit/ab;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/ab;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/al;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/nuance/nmdp/speechkit/al;->p:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    iput-boolean p8, p0, Lcom/nuance/nmdp/speechkit/al;->q:Z

    iput p9, p0, Lcom/nuance/nmdp/speechkit/al;->r:I

    iput p10, p0, Lcom/nuance/nmdp/speechkit/al;->s:I

    iput p11, p0, Lcom/nuance/nmdp/speechkit/al;->t:I

    iput-boolean p12, p0, Lcom/nuance/nmdp/speechkit/al;->u:Z

    iput-boolean p13, p0, Lcom/nuance/nmdp/speechkit/al;->v:Z

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/al;->w:Z

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/al;->x:Z

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/al;->p:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    invoke-direct {p0, v1}, Lcom/nuance/nmdp/speechkit/al;->b(Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)V

    return-void
.end method

.method private b(Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)V
    .locals 2

    sget-object v0, Lcom/nuance/nmdp/speechkit/al;->y:[[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->j:Ljava/lang/String;

    sget-object v0, Lcom/nuance/nmdp/speechkit/al;->y:[[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->k:Ljava/lang/String;

    sget-object v0, Lcom/nuance/nmdp/speechkit/al;->y:[[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->l:Ljava/lang/String;

    sget-object v0, Lcom/nuance/nmdp/speechkit/al;->y:[[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->m:Ljava/lang/String;

    sget-object v0, Lcom/nuance/nmdp/speechkit/al;->y:[[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->n:Ljava/lang/String;

    sget-object v0, Lcom/nuance/nmdp/speechkit/al;->y:[[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->getIndex()I

    sget-object v0, Lcom/nuance/nmdp/speechkit/al;->y:[[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->o:Ljava/lang/String;

    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/nuance/nmdp/speechkit/bx;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/nuance/nmdp/speechkit/bx;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/al;->q:Z

    return v0
.end method

.method public final B()I
    .locals 1

    iget v0, p0, Lcom/nuance/nmdp/speechkit/al;->r:I

    return v0
.end method

.method public final C()I
    .locals 1

    iget v0, p0, Lcom/nuance/nmdp/speechkit/al;->s:I

    return v0
.end method

.method public final D()I
    .locals 1

    iget v0, p0, Lcom/nuance/nmdp/speechkit/al;->t:I

    return v0
.end method

.method public final E()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/al;->u:Z

    return v0
.end method

.method public final F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/al;->v:Z

    return v0
.end method

.method public final G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/al;->w:Z

    return v0
.end method

.method public final H()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/al;->x:Z

    return v0
.end method

.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/al;->p:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->p:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/al;->b(Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)V

    return-void
.end method

.method public final a([B)[B
    .locals 15

    const/16 v0, 0x20

    new-array v8, v0, [I

    fill-array-data v8, :array_0

    const/16 v0, 0x60

    new-array v9, v0, [B

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->h:Lcom/nuance/nmdp/speechkit/ab;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/al;->h:Lcom/nuance/nmdp/speechkit/ab;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x6ae7e91a

    add-int v5, v0, v1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->h:Lcom/nuance/nmdp/speechkit/ab;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/ab;->f()[B

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->h:Lcom/nuance/nmdp/speechkit/ab;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/ab;->g()[B

    move-result-object v4

    array-length v0, v3

    new-array v2, v0, [I

    array-length v0, v4

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v6, v2

    if-ge v0, v6, :cond_1

    aget-byte v6, v3, v0

    aput v6, v2, v0

    aget v6, v2, v0

    if-gez v6, :cond_0

    aget v6, v2, v0

    add-int/lit16 v6, v6, 0x100

    aput v6, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_3

    aget-byte v3, v4, v0

    aput v3, v1, v0

    aget v3, v1, v0

    if-gez v3, :cond_2

    aget v3, v1, v0

    add-int/lit16 v3, v3, 0x100

    aput v3, v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const-wide/16 v6, 0x0

    move v4, v5

    move-object v14, v2

    move-wide v2, v6

    move v6, v0

    move-object v0, v14

    :goto_2
    const/16 v7, 0x20

    if-ge v6, v7, :cond_6

    sget v7, Lcom/nuance/nmdp/speechkit/al;->z:I

    sget v10, Lcom/nuance/nmdp/speechkit/al;->A:I

    sub-int/2addr v7, v10

    mul-int/2addr v4, v7

    sget v7, Lcom/nuance/nmdp/speechkit/al;->B:I

    add-int/2addr v4, v7

    sget v7, Lcom/nuance/nmdp/speechkit/al;->z:I

    sub-int/2addr v4, v7

    if-eqz v0, :cond_5

    array-length v7, v0

    if-lt v6, v7, :cond_4

    const/4 v0, 0x0

    :goto_3
    long-to-int v7, v2

    int-to-byte v7, v7

    aput-byte v7, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    aget v7, v8, v6

    aget v10, v0, v6

    add-int/2addr v7, v10

    and-int/lit16 v10, v4, 0xff

    add-int/2addr v7, v10

    int-to-long v10, v7

    const/16 v7, 0x8

    shr-long/2addr v2, v7

    add-long/2addr v2, v10

    goto :goto_3

    :cond_5
    int-to-long v2, v4

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    move-object v14, v1

    move v1, v4

    move v4, v0

    move-object v0, v14

    :goto_4
    const/16 v6, 0x40

    if-ge v4, v6, :cond_a

    sget v6, Lcom/nuance/nmdp/speechkit/al;->z:I

    sget v7, Lcom/nuance/nmdp/speechkit/al;->A:I

    sub-int/2addr v6, v7

    mul-int/2addr v1, v6

    sget v6, Lcom/nuance/nmdp/speechkit/al;->B:I

    add-int/2addr v1, v6

    sget v6, Lcom/nuance/nmdp/speechkit/al;->z:I

    sub-int/2addr v1, v6

    if-eqz v0, :cond_9

    array-length v6, v0

    if-ge v4, v6, :cond_7

    array-length v6, v8

    if-lt v4, v6, :cond_8

    :cond_7
    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v6, v4, 0x20

    long-to-int v7, v2

    int-to-byte v7, v7

    aput-byte v7, v9, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    aget v6, v8, v4

    aget v7, v0, v4

    add-int/2addr v6, v7

    and-int/lit16 v7, v1, 0xff

    add-int/2addr v6, v7

    int-to-long v6, v6

    const/16 v10, 0x8

    shr-long/2addr v2, v10

    add-long/2addr v2, v6

    goto :goto_5

    :cond_9
    int-to-long v2, v1

    goto :goto_5

    :cond_a
    sget v0, Lcom/nuance/nmdp/speechkit/al;->z:I

    sget v2, Lcom/nuance/nmdp/speechkit/al;->A:I

    sub-int/2addr v0, v2

    mul-int/2addr v0, v1

    sget v1, Lcom/nuance/nmdp/speechkit/al;->B:I

    add-int/2addr v0, v1

    sget v1, Lcom/nuance/nmdp/speechkit/al;->z:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const-wide/16 v0, 0x1

    :goto_6
    const/4 v2, 0x0

    :goto_7
    array-length v3, v9

    if-ge v2, v3, :cond_e

    :cond_b
    const/4 v3, 0x1

    shr-long v6, v0, v3

    const/4 v3, 0x1

    shr-long v10, v0, v3

    xor-long/2addr v10, v0

    const/4 v3, 0x3

    shr-long v12, v0, v3

    xor-long/2addr v10, v12

    const/4 v3, 0x6

    shr-long/2addr v0, v3

    xor-long/2addr v0, v10

    const-wide/16 v10, 0x1

    and-long/2addr v0, v10

    const/4 v3, 0x6

    shl-long/2addr v0, v3

    or-long/2addr v0, v6

    array-length v3, v9

    int-to-long v6, v3

    cmp-long v3, v0, v6

    if-gtz v3, :cond_b

    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-ltz v3, :cond_b

    const-wide/16 v6, 0x1a

    cmp-long v3, v0, v6

    if-lez v3, :cond_d

    long-to-int v3, v0

    add-int/lit8 v3, v3, 0x3

    aget-byte v4, v9, v2

    aput-byte v4, p1, v3

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    const-wide/16 v2, 0x7f

    and-long/2addr v0, v2

    goto :goto_6

    :cond_d
    long-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v4, v9, v2

    aput-byte v4, p1, v3

    goto :goto_8

    :cond_e
    const/16 v0, 0x1a

    and-int/lit16 v1, v5, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/16 v0, 0x1b

    shr-int/lit8 v1, v5, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/16 v0, 0x1c

    shr-int/lit8 v1, v5, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/16 v0, 0x1d

    shr-int/lit8 v1, v5, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-object p1

    nop

    :array_0
    .array-data 4
        0x1a
        0xe9
        0xe7
        0x6a
        0xb1
        0x2f
        0x7a
        0xb9
        0x9a
        0x9e
        0x74
        0xad
        0x7a
        0x98
        0x5e
        0x9c
        0xb6
        0xaf
        0x7a
        0xbb
        0x72
        0x25
        0xea
        0xde
        0x9b
        0x24
        0xa5
        0x6a
        0xd7
        0xab
        0x29
        0x5d
    .end array-data
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()[B
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->b:[B

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/nuance/nmdp/speechkit/al;->d:I

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/al;->e:Z

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->h:Lcom/nuance/nmdp/speechkit/ab;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/ab;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "unknown"

    :cond_0
    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->h:Lcom/nuance/nmdp/speechkit/ab;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "unknown"

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->h:Lcom/nuance/nmdp/speechkit/ab;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    :cond_0
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->h:Lcom/nuance/nmdp/speechkit/ab;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    :cond_0
    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->h:Lcom/nuance/nmdp/speechkit/ab;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "unknown"

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->h:Lcom/nuance/nmdp/speechkit/ab;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/ab;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "unknown"

    :cond_0
    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public final q()Lcom/nuance/nmdp/speechkit/cj;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->h:Lcom/nuance/nmdp/speechkit/ab;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/ab;->e()Lcom/nuance/nmdp/speechkit/cj;

    move-result-object v0

    return-object v0
.end method

.method public final r()Lcom/nuance/nmdp/speechkit/cj;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->h:Lcom/nuance/nmdp/speechkit/ab;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/ab;->d()Lcom/nuance/nmdp/speechkit/cj;

    move-result-object v0

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/al;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/al;->i:Z

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->c:Ljava/lang/String;

    iget v0, p0, Lcom/nuance/nmdp/speechkit/al;->d:I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->h:Lcom/nuance/nmdp/speechkit/ab;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/al;->p:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    return-object v0
.end method
