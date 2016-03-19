.class public final Lcom/nuance/nmdp/speechkit/cd;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/nuance/nmdp/speechkit/ct;

.field private final b:Lcom/nuance/nmdp/speechkit/ca;

.field private final c:Lcom/nuance/nmdp/speechkit/de;

.field private d:Lcom/nuance/nmdp/speechkit/ba;

.field private final e:Ljava/lang/Object;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/Object;

.field private final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/de;Ljava/lang/Object;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/ca;Lcom/nuance/nmdp/speechkit/cj;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nuance/nmdp/speechkit/cd$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/cd$1;-><init>(Lcom/nuance/nmdp/speechkit/cd;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cd;->a:Lcom/nuance/nmdp/speechkit/ct;

    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/cd;->b:Lcom/nuance/nmdp/speechkit/ca;

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/cd;->c:Lcom/nuance/nmdp/speechkit/de;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/cd;->e:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/cd;->f:Z

    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/cd;->g:Z

    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/cd;->h:Z

    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/cd;->i:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cd;->j:Ljava/lang/Object;

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/cd;->k:Ljava/lang/Object;

    new-instance v0, Lcom/nuance/nmdp/speechkit/bz;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/bz;-><init>()V

    new-instance v1, Lcom/nuance/nmdp/speechkit/cz;

    const-string v2, "Android_Context"

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/cd;->k:Ljava/lang/Object;

    sget-object v4, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    invoke-direct {v1, v2, v3, v4}, Lcom/nuance/nmdp/speechkit/cz;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cz$a;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/bz;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cd;->a:Lcom/nuance/nmdp/speechkit/ct;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/cd;->c:Lcom/nuance/nmdp/speechkit/de;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bz;->f()Ljava/util/Vector;

    move-result-object v4

    sget-object v5, Lcom/nuance/nmdp/speechkit/ci;->a:Lcom/nuance/nmdp/speechkit/ci;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "NMSPAudioPlaybackListener can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Error creating player"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cd;->d:Lcom/nuance/nmdp/speechkit/ba;

    :goto_0
    return-void

    :cond_0
    if-nez v3, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Manager can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/nmdp/speechkit/ck$c;

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/ck$c;-><init>(Lcom/nuance/nmdp/speechkit/ct;Lcom/nuance/nmdp/speechkit/cj;Lcom/nuance/nmdp/speechkit/de;Ljava/util/Vector;Lcom/nuance/nmdp/speechkit/ci;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cd;->d:Lcom/nuance/nmdp/speechkit/ba;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/cd;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/nmdp/speechkit/cd;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cd;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/nuance/nmdp/speechkit/cd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cd;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/nuance/nmdp/speechkit/cd;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cd;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/nuance/nmdp/speechkit/cd;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/nmdp/speechkit/cd;)Lcom/nuance/nmdp/speechkit/ca;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd;->b:Lcom/nuance/nmdp/speechkit/ca;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cd;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd;->d:Lcom/nuance/nmdp/speechkit/ba;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cd;->f:Z

    :try_start_0
    const-string v0, "Starting audio player"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd;->d:Lcom/nuance/nmdp/speechkit/ba;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/ba;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error starting player"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd;->b:Lcom/nuance/nmdp/speechkit/ca;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cd;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/ca;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "Player already started"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b()V
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cd;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cd;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd;->d:Lcom/nuance/nmdp/speechkit/ba;

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/cd;->g:Z

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cd;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cd;->h:Z

    if-nez v0, :cond_0

    const-string v0, "Stopping audio player"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd;->d:Lcom/nuance/nmdp/speechkit/ba;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/ba;->a_()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cd;->i:Z

    :goto_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cd;->h:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "Error stopping player"

    invoke-static {p0, v2, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cd;->h:Z

    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd;->b:Lcom/nuance/nmdp/speechkit/ca;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cd;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/ca;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final c()Lcom/nuance/nmdp/speechkit/ba;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd;->d:Lcom/nuance/nmdp/speechkit/ba;

    return-object v0
.end method
