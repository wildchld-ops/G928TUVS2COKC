.class final Lcom/nuance/nmdp/speechkit/ew;
.super Lcom/nuance/nmdp/speechkit/eq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/eq;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ew;->b:Lcom/nuance/nmdp/speechkit/es;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/es;->b()Z

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ew;->b:Lcom/nuance/nmdp/speechkit/es;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/es;->c()Z

    return-void
.end method

.method public final f()I
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/ew;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method
