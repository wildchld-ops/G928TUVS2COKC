.class public final Lcom/nuance/nmdp/speechkit/ea;
.super Lcom/nuance/nmdp/speechkit/dw;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/ej;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/16 v0, 0x7201

    invoke-direct {p0, v0, p1}, Lcom/nuance/nmdp/speechkit/dw;-><init>(S[B)V

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "final_response"

    invoke-virtual {p0, v1}, Lcom/nuance/nmdp/speechkit/ea;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "final_response"

    invoke-virtual {p0, v1}, Lcom/nuance/nmdp/speechkit/ea;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
