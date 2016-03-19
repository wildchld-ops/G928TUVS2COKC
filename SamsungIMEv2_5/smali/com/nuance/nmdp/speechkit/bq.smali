.class final Lcom/nuance/nmdp/speechkit/bq;
.super Lcom/nuance/nmdp/speechkit/bw;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/bv;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/bw;-><init>(Lcom/nuance/nmdp/speechkit/bv;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bq;->a:Lcom/nuance/nmdp/speechkit/bv;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bv;->e()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bq;->a:Lcom/nuance/nmdp/speechkit/bv;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bv;->c()Lcom/nuance/nmdp/speechkit/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/bq;->a:Lcom/nuance/nmdp/speechkit/bv;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/ai;->a(Lcom/nuance/nmdp/speechkit/ah;)V

    return-void
.end method
