.class public final Lcom/nuance/nmsp/client/sdk/oem/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/cl$b;
.implements Lcom/nuance/nmdp/speechkit/cn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/oem/e$c;,
        Lcom/nuance/nmsp/client/sdk/oem/e$b;,
        Lcom/nuance/nmsp/client/sdk/oem/e$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/Integer;

.field private static final c:Ljava/lang/Integer;

.field private static final d:Ljava/lang/Integer;

.field private static final e:Ljava/lang/Integer;


# instance fields
.field private a:Lcom/nuance/nmdp/speechkit/cl;

.field private f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/e;->b:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/e;->c:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/e;->d:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/e;->e:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmdp/speechkit/cl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/e;->a:Lcom/nuance/nmdp/speechkit/cl;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/e;->f:Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/e;->a:Lcom/nuance/nmdp/speechkit/cl;

    return-void
.end method

.method static synthetic a()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/e;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/e;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/e;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/e;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/oem/e;->a([Ljava/lang/Object;)V

    return-void
.end method

.method private a([Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/e;->a:Lcom/nuance/nmdp/speechkit/cl;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e;->a:Lcom/nuance/nmdp/speechkit/cl;

    invoke-interface {v1}, Lcom/nuance/nmdp/speechkit/cl;->b()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/e;->a:Lcom/nuance/nmdp/speechkit/cl;

    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {v0, p1, p0, v1}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/e;->d:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cn$b;[BILcom/nuance/nmdp/speechkit/cn$e;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/cn$c;
    .locals 2

    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$b;->a:Lcom/nuance/nmdp/speechkit/cn$b;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    :goto_0
    return-object v0

    :cond_0
    check-cast p1, Lcom/nuance/nmsp/client/sdk/oem/e$a;

    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/oem/e$a;->f:Lcom/nuance/nmsp/client/sdk/oem/e$c;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/nuance/nmsp/client/sdk/oem/e$a;->f:Lcom/nuance/nmsp/client/sdk/oem/e$c;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/e$c;->a(Lcom/nuance/nmsp/client/sdk/oem/e$c;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/e$b;

    invoke-direct {v0, p3, p4, p5, p6}, Lcom/nuance/nmsp/client/sdk/oem/e$b;-><init>([BILcom/nuance/nmdp/speechkit/cn$e;Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/nuance/nmsp/client/sdk/oem/e$a;->f:Lcom/nuance/nmsp/client/sdk/oem/e$c;

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/oem/e$c;->a(Lcom/nuance/nmsp/client/sdk/oem/e$b;)Lcom/nuance/nmdp/speechkit/cn$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;[BILcom/nuance/nmdp/speechkit/cn$f;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/cn$c;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p1

    check-cast v0, Lcom/nuance/nmsp/client/sdk/oem/e$a;

    iget-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/e$a;->a:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/e$a;->d:Ljava/io/OutputStream;

    if-nez v1, :cond_1

    :cond_0
    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/e$a;->d:Ljava/io/OutputStream;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/e;->e:Ljava/lang/Integer;

    aput-object v1, v0, v3

    aput-object p4, v0, v2

    sget-object v1, Lcom/nuance/nmdp/speechkit/cn$c;->a:Lcom/nuance/nmdp/speechkit/cn$c;

    aput-object v1, v0, v4

    aput-object p1, v0, v5

    aput-object p2, v0, v6

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object p5, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/e;->a([Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->a:Lcom/nuance/nmdp/speechkit/cn$c;

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/e;->e:Ljava/lang/Integer;

    aput-object v1, v0, v3

    aput-object p4, v0, v2

    sget-object v1, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    aput-object v1, v0, v4

    aput-object p1, v0, v5

    aput-object p2, v0, v6

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object p5, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/e;->a([Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/nuance/nmsp/client/sdk/oem/e;->a(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    check-cast v0, Lcom/nuance/nmsp/client/sdk/oem/e$a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/e;->f:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/e$a;->f:Lcom/nuance/nmsp/client/sdk/oem/e$c;

    if-nez v1, :cond_2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/e$a;->f:Lcom/nuance/nmsp/client/sdk/oem/e$c;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/e$c;->a(Lcom/nuance/nmsp/client/sdk/oem/e$c;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/e$a;->f:Lcom/nuance/nmsp/client/sdk/oem/e$c;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/oem/e$c;->a()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/e$a;->f:Lcom/nuance/nmsp/client/sdk/oem/e$c;

    move v1, v2

    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v4, v0, Lcom/nuance/nmsp/client/sdk/oem/e$a;->a:Ljava/net/Socket;

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    :try_start_2
    iget-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/e$a;->c:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/e$a;->c:Ljava/io/InputStream;

    iget-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/e$a;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/e$a;->a:Ljava/net/Socket;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/nuance/nmsp/client/sdk/oem/e;->c:Ljava/lang/Integer;

    aput-object v4, v1, v3

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/e$a;->b:Lcom/nuance/nmdp/speechkit/cn$a;

    aput-object v0, v1, v2

    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->a:Lcom/nuance/nmdp/speechkit/cn$c;

    aput-object v0, v1, v6

    aput-object p1, v1, v7

    const/4 v0, 0x4

    aput-object v5, v1, v0

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/sdk/oem/e;->a([Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/nuance/nmsp/client/sdk/oem/e;->c:Ljava/lang/Integer;

    aput-object v4, v1, v3

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/e$a;->b:Lcom/nuance/nmdp/speechkit/cn$a;

    aput-object v0, v1, v2

    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    aput-object v0, v1, v6

    aput-object p1, v1, v7

    const/4 v0, 0x4

    aput-object v5, v1, v0

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/sdk/oem/e;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    check-cast p1, [Ljava/lang/Object;

    aget-object v0, p1, v2

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/e;->b:Ljava/lang/Integer;

    if-ne v0, v1, :cond_1

    aget-object v0, p1, v3

    check-cast v0, Lcom/nuance/nmdp/speechkit/cn$d;

    aget-object v1, p1, v4

    check-cast v1, Lcom/nuance/nmdp/speechkit/cn$c;

    aget-object v2, p1, v5

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/cn$d;->a(Lcom/nuance/nmdp/speechkit/cn$c;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v0, p1, v2

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/e;->c:Ljava/lang/Integer;

    if-ne v0, v1, :cond_2

    aget-object v0, p1, v3

    check-cast v0, Lcom/nuance/nmdp/speechkit/cn$a;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/cn$a;->a()V

    goto :goto_0

    :cond_2
    aget-object v0, p1, v2

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/e;->d:Ljava/lang/Integer;

    if-ne v0, v1, :cond_3

    aget-object v0, p1, v3

    check-cast v0, Lcom/nuance/nmdp/speechkit/cn$e;

    aget-object v1, p1, v4

    check-cast v1, Lcom/nuance/nmdp/speechkit/cn$c;

    aget-object v2, p1, v5

    const/4 v3, 0x4

    aget-object v3, p1, v3

    check-cast v3, [B

    aget-object v4, p1, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x7

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x8

    aget-object v6, p1, v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/cn$e;->a(Lcom/nuance/nmdp/speechkit/cn$c;Ljava/lang/Object;[BIILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    aget-object v0, p1, v2

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/e;->e:Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    aget-object v0, p1, v3

    check-cast v0, Lcom/nuance/nmdp/speechkit/cn$f;

    aget-object v1, p1, v4

    check-cast v1, Lcom/nuance/nmdp/speechkit/cn$c;

    aget-object v2, p1, v5

    aget-object v3, p1, v6

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x7

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x8

    aget-object v5, p1, v5

    invoke-interface/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/cn$f;->a(Lcom/nuance/nmdp/speechkit/cn$c;Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILcom/nuance/nmdp/speechkit/cn$d;Lcom/nuance/nmdp/speechkit/cn$a;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/e$c;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmsp/client/sdk/oem/e$c;-><init>(Lcom/nuance/nmsp/client/sdk/oem/e;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/cn$d;Lcom/nuance/nmdp/speechkit/cn$a;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/e$c;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/oem/e;->b:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v6, v0, v1

    const/4 v1, 0x4

    aput-object v6, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/e;->a([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILjava/util/Vector;Lcom/nuance/nmdp/speechkit/cn$d;Lcom/nuance/nmdp/speechkit/cn$a;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v4, Lcom/nuance/nmdp/speechkit/fa;

    invoke-direct {v4}, Lcom/nuance/nmdp/speechkit/fa;-><init>()V

    invoke-virtual {p3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/cz;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSL_SelfSigned_Cert"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "TRUE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iput-boolean v7, v4, Lcom/nuance/nmdp/speechkit/fa;->a:Z

    :cond_2
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSL_Cert_Summary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v4, Lcom/nuance/nmdp/speechkit/fa;->b:Ljava/lang/String;

    :cond_3
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSL_Cert_Data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cz;->b()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v4, Lcom/nuance/nmdp/speechkit/fa;->c:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/e$c;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmsp/client/sdk/oem/e$c;-><init>(Lcom/nuance/nmsp/client/sdk/oem/e;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/fa;Lcom/nuance/nmdp/speechkit/cn$d;Lcom/nuance/nmdp/speechkit/cn$a;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/e$c;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/oem/e;->b:Ljava/lang/Integer;

    aput-object v2, v0, v1

    aput-object p4, v0, v7

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v8, v0, v1

    const/4 v1, 0x4

    aput-object v8, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/e;->a([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/nuance/nmsp/client/sdk/oem/e$a;

    iget-object v1, v0, Lcom/nuance/nmsp/client/sdk/oem/e$a;->f:Lcom/nuance/nmsp/client/sdk/oem/e$c;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/oem/e$a;->f:Lcom/nuance/nmsp/client/sdk/oem/e$c;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/e$c;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/nmsp/client/sdk/oem/e;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
