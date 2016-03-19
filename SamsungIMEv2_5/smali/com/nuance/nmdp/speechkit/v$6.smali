.class final Lcom/nuance/nmdp/speechkit/v$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/v;->a(Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/Prompt;

.field private synthetic b:Lcom/nuance/nmdp/speechkit/Prompt;

.field private synthetic c:Lcom/nuance/nmdp/speechkit/Prompt;

.field private synthetic d:Lcom/nuance/nmdp/speechkit/Prompt;

.field private synthetic e:Lcom/nuance/nmdp/speechkit/v;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/v;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;Lcom/nuance/nmdp/speechkit/Prompt;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/v$6;->e:Lcom/nuance/nmdp/speechkit/v;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/v$6;->a:Lcom/nuance/nmdp/speechkit/Prompt;

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/v$6;->b:Lcom/nuance/nmdp/speechkit/Prompt;

    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/v$6;->c:Lcom/nuance/nmdp/speechkit/Prompt;

    iput-object p5, p0, Lcom/nuance/nmdp/speechkit/v$6;->d:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$6;->e:Lcom/nuance/nmdp/speechkit/v;

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/v;->a(Lcom/nuance/nmdp/speechkit/v;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$6;->e:Lcom/nuance/nmdp/speechkit/v;

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/v;->b(Lcom/nuance/nmdp/speechkit/v;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$6;->e:Lcom/nuance/nmdp/speechkit/v;

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/v;->c(Lcom/nuance/nmdp/speechkit/v;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$6;->e:Lcom/nuance/nmdp/speechkit/v;

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/v;->d(Lcom/nuance/nmdp/speechkit/v;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$6;->a:Lcom/nuance/nmdp/speechkit/Prompt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$6;->a:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/Prompt;->a()Lcom/nuance/nmdp/speechkit/cb;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/cb;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$6;->e:Lcom/nuance/nmdp/speechkit/v;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/v$6;->a:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/v;->a(Lcom/nuance/nmdp/speechkit/v;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$6;->b:Lcom/nuance/nmdp/speechkit/Prompt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$6;->b:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/Prompt;->a()Lcom/nuance/nmdp/speechkit/cb;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/cb;->b()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$6;->e:Lcom/nuance/nmdp/speechkit/v;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/v$6;->b:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/v;->b(Lcom/nuance/nmdp/speechkit/v;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$6;->c:Lcom/nuance/nmdp/speechkit/Prompt;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$6;->c:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/Prompt;->a()Lcom/nuance/nmdp/speechkit/cb;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/cb;->b()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$6;->e:Lcom/nuance/nmdp/speechkit/v;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/v$6;->c:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/v;->c(Lcom/nuance/nmdp/speechkit/v;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$6;->d:Lcom/nuance/nmdp/speechkit/Prompt;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$6;->d:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/Prompt;->a()Lcom/nuance/nmdp/speechkit/cb;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/cb;->b()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$6;->e:Lcom/nuance/nmdp/speechkit/v;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/v$6;->d:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/v;->d(Lcom/nuance/nmdp/speechkit/v;Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/Prompt;

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string v0, "Recording start prompt is invalid"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "Recording stop prompt is invalid"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v0, "Result prompt is invalid"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v0, "Error prompt is invalid"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3
.end method
