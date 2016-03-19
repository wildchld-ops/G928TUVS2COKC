.class final Lcom/nuance/nmdp/speechkit/az;
.super Lcom/nuance/nmdp/speechkit/bh;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/bg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/bh;-><init>(Lcom/nuance/nmdp/speechkit/bg;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/az;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bg;->e()V

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/az;->m()Lcom/nuance/nmdp/speechkit/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/az;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/bb;->a(Lcom/nuance/nmdp/speechkit/ah;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/az;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bg;->q()V

    return-void
.end method
