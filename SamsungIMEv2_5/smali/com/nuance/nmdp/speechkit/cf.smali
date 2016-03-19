.class public final Lcom/nuance/nmdp/speechkit/cf;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/nuance/nmdp/speechkit/bz;


# instance fields
.field private final b:Lcom/nuance/nmdp/speechkit/bz$a;

.field private final c:Lcom/nuance/nmdp/speechkit/cc;

.field private d:Lcom/nuance/nmdp/speechkit/cv;

.field private final e:Ljava/lang/Object;

.field private final f:Lcom/nuance/nmdp/speechkit/cu;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private final k:Ljava/lang/Object;

.field private final l:Ljava/lang/Object;

.field private final m:Lcom/nuance/nmdp/speechkit/al;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nuance/nmdp/speechkit/bz;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/bz;-><init>()V

    sput-object v0, Lcom/nuance/nmdp/speechkit/cf;->a:Lcom/nuance/nmdp/speechkit/bz;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmdp/speechkit/de;ZZLjava/lang/Object;Lcom/nuance/nmdp/speechkit/al;Lcom/nuance/nmdp/speechkit/cc;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/de;",
            "ZZ",
            "Ljava/lang/Object;",
            "Lcom/nuance/nmdp/speechkit/al;",
            "Lcom/nuance/nmdp/speechkit/cc;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nuance/nmdp/speechkit/cf$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/cf$2;-><init>(Lcom/nuance/nmdp/speechkit/cf;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cf;->f:Lcom/nuance/nmdp/speechkit/cu;

    iput-object p6, p0, Lcom/nuance/nmdp/speechkit/cf;->c:Lcom/nuance/nmdp/speechkit/cc;

    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/cf;->e:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/nuance/nmdp/speechkit/cf;->g:Z

    iput-boolean v2, p0, Lcom/nuance/nmdp/speechkit/cf;->h:Z

    iput-boolean v2, p0, Lcom/nuance/nmdp/speechkit/cf;->j:Z

    iput-boolean v2, p0, Lcom/nuance/nmdp/speechkit/cf;->i:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cf;->k:Ljava/lang/Object;

    invoke-virtual {p5}, Lcom/nuance/nmdp/speechkit/al;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cf;->l:Ljava/lang/Object;

    sget-object v0, Lcom/nuance/nmdp/speechkit/cf;->a:Lcom/nuance/nmdp/speechkit/bz;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bz;->c()I

    move-result v0

    if-nez v0, :cond_a

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cf;->b:Lcom/nuance/nmdp/speechkit/bz$a;

    iput-object p5, p0, Lcom/nuance/nmdp/speechkit/cf;->m:Lcom/nuance/nmdp/speechkit/al;

    new-instance v0, Lcom/nuance/nmdp/speechkit/bz;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/bz;-><init>()V

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/cf;->b:Lcom/nuance/nmdp/speechkit/bz$a;

    if-nez v2, :cond_0

    if-eqz p2, :cond_b

    new-instance v2, Lcom/nuance/nmdp/speechkit/cz;

    const-string v3, "ep.enable"

    const-string v4, "TRUE"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmdp/speechkit/cz;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cz$a;)V

    invoke-virtual {v0, v2}, Lcom/nuance/nmdp/speechkit/bz;->a(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    new-instance v2, Lcom/nuance/nmdp/speechkit/cz;

    const-string v3, "USE_ENERGY_LEVEL"

    const-string v4, "TRUE"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmdp/speechkit/cz;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cz$a;)V

    invoke-virtual {v0, v2}, Lcom/nuance/nmdp/speechkit/bz;->a(Ljava/lang/Object;)V

    new-instance v2, Lcom/nuance/nmdp/speechkit/cz;

    const-string v3, "Android_Context"

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/cf;->l:Ljava/lang/Object;

    sget-object v5, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmdp/speechkit/cz;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cz$a;)V

    invoke-virtual {v0, v2}, Lcom/nuance/nmdp/speechkit/bz;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/cf;->m:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/al;->A()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/nuance/nmdp/speechkit/cz;

    const-string v3, "samsung.custom.EnableEpd"

    const-string v4, "TRUE"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmdp/speechkit/cz;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cz$a;)V

    invoke-virtual {v0, v2}, Lcom/nuance/nmdp/speechkit/bz;->a(Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/cf;->m:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/al;->B()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Lcom/nuance/nmdp/speechkit/cz;

    const-string v3, "samsung.ep.StartSilenceTimeout"

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/cf;->m:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v4}, Lcom/nuance/nmdp/speechkit/al;->B()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmdp/speechkit/cz;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cz$a;)V

    invoke-virtual {v0, v2}, Lcom/nuance/nmdp/speechkit/bz;->a(Ljava/lang/Object;)V

    :cond_2
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/cf;->m:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/al;->C()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Lcom/nuance/nmdp/speechkit/cz;

    const-string v3, "samsung.ep.InterSilenceTimeout"

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/cf;->m:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v4}, Lcom/nuance/nmdp/speechkit/al;->C()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmdp/speechkit/cz;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cz$a;)V

    invoke-virtual {v0, v2}, Lcom/nuance/nmdp/speechkit/bz;->a(Ljava/lang/Object;)V

    :cond_3
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/cf;->m:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/al;->D()I

    move-result v2

    const/16 v3, 0x3e80

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/cf;->m:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/al;->D()I

    move-result v2

    const/16 v3, 0x1f40

    if-ne v2, v3, :cond_5

    :cond_4
    new-instance v2, Lcom/nuance/nmdp/speechkit/cz;

    const-string v3, "samsung.custom.SampleRate"

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/cf;->m:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v4}, Lcom/nuance/nmdp/speechkit/al;->D()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmdp/speechkit/cz;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cz$a;)V

    invoke-virtual {v0, v2}, Lcom/nuance/nmdp/speechkit/bz;->a(Ljava/lang/Object;)V

    :cond_5
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/cf;->m:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/al;->E()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lcom/nuance/nmdp/speechkit/cz;

    const-string v3, "samsung.custom.EnableDrc"

    const-string v4, "TRUE"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmdp/speechkit/cz;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cz$a;)V

    invoke-virtual {v0, v2}, Lcom/nuance/nmdp/speechkit/bz;->a(Ljava/lang/Object;)V

    :cond_6
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/cf;->m:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/al;->F()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/nuance/nmdp/speechkit/cz;

    const-string v3, "samsung.custom.EnableNs"

    const-string v4, "TRUE"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmdp/speechkit/cz;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cz$a;)V

    invoke-virtual {v0, v2}, Lcom/nuance/nmdp/speechkit/bz;->a(Ljava/lang/Object;)V

    :cond_7
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/cf;->m:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/al;->G()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lcom/nuance/nmdp/speechkit/cz;

    const-string v3, "samsung.custom.EnableAmplify"

    const-string v4, "TRUE"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmdp/speechkit/cz;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cz$a;)V

    invoke-virtual {v0, v2}, Lcom/nuance/nmdp/speechkit/bz;->a(Ljava/lang/Object;)V

    :cond_8
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/cf;->m:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/al;->H()Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Lcom/nuance/nmdp/speechkit/cz;

    const-string v3, "samsung.custom.EnableDumpAudio"

    const-string v4, "TRUE"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmdp/speechkit/cz;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cz$a;)V

    invoke-virtual {v0, v2}, Lcom/nuance/nmdp/speechkit/bz;->a(Ljava/lang/Object;)V

    :cond_9
    :try_start_0
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/cf;->f:Lcom/nuance/nmdp/speechkit/cu;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bz;->f()Ljava/util/Vector;

    move-result-object v0

    sget-object v3, Lcom/nuance/nmdp/speechkit/ch;->a:Lcom/nuance/nmdp/speechkit/ch;

    if-nez v2, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "NMSPAudioRecordListener can not be null!"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "Error creating recorder"

    invoke-static {p0, v2, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/cf;->d:Lcom/nuance/nmdp/speechkit/cv;

    :goto_2
    return-void

    :cond_a
    sget-object v0, Lcom/nuance/nmdp/speechkit/cf;->a:Lcom/nuance/nmdp/speechkit/bz;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bz;->e()Lcom/nuance/nmdp/speechkit/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bz;->d()Lcom/nuance/nmdp/speechkit/bz$a;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    if-eqz p3, :cond_0

    new-instance v2, Lcom/nuance/nmdp/speechkit/cz;

    const-string v3, "ep.enable"

    const-string v4, "TRUE"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmdp/speechkit/cz;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cz$a;)V

    invoke-virtual {v0, v2}, Lcom/nuance/nmdp/speechkit/bz;->a(Ljava/lang/Object;)V

    new-instance v2, Lcom/nuance/nmdp/speechkit/cz;

    const-string v3, "ep.VadLongUtterance"

    const-string v4, "TRUE"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/nmdp/speechkit/cz;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cz$a;)V

    invoke-virtual {v0, v2}, Lcom/nuance/nmdp/speechkit/bz;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_c
    if-nez p1, :cond_d

    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Manager can not be null!"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v4, Lcom/nuance/nmdp/speechkit/dd;

    invoke-direct {v4, v2, p1, v0, v3}, Lcom/nuance/nmdp/speechkit/dd;-><init>(Lcom/nuance/nmdp/speechkit/cu;Lcom/nuance/nmdp/speechkit/de;Ljava/util/Vector;Lcom/nuance/nmdp/speechkit/ch;)V

    iput-object v4, p0, Lcom/nuance/nmdp/speechkit/cf;->d:Lcom/nuance/nmdp/speechkit/cv;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/cf;)Lcom/nuance/nmdp/speechkit/bz$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cf;->b:Lcom/nuance/nmdp/speechkit/bz$a;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/nmdp/speechkit/cf;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cf;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c()Lcom/nuance/nmdp/speechkit/bz;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/nmdp/speechkit/cf;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cf;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/nuance/nmdp/speechkit/cf;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cf;->j:Z

    return v0
