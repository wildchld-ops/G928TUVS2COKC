.class final Lcom/nuance/nmdp/speechkit/bt;
.super Lcom/nuance/nmdp/speechkit/bw;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/bv;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/bw;-><init>(Lcom/nuance/nmdp/speechkit/bv;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 3

    const-string v0, "Starting vocalize transaction"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bt;->a:Lcom/nuance/nmdp/speechkit/bv;

    new-instance v1, Lcom/nuance/nmdp/speechkit/bu;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/bt;->a:Lcom/nuance/nmdp/speechkit/bv;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/bu;-><init>(Lcom/nuance/nmdp/speechkit/bv;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/bv;->a(Lcom/nuance/nmdp/speechkit/aj;)V

    return-void
.end method
