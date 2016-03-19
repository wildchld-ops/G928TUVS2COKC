.class final Lcom/nuance/nmsp/client/sdk/oem/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/oem/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Lcom/nuance/nmdp/speechkit/co;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/co;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/nuance/nmsp/client/sdk/oem/g$a;->a:J

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/g$a;->b:Lcom/nuance/nmdp/speechkit/co;

    return-void
.end method
