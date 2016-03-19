.class final Lcom/nuance/nmdp/speechkit/ae$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/nuance/nmdp/speechkit/ae;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/ae;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    iput-boolean p2, p0, Lcom/nuance/nmdp/speechkit/ae$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ae;->a(Lcom/nuance/nmdp/speechkit/ae;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ae;->b(Lcom/nuance/nmdp/speechkit/ae;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ae$1;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ae;->a(Lcom/nuance/nmdp/speechkit/ae;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ae;->a(Lcom/nuance/nmdp/speechkit/ae;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/ae;->c(Lcom/nuance/nmdp/speechkit/ae;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ae;->a(Lcom/nuance/nmdp/speechkit/ae;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ae;->a(Lcom/nuance/nmdp/speechkit/ae;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ae;->d(Lcom/nuance/nmdp/speechkit/ae;)Lcom/nuance/nmdp/speechkit/ca;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ae;->d(Lcom/nuance/nmdp/speechkit/ae;)Lcom/nuance/nmdp/speechkit/ca;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/ae;->e(Lcom/nuance/nmdp/speechkit/ae;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/ca;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ae;->f(Lcom/nuance/nmdp/speechkit/ae;)Lcom/nuance/nmdp/speechkit/ca;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ae;->g(Lcom/nuance/nmdp/speechkit/ae;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/ae;->c()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ae;->h(Lcom/nuance/nmdp/speechkit/ae;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ae;->i(Lcom/nuance/nmdp/speechkit/ae;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ae;->d(Lcom/nuance/nmdp/speechkit/ae;)Lcom/nuance/nmdp/speechkit/ca;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ae$1;->a:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ae;->d(Lcom/nuance/nmdp/speechkit/ae;)Lcom/nuance/nmdp/speechkit/ca;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/ae;->e(Lcom/nuance/nmdp/speechkit/ae;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/ca;->a(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ae;->f(Lcom/nuance/nmdp/speechkit/ae;)Lcom/nuance/nmdp/speechkit/ca;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ae;->g(Lcom/nuance/nmdp/speechkit/ae;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ae;->d(Lcom/nuance/nmdp/speechkit/ae;)Lcom/nuance/nmdp/speechkit/ca;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ae$1;->b:Lcom/nuance/nmdp/speechkit/ae;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/ae;->e(Lcom/nuance/nmdp/speechkit/ae;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/ca;->c(Ljava/lang/Object;)V

    goto :goto_1
.end method
