.class final Lcom/nuance/nmdp/speechkit/be;
.super Lcom/nuance/nmdp/speechkit/bh;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/bg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/bh;-><init>(Lcom/nuance/nmdp/speechkit/bg;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 3

    const-string v0, "Starting recognize transaction"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/be;->a:Lcom/nuance/nmdp/speechkit/bg;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/be;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bg;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/nmdp/speechkit/bi;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/be;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-direct {v0, v2}, Lcom/nuance/nmdp/speechkit/bi;-><init>(Lcom/nuance/nmdp/speechkit/bg;)V

    :goto_0
    invoke-virtual {v1, v0}, Lcom/nuance/nmdp/speechkit/bg;->a(Lcom/nuance/nmdp/speechkit/aj;)V

    return-void

    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/bl;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/be;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-direct {v0, v2}, Lcom/nuance/nmdp/speechkit/bl;-><init>(Lcom/nuance/nmdp/speechkit/bg;)V

    goto :goto_0
.end method
