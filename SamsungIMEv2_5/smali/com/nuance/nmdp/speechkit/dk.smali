.class public final Lcom/nuance/nmdp/speechkit/dk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/cl$b;
.implements Lcom/nuance/nmdp/speechkit/cw$a;


# static fields
.field private static k:[B

.field private static n:I

.field private static s:[Ljava/lang/String;


# instance fields
.field private a:Ljava/util/Hashtable;

.field private b:Ljava/util/Hashtable;

.field private c:Lcom/nuance/nmdp/speechkit/cw;

.field private d:Ljava/lang/String;

.field private e:S

.field private f:Ljava/util/Vector;

.field private g:Lcom/nuance/nmdp/speechkit/cl;

.field private h:Lcom/nuance/nmdp/speechkit/df;

.field private i:Ljava/util/Vector;

.field private j:[B

.field private l:Lcom/nuance/nmdp/speechkit/cj;

.field private m:Lcom/nuance/nmdp/speechkit/cj;

.field private o:Z

.field private p:Lcom/nuance/nmdp/speechkit/dg;

.field private q:J

.field private r:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v1, 0x10

    const/4 v3, 0x1

    new-array v0, v1, [B

    sput-object v0, Lcom/nuance/nmdp/speechkit/dk;->k:[B

    sput v3, Lcom/nuance/nmdp/speechkit/dk;->n:I

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const-string v1, "1"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "B"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "D"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "F"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/nmdp/speechkit/dk;->s:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;SLjava/lang/String;[BLjava/lang/String;Ljava/util/Vector;Lcom/nuance/nmdp/speechkit/cl;Lcom/nuance/nmdp/speechkit/df;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/dk;->j:[B

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/nmdp/speechkit/dk;->o:Z

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/nuance/nmdp/speechkit/dk;->q:J

    const/4 v2, 0x1

    iput-byte v2, p0, Lcom/nuance/nmdp/speechkit/dk;->r:B

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/dk;->d:Ljava/lang/String;

    iput-short p2, p0, Lcom/nuance/nmdp/speechkit/dk;->e:S

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->g:Lcom/nuance/nmdp/speechkit/cl;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->h:Lcom/nuance/nmdp/speechkit/df;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/dk;->p:Lcom/nuance/nmdp/speechkit/dg;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/dk;->i:Ljava/util/Vector;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/dk;->a:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/dk;->b:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/dk;->f:Ljava/util/Vector;

    new-instance v2, Lcom/nuance/nmdp/speechkit/cw;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/dk;->d:Ljava/lang/String;

    iget-short v4, p0, Lcom/nuance/nmdp/speechkit/dk;->e:S

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object v8, p0

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/nuance/nmdp/speechkit/cw;-><init>(Ljava/lang/String;SLjava/lang/String;[BLjava/lang/String;Lcom/nuance/nmdp/speechkit/cw$a;Ljava/util/Vector;Lcom/nuance/nmdp/speechkit/cl;)V

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/dk;->c:Lcom/nuance/nmdp/speechkit/cw;

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x10

    if-ge v0, v2, :cond_3

    aget-byte v2, p0, v0

    and-int/lit16 v3, v2, 0xf0

    int-to-byte v3, v3

    ushr-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/nuance/nmdp/speechkit/dk;->s:[Ljava/lang/String;

    aget-object v3, v5, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmdp/speechkit/dk;->s:[Ljava/lang/String;

    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-ne v0, v2, :cond_2

    :cond_1
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(BLjava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->g:Lcom/nuance/nmdp/speechkit/cl;

    new-instance v1, Lcom/nuance/nmdp/speechkit/cl$a;

    invoke-direct {v1, p1, p2}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/dk;->g:Lcom/nuance/nmdp/speechkit/cl;

    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {v0, v1, p0, v2}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    return-void
.end method

.method public static b()V
    .locals 0

    return-void
.end method

.method private b([B)V
    .locals 4

    const/16 v0, 0x10

    aget-byte v2, p1, v0

    const/16 v0, 0x11

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/ab;->a([BI)S

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->f:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dl;

    invoke-interface {v0, v2, v3}, Lcom/nuance/nmdp/speechkit/dl;->a(BS)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c([B)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/ab;->b([BI)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->b:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/cx;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/nuance/nmdp/speechkit/ab;->b([BI)I

    move-result v2

    const/16 v1, 0x8

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/dk;->m:Lcom/nuance/nmdp/speechkit/cj;

    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/cs;->b(Lcom/nuance/nmdp/speechkit/cj;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0x80

    if-lez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_3
    if-lez v2, :cond_0

    array-length v3, p1

    sub-int/2addr v3, v1

    if-gt v2, v3, :cond_0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/cx;->a([BIIZ)V
    :try_end_0
    .catch Lcom/nuance/nmdp/speechkit/dc; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 3

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/nuance/nmdp/speechkit/dk;->n:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nuance/nmdp/speechkit/dk;->n:I

    sget v1, Lcom/nuance/nmdp/speechkit/dk;->n:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    sput v1, Lcom/nuance/nmdp/speechkit/dk;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(BILcom/nuance/nmdp/speechkit/dl;)V
    .locals 4

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->f:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p1}, Ljava/lang/Byte;-><init>(B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->j:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->i:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v3, v0}, Lcom/nuance/nmdp/speechkit/dk;->a(BLjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->i:Ljava/util/Vector;

    new-instance v2, Lcom/nuance/nmdp/speechkit/cl$a;

    invoke-direct {v2, v3, v0}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 4

    const/4 v3, 0x5

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->j:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->i:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v3, v0}, Lcom/nuance/nmdp/speechkit/dk;->a(BLjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->i:Ljava/util/Vector;

    new-instance v2, Lcom/nuance/nmdp/speechkit/cl$a;

    invoke-direct {v2, v3, v0}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(ILcom/nuance/nmdp/speechkit/cx;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/cj;Lcom/nuance/nmdp/speechkit/cj;)V
    .locals 2

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/dk;->l:Lcom/nuance/nmdp/speechkit/cj;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/dk;->m:Lcom/nuance/nmdp/speechkit/cj;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/dk;->a(BLjava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/cp;[B)V
    .locals 8

    const/16 v6, 0x1b

    const/16 v5, 0x17

    const/16 v4, 0x15

    const/16 v1, 0x11

    const/4 v2, 0x0

    iget-byte v0, p1, Lcom/nuance/nmdp/speechkit/cp;->a:B

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :pswitch_0
    iget-short v0, p1, Lcom/nuance/nmdp/speechkit/cp;->c:S

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->c:Lcom/nuance/nmdp/speechkit/cw;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/cw;->b:[B

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->j:[B

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->h:Lcom/nuance/nmdp/speechkit/df;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->j:[B

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/dk;->a([B)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/dk;->p:Lcom/nuance/nmdp/speechkit/dg;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/df;->a(Ljava/lang/String;)V

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->f:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dl;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/dk;->j:[B

    invoke-interface {v0, v3}, Lcom/nuance/nmdp/speechkit/dl;->a([B)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/cl$a;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->i:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    iget-byte v1, v0, Lcom/nuance/nmdp/speechkit/cl$a;->a:B

    packed-switch v1, :pswitch_data_1

    :pswitch_1
    goto :goto_2

    :pswitch_2
    const/4 v1, 0x1

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/dk;->a(BLjava/lang/Object;)V

    goto :goto_2

    :pswitch_3
    const/4 v1, 0x2

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/dk;->a(BLjava/lang/Object;)V

    goto :goto_2

    :pswitch_4
    const/4 v1, 0x4

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/dk;->a(BLjava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    const/4 v1, 0x5

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/dk;->a(BLjava/lang/Object;)V

    goto :goto_2

    :pswitch_6
    const/4 v1, 0x6

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/dk;->a(BLjava/lang/Object;)V

    goto :goto_2

    :pswitch_7
    const/4 v1, 0x7

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/dk;->a(BLjava/lang/Object;)V

    goto :goto_2

    :pswitch_8
    const/16 v1, 0x8

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/dk;->a(BLjava/lang/Object;)V

    goto :goto_2

    :pswitch_9
    iget-short v0, p1, Lcom/nuance/nmdp/speechkit/cp;->c:S

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_2
    invoke-static {p2, v1}, Lcom/nuance/nmdp/speechkit/ab;->b([BI)I

    move-result v1

    invoke-static {p2, v4}, Lcom/nuance/nmdp/speechkit/ab;->a([BI)S

    move-result v2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->a:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Long;

    int-to-long v4, v1

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dl;

    if-eqz v0, :cond_0

    int-to-long v4, v1

    invoke-interface {v0, v4, v5, v2}, Lcom/nuance/nmdp/speechkit/dl;->a(JS)V

    const/16 v0, 0xc8

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->a:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    int-to-long v4, v1

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_3
    invoke-static {p2, v1}, Lcom/nuance/nmdp/speechkit/ab;->b([BI)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2, v5}, Lcom/nuance/nmdp/speechkit/ab;->b([BI)I

    move-result v3

    if-lez v3, :cond_2

    array-length v4, p2

    add-int/lit8 v4, v4, -0x1b

    if-gt v3, v4, :cond_2

    new-array v4, v3, [B

    invoke-static {p2, v6, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/dk;->a:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_4
    invoke-static {p2, v1}, Lcom/nuance/nmdp/speechkit/ab;->b([BI)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2, v5}, Lcom/nuance/nmdp/speechkit/ab;->b([BI)I

    move-result v3

    if-lez v3, :cond_3

    array-length v4, p2

    add-int/lit8 v4, v4, -0x1b

    if-gt v3, v4, :cond_3

    new-array v4, v3, [B

    invoke-static {p2, v6, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/dk;->a:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_5
    const/4 v0, 0x0

    invoke-static {p2, v1}, Lcom/nuance/nmdp/speechkit/ab;->b([BI)I

    move-result v3

    invoke-static {p2, v4}, Lcom/nuance/nmdp/speechkit/ab;->a([BI)S

    move-result v4

    invoke-static {p2, v5}, Lcom/nuance/nmdp/speechkit/ab;->b([BI)I

    move-result v1

    if-lez v1, :cond_5

    array-length v5, p2

    add-int/lit8 v5, v5, -0x1b

    if-gt v1, v5, :cond_5

    new-array v0, v1, [B

    invoke-static {p2, v6, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    :goto_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->a:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    int-to-long v6, v3

    invoke-direct {v2, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dl;

    if-eqz v0, :cond_0

    int-to-long v2, v3

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/nuance/nmdp/speechkit/dl;->b(JS[B)V

    goto/16 :goto_0

    :sswitch_6
    const/4 v0, 0x0

    invoke-static {p2, v1}, Lcom/nuance/nmdp/speechkit/ab;->b([BI)I

    move-result v3

    invoke-static {p2, v4}, Lcom/nuance/nmdp/speechkit/ab;->a([BI)S

    move-result v4

    invoke-static {p2, v5}, Lcom/nuance/nmdp/speechkit/ab;->b([BI)I

    move-result v1

    if-lez v1, :cond_4

    array-length v5, p2

    add-int/lit8 v5, v5, -0x1b

    if-gt v1, v5, :cond_4

    new-array v0, v1, [B

    invoke-static {p2, v6, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    :goto_4
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->a:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    int-to-long v6, v3

    invoke-direct {v2, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dl;

    if-eqz v0, :cond_0

    int-to-long v2, v3

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/nuance/nmdp/speechkit/dl;->a(JS[B)V

    goto/16 :goto_0

    :sswitch_7
    invoke-static {p2, v1}, Lcom/nuance/nmdp/speechkit/ab;->b([BI)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/dk;->a:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_8
    invoke-direct {p0, p2}, Lcom/nuance/nmdp/speechkit/dk;->b([B)V

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x10

    aget-byte v1, p2, v0

    invoke-static {p2, v4}, Lcom/nuance/nmdp/speechkit/ab;->b([BI)I

    move-result v0

    if-lez v0, :cond_0

    array-length v3, p2

    add-int/lit8 v3, v3, -0x19

    if-gt v0, v3, :cond_0

    new-array v3, v0, [B

    const/16 v4, 0x19

    invoke-static {p2, v4, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->a:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dl;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1, v3}, Lcom/nuance/nmdp/speechkit/dl;->a(B[B)V

    goto/16 :goto_0

    :pswitch_a
    iget-short v0, p1, Lcom/nuance/nmdp/speechkit/cp;->c:S

    sparse-switch v0, :sswitch_data_2

    goto/16 :goto_0

    :sswitch_a
    invoke-direct {p0, p2}, Lcom/nuance/nmdp/speechkit/dk;->c([B)V

    goto/16 :goto_0

    :sswitch_b
    invoke-static {p2, v2}, Lcom/nuance/nmdp/speechkit/ab;->b([BI)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->b:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/cx;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/nmdp/speechkit/cx;->a([BIIZ)V
    :try_end_0
    .catch Lcom/nuance/nmdp/speechkit/dc; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_4
    move-object v1, v0

    goto/16 :goto_4

    :cond_5
    move-object v1, v0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_1
        0x200 -> :sswitch_0
        0x300 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xa10 -> :sswitch_2
        0xa11 -> :sswitch_7
        0xa12 -> :sswitch_0
        0xa13 -> :sswitch_3
        0xa14 -> :sswitch_4
        0xa16 -> :sswitch_6
        0xa18 -> :sswitch_5
        0xa19 -> :sswitch_9
        0xa28 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x200 -> :sswitch_a
        0x400 -> :sswitch_b
    .end sparse-switch
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/dg;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/dk;->p:Lcom/nuance/nmdp/speechkit/dg;

    return-void
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/dl;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    check-cast p1, Lcom/nuance/nmdp/speechkit/cl$a;

    iget-byte v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->a:B

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->c:Lcom/nuance/nmdp/speechkit/cw;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->l:Lcom/nuance/nmdp/speechkit/cj;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/cj;->a()S

    move-result v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/dk;->m:Lcom/nuance/nmdp/speechkit/cj;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/cj;->a()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/cw;->a(SS)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->c:Lcom/nuance/nmdp/speechkit/cw;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cw;->b()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->c:Lcom/nuance/nmdp/speechkit/cw;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cw;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/dk;->o:Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->j:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x5

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/nuance/nmdp/speechkit/ab;->a(I[BI)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->j:[B

    invoke-static {v2, v0}, Lcom/nuance/nmdp/speechkit/ab;->a([B[B)[B

    move-result-object v0

    const/4 v1, 0x2

    const/16 v2, 0x22

    const/16 v3, 0xa29

    invoke-static {v1, v2, v3, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(BBS[B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->c:Lcom/nuance/nmdp/speechkit/cw;

    const-string v2, "SEND_BCP_FREE_RESOURCE"

    invoke-virtual {v1, v0, v2}, Lcom/nuance/nmdp/speechkit/cw;->a([BLjava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->j:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->c:Lcom/nuance/nmdp/speechkit/cw;

    invoke-virtual {v1, v0}, Lcom/nuance/nmdp/speechkit/cw;->a(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->j:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [B

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->f:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dl;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/dl;->c()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->c:Lcom/nuance/nmdp/speechkit/cw;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/nmdp/speechkit/cw;->a([BI)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->j:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->c:Lcom/nuance/nmdp/speechkit/cw;

    invoke-virtual {v1, v0}, Lcom/nuance/nmdp/speechkit/cw;->b(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->j:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v5

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    check-cast v2, [B

    const/4 v3, 0x3

    aget-object v3, v0, v3

    check-cast v3, [B

    const/4 v4, 0x4

    aget-object v4, v0, v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    const/4 v4, 0x5

    aget-object v4, v0, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v4, 0x6

    aget-object v4, v0, v4

    check-cast v4, Lcom/nuance/nmdp/speechkit/dl;

    const/4 v7, 0x7

    aget-object v0, v0, v7

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->a:Ljava/util/Hashtable;

    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v10, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, v2

    add-int/lit8 v0, v0, 0x5

    const/16 v10, 0xa19

    if-ne v5, v10, :cond_2

    add-int/lit8 v0, v0, 0x4

    :cond_2
    new-array v10, v0, [B

    const/4 v0, 0x0

    aput-byte v6, v10, v0

    const/4 v0, 0x1

    const/16 v6, 0xa19

    if-ne v5, v6, :cond_3

    long-to-int v0, v8

    const/4 v6, 0x1

    invoke-static {v0, v10, v6}, Lcom/nuance/nmdp/speechkit/ab;->a(I[BI)V

    const/4 v0, 0x5

    :cond_3
    array-length v6, v2

    invoke-static {v6, v10, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(I[BI)V

    add-int/lit8 v0, v0, 0x4

    const/4 v6, 0x0

    array-length v11, v2

    invoke-static {v2, v6, v10, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->j:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->j:[B

    :goto_2
    invoke-static {v10, v0}, Lcom/nuance/nmdp/speechkit/ab;->a([B[B)[B

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v6, 0x0

    array-length v10, v0

    invoke-virtual {v2, v0, v6, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-eqz v3, :cond_4

    const/4 v0, 0x0

    array-length v6, v3

    invoke-virtual {v2, v3, v0, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_4
    const/4 v0, 0x2

    const/16 v3, 0x22

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v0, v3, v5, v2}, Lcom/nuance/nmdp/speechkit/ab;->a(BBS[B)[B

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/dk;->c:Lcom/nuance/nmdp/speechkit/cw;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/nmdp/speechkit/cw;->a([BLjava/lang/Object;)V

    if-eqz v7, :cond_0

    const/16 v0, 0xa15

    if-ne v5, v0, :cond_6

    if-eqz v4, :cond_0

    const/16 v0, 0xc8

    const/4 v1, 0x0

    invoke-interface {v4, v8, v9, v0, v1}, Lcom/nuance/nmdp/speechkit/dl;->a(JS[B)V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/nuance/nmdp/speechkit/dk;->k:[B

    goto :goto_2

    :cond_6
    const/16 v0, 0xa30

    if-ne v5, v0, :cond_0

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->f:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/dl;->b()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final a(S)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/dk;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->g:Lcom/nuance/nmdp/speechkit/cl;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/cl;->c()V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->f:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dl;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/dl;->a(S)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->h:Lcom/nuance/nmdp/speechkit/df;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->p:Lcom/nuance/nmdp/speechkit/dg;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/df;->a()V

    :cond_4
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->j:[B

    return-void

    :cond_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->j:[B

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->h:Lcom/nuance/nmdp/speechkit/df;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->p:Lcom/nuance/nmdp/speechkit/dg;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/df;->a()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->j:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->h:Lcom/nuance/nmdp/speechkit/df;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->p:Lcom/nuance/nmdp/speechkit/dg;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/df;->b()V

    goto :goto_1
.end method

.method public final a(SLjava/lang/String;[B[BBJLcom/nuance/nmdp/speechkit/dl;Z)V
    .locals 4

    const/16 v3, 0x8

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Short;

    invoke-direct {v2, p1}, Ljava/lang/Short;-><init>(S)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p5}, Ljava/lang/Byte;-><init>(B)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p6, p7}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object p8, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p9}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->j:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->i:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v3, v0}, Lcom/nuance/nmdp/speechkit/dk;->a(BLjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->i:Ljava/util/Vector;

    new-instance v2, Lcom/nuance/nmdp/speechkit/cl$a;

    invoke-direct {v2, v3, v0}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a([BI)V
    .locals 4

    const/4 v3, 0x6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->j:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->i:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v3, v0}, Lcom/nuance/nmdp/speechkit/dk;->a(BLjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->i:Ljava/util/Vector;

    new-instance v2, Lcom/nuance/nmdp/speechkit/cl$a;

    invoke-direct {v2, v3, v0}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 4

    const/4 v3, 0x7

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->j:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->i:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v3, v0}, Lcom/nuance/nmdp/speechkit/dk;->a(BLjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dk;->i:Ljava/util/Vector;

    new-instance v2, Lcom/nuance/nmdp/speechkit/cl$a;

    invoke-direct {v2, v3, v0}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b(Lcom/nuance/nmdp/speechkit/dl;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/dk;->a(BLjava/lang/Object;)V

    return-void
.end method

.method public final d()[B
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->j:[B

    return-object v0
.end method

.method public final e()J
    .locals 8

    const-wide/16 v6, 0x1

    iget-wide v0, p0, Lcom/nuance/nmdp/speechkit/dk;->q:J

    add-long v2, v0, v6

    iput-wide v2, p0, Lcom/nuance/nmdp/speechkit/dk;->q:J

    iget-wide v2, p0, Lcom/nuance/nmdp/speechkit/dk;->q:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-wide v6, p0, Lcom/nuance/nmdp/speechkit/dk;->q:J

    :cond_0
    return-wide v0
.end method

.method public final f()B
    .locals 3

    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/dk;->r:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/nuance/nmdp/speechkit/dk;->r:B

    iget-byte v1, p0, Lcom/nuance/nmdp/speechkit/dk;->r:B

    const/16 v2, -0x80

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    iput-byte v1, p0, Lcom/nuance/nmdp/speechkit/dk;->r:B

    :cond_0
    return v0
.end method

.method public final g()Lcom/nuance/nmdp/speechkit/cj;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dk;->l:Lcom/nuance/nmdp/speechkit/cj;

    return-object v0
.end method
