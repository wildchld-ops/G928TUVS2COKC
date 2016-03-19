.class public final Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;
.super Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bytes"
.end annotation


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;-><init>(I)V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;->a:[B

    return-void
.end method


# virtual methods
.method public final get()[B
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;->a:[B

    return-object v0
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;->a:[B

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-byte v5, v3, v0

    shr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    int-to-byte v6, v6

    and-int/lit8 v5, v5, 0xf

    int-to-byte v5, v5

    aget-char v6, v1, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-char v5, v1, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method
