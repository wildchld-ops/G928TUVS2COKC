.class public final Lcom/nuance/nmdp/speechkit/cw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/cl$b;
.implements Lcom/nuance/nmdp/speechkit/cn$a;
.implements Lcom/nuance/nmdp/speechkit/cn$d;
.implements Lcom/nuance/nmdp/speechkit/cn$e;
.implements Lcom/nuance/nmdp/speechkit/cn$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/cw$a;
    }
.end annotation


# instance fields
.field protected a:B

.field public b:[B

.field private c:Lcom/nuance/nmdp/speechkit/co;

.field private d:I

.field private e:Lcom/nuance/nmdp/speechkit/co;

.field private f:I

.field private g:Lcom/nuance/nmdp/speechkit/co;

.field private h:Ljava/lang/String;

.field private i:S

.field private j:Ljava/util/Vector;

.field private k:Z

.field private l:Ljava/util/Vector;

.field private m:Lcom/nuance/nmdp/speechkit/cl;

.field private n:Ljava/lang/Object;

.field private o:Lcom/nuance/nmdp/speechkit/cp;

.field private p:S

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:[B

.field private t:Lcom/nuance/nmdp/speechkit/cn;

.field private u:I

.field private v:S

.field private w:S

.field private x:Lcom/nuance/nmdp/speechkit/cw$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;SLjava/lang/String;[BLjava/lang/String;Lcom/nuance/nmdp/speechkit/cw$a;Ljava/util/Vector;Lcom/nuance/nmdp/speechkit/cl;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/nuance/nmdp/speechkit/cw;->d:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/nuance/nmdp/speechkit/cw;->f:I

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->h:Ljava/lang/String;

    iput-short v2, p0, Lcom/nuance/nmdp/speechkit/cw;->i:S

    iput-boolean v2, p0, Lcom/nuance/nmdp/speechkit/cw;->k:Z

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->l:Ljava/util/Vector;

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->o:Lcom/nuance/nmdp/speechkit/cp;

    iput-short v2, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    const-string v0, "Not specified"

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->q:Ljava/lang/String;

    const-string v0, "Not specified"

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->s:[B

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->t:Lcom/nuance/nmdp/speechkit/cn;

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/cw;->h:Ljava/lang/String;

    iput-short p2, p0, Lcom/nuance/nmdp/speechkit/cw;->i:S

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/cw;->q:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/cw;->s:[B

    iput-object p5, p0, Lcom/nuance/nmdp/speechkit/cw;->r:Ljava/lang/String;

    iput-object p6, p0, Lcom/nuance/nmdp/speechkit/cw;->x:Lcom/nuance/nmdp/speechkit/cw$a;

    if-eqz p7, :cond_1

    iput-object p7, p0, Lcom/nuance/nmdp/speechkit/cw;->j:Ljava/util/Vector;

    :goto_0
    iput-object p8, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    invoke-virtual {p7}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/cz;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdleSessionTimeout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/cw;->f:I

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->j:Ljava/util/Vector;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConnectionTimeout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/cw;->d:I

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSL_Socket_Enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSL_Cert_Summary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSL_Cert_Data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSL_SelfSigned_Cert"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSL_Socket_Enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "TRUE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/nmdp/speechkit/cw;->k:Z

    :cond_6
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/cw;->l:Ljava/util/Vector;

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/cw;->l:Ljava/util/Vector;

    :cond_7
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/cw;->l:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/cw;)S
    .locals 1

    const/4 v0, 0x3

    iput-short v0, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    return v0
.end method

.method private a(B)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    new-instance v1, Lcom/nuance/nmdp/speechkit/cl$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {v0, v1, p0, v2}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lcom/nuance/nmdp/speechkit/cp;[B)V
    .locals 6

    const/16 v5, 0x10

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-byte v0, p1, Lcom/nuance/nmdp/speechkit/cp;->a:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-short v0, p1, Lcom/nuance/nmdp/speechkit/cp;->c:S

    sparse-switch v0, :sswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->x:Lcom/nuance/nmdp/speechkit/cw$a;

    invoke-interface {v0, p1, p2}, Lcom/nuance/nmdp/speechkit/cw$a;->a(Lcom/nuance/nmdp/speechkit/cp;[B)V

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->e:Lcom/nuance/nmdp/speechkit/co;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;)Z

    new-array v0, v5, [B

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->b:[B

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->b:[B

    invoke-static {p2, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->b:[B

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->t:Lcom/nuance/nmdp/speechkit/cn;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->n:Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->b:[B

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/cw;->a(B)V

    new-instance v0, Lcom/nuance/nmdp/speechkit/cw$5;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/cw$5;-><init>(Lcom/nuance/nmdp/speechkit/cw;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->g:Lcom/nuance/nmdp/speechkit/co;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->g:Lcom/nuance/nmdp/speechkit/co;

    iget v2, p0, Lcom/nuance/nmdp/speechkit/cw;->f:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;J)V

    goto :goto_1

    :sswitch_1
    invoke-static {p2, v2}, Lcom/nuance/nmdp/speechkit/ab;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/cw;->u:I

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/cw;->a(B)V

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->g:Lcom/nuance/nmdp/speechkit/co;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->g:Lcom/nuance/nmdp/speechkit/co;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;)Z

    :cond_0
    iput-byte v3, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    const/4 v0, 0x6

    iput-short v0, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    invoke-direct {p0, v4}, Lcom/nuance/nmdp/speechkit/cw;->a(B)V

    goto :goto_1

    :sswitch_3
    const/4 v0, 0x7

    iput-short v0, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    iput-byte v3, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    invoke-direct {p0, v4}, Lcom/nuance/nmdp/speechkit/cw;->a(B)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->g:Lcom/nuance/nmdp/speechkit/co;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->g:Lcom/nuance/nmdp/speechkit/co;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/nuance/nmdp/speechkit/cw$6;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/cw$6;-><init>(Lcom/nuance/nmdp/speechkit/cw;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->g:Lcom/nuance/nmdp/speechkit/co;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->g:Lcom/nuance/nmdp/speechkit/co;

    iget v2, p0, Lcom/nuance/nmdp/speechkit/cw;->f:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;J)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->x:Lcom/nuance/nmdp/speechkit/cw$a;

    invoke-interface {v0, p1, p2}, Lcom/nuance/nmdp/speechkit/cw$a;->a(Lcom/nuance/nmdp/speechkit/cp;[B)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->g:Lcom/nuance/nmdp/speechkit/co;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->g:Lcom/nuance/nmdp/speechkit/co;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/nuance/nmdp/speechkit/cw$7;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/cw$7;-><init>(Lcom/nuance/nmdp/speechkit/cw;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->g:Lcom/nuance/nmdp/speechkit/co;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->g:Lcom/nuance/nmdp/speechkit/co;

    iget v2, p0, Lcom/nuance/nmdp/speechkit/cw;->f:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;J)V

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->x:Lcom/nuance/nmdp/speechkit/cw$a;

    invoke-interface {v0, p1, p2}, Lcom/nuance/nmdp/speechkit/cw$a;->a(Lcom/nuance/nmdp/speechkit/cp;[B)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x102 -> :sswitch_1
        0x200 -> :sswitch_2
        0x300 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/cw;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/cw;->a(B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->c:Lcom/nuance/nmdp/speechkit/co;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->c:Lcom/nuance/nmdp/speechkit/co;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;)Z

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/cw;->c:Lcom/nuance/nmdp/speechkit/co;

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->g:Lcom/nuance/nmdp/speechkit/co;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->g:Lcom/nuance/nmdp/speechkit/co;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;)Z

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/cw;->g:Lcom/nuance/nmdp/speechkit/co;

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->n:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->x:Lcom/nuance/nmdp/speechkit/cw$a;

    iget-short v1, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cw$a;->a(S)V

    :cond_2
    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/cw;->n:Ljava/lang/Object;

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/cw;->t:Lcom/nuance/nmdp/speechkit/cn;

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/cw;->b:[B

    return-void
.end method

.method public final a(I)V
    .locals 4

    const/4 v3, 0x1

    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    if-eq v0, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/nuance/nmdp/speechkit/ab;->a(I[BI)V

    iget-short v1, p0, Lcom/nuance/nmdp/speechkit/cw;->v:S

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lcom/nuance/nmdp/speechkit/ab;->a(S[BI)V

    const/16 v1, 0x12

    const/16 v2, 0x101

    invoke-static {v3, v1, v2, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(BBS[B)[B

    move-result-object v0

    const-string v1, "SEND_VAP_RECORD_BEGIN"

    invoke-virtual {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/cw;->a([BLjava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/cn$c;Ljava/lang/Object;)V
    .locals 3

    const/4 v1, 0x4

    const/4 v2, 0x0

    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->a:Lcom/nuance/nmdp/speechkit/cn$c;

    if-ne p1, v0, :cond_2

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/cw;->n:Ljava/lang/Object;

    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    if-nez v0, :cond_1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/cw;->a(B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->t:Lcom/nuance/nmdp/speechkit/cn;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->n:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cn;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    if-ne p1, v0, :cond_3

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    iput-short v1, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->x:Lcom/nuance/nmdp/speechkit/cw$a;

    iget-short v1, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cw$a;->a(S)V

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/cw;->n:Ljava/lang/Object;

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/cw;->t:Lcom/nuance/nmdp/speechkit/cn;

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/cw;->b:[B

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->c:Lcom/nuance/nmdp/speechkit/cn$c;

    if-ne p1, v0, :cond_0

    iput-short v1, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    goto :goto_0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/cn$c;Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x3

    const/4 v1, 0x1

    check-cast p5, Ljava/lang/String;

    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->a:Lcom/nuance/nmdp/speechkit/cn$c;

    if-ne p1, v0, :cond_2

    if-ne p3, p4, :cond_2

    const-string v0, "SEND_COP_CONNECT"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/cw;->a(B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "SEND_COP_DISCONNECT"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->t:Lcom/nuance/nmdp/speechkit/cn;

    invoke-interface {v0, p2}, Lcom/nuance/nmdp/speechkit/cn;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    if-ne p1, v0, :cond_4

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    if-eq v0, v1, :cond_3

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    if-eq v0, v2, :cond_3

    iput-short v3, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    :cond_3
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/cw;->a(B)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->c:Lcom/nuance/nmdp/speechkit/cn$c;

    if-ne p1, v0, :cond_0

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    if-eq v0, v2, :cond_0

    iput-short v3, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    goto :goto_0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/cn$c;Ljava/lang/Object;[BIILjava/lang/Object;)V
    .locals 8

    const-wide/16 v6, 0x14

    const/16 v4, 0x8

    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x5

    check-cast p6, Ljava/lang/String;

    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->a:Lcom/nuance/nmdp/speechkit/cn$c;

    if-ne p1, v0, :cond_8

    const-string v0, "READ_XMODE_HEADER"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p5, :cond_1

    new-instance v0, Lcom/nuance/nmdp/speechkit/cw$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/cw$2;-><init>(Lcom/nuance/nmdp/speechkit/cw;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->c:Lcom/nuance/nmdp/speechkit/co;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->c:Lcom/nuance/nmdp/speechkit/co;

    invoke-interface {v0, v1, v6, v7}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p5, p4, :cond_0

    new-instance v0, Lcom/nuance/nmdp/speechkit/cp;

    invoke-direct {v0, p3}, Lcom/nuance/nmdp/speechkit/cp;-><init>([B)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->o:Lcom/nuance/nmdp/speechkit/cp;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->o:Lcom/nuance/nmdp/speechkit/cp;

    iget v0, v0, Lcom/nuance/nmdp/speechkit/cp;->d:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->o:Lcom/nuance/nmdp/speechkit/cp;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/cw;->a(Lcom/nuance/nmdp/speechkit/cp;[B)V

    invoke-direct {p0, v2}, Lcom/nuance/nmdp/speechkit/cw;->a(B)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->o:Lcom/nuance/nmdp/speechkit/cp;

    iget v0, v0, Lcom/nuance/nmdp/speechkit/cp;->d:I

    const v1, 0x7d000

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->o:Lcom/nuance/nmdp/speechkit/cp;

    iget v0, v0, Lcom/nuance/nmdp/speechkit/cp;->d:I

    if-gez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->t:Lcom/nuance/nmdp/speechkit/cn;

    invoke-interface {v0, p2}, Lcom/nuance/nmdp/speechkit/cn;->b(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/nuance/nmdp/speechkit/cw;->a(B)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/cw;->a(B)V

    goto :goto_0

    :cond_5
    const-string v0, "READ_XMODE_PAYLOAD"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p5, :cond_6

    new-instance v0, Lcom/nuance/nmdp/speechkit/cw$3;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/cw$3;-><init>(Lcom/nuance/nmdp/speechkit/cw;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->c:Lcom/nuance/nmdp/speechkit/co;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->c:Lcom/nuance/nmdp/speechkit/co;

    invoke-interface {v0, v1, v6, v7}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;J)V

    goto :goto_0

    :cond_6
    if-ne p5, p4, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->o:Lcom/nuance/nmdp/speechkit/cp;

    iget v0, v0, Lcom/nuance/nmdp/speechkit/cp;->d:I

    if-gt v0, p4, :cond_7

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->o:Lcom/nuance/nmdp/speechkit/cp;

    invoke-direct {p0, v0, p3}, Lcom/nuance/nmdp/speechkit/cw;->a(Lcom/nuance/nmdp/speechkit/cp;[B)V

    :cond_7
    invoke-direct {p0, v2}, Lcom/nuance/nmdp/speechkit/cw;->a(B)V

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    if-ne p1, v0, :cond_a

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    if-eq v0, v1, :cond_9

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    if-eq v0, v3, :cond_9

    iput-short v4, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    :cond_9
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/cw;->a(B)V

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->c:Lcom/nuance/nmdp/speechkit/cn$c;

    if-ne p1, v0, :cond_0

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    if-eq v0, v3, :cond_0

    iput-short v4, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    const/4 v4, 0x1

    const/16 v10, 0x17

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v3, 0x0

    check-cast p1, Lcom/nuance/nmdp/speechkit/cl$a;

    iget-byte v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->a:B

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    if-nez v0, :cond_1

    invoke-direct {p0, v8}, Lcom/nuance/nmdp/speechkit/cw;->a(B)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->x:Lcom/nuance/nmdp/speechkit/cw$a;

    iget-short v1, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cw$a;->a(S)V

    goto :goto_0

    :pswitch_1
    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    if-nez v0, :cond_3

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/e;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/e;-><init>(Lcom/nuance/nmdp/speechkit/cl;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->t:Lcom/nuance/nmdp/speechkit/cn;

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cw;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->t:Lcom/nuance/nmdp/speechkit/cn;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->h:Ljava/lang/String;

    iget-short v2, p0, Lcom/nuance/nmdp/speechkit/cw;->i:S

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/cw;->l:Ljava/util/Vector;

    move-object v4, p0

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/cn;->a(Ljava/lang/String;ILjava/util/Vector;Lcom/nuance/nmdp/speechkit/cn$d;Lcom/nuance/nmdp/speechkit/cn$a;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->t:Lcom/nuance/nmdp/speechkit/cn;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->h:Ljava/lang/String;

    iget-short v2, p0, Lcom/nuance/nmdp/speechkit/cw;->i:S

    invoke-interface {v0, v1, v2, p0, p0}, Lcom/nuance/nmdp/speechkit/cn;->a(Ljava/lang/String;ILcom/nuance/nmdp/speechkit/cn$d;Lcom/nuance/nmdp/speechkit/cn$a;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->x:Lcom/nuance/nmdp/speechkit/cw$a;

    iget-short v1, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cw$a;->a(S)V

    goto :goto_0

    :pswitch_2
    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\"1.0\"?><cc><s></s><t>7</t><b>20091023</b><tsc>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v1, p0, Lcom/nuance/nmdp/speechkit/cw;->v:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</tsc><fsc>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/nuance/nmdp/speechkit/cw;->w:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</fsc><nmaid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</nmaid><uid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</uid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->j:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    move-object v1, v0

    move v2, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/cz;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v6

    sget-object v7, Lcom/nuance/nmdp/speechkit/cz$a;->b:Lcom/nuance/nmdp/speechkit/cz$a;

    if-ne v6, v7, :cond_7

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "<nmsp p=\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "\" v=\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Lcom/nuance/nmdp/speechkit/cs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\"/>"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Ping_IntervalSecs"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v2, v1

    move v1, v4

    :goto_2
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->d()Lcom/nuance/nmdp/speechkit/cz$a;

    move-result-object v6

    sget-object v7, Lcom/nuance/nmdp/speechkit/cz$a;->c:Lcom/nuance/nmdp/speechkit/cz$a;

    if-ne v6, v7, :cond_6

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "<app p=\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" v=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Lcom/nuance/nmdp/speechkit/cs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move v2, v1

    move-object v1, v0

    goto/16 :goto_1

    :cond_4
    if-nez v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<nmsp p=\"Ping_IntervalSecs\" v=\"0\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</cc>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x1

    new-array v5, v2, [B

    add-int/lit8 v2, v2, -0x4

    invoke-static {v2, v5, v3}, Lcom/nuance/nmdp/speechkit/ab;->a(I[BI)V

    aput-byte v3, v5, v9

    const/4 v2, 0x5

    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x100

    invoke-static {v8, v10, v0, v5}, Lcom/nuance/nmdp/speechkit/ab;->a(BBS[B)[B

    move-result-object v0

    const-string v1, "SEND_COP_CONNECT"

    invoke-virtual {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/cw;->a([BLjava/lang/Object;)V

    new-instance v0, Lcom/nuance/nmdp/speechkit/cw$4;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/cw$4;-><init>(Lcom/nuance/nmdp/speechkit/cw;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->e:Lcom/nuance/nmdp/speechkit/co;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->e:Lcom/nuance/nmdp/speechkit/co;

    iget v2, p0, Lcom/nuance/nmdp/speechkit/cw;->d:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;J)V

    iput-byte v4, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->x:Lcom/nuance/nmdp/speechkit/cw$a;

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->t:Lcom/nuance/nmdp/speechkit/cn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->n:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    new-array v3, v0, [B

    const-string v6, "READ_XMODE_HEADER"

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->t:Lcom/nuance/nmdp/speechkit/cn;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->n:Ljava/lang/Object;

    sget-object v2, Lcom/nuance/nmdp/speechkit/cn$b;->a:Lcom/nuance/nmdp/speechkit/cn$b;

    const/16 v4, 0x8

    move-object v5, p0

    invoke-interface/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/cn;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cn$b;[BILcom/nuance/nmdp/speechkit/cn$e;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/cn$c;

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->o:Lcom/nuance/nmdp/speechkit/cp;

    iget v0, v0, Lcom/nuance/nmdp/speechkit/cp;->d:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->o:Lcom/nuance/nmdp/speechkit/cp;

    iget v0, v0, Lcom/nuance/nmdp/speechkit/cp;->d:I

    const v1, 0x7d000

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->o:Lcom/nuance/nmdp/speechkit/cp;

    iget v0, v0, Lcom/nuance/nmdp/speechkit/cp;->d:I

    new-array v3, v0, [B

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->t:Lcom/nuance/nmdp/speechkit/cn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->n:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v6, "READ_XMODE_PAYLOAD"

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->t:Lcom/nuance/nmdp/speechkit/cn;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->n:Ljava/lang/Object;

    sget-object v2, Lcom/nuance/nmdp/speechkit/cn$b;->a:Lcom/nuance/nmdp/speechkit/cn$b;

    array-length v4, v3

    move-object v5, p0

    invoke-interface/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/cn;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cn$b;[BILcom/nuance/nmdp/speechkit/cn$e;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/cn$c;

    goto/16 :goto_0

    :pswitch_5
    const/4 v0, 0x2

    new-array v0, v0, [B

    invoke-static {v3, v0, v3}, Lcom/nuance/nmdp/speechkit/ab;->a(S[BI)V

    const/16 v1, 0x200

    invoke-static {v8, v10, v1, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(BBS[B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->t:Lcom/nuance/nmdp/speechkit/cn;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/cw;->n:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/nuance/nmdp/speechkit/cn;->b(Ljava/lang/Object;)V

    const-string v1, "SEND_COP_DISCONNECT"

    invoke-virtual {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/cw;->a([BLjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->t:Lcom/nuance/nmdp/speechkit/cn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->n:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->t:Lcom/nuance/nmdp/speechkit/cn;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->n:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cn;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_7
    const/16 v0, 0x8

    new-array v0, v0, [B

    iget v1, p0, Lcom/nuance/nmdp/speechkit/cw;->u:I

    invoke-static {v1, v0, v3}, Lcom/nuance/nmdp/speechkit/ab;->a(I[BI)V

    invoke-static {v3, v0, v9}, Lcom/nuance/nmdp/speechkit/ab;->a(I[BI)V

    const/16 v1, 0x103

    invoke-static {v8, v10, v1, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(BBS[B)[B

    move-result-object v0

    const-string v1, "SEND_COP_PING_RESPONSE"

    invoke-virtual {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/cw;->a([BLjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_8
    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    if-ne v0, v4, :cond_0

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    const/4 v0, 0x5

    iput-short v0, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    invoke-direct {p0, v9}, Lcom/nuance/nmdp/speechkit/cw;->a(B)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->s:[B

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->b:[B

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/cm;->b([B[B)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    array-length v2, v0

    invoke-static {v2, v1, v3}, Lcom/nuance/nmdp/speechkit/ab;->a(I[BI)V

    array-length v2, v0

    invoke-static {v0, v3, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x106

    invoke-static {v8, v10, v0, v1}, Lcom/nuance/nmdp/speechkit/ab;->a(BBS[B)[B

    move-result-object v0

    const-string v1, "SEND_COP_CONFIRM"

    invoke-virtual {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/cw;->a([BLjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->x:Lcom/nuance/nmdp/speechkit/cw$a;

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->x:Lcom/nuance/nmdp/speechkit/cw$a;

    goto/16 :goto_0

    :cond_6
    move-object v0, v2

    goto/16 :goto_3

    :cond_7
    move-object v11, v1

    move v1, v2

    move-object v2, v11

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final a(SS)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    if-eq v0, v2, :cond_2

    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    if-eqz v0, :cond_2

    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->c:Lcom/nuance/nmdp/speechkit/co;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->c:Lcom/nuance/nmdp/speechkit/co;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;)Z

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->g:Lcom/nuance/nmdp/speechkit/co;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->g:Lcom/nuance/nmdp/speechkit/co;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;)Z

    :cond_1
    iput-object v3, p0, Lcom/nuance/nmdp/speechkit/cw;->n:Ljava/lang/Object;

    iput-object v3, p0, Lcom/nuance/nmdp/speechkit/cw;->t:Lcom/nuance/nmdp/speechkit/cn;

    iput-object v3, p0, Lcom/nuance/nmdp/speechkit/cw;->b:[B

    iput-short p1, p0, Lcom/nuance/nmdp/speechkit/cw;->v:S

    iput-short p2, p0, Lcom/nuance/nmdp/speechkit/cw;->w:S

    iput-byte v4, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    invoke-direct {p0, v2}, Lcom/nuance/nmdp/speechkit/cw;->a(B)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iput-short p1, p0, Lcom/nuance/nmdp/speechkit/cw;->v:S

    iput-short p2, p0, Lcom/nuance/nmdp/speechkit/cw;->w:S

    iput-byte v4, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    invoke-direct {p0, v2}, Lcom/nuance/nmdp/speechkit/cw;->a(B)V

    goto :goto_0
.end method

.method public final a([BI)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    if-eq v0, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    array-length v0, p1

    add-int/lit8 v1, v0, 0x8

    new-array v1, v1, [B

    invoke-static {p2, v1, v3}, Lcom/nuance/nmdp/speechkit/ab;->a(I[BI)V

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/ab;->a(I[BI)V

    const/16 v2, 0x8

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x12

    const/16 v2, 0x201

    invoke-static {v4, v0, v2, v1}, Lcom/nuance/nmdp/speechkit/ab;->a(BBS[B)[B

    move-result-object v0

    const-string v1, "SEND_VAP_RECORD"

    invoke-virtual {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/cw;->a([BLjava/lang/Object;)V

    goto :goto_0
.end method

.method public final a([BLjava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->g:Lcom/nuance/nmdp/speechkit/co;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->g:Lcom/nuance/nmdp/speechkit/co;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/nmdp/speechkit/cw$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/cw$1;-><init>(Lcom/nuance/nmdp/speechkit/cw;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->g:Lcom/nuance/nmdp/speechkit/co;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->m:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->g:Lcom/nuance/nmdp/speechkit/co;

    iget v2, p0, Lcom/nuance/nmdp/speechkit/cw;->f:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;J)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->t:Lcom/nuance/nmdp/speechkit/cn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->n:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->t:Lcom/nuance/nmdp/speechkit/cn;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->n:Ljava/lang/Object;

    array-length v3, p1

    move-object v2, p1

    move-object v4, p0

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/cn;->a(Ljava/lang/Object;[BILcom/nuance/nmdp/speechkit/cn$f;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/cn$c;

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iput-short v2, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->x:Lcom/nuance/nmdp/speechkit/cw$a;

    iget-short v1, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cw$a;->a(S)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    if-eq v0, v3, :cond_0

    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    if-nez v0, :cond_2

    iput-short v2, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    iput-byte v3, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->n:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cw;->t:Lcom/nuance/nmdp/speechkit/cn;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cw;->n:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/cn;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    if-ne v0, v2, :cond_0

    iput-byte v3, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    iput-short v2, p0, Lcom/nuance/nmdp/speechkit/cw;->p:S

    invoke-direct {p0, v3}, Lcom/nuance/nmdp/speechkit/cw;->a(B)V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 4

    const/4 v3, 0x1

    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/cw;->a:B

    if-eq v0, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/nuance/nmdp/speechkit/ab;->a(I[BI)V

    const/16 v1, 0x12

    const/16 v2, 0x100

    invoke-static {v3, v1, v2, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(BBS[B)[B

    move-result-object v0

    const-string v1, "SEND_VAP_RECORD_END"

    invoke-virtual {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/cw;->a([BLjava/lang/Object;)V

    goto :goto_0
.end method
