.class abstract Lcom/nuance/nmdp/speechkit/bw;
.super Lcom/nuance/nmdp/speechkit/aj;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/bs;


# instance fields
.field protected final a:Lcom/nuance/nmdp/speechkit/bv;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/bv;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/aj;-><init>(Lcom/nuance/nmdp/speechkit/ak;)V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/bw;->a:Lcom/nuance/nmdp/speechkit/bv;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bw;->a:Lcom/nuance/nmdp/speechkit/bv;

    new-instance v1, Lcom/nuance/nmdp/speechkit/bp;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/bw;->a:Lcom/nuance/nmdp/speechkit/bv;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/nuance/nmdp/speechkit/bp;-><init>(Lcom/nuance/nmdp/speechkit/ak;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/bv;->a(Lcom/nuance/nmdp/speechkit/aj;)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method protected final j()Lcom/nuance/nmdp/speechkit/br;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bw;->a:Lcom/nuance/nmdp/speechkit/bv;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bv;->c()Lcom/nuance/nmdp/speechkit/ai;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/br;

    return-object v0
.end method
