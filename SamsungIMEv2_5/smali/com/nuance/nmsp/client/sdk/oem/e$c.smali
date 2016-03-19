.class final Lcom/nuance/nmsp/client/sdk/oem/e$c;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/oem/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/nuance/nmdp/speechkit/cn$d;

.field private d:Lcom/nuance/nmdp/speechkit/cn$a;

.field private e:Lcom/nuance/nmdp/speechkit/cn$c;

.field private f:Z

.field private g:Ljava/util/Vector;

.field private h:Lcom/nuance/nmdp/speechkit/fa;

.field private i:Z

.field private synthetic j:Lcom/nuance/nmsp/client/sdk/oem/e;


# direct methods
.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/e;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/cn$d;Lcom/nuance/nmdp/speechkit/cn$a;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->j:Lcom/nuance/nmsp/client/sdk/oem/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->c:Lcom/nuance/nmdp/speechkit/cn$d;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->d:Lcom/nuance/nmdp/speechkit/cn$a;

    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->a:Lcom/nuance/nmdp/speechkit/cn$c;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->e:Lcom/nuance/nmdp/speechkit/cn$c;

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->f:Z

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->g:Ljava/util/Vector;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->h:Lcom/nuance/nmdp/speechkit/fa;

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->i:Z

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->a:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->b:I

    iput-object p4, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->c:Lcom/nuance/nmdp/speechkit/cn$d;

    iput-object p5, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->d:Lcom/nuance/nmdp/speechkit/cn$a;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->g:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/e;Ljava/lang/String;ILcom/nuance/nmdp/speechkit/fa;Lcom/nuance/nmdp/speechkit/cn$d;Lcom/nuance/nmdp/speechkit/cn$a;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->j:Lcom/nuance/nmsp/client/sdk/oem/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->c:Lcom/nuance/nmdp/speechkit/cn$d;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->d:Lcom/nuance/nmdp/speechkit/cn$a;

    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->a:Lcom/nuance/nmdp/speechkit/cn$c;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->e:Lcom/nuance/nmdp/speechkit/cn$c;

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->f:Z

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->g:Ljava/util/Vector;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->h:Lcom/nuance/nmdp/speechkit/fa;

    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->i:Z

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->a:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->b:I

    iput-object p5, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->c:Lcom/nuance/nmdp/speechkit/cn$d;

    iput-object p6, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->d:Lcom/nuance/nmdp/speechkit/cn$a;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->g:Ljava/util/Vector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->i:Z

    iput-object p4, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->h:Lcom/nuance/nmdp/speechkit/fa;

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/e$c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->f:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/nuance/nmsp/client/sdk/oem/e$b;)Lcom/nuance/nmdp/speechkit/cn$c;
    .locals 3

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->f:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->a:Lcom/nuance/nmdp/speechkit/cn$c;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->j:Lcom/nuance/nmsp/client/sdk/oem/e;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/e;->a(Lcom/nuance/nmsp/client/sdk/oem/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->g:Ljava/util/Vector;

    if-nez v2, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    :goto_0
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->j:Lcom/nuance/nmsp/client/sdk/oem/e;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/e;->a(Lcom/nuance/nmsp/client/sdk/oem/e;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    :goto_1
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->g:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    sget-object v0, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    goto :goto_1
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->j:Lcom/nuance/nmsp/client/sdk/oem/e;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/e;->a(Lcom/nuance/nmsp/client/sdk/oem/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->f:Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->g:Ljava/util/Vector;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->j:Lcom/nuance/nmsp/client/sdk/oem/e;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/e;->a(Lcom/nuance/nmsp/client/sdk/oem/e;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->j:Lcom/nuance/nmsp/client/sdk/oem/e;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/e;->a(Lcom/nuance/nmsp/client/sdk/oem/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->g:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

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

.method public final run()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->i:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->a:Ljava/lang/String;

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->b:I

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->h:Lcom/nuance/nmdp/speechkit/fa;

    invoke-static {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/ey;->a(Ljava/lang/String;ILcom/nuance/nmdp/speechkit/fa;)Ljava/net/Socket;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->j:Lcom/nuance/nmsp/client/sdk/oem/e;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/e;->a()Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->c:Lcom/nuance/nmdp/speechkit/cn$d;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/e;->a(Lcom/nuance/nmsp/client/sdk/oem/e;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v2, Ljava/net/Socket;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->a:Ljava/lang/String;

    iget v3, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->b:I

    invoke-direct {v2, v1, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->j:Lcom/nuance/nmsp/client/sdk/oem/e;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/e;->a()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->c:Lcom/nuance/nmdp/speechkit/cn$d;

    aput-object v3, v2, v8

    sget-object v3, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    aput-object v3, v2, v10

    aput-object v9, v2, v11

    const/4 v3, 0x4

    aput-object v9, v2, v3

    invoke-static {v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/e;->a(Lcom/nuance/nmsp/client/sdk/oem/e;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v1

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->j:Lcom/nuance/nmsp/client/sdk/oem/e;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/e;->a()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->c:Lcom/nuance/nmdp/speechkit/cn$d;

    aput-object v3, v2, v8

    sget-object v3, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    aput-object v3, v2, v10

    aput-object v9, v2, v11

    const/4 v3, 0x4

    aput-object v9, v2, v3

    invoke-static {v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/e;->a(Lcom/nuance/nmsp/client/sdk/oem/e;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v1

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->j:Lcom/nuance/nmsp/client/sdk/oem/e;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/e;->a()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->c:Lcom/nuance/nmdp/speechkit/cn$d;

    aput-object v3, v2, v8

    sget-object v3, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    aput-object v3, v2, v10

    aput-object v9, v2, v11

    const/4 v3, 0x4

    aput-object v9, v2, v3

    invoke-static {v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/e;->a(Lcom/nuance/nmsp/client/sdk/oem/e;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_3
    move-exception v1

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->j:Lcom/nuance/nmsp/client/sdk/oem/e;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/e;->a()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->c:Lcom/nuance/nmdp/speechkit/cn$d;

    aput-object v3, v2, v8

    sget-object v3, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    aput-object v3, v2, v10

    aput-object v9, v2, v11

    const/4 v3, 0x4

    aput-object v9, v2, v3

    invoke-static {v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/e;->a(Lcom/nuance/nmsp/client/sdk/oem/e;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->i:Z

    if-eqz v1, :cond_3

    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v1, v0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    const/4 v1, 0x1

    const/16 v3, 0x28

    invoke-virtual {v2, v1, v3}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v5

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/e$a;

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->d:Lcom/nuance/nmdp/speechkit/cn$a;

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/nuance/nmsp/client/sdk/oem/e$a;-><init>(Ljava/net/Socket;Lcom/nuance/nmdp/speechkit/cn$a;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nuance/nmsp/client/sdk/oem/e$c;)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->j:Lcom/nuance/nmsp/client/sdk/oem/e;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/e;->a()Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->c:Lcom/nuance/nmdp/speechkit/cn$d;

    aput-object v5, v3, v8

    sget-object v5, Lcom/nuance/nmdp/speechkit/cn$c;->a:Lcom/nuance/nmdp/speechkit/cn$c;

    aput-object v5, v3, v10

    aput-object v1, v3, v11

    const/4 v5, 0x4

    aput-object v9, v3, v5

    invoke-static {v2, v3}, Lcom/nuance/nmsp/client/sdk/oem/e;->a(Lcom/nuance/nmsp/client/sdk/oem/e;[Ljava/lang/Object;)V

    :goto_3
    :try_start_3
    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->f:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->j:Lcom/nuance/nmsp/client/sdk/oem/e;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/e;->a(Lcom/nuance/nmsp/client/sdk/oem/e;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->f:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->g:Ljava/util/Vector;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->g:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    :try_start_5
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->j:Lcom/nuance/nmsp/client/sdk/oem/e;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/e;->a(Lcom/nuance/nmsp/client/sdk/oem/e;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_4
    move-exception v2

    goto :goto_4

    :catch_5
    move-exception v1

    :try_start_6
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :goto_5
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->j:Lcom/nuance/nmsp/client/sdk/oem/e;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/e;->a()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->c:Lcom/nuance/nmdp/speechkit/cn$d;

    aput-object v3, v2, v8

    sget-object v3, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    aput-object v3, v2, v10

    aput-object v9, v2, v11

    const/4 v3, 0x4

    aput-object v9, v2, v3

    invoke-static {v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/e;->a(Lcom/nuance/nmsp/client/sdk/oem/e;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    :try_start_7
    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->f:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->g:Ljava/util/Vector;

    if-nez v2, :cond_6

    :cond_5
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    :try_start_8
    monitor-exit v3

    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    move-exception v1

    goto/16 :goto_1

    :cond_6
    :try_start_9
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->g:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/nmsp/client/sdk/oem/e$b;

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->g:Ljava/util/Vector;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Vector;->removeElementAt(I)V

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move v3, v7

    :goto_6
    :try_start_a
    iget v5, v2, Lcom/nuance/nmsp/client/sdk/oem/e$b;->b:I

    if-ge v3, v5, :cond_7

    iget-object v5, v2, Lcom/nuance/nmsp/client/sdk/oem/e$b;->a:[B

    add-int/lit8 v6, v3, 0x0

    iget v8, v2, Lcom/nuance/nmsp/client/sdk/oem/e$b;->b:I

    sub-int/2addr v8, v3

    invoke-virtual {v4, v5, v6, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gez v5, :cond_8

    iget-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->f:Z

    if-nez v3, :cond_7

    sget-object v3, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->e:Lcom/nuance/nmdp/speechkit/cn$c;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :cond_7
    :goto_7
    :try_start_b
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->e:Lcom/nuance/nmdp/speechkit/cn$c;

    sget-object v5, Lcom/nuance/nmdp/speechkit/cn$c;->a:Lcom/nuance/nmdp/speechkit/cn$c;

    if-ne v3, v5, :cond_9

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->j:Lcom/nuance/nmsp/client/sdk/oem/e;

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/e;->b()Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x1

    iget-object v8, v2, Lcom/nuance/nmsp/client/sdk/oem/e$b;->c:Lcom/nuance/nmdp/speechkit/cn$e;

    aput-object v8, v5, v6

    const/4 v6, 0x2

    sget-object v8, Lcom/nuance/nmdp/speechkit/cn$c;->a:Lcom/nuance/nmdp/speechkit/cn$c;

    aput-object v8, v5, v6

    const/4 v6, 0x3

    aput-object v1, v5, v6

    const/4 v6, 0x4

    iget-object v8, v2, Lcom/nuance/nmsp/client/sdk/oem/e$b;->a:[B

    aput-object v8, v5, v6

    const/4 v6, 0x5

    new-instance v8, Ljava/lang/Integer;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v5, v6

    const/4 v6, 0x6

    new-instance v8, Ljava/lang/Integer;

    iget v9, v2, Lcom/nuance/nmsp/client/sdk/oem/e$b;->b:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v5, v6

    const/4 v6, 0x7

    new-instance v8, Ljava/lang/Integer;

    iget v9, v2, Lcom/nuance/nmsp/client/sdk/oem/e$b;->b:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v5, v6

    const/16 v6, 0x8

    iget-object v2, v2, Lcom/nuance/nmsp/client/sdk/oem/e$b;->d:Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v3, v5}, Lcom/nuance/nmsp/client/sdk/oem/e;->a(Lcom/nuance/nmsp/client/sdk/oem/e;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_8
    add-int/2addr v3, v5

    goto :goto_6

    :catch_7
    move-exception v3

    sget-object v3, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    iput-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->e:Lcom/nuance/nmdp/speechkit/cn$c;

    goto :goto_7

    :cond_9
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->j:Lcom/nuance/nmsp/client/sdk/oem/e;

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/e;->b()Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x1

    iget-object v8, v2, Lcom/nuance/nmsp/client/sdk/oem/e$b;->c:Lcom/nuance/nmdp/speechkit/cn$e;

    aput-object v8, v5, v6

    const/4 v6, 0x2

    sget-object v8, Lcom/nuance/nmdp/speechkit/cn$c;->b:Lcom/nuance/nmdp/speechkit/cn$c;

    aput-object v8, v5, v6

    const/4 v6, 0x3

    aput-object v1, v5, v6

    const/4 v6, 0x4

    iget-object v8, v2, Lcom/nuance/nmsp/client/sdk/oem/e$b;->a:[B

    aput-object v8, v5, v6

    const/4 v6, 0x5

    new-instance v8, Ljava/lang/Integer;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v5, v6

    const/4 v6, 0x6

    new-instance v8, Ljava/lang/Integer;

    iget v9, v2, Lcom/nuance/nmsp/client/sdk/oem/e$b;->b:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v5, v6

    const/4 v6, 0x7

    new-instance v8, Ljava/lang/Integer;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v5, v6

    const/16 v6, 0x8

    iget-object v2, v2, Lcom/nuance/nmsp/client/sdk/oem/e$b;->d:Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v3, v5}, Lcom/nuance/nmsp/client/sdk/oem/e;->a(Lcom/nuance/nmsp/client/sdk/oem/e;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/e$c;->j:Lcom/nuance/nmsp/client/sdk/oem/e;

    invoke-virtual {v2, v1}, Lcom/nuance/nmsp/client/sdk/oem/e;->a(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_3

    :catch_8
    move-exception v1

    goto/16 :goto_5

    :catch_9
    move-exception v1

    goto/16 :goto_2
.end method
