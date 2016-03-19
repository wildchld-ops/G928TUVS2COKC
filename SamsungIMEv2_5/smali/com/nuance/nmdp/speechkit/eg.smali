.class public final Lcom/nuance/nmdp/speechkit/eg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/cl$b;
.implements Lcom/nuance/nmdp/speechkit/ei;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/eg$a;
    }
.end annotation


# instance fields
.field protected a:B

.field private b:Lcom/nuance/nmdp/speechkit/dn;

.field private c:Lcom/nuance/nmdp/speechkit/di;

.field private d:Lcom/nuance/nmdp/speechkit/el;

.field private e:Lcom/nuance/nmdp/speechkit/dk;

.field private f:S

.field private g:Lcom/nuance/nmdp/speechkit/cl;

.field private h:Lcom/nuance/nmdp/speechkit/co;

.field private i:J

.field private j:Z

.field private k:Lcom/nuance/nmdp/speechkit/eg$a;

.field private l:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/nuance/nmdp/speechkit/cl;Lcom/nuance/nmdp/speechkit/el;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/dk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/cj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;Lcom/nuance/nmdp/speechkit/dn;Lcom/nuance/nmdp/speechkit/di;B)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/eg;->d:Lcom/nuance/nmdp/speechkit/el;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/eg;->e:Lcom/nuance/nmdp/speechkit/dk;

    const/4 v2, -0x1

    iput-short v2, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/nmdp/speechkit/eg;->j:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/eg;->l:Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/eg;->g:Lcom/nuance/nmdp/speechkit/cl;

    iput-object p5, p0, Lcom/nuance/nmdp/speechkit/eg;->e:Lcom/nuance/nmdp/speechkit/dk;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/eg;->d:Lcom/nuance/nmdp/speechkit/el;

    const-wide/16 v2, 0x7530

    iput-wide v2, p0, Lcom/nuance/nmdp/speechkit/eg;->i:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->b:Lcom/nuance/nmdp/speechkit/dn;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->c:Lcom/nuance/nmdp/speechkit/di;

    move/from16 v0, p21

    iput-byte v0, p0, Lcom/nuance/nmdp/speechkit/eg;->a:B

    invoke-virtual/range {p19 .. p19}, Lcom/nuance/nmdp/speechkit/dn;->d()Lcom/nuance/nmdp/speechkit/de;

    move-result-object v2

    check-cast v2, Lcom/nuance/nmdp/speechkit/dj;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/dj;->h()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/nuance/nmdp/speechkit/eg$a;

    iget-byte v3, p0, Lcom/nuance/nmdp/speechkit/eg;->a:B

    invoke-direct {v2, v3, p0}, Lcom/nuance/nmdp/speechkit/eg$a;-><init>(ILcom/nuance/nmdp/speechkit/eg;)V

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/eg;->k:Lcom/nuance/nmdp/speechkit/eg$a;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/eg;->k:Lcom/nuance/nmdp/speechkit/eg$a;

    const-string v3, "INTERNAL_ERROR"

    invoke-static {v2, v3}, Lcom/nuance/nmdp/speechkit/eg;->b(Lcom/nuance/nmdp/speechkit/eg$a;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/eg;->l:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    iput-short v2, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x12

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p6, v2, v3

    const/4 v3, 0x1

    aput-object p7, v2, v3

    const/4 v3, 0x2

    aput-object p8, v2, v3

    const/4 v3, 0x3

    aput-object p9, v2, v3

    const/4 v3, 0x4

    aput-object p10, v2, v3

    const/4 v3, 0x5

    aput-object p11, v2, v3

    const/4 v3, 0x6

    aput-object p12, v2, v3

    const/4 v3, 0x7

    aput-object p13, v2, v3

    const/16 v3, 0x8

    new-instance v4, Ljava/lang/Short;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Short;-><init>(S)V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-instance v4, Ljava/lang/Short;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Short;-><init>(S)V

    aput-object v4, v2, v3

    const/16 v3, 0xa

    aput-object p14, v2, v3

    const/16 v3, 0xb

    aput-object p15, v2, v3

    const/16 v3, 0xc

    aput-object p16, v2, v3

    const/16 v3, 0xd

    aput-object p17, v2, v3

    const/16 v3, 0xe

    aput-object p4, v2, v3

    const/16 v3, 0xf

    aput-object p3, v2, v3

    const/16 v3, 0x10

    aput-object p18, v2, v3

    new-instance v3, Lcom/nuance/nmdp/speechkit/cl$a;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {p1}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {p1, v3, p0, v2}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/eg;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->l:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/eg$a;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nuance/nmdp/speechkit/eg;->b(Lcom/nuance/nmdp/speechkit/eg$a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/eg;Lcom/nuance/nmdp/speechkit/eg$a;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->b:Lcom/nuance/nmdp/speechkit/dn;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dm;->d()Lcom/nuance/nmdp/speechkit/de;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dj;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dj;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static b([B)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-byte v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    :cond_0
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/nmdp/speechkit/eg;)S
    .locals 1

    const/4 v0, -0x1

    iput-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    return v0
.end method

.method private static b(Lcom/nuance/nmdp/speechkit/eg$a;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/nuance/nmdp/speechkit/eg$a;->a(Lcom/nuance/nmdp/speechkit/eg$a;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/nuance/nmdp/speechkit/eg;)Lcom/nuance/nmdp/speechkit/el;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->d:Lcom/nuance/nmdp/speechkit/el;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/nmdp/speechkit/eg;)Lcom/nuance/nmdp/speechkit/eg$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->k:Lcom/nuance/nmdp/speechkit/eg$a;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/nmdp/speechkit/eg;)Lcom/nuance/nmdp/speechkit/dk;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->e:Lcom/nuance/nmdp/speechkit/dk;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/da;,
            Lcom/nuance/nmdp/speechkit/db;
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/eg;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/nuance/nmdp/speechkit/da;

    const-string v2, "transaction already finished!"

    invoke-direct {v0, v2}, Lcom/nuance/nmdp/speechkit/da;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->g:Lcom/nuance/nmdp/speechkit/cl;

    new-instance v2, Lcom/nuance/nmdp/speechkit/cl$a;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/eg;->g:Lcom/nuance/nmdp/speechkit/cl;

    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {v0, v2, p0, v3}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    :cond_1
    monitor-exit v1

    return-void

    :cond_2
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    if-ne v0, v3, :cond_3

    new-instance v0, Lcom/nuance/nmdp/speechkit/da;

    const-string v2, "transaction already finished!"

    invoke-direct {v0, v2}, Lcom/nuance/nmdp/speechkit/da;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    new-instance v0, Lcom/nuance/nmdp/speechkit/db;

    const-string v2, "transaction already expired!"

    invoke-direct {v0, v2}, Lcom/nuance/nmdp/speechkit/db;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/ck$j;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/da;,
            Lcom/nuance/nmdp/speechkit/db;
        }
    .end annotation

    const/4 v3, 0x2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/eg;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    new-instance v0, Lcom/nuance/nmdp/speechkit/da;

    const-string v2, "transaction already finished!"

    invoke-direct {v0, v2}, Lcom/nuance/nmdp/speechkit/da;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->g:Lcom/nuance/nmdp/speechkit/cl;

    new-instance v2, Lcom/nuance/nmdp/speechkit/cl$a;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p1}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/eg;->g:Lcom/nuance/nmdp/speechkit/cl;

    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {v0, v2, p0, v3}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    :cond_2
    monitor-exit v1

    return-void

    :cond_3
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    new-instance v0, Lcom/nuance/nmdp/speechkit/da;

    const-string v2, "transaction already finished!"

    invoke-direct {v0, v2}, Lcom/nuance/nmdp/speechkit/da;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    if-ne v0, v3, :cond_2

    new-instance v0, Lcom/nuance/nmdp/speechkit/db;

    const-string v2, "transaction already expired!"

    invoke-direct {v0, v2}, Lcom/nuance/nmdp/speechkit/db;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/dz;B)V
    .locals 3

    const/4 v2, -0x1

    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/eg;->a:B

    if-eq p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/eg;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    if-eq v0, v2, :cond_1

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    const/4 v0, -0x1

    :try_start_1
    iput-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->h:Lcom/nuance/nmdp/speechkit/co;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->g:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/eg;->h:Lcom/nuance/nmdp/speechkit/co;

    invoke-interface {v0, v2}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;)Z

    :cond_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->d:Lcom/nuance/nmdp/speechkit/el;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->k:Lcom/nuance/nmdp/speechkit/eg$a;

    const-string v2, "QUERY_ERROR"

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/eg;->b(Lcom/nuance/nmdp/speechkit/eg$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->d:Lcom/nuance/nmdp/speechkit/el;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/el;->a(Lcom/nuance/nmdp/speechkit/em;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/ea;B)V
    .locals 3

    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/eg;->a:B

    if-eq p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/eg;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->h:Lcom/nuance/nmdp/speechkit/co;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/ea;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->g:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/eg;->h:Lcom/nuance/nmdp/speechkit/co;

    invoke-interface {v0, v2}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;)Z

    :cond_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->d:Lcom/nuance/nmdp/speechkit/el;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    :try_start_2
    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/ea;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->k:Lcom/nuance/nmdp/speechkit/eg$a;

    const-string v2, "FINAL_RESULT"

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/eg;->b(Lcom/nuance/nmdp/speechkit/eg$a;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->d:Lcom/nuance/nmdp/speechkit/el;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/el;->a(Lcom/nuance/nmdp/speechkit/ej;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/eb;B)V
    .locals 3

    const/4 v2, -0x1

    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/eg;->a:B

    if-eq p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/eg;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    if-eq v0, v2, :cond_1

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    const/4 v0, -0x1

    :try_start_1
    iput-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->h:Lcom/nuance/nmdp/speechkit/co;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->g:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/eg;->h:Lcom/nuance/nmdp/speechkit/co;

    invoke-interface {v0, v2}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;)Z

    :cond_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->d:Lcom/nuance/nmdp/speechkit/el;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->k:Lcom/nuance/nmdp/speechkit/eg$a;

    const-string v2, "QUERY_RETRY"

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/eg;->b(Lcom/nuance/nmdp/speechkit/eg$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->d:Lcom/nuance/nmdp/speechkit/el;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/el;->a(Lcom/nuance/nmdp/speechkit/en;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 22

    check-cast p1, Lcom/nuance/nmdp/speechkit/cl$a;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-byte v3, v0, Lcom/nuance/nmdp/speechkit/cl$a;->a:B

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v5, v2, v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v7, v2, v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v8, v2, v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x6

    aget-object v9, v2, v9

    check-cast v9, Lcom/nuance/nmdp/speechkit/cj;

    const/4 v10, 0x7

    aget-object v10, v2, v10

    check-cast v10, Ljava/lang/String;

    const/16 v11, 0x8

    aget-object v11, v2, v11

    check-cast v11, Ljava/lang/Short;

    invoke-virtual {v11}, Ljava/lang/Short;->shortValue()S

    move-result v11

    const/16 v12, 0x9

    aget-object v12, v2, v12

    check-cast v12, Ljava/lang/Short;

    invoke-virtual {v12}, Ljava/lang/Short;->shortValue()S

    move-result v12

    const/16 v13, 0xa

    aget-object v13, v2, v13

    check-cast v13, Ljava/lang/String;

    const/16 v14, 0xb

    aget-object v14, v2, v14

    check-cast v14, Ljava/lang/String;

    const/16 v15, 0xc

    aget-object v15, v2, v15

    check-cast v15, Ljava/lang/String;

    const/16 v16, 0xd

    aget-object v16, v2, v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/eg;->e:Lcom/nuance/nmdp/speechkit/dk;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/nmdp/speechkit/dk;->d()[B

    move-result-object v17

    const/16 v18, 0xe

    aget-object v18, v2, v18

    check-cast v18, Ljava/lang/String;

    const/16 v19, 0xf

    aget-object v19, v2, v19

    check-cast v19, Ljava/lang/String;

    const/16 v20, 0x10

    aget-object v20, v2, v20

    check-cast v20, Lcom/nuance/nmdp/speechkit/ej;

    new-instance v2, Lcom/nuance/nmsp/client/sdk/oem/a;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/eg;->b:Lcom/nuance/nmdp/speechkit/dn;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/dn;->b:Ljava/util/Vector;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Lcom/nuance/nmsp/client/sdk/oem/a;-><init>(Ljava/util/Vector;)V

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/oem/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v9}, Lcom/nuance/nmdp/speechkit/cs;->c(Lcom/nuance/nmdp/speechkit/cj;)Lcom/nuance/nmdp/speechkit/cj;

    move-result-object v9

    :cond_1
    invoke-static {}, Lcom/nuance/nmdp/speechkit/dm;->f()J

    new-instance v2, Lcom/nuance/nmdp/speechkit/du;

    invoke-direct/range {v2 .. v20}, Lcom/nuance/nmdp/speechkit/du;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/cj;Ljava/lang/String;SSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/nmdp/speechkit/eg;->b:Lcom/nuance/nmdp/speechkit/dn;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/dm;->d()Lcom/nuance/nmdp/speechkit/de;

    move-result-object v3

    check-cast v3, Lcom/nuance/nmdp/speechkit/dj;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/dj;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v6

    new-instance v7, Lcom/nuance/nmdp/speechkit/dt;

    invoke-direct {v7}, Lcom/nuance/nmdp/speechkit/dt;-><init>()V

    new-instance v8, Lcom/nuance/nmdp/speechkit/ed;

    invoke-direct {v8}, Lcom/nuance/nmdp/speechkit/ed;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/nmdp/speechkit/eg$a;

    invoke-virtual {v4}, Lcom/nuance/nmdp/speechkit/eg$a;->a()I

    move-result v9

    move-object/from16 v0, p0

    iget-byte v10, v0, Lcom/nuance/nmdp/speechkit/eg;->a:B

    if-eq v9, v10, :cond_2

    new-instance v9, Lcom/nuance/nmdp/speechkit/dt;

    invoke-direct {v9}, Lcom/nuance/nmdp/speechkit/dt;-><init>()V

    const-string v10, "id"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/nuance/nmdp/speechkit/eg$a;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/nuance/nmdp/speechkit/eg$a;->a()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xc1

    invoke-virtual {v9, v10, v11, v12}, Lcom/nuance/nmdp/speechkit/dt;->a(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v10, "status"

    invoke-virtual {v4}, Lcom/nuance/nmdp/speechkit/eg$a;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xc1

    invoke-virtual {v9, v10, v11, v12}, Lcom/nuance/nmdp/speechkit/dt;->a(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {v8, v9}, Lcom/nuance/nmdp/speechkit/ed;->a(Lcom/nuance/nmdp/speechkit/ej;)V

    invoke-virtual {v4}, Lcom/nuance/nmdp/speechkit/eg$a;->d()V

    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    :cond_3
    const-string v3, "device_log"

    invoke-virtual {v7, v3, v8}, Lcom/nuance/nmdp/speechkit/dt;->a(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/eo;)V

    const-string v3, "app_info"

    invoke-virtual {v2, v3, v7}, Lcom/nuance/nmdp/speechkit/du;->a(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/nmdp/speechkit/eg;->e:Lcom/nuance/nmdp/speechkit/dk;

    const/16 v3, 0xa25

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SEND_BCP_BEGIN"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-byte v5, v0, Lcom/nuance/nmdp/speechkit/eg;->a:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/du;->f()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-byte v7, v0, Lcom/nuance/nmdp/speechkit/eg;->a:B

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/nmdp/speechkit/eg;->b:Lcom/nuance/nmdp/speechkit/dn;

    const/4 v11, 0x0

    move-object v2, v12

    invoke-virtual/range {v2 .. v11}, Lcom/nuance/nmdp/speechkit/dk;->a(SLjava/lang/String;[B[BBJLcom/nuance/nmdp/speechkit/dl;Z)V

    if-eqz v17, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/nmdp/speechkit/eg;->j:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/nmdp/speechkit/eg;->j:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/eg;->c:Lcom/nuance/nmdp/speechkit/di;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v17 .. v17}, Lcom/nuance/nmdp/speechkit/eg;->b([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/nuance/nmdp/speechkit/eg;->a:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/nmdp/speechkit/di;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_0

    :pswitch_1
    check-cast v2, Lcom/nuance/nmdp/speechkit/ck$j;

    move-object v3, v2

    check-cast v3, Lcom/nuance/nmdp/speechkit/dy;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/dy;->c()B

    move-result v3

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmdp/speechkit/eg;->e:Lcom/nuance/nmdp/speechkit/dk;

    move-object v3, v2

    check-cast v3, Lcom/nuance/nmdp/speechkit/ee;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/ee;->a()I

    move-result v5

    move-object v3, v2

    check-cast v3, Lcom/nuance/nmdp/speechkit/ee;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/ee;->e()Lcom/nuance/nmdp/speechkit/cx;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/nuance/nmdp/speechkit/dk;->a(ILcom/nuance/nmdp/speechkit/cx;)V

    :cond_5
    invoke-static {}, Lcom/nuance/nmdp/speechkit/dm;->f()J

    new-instance v5, Lcom/nuance/nmdp/speechkit/du;

    check-cast v2, Lcom/nuance/nmdp/speechkit/dy;

    invoke-direct {v5, v2}, Lcom/nuance/nmdp/speechkit/du;-><init>(Lcom/nuance/nmdp/speechkit/dy;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/eg;->e:Lcom/nuance/nmdp/speechkit/dk;

    const/16 v3, 0xa19

    const-string v4, "SEND_BCP_DATA"

    invoke-virtual {v5}, Lcom/nuance/nmdp/speechkit/du;->d()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-byte v7, v0, Lcom/nuance/nmdp/speechkit/eg;->a:B

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/nmdp/speechkit/eg;->b:Lcom/nuance/nmdp/speechkit/dn;

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/nuance/nmdp/speechkit/dk;->a(SLjava/lang/String;[B[BBJLcom/nuance/nmdp/speechkit/dl;Z)V

    goto/16 :goto_0

    :pswitch_2
    check-cast v2, [B

    invoke-static {}, Lcom/nuance/nmdp/speechkit/dm;->f()J

    new-instance v5, Lcom/nuance/nmdp/speechkit/du;

    invoke-direct {v5, v2}, Lcom/nuance/nmdp/speechkit/du;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/eg;->e:Lcom/nuance/nmdp/speechkit/dk;

    const/16 v3, 0xa19

    const-string v4, "SEND_BCP_DATA"

    invoke-virtual {v5}, Lcom/nuance/nmdp/speechkit/du;->d()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-byte v7, v0, Lcom/nuance/nmdp/speechkit/eg;->a:B

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/nmdp/speechkit/eg;->b:Lcom/nuance/nmdp/speechkit/dn;

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/nuance/nmdp/speechkit/dk;->a(SLjava/lang/String;[B[BBJLcom/nuance/nmdp/speechkit/dl;Z)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/nuance/nmdp/speechkit/dm;->f()J

    new-instance v5, Lcom/nuance/nmdp/speechkit/du;

    invoke-direct {v5}, Lcom/nuance/nmdp/speechkit/du;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/eg;->e:Lcom/nuance/nmdp/speechkit/dk;

    const/16 v3, 0xa19

    const-string v4, "SEND_BCP_DATA"

    invoke-virtual {v5}, Lcom/nuance/nmdp/speechkit/du;->d()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-byte v7, v0, Lcom/nuance/nmdp/speechkit/eg;->a:B

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/nmdp/speechkit/eg;->b:Lcom/nuance/nmdp/speechkit/dn;

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/nuance/nmdp/speechkit/dk;->a(SLjava/lang/String;[B[BBJLcom/nuance/nmdp/speechkit/dl;Z)V

    new-instance v2, Lcom/nuance/nmdp/speechkit/eg$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/nuance/nmdp/speechkit/eg$1;-><init>(Lcom/nuance/nmdp/speechkit/eg;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/nmdp/speechkit/eg;->h:Lcom/nuance/nmdp/speechkit/co;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/eg;->g:Lcom/nuance/nmdp/speechkit/cl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/nmdp/speechkit/eg;->h:Lcom/nuance/nmdp/speechkit/co;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nuance/nmdp/speechkit/eg;->i:J

    invoke-interface {v2, v3, v4, v5}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;J)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/eg;->d:Lcom/nuance/nmdp/speechkit/el;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/nuance/nmdp/speechkit/el;->a(S)V

    goto/16 :goto_0

    :pswitch_5
    check-cast v2, Lcom/nuance/nmdp/speechkit/ei$a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/nmdp/speechkit/eg;->k:Lcom/nuance/nmdp/speechkit/eg$a;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Lcom/nuance/nmdp/speechkit/eg$a;->a(Lcom/nuance/nmdp/speechkit/ei$a;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final a(S)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/eg;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->h:Lcom/nuance/nmdp/speechkit/co;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->g:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/eg;->h:Lcom/nuance/nmdp/speechkit/co;

    invoke-interface {v0, v2}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;)Z

    :cond_0
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    if-ne v0, v6, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_3

    :try_start_1
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->k:Lcom/nuance/nmdp/speechkit/eg$a;

    const-string v2, "REMOTE_DISC"

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/eg;->b(Lcom/nuance/nmdp/speechkit/eg$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->d:Lcom/nuance/nmdp/speechkit/el;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/nuance/nmdp/speechkit/el;->a(S)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    const/4 v0, 0x2

    :try_start_2
    iput-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    if-ne p1, v5, :cond_4

    :try_start_3
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->d:Lcom/nuance/nmdp/speechkit/el;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lcom/nuance/nmdp/speechkit/el;->a(S)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    if-ne p1, v4, :cond_5

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->k:Lcom/nuance/nmdp/speechkit/eg$a;

    const-string v2, "TIMEOUT_IDLE"

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/eg;->b(Lcom/nuance/nmdp/speechkit/eg$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->d:Lcom/nuance/nmdp/speechkit/el;

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Lcom/nuance/nmdp/speechkit/el;->a(S)V

    goto :goto_1

    :cond_5
    if-ne p1, v7, :cond_6

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->k:Lcom/nuance/nmdp/speechkit/eg$a;

    const-string v2, "CONN_FAILED"

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/eg;->b(Lcom/nuance/nmdp/speechkit/eg$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->c:Lcom/nuance/nmdp/speechkit/di;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/di;->a()V

    goto :goto_1

    :cond_6
    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->k:Lcom/nuance/nmdp/speechkit/eg$a;

    const-string v2, "CONN_FAILED"

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/eg;->b(Lcom/nuance/nmdp/speechkit/eg$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->c:Lcom/nuance/nmdp/speechkit/di;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/di;->a()V

    goto :goto_1

    :cond_7
    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->k:Lcom/nuance/nmdp/speechkit/eg$a;

    const-string v2, "REMOTE_DISC"

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/eg;->b(Lcom/nuance/nmdp/speechkit/eg$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->d:Lcom/nuance/nmdp/speechkit/el;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/nuance/nmdp/speechkit/el;->a(S)V

    goto :goto_1

    :cond_8
    const/4 v0, 0x7

    if-ne p1, v0, :cond_9

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->k:Lcom/nuance/nmdp/speechkit/eg$a;

    const-string v2, "CONN_FAILED"

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/eg;->b(Lcom/nuance/nmdp/speechkit/eg$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->c:Lcom/nuance/nmdp/speechkit/di;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/di;->a()V

    goto :goto_1

    :cond_9
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->k:Lcom/nuance/nmdp/speechkit/eg$a;

    const-string v2, "REMOTE_DISC"

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/eg;->b(Lcom/nuance/nmdp/speechkit/eg$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->d:Lcom/nuance/nmdp/speechkit/el;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/nuance/nmdp/speechkit/el;->a(S)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method public final a([B)V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/eg;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    if-eqz v0, :cond_0

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_2

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/nuance/nmdp/speechkit/eg;->b([B)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/eg;->k:Lcom/nuance/nmdp/speechkit/eg$a;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/nuance/nmdp/speechkit/eg$a;->a(Ljava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Lcom/nuance/nmdp/speechkit/eg;->j:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/nmdp/speechkit/eg;->j:Z

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/eg;->c:Lcom/nuance/nmdp/speechkit/di;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v3, p0, Lcom/nuance/nmdp/speechkit/eg;->a:B

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nuance/nmdp/speechkit/di;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()V
    .locals 5

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/eg;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->h:Lcom/nuance/nmdp/speechkit/co;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->g:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/eg;->h:Lcom/nuance/nmdp/speechkit/co;

    invoke-interface {v0, v2}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;)Z

    :cond_0
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    if-ne v0, v3, :cond_1

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->g:Lcom/nuance/nmdp/speechkit/cl;

    new-instance v2, Lcom/nuance/nmdp/speechkit/cl$a;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/eg;->g:Lcom/nuance/nmdp/speechkit/cl;

    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {v0, v2, p0, v3}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x2

    iput-short v0, p0, Lcom/nuance/nmdp/speechkit/eg;->f:S

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final c()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->h:Lcom/nuance/nmdp/speechkit/co;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->g:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/eg;->h:Lcom/nuance/nmdp/speechkit/co;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;)Z

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eg;->g:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/eg;->h:Lcom/nuance/nmdp/speechkit/co;

    iget-wide v2, p0, Lcom/nuance/nmdp/speechkit/eg;->i:J

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;J)V

    :cond_0
    return-void
.end method
