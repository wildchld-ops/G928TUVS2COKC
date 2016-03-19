.class public final Lcom/nuance/nmdp/speechkit/eh;
.super Lcom/nuance/nmdp/speechkit/dr;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xc1

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/dr;-><init>(S)V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/eh;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/16 v0, 0xc1

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/dr;-><init>(S)V

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/eh;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/eh;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eh;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eh;->a:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-super {p0, v0}, Lcom/nuance/nmdp/speechkit/dr;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eh;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-super {p0, v0}, Lcom/nuance/nmdp/speechkit/dr;->a([B)[B

    move-result-object v0

    goto :goto_0
.end method
