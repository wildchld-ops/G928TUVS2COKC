.class public final Lcom/nuance/nmdp/speechkit/an;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/nuance/nmdp/speechkit/ah;

.field private b:Lcom/nuance/nmdp/speechkit/de;

.field private c:Lcom/nuance/nmdp/speechkit/cj;

.field private d:Lcom/nuance/nmdp/speechkit/cj;

.field private final e:Lcom/nuance/nmdp/speechkit/df;

.field private f:Lcom/nuance/nmdp/speechkit/al;

.field private g:Ljava/lang/String;

.field private h:Z

.field private final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/al;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    new-instance v0, Lcom/nuance/nmdp/speechkit/an$8;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/an$8;-><init>(Lcom/nuance/nmdp/speechkit/an;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->e:Lcom/nuance/nmdp/speechkit/df;

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/an;->g:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/an;->h:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->i:Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->q()Lcom/nuance/nmdp/speechkit/cj;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->c:Lcom/nuance/nmdp/speechkit/cj;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->r()Lcom/nuance/nmdp/speechkit/cj;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->d:Lcom/nuance/nmdp/speechkit/cj;

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/an;->e()Lcom/nuance/nmdp/speechkit/de;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->b:Lcom/nuance/nmdp/speechkit/de;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->b:Lcom/nuance/nmdp/speechkit/de;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/an;->h:Z

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/an;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/an;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/an;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "Restarting NMSP manager"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->q()Lcom/nuance/nmdp/speechkit/cj;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->c:Lcom/nuance/nmdp/speechkit/cj;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->r()Lcom/nuance/nmdp/speechkit/cj;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->d:Lcom/nuance/nmdp/speechkit/cj;

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->b:Lcom/nuance/nmdp/speechkit/de;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/de;->b_()V

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/an;->e()Lcom/nuance/nmdp/speechkit/de;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->b:Lcom/nuance/nmdp/speechkit/de;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->b:Lcom/nuance/nmdp/speechkit/de;

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/an;->h:Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/an;Lcom/nuance/nmdp/speechkit/ah;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nuance/nmdp/speechkit/an;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->i:Ljava/lang/Object;

    return-object v0
.end method

.method private e()Lcom/nuance/nmdp/speechkit/de;
    .locals 13

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->e()I

    move-result v0

    int-to-short v2, v0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->s()Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->g()Z

    move-result v0

    new-instance v8, Lcom/nuance/nmdp/speechkit/bz;

    invoke-direct {v8}, Lcom/nuance/nmdp/speechkit/bz;-><init>()V

    new-instance v3, Lcom/nuance/nmdp/speechkit/cz;

    const-string v4, "Android_Context"

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v5}, Lcom/nuance/nmdp/speechkit/al;->a()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    invoke-direct {v3, v4, v5, v6}, Lcom/nuance/nmdp/speechkit/cz;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cz$a;)V

    invoke-virtual {v8, v3}, Lcom/nuance/nmdp/speechkit/bz;->a(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/nmdp/speechkit/cz;

    const-string v3, "SSL_Socket_Enable"

    const-string v4, "TRUE"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget-object v5, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    invoke-direct {v0, v3, v4, v5}, Lcom/nuance/nmdp/speechkit/cz;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cz$a;)V

    invoke-virtual {v8, v0}, Lcom/nuance/nmdp/speechkit/bz;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->c()[B

    move-result-object v4

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->o()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/an;->d:Lcom/nuance/nmdp/speechkit/cj;

    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/an;->c:Lcom/nuance/nmdp/speechkit/cj;

    invoke-virtual {v8}, Lcom/nuance/nmdp/speechkit/bz;->f()Ljava/util/Vector;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/nmdp/speechkit/an;->e:Lcom/nuance/nmdp/speechkit/df;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "gatewayIP must be provided!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to create NMSP manager"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    if-gtz v2, :cond_3

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "gatewayPort invalid value!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez v3, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Application id can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez v4, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Application key can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez v5, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uid can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-nez v6, :cond_7

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inputCodec can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-nez v7, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outputCodec can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-nez v9, :cond_9

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "managerListener can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-eqz v8, :cond_c

    const/4 v0, 0x0

    move v10, v0

    :goto_1
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v10, v0, :cond_c

    invoke-virtual {v8, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/cz;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v11

    sget-object v12, Lcom/nuance/nmdp/speechkit/cz$a;->e:Lcom/nuance/nmdp/speechkit/cz$a;

    if-eq v11, v12, :cond_a

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v11

    sget-object v12, Lcom/nuance/nmdp/speechkit/cz$a;->f:Lcom/nuance/nmdp/speechkit/cz$a;

    if-eq v11, v12, :cond_a

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v11

    sget-object v12, Lcom/nuance/nmdp/speechkit/cz$a;->g:Lcom/nuance/nmdp/speechkit/cz$a;

    if-eq v11, v12, :cond_a

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v11

    sget-object v12, Lcom/nuance/nmdp/speechkit/cz$a;->h:Lcom/nuance/nmdp/speechkit/cz$a;

    if-eq v11, v12, :cond_a

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v11

    sget-object v12, Lcom/nuance/nmdp/speechkit/cz$a;->d:Lcom/nuance/nmdp/speechkit/cz$a;

    if-eq v11, v12, :cond_a

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v11

    sget-object v12, Lcom/nuance/nmdp/speechkit/cz$a;->i:Lcom/nuance/nmdp/speechkit/cz$a;

    if-eq v11, v12, :cond_a

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v11

    sget-object v12, Lcom/nuance/nmdp/speechkit/cz$a;->j:Lcom/nuance/nmdp/speechkit/cz$a;

    if-ne v11, v12, :cond_b

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not allowed. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_1

    :cond_c
    new-instance v0, Lcom/nuance/nmdp/speechkit/dj;

    invoke-direct/range {v0 .. v9}, Lcom/nuance/nmdp/speechkit/dj;-><init>(Ljava/lang/String;SLjava/lang/String;[BLjava/lang/String;Lcom/nuance/nmdp/speechkit/cj;Lcom/nuance/nmdp/speechkit/cj;Ljava/util/Vector;Lcom/nuance/nmdp/speechkit/df;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private f()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->q()Lcom/nuance/nmdp/speechkit/cj;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/al;->r()Lcom/nuance/nmdp/speechkit/cj;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/an;->c:Lcom/nuance/nmdp/speechkit/cj;

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/an;->d:Lcom/nuance/nmdp/speechkit/cj;

    if-eq v2, v1, :cond_1

    :cond_0
    const-string v2, "Supported codecs changed, restarting NMSP manager"

    invoke-static {p0, v2}, Lcom/nuance/nmdp/speechkit/ab;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->c:Lcom/nuance/nmdp/speechkit/cj;

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/an;->d:Lcom/nuance/nmdp/speechkit/cj;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->b:Lcom/nuance/nmdp/speechkit/de;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/de;->b_()V

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/an;->e()Lcom/nuance/nmdp/speechkit/de;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->b:Lcom/nuance/nmdp/speechkit/de;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->b:Lcom/nuance/nmdp/speechkit/de;

    if-nez v0, :cond_1

    iput-object v3, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/an;->h:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/nuance/nmdp/speechkit/ai;)Lcom/nuance/nmdp/speechkit/ah;
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/an;->h:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/an;->f()V

    new-instance v1, Lcom/nuance/nmdp/speechkit/an$7;

    invoke-direct {v1, p0, p1}, Lcom/nuance/nmdp/speechkit/an$7;-><init>(Lcom/nuance/nmdp/speechkit/an;Lcom/nuance/nmdp/speechkit/ai;)V

    new-instance v0, Lcom/nuance/nmdp/speechkit/aw;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/an;->b:Lcom/nuance/nmdp/speechkit/de;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    invoke-direct {v0, v2, v3, v1}, Lcom/nuance/nmdp/speechkit/aw;-><init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;Lcom/nuance/nmdp/speechkit/ai;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/nuance/nmdp/speechkit/br;)Lcom/nuance/nmdp/speechkit/ah;
    .locals 9

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/an;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/ah;->b()V

    :cond_1
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/an;->f()V

    new-instance v0, Lcom/nuance/nmdp/speechkit/bv;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/an;->b:Lcom/nuance/nmdp/speechkit/de;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/an;->c:Lcom/nuance/nmdp/speechkit/cj;

    new-instance v8, Lcom/nuance/nmdp/speechkit/an$6;

    invoke-direct {v8, p0, p5}, Lcom/nuance/nmdp/speechkit/an$6;-><init>(Lcom/nuance/nmdp/speechkit/an;Lcom/nuance/nmdp/speechkit/br;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/nuance/nmdp/speechkit/bv;-><init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/nuance/nmdp/speechkit/cj;Lcom/nuance/nmdp/speechkit/br;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/ai;)Lcom/nuance/nmdp/speechkit/ah;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/ar;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/cg",
            "<*>;",
            "Lcom/nuance/nmdp/speechkit/ai;",
            ")",
            "Lcom/nuance/nmdp/speechkit/ah;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/an;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/ah;->b()V

    :cond_1
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/an;->f()V

    new-instance v0, Lcom/nuance/nmdp/speechkit/aq;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/an;->b:Lcom/nuance/nmdp/speechkit/de;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    new-instance v6, Lcom/nuance/nmdp/speechkit/an$4;

    invoke-direct {v6, p0, p4}, Lcom/nuance/nmdp/speechkit/an$4;-><init>(Lcom/nuance/nmdp/speechkit/an;Lcom/nuance/nmdp/speechkit/ai;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/aq;-><init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;Ljava/lang/String;Ljava/util/List;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/ai;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/ai;)Lcom/nuance/nmdp/speechkit/ah;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/ar;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/cg",
            "<*>;",
            "Lcom/nuance/nmdp/speechkit/ai;",
            ")",
            "Lcom/nuance/nmdp/speechkit/ah;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/an;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/ah;->b()V

    :cond_1
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/an;->f()V

    new-instance v0, Lcom/nuance/nmdp/speechkit/av;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/an;->b:Lcom/nuance/nmdp/speechkit/de;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    new-instance v6, Lcom/nuance/nmdp/speechkit/an$5;

    invoke-direct {v6, p0, p4}, Lcom/nuance/nmdp/speechkit/an$5;-><init>(Lcom/nuance/nmdp/speechkit/an;Lcom/nuance/nmdp/speechkit/ai;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/av;-><init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;Ljava/util/List;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/ai;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/bd;Lcom/nuance/nmdp/speechkit/bb;)Lcom/nuance/nmdp/speechkit/ba;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;",
            "Lcom/nuance/nmdp/speechkit/cg",
            "<*>;",
            "Lcom/nuance/nmdp/speechkit/bd;",
            "Lcom/nuance/nmdp/speechkit/bb;",
            ")",
            "Lcom/nuance/nmdp/speechkit/ba;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/an;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/ah;->b()V

    :cond_1
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/an;->f()V

    new-instance v0, Lcom/nuance/nmdp/speechkit/bo;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/an;->b:Lcom/nuance/nmdp/speechkit/de;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    new-instance v8, Lcom/nuance/nmdp/speechkit/an$3;

    invoke-direct {v8, p0, p6}, Lcom/nuance/nmdp/speechkit/an$3;-><init>(Lcom/nuance/nmdp/speechkit/an;Lcom/nuance/nmdp/speechkit/bb;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/nuance/nmdp/speechkit/bo;-><init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/bd;Lcom/nuance/nmdp/speechkit/bb;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ZZLjava/lang/String;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/bd;Lcom/nuance/nmdp/speechkit/bb;)Lcom/nuance/nmdp/speechkit/ba;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/cb;",
            "Lcom/nuance/nmdp/speechkit/cb;",
            "Lcom/nuance/nmdp/speechkit/cb;",
            "Lcom/nuance/nmdp/speechkit/cb;",
            "Lcom/nuance/nmdp/speechkit/cg",
            "<*>;",
            "Lcom/nuance/nmdp/speechkit/bd;",
            "Lcom/nuance/nmdp/speechkit/bb;",
            ")",
            "Lcom/nuance/nmdp/speechkit/ba;"
        }
    .end annotation

    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/an;->h:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    invoke-interface {v1}, Lcom/nuance/nmdp/speechkit/ah;->b()V

    :cond_1
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/an;->f()V

    new-instance v1, Lcom/nuance/nmdp/speechkit/bn;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/an;->b:Lcom/nuance/nmdp/speechkit/de;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    new-instance v14, Lcom/nuance/nmdp/speechkit/an$1;

    move-object/from16 v0, p11

    invoke-direct {v14, p0, v0}, Lcom/nuance/nmdp/speechkit/an$1;-><init>(Lcom/nuance/nmdp/speechkit/an;Lcom/nuance/nmdp/speechkit/bb;)V

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v1 .. v14}, Lcom/nuance/nmdp/speechkit/bn;-><init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;Ljava/lang/String;ZZLjava/lang/String;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/bd;Lcom/nuance/nmdp/speechkit/bb;)V

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/bd;Lcom/nuance/nmdp/speechkit/bb;)Lcom/nuance/nmdp/speechkit/ba;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;",
            "Lcom/nuance/nmdp/speechkit/cb;",
            "Lcom/nuance/nmdp/speechkit/cb;",
            "Lcom/nuance/nmdp/speechkit/cb;",
            "Lcom/nuance/nmdp/speechkit/cb;",
            "Lcom/nuance/nmdp/speechkit/cg",
            "<*>;",
            "Lcom/nuance/nmdp/speechkit/bd;",
            "Lcom/nuance/nmdp/speechkit/bb;",
            ")",
            "Lcom/nuance/nmdp/speechkit/ba;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/nuance/nmdp/speechkit/an;->h:Z

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/ah;->b()V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/nuance/nmdp/speechkit/an;->f()V

    new-instance v3, Lcom/nuance/nmdp/speechkit/bm;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmdp/speechkit/an;->b:Lcom/nuance/nmdp/speechkit/de;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    new-instance v18, Lcom/nuance/nmdp/speechkit/an$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p13

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/an$2;-><init>(Lcom/nuance/nmdp/speechkit/an;Lcom/nuance/nmdp/speechkit/bb;)V

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    invoke-direct/range {v3 .. v18}, Lcom/nuance/nmdp/speechkit/bm;-><init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/bd;Lcom/nuance/nmdp/speechkit/bb;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/an;->h:Z

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/ah;->b()V

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->b:Lcom/nuance/nmdp/speechkit/de;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->b:Lcom/nuance/nmdp/speechkit/de;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/de;->b_()V

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/an;->b:Lcom/nuance/nmdp/speechkit/de;

    :cond_1
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/an;->f:Lcom/nuance/nmdp/speechkit/al;

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/an;->h:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/an;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->g:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/ah;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/an;->a:Lcom/nuance/nmdp/speechkit/ah;

    :cond_0
    return-void
.end method
