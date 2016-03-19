.class public abstract Lcom/nuance/nmdp/speechkit/cm;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/nuance/nmdp/speechkit/cm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/d;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/oem/d;-><init>()V

    sput-object v0, Lcom/nuance/nmdp/speechkit/cm;->a:Lcom/nuance/nmdp/speechkit/cm;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b([B[B)[B
    .locals 1

    sget-object v0, Lcom/nuance/nmdp/speechkit/cm;->a:Lcom/nuance/nmdp/speechkit/cm;

    invoke-virtual {v0, p0, p1}, Lcom/nuance/nmdp/speechkit/cm;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract a([B[B)[B
.end method
