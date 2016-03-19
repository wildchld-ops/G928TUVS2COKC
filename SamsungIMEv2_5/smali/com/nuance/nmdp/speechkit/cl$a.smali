.class public final Lcom/nuance/nmdp/speechkit/cl$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/cl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:B

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(BLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/nuance/nmdp/speechkit/cl$a;->a:B

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    return-void
.end method
