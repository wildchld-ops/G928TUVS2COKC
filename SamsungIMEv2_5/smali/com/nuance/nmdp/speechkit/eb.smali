.class public final Lcom/nuance/nmdp/speechkit/eb;
.super Lcom/nuance/nmdp/speechkit/dw;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/en;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/16 v0, 0x7205

    invoke-direct {p0, v0, p1}, Lcom/nuance/nmdp/speechkit/dw;-><init>(S[B)V

    return-void
.end method


# virtual methods
.method public final g()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/eb;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final h()I
    .locals 1

    :try_start_0
    const-string v0, "cause"

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/eb;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "prompt"

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/eb;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_1
.end method
