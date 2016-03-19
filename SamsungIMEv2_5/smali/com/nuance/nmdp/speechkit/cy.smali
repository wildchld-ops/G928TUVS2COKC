.class public abstract Lcom/nuance/nmdp/speechkit/cy;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:S

.field private c:Ljava/lang/String;

.field private d:Lcom/nuance/nmdp/speechkit/cl;

.field private e:Lcom/nuance/nmdp/speechkit/cj;

.field private f:Lcom/nuance/nmdp/speechkit/cj;


# direct methods
.method protected constructor <init>(Ljava/lang/String;SLjava/lang/String;Lcom/nuance/nmdp/speechkit/cj;Lcom/nuance/nmdp/speechkit/cj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_2

    const-string v0, " gatewayIP is null"

    :cond_0
    :goto_0
    if-gtz p2, :cond_1

    const-string v0, " gatewayPort should be greater than 0"

    :cond_1
    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, " gatewayIP is empty"

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/cy;->a:Ljava/lang/String;

    iput-short p2, p0, Lcom/nuance/nmdp/speechkit/cy;->b:S

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/cy;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/cy;->e:Lcom/nuance/nmdp/speechkit/cj;

    iput-object p5, p0, Lcom/nuance/nmdp/speechkit/cy;->f:Lcom/nuance/nmdp/speechkit/cj;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/c;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/oem/c;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/cy;->d:Lcom/nuance/nmdp/speechkit/cl;

    return-void
.end method


# virtual methods
.method public final a()Lcom/nuance/nmdp/speechkit/cl;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cy;->d:Lcom/nuance/nmdp/speechkit/cl;

    return-object v0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/cj;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/cy;->e:Lcom/nuance/nmdp/speechkit/cj;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lcom/nuance/nmdp/speechkit/cj;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/cy;->f:Lcom/nuance/nmdp/speechkit/cj;

    return-void
.end method

.method public final c()S
    .locals 1

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/cy;->b:S

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cy;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/nuance/nmdp/speechkit/cj;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cy;->e:Lcom/nuance/nmdp/speechkit/cj;

    return-object v0
.end method

.method public final f()Lcom/nuance/nmdp/speechkit/cj;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/cy;->f:Lcom/nuance/nmdp/speechkit/cj;

    return-object v0
.end method
