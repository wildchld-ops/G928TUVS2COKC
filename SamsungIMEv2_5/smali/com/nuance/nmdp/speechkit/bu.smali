.class final Lcom/nuance/nmdp/speechkit/bu;
.super Lcom/nuance/nmdp/speechkit/bw;


# instance fields
.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/bv;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/bw;-><init>(Lcom/nuance/nmdp/speechkit/bv;)V

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/bu;->c:Z

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/bu;->d:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bu;->a:Lcom/nuance/nmdp/speechkit/bv;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bv;->d()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bu;->a:Lcom/nuance/nmdp/speechkit/bv;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/bu;->a:Lcom/nuance/nmdp/speechkit/bv;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/bv;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/bv;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bu;->a:Lcom/nuance/nmdp/speechkit/bv;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/bu;->a:Lcom/nuance/nmdp/speechkit/bv;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/bv;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/bu;->a:Lcom/nuance/nmdp/speechkit/bv;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/bv;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/bu;->a:Lcom/nuance/nmdp/speechkit/bv;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/bv;->n()Lcom/nuance/nmdp/speechkit/cx;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/bv;->a(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/cx;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bu;->a:Lcom/nuance/nmdp/speechkit/bv;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bv;->f()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bu;->a:Lcom/nuance/nmdp/speechkit/bv;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bv;->l()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error starting PlayingState"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/bu;->a(I)V

    goto :goto_0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/ej;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/bu;->c:Z

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/bu;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bu;->a:Lcom/nuance/nmdp/speechkit/bv;

    new-instance v1, Lcom/nuance/nmdp/speechkit/bq;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/bu;->a:Lcom/nuance/nmdp/speechkit/bv;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/bq;-><init>(Lcom/nuance/nmdp/speechkit/bv;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/bv;->a(Lcom/nuance/nmdp/speechkit/aj;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/nuance/nmdp/speechkit/bu;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bu;->a:Lcom/nuance/nmdp/speechkit/bv;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bv;->m()V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/nuance/nmdp/speechkit/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/bu;->a(I)V

    return-void
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "createCommandFailed"

    invoke-virtual {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/bu;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/bu;->a(I)V

    return-void
.end method

.method public final g()V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "audioError"

    invoke-virtual {p0, v0, v1}, Lcom/nuance/nmdp/speechkit/bu;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final h()V
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/bu;->j()Lcom/nuance/nmdp/speechkit/br;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/bu;->a:Lcom/nuance/nmdp/speechkit/bv;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/br;->b(Lcom/nuance/nmdp/speechkit/ah;)V

    return-void
.end method

.method public final i()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/bu;->d:Z

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/bu;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bu;->a:Lcom/nuance/nmdp/speechkit/bv;

    new-instance v1, Lcom/nuance/nmdp/speechkit/bq;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/bu;->a:Lcom/nuance/nmdp/speechkit/bv;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/bq;-><init>(Lcom/nuance/nmdp/speechkit/bv;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/bv;->a(Lcom/nuance/nmdp/speechkit/aj;)V

    :cond_0
    return-void
.end method
