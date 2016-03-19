.class public final Lcom/nuance/nmdp/speechkit/dx;
.super Lcom/nuance/nmdp/speechkit/dr;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/dr;-><init>(S)V

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-super {p0, v0}, Lcom/nuance/nmdp/speechkit/dr;->a([B)[B

    move-result-object v0

    return-object v0
.end method
