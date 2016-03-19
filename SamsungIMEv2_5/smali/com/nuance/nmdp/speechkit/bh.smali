.class abstract Lcom/nuance/nmdp/speechkit/bh;
.super Lcom/nuance/nmdp/speechkit/aj;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/bc;


# instance fields
.field protected final a:Lcom/nuance/nmdp/speechkit/bg;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/bg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/aj;-><init>(Lcom/nuance/nmdp/speechkit/ak;)V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/bh;->a:Lcom/nuance/nmdp/speechkit/bg;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/bh;->a:Lcom/nuance/nmdp/speechkit/bg;

    new-instance v0, Lcom/nuance/nmdp/speechkit/ay;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/bh;->a:Lcom/nuance/nmdp/speechkit/bg;

    const/4 v5, 0x1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/ay;-><init>(Lcom/nuance/nmdp/speechkit/bg;ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Lcom/nuance/nmdp/speechkit/bg;->a(Lcom/nuance/nmdp/speechkit/aj;)V

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

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method protected final m()Lcom/nuance/nmdp/speechkit/bb;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bh;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bg;->c()Lcom/nuance/nmdp/speechkit/ai;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/bb;

    return-object v0
.end method
