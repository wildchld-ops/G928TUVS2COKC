.class final Lcom/nuance/nmdp/speechkit/ay;
.super Lcom/nuance/nmdp/speechkit/ag;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/bc;


# instance fields
.field private final c:Lcom/nuance/nmdp/speechkit/bg;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/bg;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/nuance/nmdp/speechkit/ag;-><init>(Lcom/nuance/nmdp/speechkit/ak;ILjava/lang/String;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ay;->c:Lcom/nuance/nmdp/speechkit/bg;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ay;->c:Lcom/nuance/nmdp/speechkit/bg;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bg;->v()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ay;->c:Lcom/nuance/nmdp/speechkit/bg;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bg;->o()V

    invoke-super {p0}, Lcom/nuance/nmdp/speechkit/ag;->a()V

    iget v0, p0, Lcom/nuance/nmdp/speechkit/ay;->a:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ay;->c:Lcom/nuance/nmdp/speechkit/bg;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bg;->r()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final i()V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final l()V
    .locals 0

    return-void
.end method
