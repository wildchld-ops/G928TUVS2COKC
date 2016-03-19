.class public Lcom/nuance/nmdp/speechkit/dw;
.super Lcom/nuance/nmdp/speechkit/dt;


# instance fields
.field private a:S


# direct methods
.method public constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/dt;-><init>()V

    iput-short p1, p0, Lcom/nuance/nmdp/speechkit/dw;->a:S

    return-void
.end method

.method public constructor <init>(S[B)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/nuance/nmdp/speechkit/dt;-><init>([B)V

    iput-short p1, p0, Lcom/nuance/nmdp/speechkit/dw;->a:S

    return-void
.end method


# virtual methods
.method public final d()[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-short v1, p0, Lcom/nuance/nmdp/speechkit/dw;->a:S

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-short v1, p0, Lcom/nuance/nmdp/speechkit/dw;->a:S

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :try_start_0
    invoke-super {p0}, Lcom/nuance/nmdp/speechkit/dt;->d()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final e()S
    .locals 1

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/dw;->a:S

    return v0
.end method

.method public final f()[B
    .locals 1

    invoke-super {p0}, Lcom/nuance/nmdp/speechkit/dt;->d()[B

    move-result-object v0

    return-object v0
.end method
