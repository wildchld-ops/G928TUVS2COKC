.class final Lcom/nuance/nmdp/speechkit/bf;
.super Lcom/nuance/nmdp/speechkit/ax;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/bg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/ax;-><init>(Lcom/nuance/nmdp/speechkit/bg;)V

    return-void
.end method

.method private n()V
    .locals 2

    new-instance v0, Lcom/nuance/nmdp/speechkit/bf$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/bf$1;-><init>(Lcom/nuance/nmdp/speechkit/bf;)V

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bf;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bg;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/bf;->n()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/bf;->a(I)V

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/bf;->a(I)V

    return-void
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/bf;->a(I)V

    return-void
.end method

.method public final k()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/bf;->n()V

    return-void
.end method

.method public final l()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/bf;->n()V

    return-void
.end method
