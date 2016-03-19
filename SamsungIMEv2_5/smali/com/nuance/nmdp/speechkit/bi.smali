.class final Lcom/nuance/nmdp/speechkit/bi;
.super Lcom/nuance/nmdp/speechkit/ax;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/bg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/ax;-><init>(Lcom/nuance/nmdp/speechkit/bg;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bi;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bg;->d()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bi;->a:Lcom/nuance/nmdp/speechkit/bg;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/bi;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/bg;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/bg;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bi;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bg;->j()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bi;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bg;->s()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bi;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bg;->t()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error starting RecordStartingState"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/bi;->a:Lcom/nuance/nmdp/speechkit/bg;

    new-instance v0, Lcom/nuance/nmdp/speechkit/ay;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/bi;->a:Lcom/nuance/nmdp/speechkit/bg;

    const/4 v2, 0x3

    const/4 v5, 0x0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/ay;-><init>(Lcom/nuance/nmdp/speechkit/bg;ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Lcom/nuance/nmdp/speechkit/bg;->a(Lcom/nuance/nmdp/speechkit/aj;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/bi;->a(I)V

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/bi;->a(I)V

    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bi;->a:Lcom/nuance/nmdp/speechkit/bg;

    new-instance v1, Lcom/nuance/nmdp/speechkit/bf;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/bi;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/bf;-><init>(Lcom/nuance/nmdp/speechkit/bg;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/bg;->a(Lcom/nuance/nmdp/speechkit/aj;)V

    return-void
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/bi;->a(I)V

    return-void
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/bi;->a(I)V

    return-void
.end method