.end method

.method static synthetic e(Lcom/nuance/nmdp/speechkit/cf;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cf;->j:Z

    return v0
.end method

.method static synthetic f(Lcom/nuance/nmdp/speechkit/cf;)Lcom/nuance/nmdp/speechkit/cv;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cf;->d:Lcom/nuance/nmdp/speechkit/cv;

    return-object v0
.end method

.method static synthetic g(Lcom/nuance/nmdp/speechkit/cf;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cf;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h(Lcom/nuance/nmdp/speechkit/cf;)Lcom/nuance/nmdp/speechkit/cc;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cf;->c:Lcom/nuance/nmdp/speechkit/cc;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cf;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cf;->g:Z

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cf;->d:Lcom/nuance/nmdp/speechkit/cv;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "Starting recorder"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cf;->d:Lcom/nuance/nmdp/speechkit/cv;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/cv;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error starting recorder"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cf;->c:Lcom/nuance/nmdp/speechkit/cc;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cf;->e:Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cc;->a(I)V

    goto :goto_0

    :cond_1
    const-string v0, "Recorder already started"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/cx;)V
    .locals 2

    const-string v0, "Capturing audio from recorder"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cf;->b:Lcom/nuance/nmdp/speechkit/bz$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cf;->d:Lcom/nuance/nmdp/speechkit/cv;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/cv;->a(Lcom/nuance/nmdp/speechkit/cx;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cf;->d:Lcom/nuance/nmdp/speechkit/cv;

    new-instance v1, Lcom/nuance/nmdp/speechkit/cf$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/nmdp/speechkit/cf$1;-><init>(Lcom/nuance/nmdp/speechkit/cf;Lcom/nuance/nmdp/speechkit/cx;)V

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cv;->a(Lcom/nuance/nmdp/speechkit/cx;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cf;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cf;->h:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/cf;->h:Z

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cf;->d:Lcom/nuance/nmdp/speechkit/cv;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cf;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cf;->i:Z

    if-nez v0, :cond_0

    const-string v0, "Stopping recorder"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cf;->d:Lcom/nuance/nmdp/speechkit/cv;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/cv;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cf;->j:Z

    :goto_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cf;->i:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cf;->k:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v1

    :cond_1
    :goto_1
    return-void

    :catch_1
    move-exception v0

    const-string v2, "Error stopping recorder"

    invoke-static {p0, v2, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cf;->i:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    const-string v0, "Can\'t stop recorder because it wasn\'t started"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cf;->c:Lcom/nuance/nmdp/speechkit/cc;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cf;->e:Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cc;->a(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
