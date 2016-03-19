.class final Lcom/nuance/nmdp/speechkit/v;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/nuance/nmdp/speechkit/v;

.field private static b:Ljava/lang/Object;

.field private static o:Ljava/lang/Object;


# instance fields
.field private c:Lcom/nuance/nmdp/speechkit/an;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private g:Z

.field private h:Ljava/lang/Object;

.field private final i:Lcom/nuance/nmdp/speechkit/bz;

.field private j:Lcom/nuance/nmdp/speechkit/Prompt;

.field private k:Lcom/nuance/nmdp/speechkit/Prompt;

.field private l:Lcom/nuance/nmdp/speechkit/Prompt;

.field private m:Lcom/nuance/nmdp/speechkit/Prompt;

.field private final n:Lcom/nuance/nmdp/speechkit/al;

.field private p:Lcom/nuance/nmdp/speechkit/b;

.field private q:Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;

.field private r:Z

.field private s:I

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/nmdp/speechkit/v;->a:Lcom/nuance/nmdp/speechkit/v;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nuance/nmdp/speechkit/v;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nuance/nmdp/speechkit/v;->o:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZ[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;ZIIIZZZZ)V
    .locals 18

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/nmdp/speechkit/v;->p:Lcom/nuance/nmdp/speechkit/b;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/nmdp/speechkit/v;->r:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/nmdp/speechkit/v;->s:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/nmdp/speechkit/v;->t:I

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/nmdp/speechkit/v;->d:Ljava/lang/String;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/nmdp/speechkit/v;->e:Ljava/lang/String;

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/nmdp/speechkit/v;->f:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/nmdp/speechkit/v;->g:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/nmdp/speechkit/v;->c:Lcom/nuance/nmdp/speechkit/an;

    new-instance v2, Lcom/nuance/nmdp/speechkit/bz;

    invoke-direct {v2}, Lcom/nuance/nmdp/speechkit/bz;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/nmdp/speechkit/v;->i:Lcom/nuance/nmdp/speechkit/bz;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/nmdp/speechkit/v;->h:Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/nmdp/speechkit/v;->j:Lcom/nuance/nmdp/speechkit/Prompt;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/nmdp/speechkit/v;->k:Lcom/nuance/nmdp/speechkit/Prompt;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/nmdp/speechkit/v;->l:Lcom/nuance/nmdp/speechkit/Prompt;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/nmdp/speechkit/v;->m:Lcom/nuance/nmdp/speechkit/Prompt;

    new-instance v2, Lcom/nuance/nmdp/speechkit/al;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmdp/speechkit/v;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/nmdp/speechkit/v;->f:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/nmdp/speechkit/v;->d:Ljava/lang/String;

    move-object/from16 v3, p1

    move/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    invoke-direct/range {v2 .. v17}, Lcom/nuance/nmdp/speechkit/al;-><init>(Ljava/lang/Object;Ljava/lang/String;IZLjava/lang/String;[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;ZIIIZZZZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/nmdp/speechkit/v;->n:Lcom/nuance/nmdp/speechkit/al;

    new-instance v2, Lcom/nuance/nmdp/speechkit/v$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/nuance/nmdp/speechkit/v$1;-><init>(Lcom/nuance/nmdp/speechkit/v;)V

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/v;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/v;->j:Lcom/nuance/nmdp/speechkit/Prompt;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/v;)Lcom/nuance/nmdp/speechkit/al;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->n:Lcom/nuance/nmdp/speechkit/al;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/v;Lcom/nuance/nmdp/speechkit/an;)Lcom/nuance/nmdp/speechkit/an;
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/v;->c:Lcom/nuance/nmdp/speechkit/an;

    return-object p1
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZ[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;ZIIIZZZZ)Lcom/nuance/nmdp/speechkit/v;
    .locals 18

    const-string v1, "appContext"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "id"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "host"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "applicationKey"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p3, :cond_0

    const v1, 0xffff

    move/from16 v0, p3

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "port must be between 0 and 65535"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/RuntimeException;)V

    :cond_1
    const-string v1, "type"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x3e80

    move/from16 v0, p10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f40

    move/from16 v0, p10

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    const-string v2, "The sample rate should be 16000 or 8000"

    invoke-static {v1, v2}, Lcom/nuance/nmdp/speechkit/ab;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_2
    sget-object v17, Lcom/nuance/nmdp/speechkit/v;->b:Ljava/lang/Object;

    monitor-enter v17

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "Initializing SpeechKit"

    invoke-static {v1, v2}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/nuance/nmdp/speechkit/v;->a:Lcom/nuance/nmdp/speechkit/v;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/nuance/nmdp/speechkit/by;->a()V

    :cond_3
    sget-object v1, Lcom/nuance/nmdp/speechkit/v;->a:Lcom/nuance/nmdp/speechkit/v;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/nuance/nmdp/speechkit/v;->a:Lcom/nuance/nmdp/speechkit/v;

    iget-object v2, v1, Lcom/nuance/nmdp/speechkit/v;->d:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/nuance/nmdp/speechkit/v;->e:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v1, v1, Lcom/nuance/nmdp/speechkit/v;->f:I

    move/from16 v0, p3

    if-ne v1, v0, :cond_6

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_4

    const/4 v1, 0x0

    const-string v2, "Releasing old SpeechKit before creating new instance"

    invoke-static {v1, v2}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/nuance/nmdp/speechkit/v;->a:Lcom/nuance/nmdp/speechkit/v;

    invoke-direct {v1}, Lcom/nuance/nmdp/speechkit/v;->p()V

    const/4 v1, 0x0

    sput-object v1, Lcom/nuance/nmdp/speechkit/v;->a:Lcom/nuance/nmdp/speechkit/v;

    :cond_4
    sget-object v1, Lcom/nuance/nmdp/speechkit/v;->a:Lcom/nuance/nmdp/speechkit/v;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    const-string v2, "Creating fresh SpeechKit instance"

    invoke-static {v1, v2}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/nuance/nmdp/speechkit/v;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    invoke-direct/range {v1 .. v16}, Lcom/nuance/nmdp/speechkit/v;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZ[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;ZIIIZZZZ)V

    sput-object v1, Lcom/nuance/nmdp/speechkit/v;->a:Lcom/nuance/nmdp/speechkit/v;

    :cond_5
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/nuance/nmdp/speechkit/v;->a:Lcom/nuance/nmdp/speechkit/v;

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v17

    throw v1
