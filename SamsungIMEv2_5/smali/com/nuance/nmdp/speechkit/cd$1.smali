.class final Lcom/nuance/nmdp/speechkit/cd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/ct;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field private synthetic b:Lcom/nuance/nmdp/speechkit/cd;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/cd;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/cd$1;->b:Lcom/nuance/nmdp/speechkit/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cd$1;->a:Z

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd$1;->b:Lcom/nuance/nmdp/speechkit/cd;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/cd;->a(Lcom/nuance/nmdp/speechkit/cd;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd$1;->b:Lcom/nuance/nmdp/speechkit/cd;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/cd;->b(Lcom/nuance/nmdp/speechkit/cd;)Z

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd$1;->b:Lcom/nuance/nmdp/speechkit/cd;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/cd;->c(Lcom/nuance/nmdp/speechkit/cd;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd$1;->b:Lcom/nuance/nmdp/speechkit/cd;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/cd;->a(Lcom/nuance/nmdp/speechkit/cd;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd$1;->b:Lcom/nuance/nmdp/speechkit/cd;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/cd;->d(Lcom/nuance/nmdp/speechkit/cd;)Z

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


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "BUFFER_PLAYED"

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cd$1;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd$1;->b:Lcom/nuance/nmdp/speechkit/cd;

    const-string v1, "First audio buffer played"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd$1;->b:Lcom/nuance/nmdp/speechkit/cd;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/cd;->f(Lcom/nuance/nmdp/speechkit/cd;)Lcom/nuance/nmdp/speechkit/ca;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cd$1;->b:Lcom/nuance/nmdp/speechkit/cd;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/cd;->e(Lcom/nuance/nmdp/speechkit/cd;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/ca;->b(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/cd$1;->a:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "BUFFERING"

    if-eq p1, v0, :cond_0

    const-string v0, "STARTED"

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd$1;->b:Lcom/nuance/nmdp/speechkit/cd;

    const-string v1, "Audio playback started"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "STOPPED"

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd$1;->b:Lcom/nuance/nmdp/speechkit/cd;

    const-string v1, "Audio playback stopped"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/cd$1;->a()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd$1;->b:Lcom/nuance/nmdp/speechkit/cd;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/cd;->f(Lcom/nuance/nmdp/speechkit/cd;)Lcom/nuance/nmdp/speechkit/ca;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cd$1;->b:Lcom/nuance/nmdp/speechkit/cd;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/cd;->e(Lcom/nuance/nmdp/speechkit/cd;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/ca;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v0, "PLAYBACK_ERROR"

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd$1;->b:Lcom/nuance/nmdp/speechkit/cd;

    const-string v1, "Audio playback error"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ab;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/cd$1;->a()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cd$1;->b:Lcom/nuance/nmdp/speechkit/cd;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/cd;->f(Lcom/nuance/nmdp/speechkit/cd;)Lcom/nuance/nmdp/speechkit/ca;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/cd$1;->b:Lcom/nuance/nmdp/speechkit/cd;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/cd;->e(Lcom/nuance/nmdp/speechkit/cd;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/ca;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
