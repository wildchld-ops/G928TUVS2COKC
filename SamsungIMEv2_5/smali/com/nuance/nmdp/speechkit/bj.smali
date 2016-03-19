.class final Lcom/nuance/nmdp/speechkit/bj;
.super Lcom/nuance/nmdp/speechkit/ax;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/bg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/ax;-><init>(Lcom/nuance/nmdp/speechkit/bg;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bj;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bg;->u()V

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/bj;->m()Lcom/nuance/nmdp/speechkit/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/bj;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/bb;->b(Lcom/nuance/nmdp/speechkit/ah;)V
    :try_end_0
    .catch Lcom/nuance/nmdp/speechkit/am; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error starting RecordingState"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/bj;->a(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bj;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bg;->v()V

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/bj;->m()Lcom/nuance/nmdp/speechkit/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/bj;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/bb;->c(Lcom/nuance/nmdp/speechkit/ah;)V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/bj;->a(I)V

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/bj;->a(I)V

    return-void
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bj;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bg;->p()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bj;->a:Lcom/nuance/nmdp/speechkit/bg;

    new-instance v1, Lcom/nuance/nmdp/speechkit/bk;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/bj;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/bk;-><init>(Lcom/nuance/nmdp/speechkit/bg;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/bg;->a(Lcom/nuance/nmdp/speechkit/aj;)V

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bj;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bg;->v()V

    return-void
.end method
