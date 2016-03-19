.class public final Lcom/nuance/nmdp/speechkit/ap;
.super Lcom/nuance/nmdp/speechkit/aj;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/ak;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/aj;-><init>(Lcom/nuance/nmdp/speechkit/ak;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ap;->b:Lcom/nuance/nmdp/speechkit/ak;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/ak;->e()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ap;->b:Lcom/nuance/nmdp/speechkit/ak;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/ak;->c()Lcom/nuance/nmdp/speechkit/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ap;->b:Lcom/nuance/nmdp/speechkit/ak;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/ai;->a(Lcom/nuance/nmdp/speechkit/ah;)V

    return-void
.end method
