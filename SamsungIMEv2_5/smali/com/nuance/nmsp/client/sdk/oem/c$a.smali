.class public final Lcom/nuance/nmsp/client/sdk/oem/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/oem/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Thread;

.field public b:Lcom/nuance/nmdp/speechkit/cl$b;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/c$a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/oem/c$a;->b:Lcom/nuance/nmdp/speechkit/cl$b;

    return-void
.end method
