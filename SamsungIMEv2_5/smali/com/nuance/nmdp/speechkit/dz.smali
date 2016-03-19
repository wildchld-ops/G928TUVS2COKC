.class public final Lcom/nuance/nmdp/speechkit/dz;
.super Lcom/nuance/nmdp/speechkit/dw;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/em;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/16 v0, 0x7202

    invoke-direct {p0, v0, p1}, Lcom/nuance/nmdp/speechkit/dw;-><init>(S[B)V

    return-void
.end method


# virtual methods
.method public final g()I
    .locals 1

    const-string v0, "error"

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/dz;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    const-string v0, "description"

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/dz;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    const-string v0, "parameter"

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/dz;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
