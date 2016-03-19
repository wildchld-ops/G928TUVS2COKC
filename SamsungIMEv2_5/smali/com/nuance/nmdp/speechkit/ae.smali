.class public final Lcom/nuance/nmdp/speechkit/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/cb;


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private b:Lcom/nuance/nmdp/speechkit/ca;

.field private c:Ljava/lang/Object;

.field private d:Z

.field private e:Z

.field private f:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->b:Lcom/nuance/nmdp/speechkit/ca;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->a:Landroid/media/MediaPlayer;

    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/ae;->d:Z

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->f:Landroid/content/res/AssetFileDescriptor;

    iput-boolean v1, p0, Lcom/nuance/nmdp/speechkit/ae;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/ae;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->a:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/ae;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ae;->a:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/ae;Z)V
    .locals 1

    new-instance v0, Lcom/nuance/nmdp/speechkit/ae$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmdp/speechkit/ae$1;-><init>(Lcom/nuance/nmdp/speechkit/ae;Z)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/nuance/nmdp/speechkit/ae;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ae;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/nuance/nmdp/speechkit/ae;)Landroid/media/MediaPlayer;
    .locals 1

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/ae;->e()Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/nmdp/speechkit/ae;)Lcom/nuance/nmdp/speechkit/ca;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->b:Lcom/nuance/nmdp/speechkit/ca;

    return-object v0
.end method

.method private d()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ae;->d:Z

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->b:Lcom/nuance/nmdp/speechkit/ca;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ae;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/ca;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private e()Landroid/media/MediaPlayer;
    .locals 8

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ae;->f:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ae;->f:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    const-string v1, "Attempting to initialize MediaPlayer with asset file of unknown length"

    invoke-static {p0, v1}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ae;->f:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/nuance/nmdp/speechkit/ae$2;

    invoke-direct {v1, p0}, Lcom/nuance/nmdp/speechkit/ae$2;-><init>(Lcom/nuance/nmdp/speechkit/ae;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    new-instance v1, Lcom/nuance/nmdp/speechkit/ae$3;

    invoke-direct {v1, p0}, Lcom/nuance/nmdp/speechkit/ae$3;-><init>(Lcom/nuance/nmdp/speechkit/ae;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ae;->f:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Unable to create MediaPlayer for audio prompt"

    invoke-static {p0, v2, v1}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic e(Lcom/nuance/nmdp/speechkit/ae;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/nmdp/speechkit/ae;)Lcom/nuance/nmdp/speechkit/ca;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->b:Lcom/nuance/nmdp/speechkit/ca;

    return-object v0
.end method

.method static synthetic g(Lcom/nuance/nmdp/speechkit/ae;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h(Lcom/nuance/nmdp/speechkit/ae;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ae;->d:Z

    return v0
.end method

.method static synthetic i(Lcom/nuance/nmdp/speechkit/ae;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/ae;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ae;->d:Z

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->a:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/ae;->e()Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->a:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/ae;->c()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error stopping player"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Landroid/content/res/AssetFileDescriptor;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ae;->f:Landroid/content/res/AssetFileDescriptor;

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/ae;->e()Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->a:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/ae;->c()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/ca;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ae;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Can\'t start disposed audio prompt"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/nuance/nmdp/speechkit/ca;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "Starting audio prompt"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/ae;->b:Lcom/nuance/nmdp/speechkit/ca;

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/ae;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Audio prompt is already playing. Stopping to restart."

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ae;->d:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/ae;->d()V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ae;->e:Z

    return v0
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ae;->e:Z

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/ae;->a:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->f:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->f:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/ae;->f:Landroid/content/res/AssetFileDescriptor;

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->b:Lcom/nuance/nmdp/speechkit/ca;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae;->b:Lcom/nuance/nmdp/speechkit/ca;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ae;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/ca;->a(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/ae;->b:Lcom/nuance/nmdp/speechkit/ca;

    :cond_2
    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/ae;->c:Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error closing audio prompt file"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
