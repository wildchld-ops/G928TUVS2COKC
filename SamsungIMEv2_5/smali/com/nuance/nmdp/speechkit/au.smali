.class final Lcom/nuance/nmdp/speechkit/au;
.super Lcom/nuance/nmdp/speechkit/aj;


# instance fields
.field private final a:Lcom/nuance/nmdp/speechkit/aq;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/aq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/aj;-><init>(Lcom/nuance/nmdp/speechkit/ak;)V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/au;->a:Lcom/nuance/nmdp/speechkit/aq;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/au;->a:Lcom/nuance/nmdp/speechkit/aq;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/aq;->d()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/au;->a:Lcom/nuance/nmdp/speechkit/aq;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/au;->a:Lcom/nuance/nmdp/speechkit/aq;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/aq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/aq;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/au;->a:Lcom/nuance/nmdp/speechkit/aq;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/aq;->i()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/au;->a:Lcom/nuance/nmdp/speechkit/aq;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/aq;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error starting PendingState"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/au;->a(I)V

    goto :goto_0
.end method

.method protected final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/au;->a:Lcom/nuance/nmdp/speechkit/aq;

    new-instance v1, Lcom/nuance/nmdp/speechkit/ao;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/au;->a:Lcom/nuance/nmdp/speechkit/aq;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/nuance/nmdp/speechkit/ao;-><init>(Lcom/nuance/nmdp/speechkit/ak;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/aq;->a(Lcom/nuance/nmdp/speechkit/aj;)V

    return-void
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/ej;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/au;->a:Lcom/nuance/nmdp/speechkit/aq;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/aq;->k()Lcom/nuance/nmdp/speechkit/cg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/cg;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/cg;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/au;->a:Lcom/nuance/nmdp/speechkit/aq;

    new-instance v1, Lcom/nuance/nmdp/speechkit/ap;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/au;->a:Lcom/nuance/nmdp/speechkit/aq;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/ap;-><init>(Lcom/nuance/nmdp/speechkit/ak;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/aq;->a(Lcom/nuance/nmdp/speechkit/aj;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/au;->a(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/nuance/nmdp/speechkit/au;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/nuance/nmdp/speechkit/au;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/au;->a(I)V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/au;->a(I)V

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/au;->a(I)V

    return-void
.end method
