.class final Lcom/nuance/nmdp/speechkit/bk;
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
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bk;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bg;->f()V
    :try_end_0
    .catch Lcom/nuance/nmdp/speechkit/am; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error ending command"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/bk;->a(I)V

    goto :goto_0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/ej;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bk;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bg;->i()Lcom/nuance/nmdp/speechkit/cg;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/cg;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/bk;->m()Lcom/nuance/nmdp/speechkit/bb;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/bk;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-interface {v1, v2}, Lcom/nuance/nmdp/speechkit/bb;->d(Lcom/nuance/nmdp/speechkit/ah;)V

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/cg;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bk;->a:Lcom/nuance/nmdp/speechkit/bg;

    new-instance v1, Lcom/nuance/nmdp/speechkit/az;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/bk;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/az;-><init>(Lcom/nuance/nmdp/speechkit/bg;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/bg;->a(Lcom/nuance/nmdp/speechkit/aj;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/bk;->a(I)V

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/bk;->a(I)V

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/bk;->a(I)V

    return-void
.end method
