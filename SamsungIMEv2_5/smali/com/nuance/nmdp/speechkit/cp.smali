.class public final Lcom/nuance/nmdp/speechkit/cp;
.super Ljava/lang/Object;


# instance fields
.field public a:B

.field public b:B

.field public c:S

.field public d:I


# direct methods
.method public constructor <init>(BBSI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/nuance/nmdp/speechkit/cp;->a:B

    iput-byte p2, p0, Lcom/nuance/nmdp/speechkit/cp;->b:B

    iput-short p3, p0, Lcom/nuance/nmdp/speechkit/cp;->c:S

    iput p4, p0, Lcom/nuance/nmdp/speechkit/cp;->d:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/nuance/nmdp/speechkit/cp;->a:B

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/nuance/nmdp/speechkit/cp;->b:B

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/ab;->a([BI)S

    move-result v0

    iput-short v0, p0, Lcom/nuance/nmdp/speechkit/cp;->c:S

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/nuance/nmdp/speechkit/ab;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/cp;->d:I

    return-void
.end method