.end method

.method private a(Lcom/nuance/nmdp/speechkit/h;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->j:Lcom/nuance/nmdp/speechkit/Prompt;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/v;->j:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmdp/speechkit/h;->setPrompt(ILcom/nuance/nmdp/speechkit/Prompt;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->k:Lcom/nuance/nmdp/speechkit/Prompt;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/v;->k:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmdp/speechkit/h;->setPrompt(ILcom/nuance/nmdp/speechkit/Prompt;)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->l:Lcom/nuance/nmdp/speechkit/Prompt;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/v;->l:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmdp/speechkit/h;->setPrompt(ILcom/nuance/nmdp/speechkit/Prompt;)V

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->m:Lcom/nuance/nmdp/speechkit/Prompt;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/v;->m:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmdp/speechkit/h;->setPrompt(ILcom/nuance/nmdp/speechkit/Prompt;)V

    :cond_3
    return-void
.end method

.method static final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/RuntimeException;)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/RuntimeException;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ab;->c(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0
.end method

.method static final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null or empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/RuntimeException;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/nuance/nmdp/speechkit/v;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/v;->k:Lcom/nuance/nmdp/speechkit/Prompt;

    return-object p1
.end method

.method static synthetic b(Lcom/nuance/nmdp/speechkit/v;)Lcom/nuance/nmdp/speechkit/an;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->c:Lcom/nuance/nmdp/speechkit/an;

    return-object v0
.end method

.method static b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/nuance/nmdp/speechkit/v;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/nmdp/speechkit/v;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/v;->l:Lcom/nuance/nmdp/speechkit/Prompt;

    return-object p1
.end method

.method static synthetic c(Lcom/nuance/nmdp/speechkit/v;)Lcom/nuance/nmdp/speechkit/bz;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->i:Lcom/nuance/nmdp/speechkit/bz;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/nmdp/speechkit/v;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/v;->m:Lcom/nuance/nmdp/speechkit/Prompt;

    return-object p1
.end method

.method static synthetic d(Lcom/nuance/nmdp/speechkit/v;)Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->q:Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/nmdp/speechkit/v;)Lcom/nuance/nmdp/speechkit/b;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->p:Lcom/nuance/nmdp/speechkit/b;

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/nmdp/speechkit/v;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmdp/speechkit/v;->s:I

    return v0
.end method

.method static final f()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpeechKit instance is released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method static synthetic g(Lcom/nuance/nmdp/speechkit/v;)I
    .locals 1

    iget v0, p0, Lcom/nuance/nmdp/speechkit/v;->t:I

    return v0
.end method

.method static synthetic h(Lcom/nuance/nmdp/speechkit/v;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/v;->r:Z

    return v0
.end method

.method static synthetic n()Lcom/nuance/nmdp/speechkit/v;
    .locals 1

    sget-object v0, Lcom/nuance/nmdp/speechkit/v;->a:Lcom/nuance/nmdp/speechkit/v;

    return-object v0
.end method

.method static synthetic o()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/nuance/nmdp/speechkit/v;->o:Ljava/lang/Object;

    return-object v0
.end method

.method private p()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/v;->g:Z

    new-instance v0, Lcom/nuance/nmdp/speechkit/v$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/v$2;-><init>(Lcom/nuance/nmdp/speechkit/v;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;IILcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/DataUploadCommand;
    .locals 4

    const-string v0, "datablock"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/nuance/nmdp/speechkit/v;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/v;->g:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/v;->f()V

    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/d;

    invoke-direct {v0, p0, p4, p5}, Lcom/nuance/nmdp/speechkit/d;-><init>(Lcom/nuance/nmdp/speechkit/v;Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->p:Lcom/nuance/nmdp/speechkit/b;

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/v;->q:Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;

    iput p2, p0, Lcom/nuance/nmdp/speechkit/v;->s:I

    iput p3, p0, Lcom/nuance/nmdp/speechkit/v;->t:I

    new-instance v2, Lcom/nuance/nmdp/speechkit/v$5;

    invoke-direct {v2, p0}, Lcom/nuance/nmdp/speechkit/v$5;-><init>(Lcom/nuance/nmdp/speechkit/v;)V

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    sget-object v2, Lcom/nuance/nmdp/speechkit/v;->o:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-boolean v3, p0, Lcom/nuance/nmdp/speechkit/v;->r:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    :try_start_2
    sget-object v3, Lcom/nuance/nmdp/speechkit/v;->o:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/d;->b()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/GenericCommand;
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/nuance/nmdp/speechkit/v;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/v;->g:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/v;->f()V

    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/s;

    invoke-direct {v0, p0, p1, p2}, Lcom/nuance/nmdp/speechkit/s;-><init>(Lcom/nuance/nmdp/speechkit/v;Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/GenericCommand;
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/nuance/nmdp/speechkit/v;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/v;->g:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/v;->f()V

    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/j;

    invoke-direct {v0, p0, p3, p4, p5}, Lcom/nuance/nmdp/speechkit/j;-><init>(Lcom/nuance/nmdp/speechkit/v;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;Ljava/lang/Object;)V

    new-instance v2, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>()V

    const-string v3, "event"

    invoke-virtual {v2, v3, p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "content"

    invoke-virtual {v2, v3, p2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    const-string v3, "LOG_CONTENT"

    invoke-virtual {v0, v3, v2}, Lcom/nuance/nmdp/speechkit/j;->addParam(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/NluRecognizer;
    .locals 11

    const-string v1, "type"

    invoke-static {p1, v1}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "language"

    invoke-static {p3, v1}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "listener"

    move-object/from16 v0, p6

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "requestParams"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lcom/nuance/nmdp/speechkit/v;->b:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/v;->g:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/v;->f()V

    :cond_0
    new-instance v1, Lcom/nuance/nmdp/speechkit/l;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/nuance/nmdp/speechkit/l;-><init>(Lcom/nuance/nmdp/speechkit/v;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/nuance/nmdp/speechkit/v;->a(Lcom/nuance/nmdp/speechkit/h;)V

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .locals 8

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p3, v0}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lcom/nuance/nmdp/speechkit/v;->b:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/v;->g:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/v;->f()V

    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/p;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/p;-><init>(Lcom/nuance/nmdp/speechkit/v;Ljava/lang/String;ILjava/lang/String;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/v;->a(Lcom/nuance/nmdp/speechkit/h;)V

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/TextRecognizer;
    .locals 8

    const-string v0, "language"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestParams"

    invoke-static {p3, v0}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lcom/nuance/nmdp/speechkit/v;->b:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/v;->g:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/v;->f()V

    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/x;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/x;-><init>(Lcom/nuance/nmdp/speechkit/v;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;Ljava/lang/Object;)V

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/Vocalizer;
    .locals 7

    const-string v0, "language"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/nuance/nmdp/speechkit/v;->b:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/v;->g:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/v;->f()V

    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/z;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/z;-><init>(Lcom/nuance/nmdp/speechkit/v;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;Ljava/lang/Object;)V

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method final a(Lcom/nuance/nmdp/speechkit/Prompt;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->i:Lcom/nuance/nmdp/speechkit/bz;

    invoke-virtual {v0, p1}, Lcom/nuance/nmdp/speechkit/bz;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->i:Lcom/nuance/nmdp/speechkit/bz;

    invoke-virtual {v0, p1}, Lcom/nuance/nmdp/speechkit/bz;->b(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/Prompt;->a()Lcom/nuance/nmdp/speechkit/cb;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/cb;->c()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->j:Lcom/nuance/nmdp/speechkit/Prompt;

    if-ne p1, v0, :cond_1

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/v;->j:Lcom/nuance/nmdp/speechkit/Prompt;

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->k:Lcom/nuance/nmdp/speechkit/Prompt;

    if-ne p1, v0, :cond_2

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/v;->k:Lcom/nuance/nmdp/speechkit/Prompt;

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->l:Lcom/nuance/nmdp/speechkit/Prompt;

    if-ne p1, v0, :cond_3

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/v;->l:Lcom/nuance/nmdp/speechkit/Prompt;

    :cond_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->m:Lcom/nuance/nmdp/speechkit/Prompt;

    if-ne p1, v0, :cond_4

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/v;->m:Lcom/nuance/nmdp/speechkit/Prompt;

    :cond_4
    return-void
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;)V
    .locals 6

    sget-object v1, Lcom/nuance/nmdp/speechkit/v;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/v;->g:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/v;->f()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/nuance/nmdp/speechkit/v$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/v$6;-><init>(Lcom/nuance/nmdp/speechkit/v;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->n:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0, p1}, Lcom/nuance/nmdp/speechkit/al;->a(Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)V

    return-void
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/SpeechKit$Listener;)V
    .locals 2

    sget-object v1, Lcom/nuance/nmdp/speechkit/v;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/v;->g:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/v;->f()V

    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/v$4;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmdp/speechkit/v$4;-><init>(Lcom/nuance/nmdp/speechkit/v;Lcom/nuance/nmdp/speechkit/SpeechKit$Listener;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/v;->h:Ljava/lang/Object;

    return-void
.end method

.method final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/v;->g:Z

    return v0
.end method

.method public final b(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/Vocalizer;
    .locals 7

    const-string v0, "voice"

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lcom/nuance/nmdp/speechkit/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/nuance/nmdp/speechkit/v;->b:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/v;->g:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/v;->f()V

    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/z;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/z;-><init>(Lcom/nuance/nmdp/speechkit/v;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;Ljava/lang/Object;)V

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public final b(Lcom/nuance/nmdp/speechkit/Prompt;)V
    .locals 2

    sget-object v1, Lcom/nuance/nmdp/speechkit/v;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->i:Lcom/nuance/nmdp/speechkit/bz;

    invoke-virtual {v0, p1}, Lcom/nuance/nmdp/speechkit/bz;->a(Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final c()Lcom/nuance/nmdp/speechkit/an;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->c:Lcom/nuance/nmdp/speechkit/an;

    return-object v0
.end method

.method final d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->h:Ljava/lang/Object;

    return-object v0
.end method

.method final e()V
    .locals 2

    sget-object v1, Lcom/nuance/nmdp/speechkit/v;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/v;->g:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/v;->f()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final g()V
    .locals 2

    sget-object v1, Lcom/nuance/nmdp/speechkit/v;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nuance/nmdp/speechkit/v;->a:Lcom/nuance/nmdp/speechkit/v;

    if-ne p0, v0, :cond_0

    const-string v0, "Releasing SpeechKit instance"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/v;->p()V

    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/nmdp/speechkit/v;->a:Lcom/nuance/nmdp/speechkit/v;

    new-instance v0, Lcom/nuance/nmdp/speechkit/v$3;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/v$3;-><init>()V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const-string v0, "SpeechKit instance already released"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/nuance/nmdp/speechkit/v;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->c:Lcom/nuance/nmdp/speechkit/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->c:Lcom/nuance/nmdp/speechkit/an;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/an;->c()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final i()V
    .locals 2

    sget-object v1, Lcom/nuance/nmdp/speechkit/v;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/v;->g:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/nmdp/speechkit/v;->f()V

    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/v$7;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/v$7;-><init>(Lcom/nuance/nmdp/speechkit/v;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->n:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->n:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->n:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v;->n:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->z()Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    move-result-object v0

    return-object v0
.end method
