.class final Lcom/nuance/nmdp/speechkit/ac$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ac$a;->a:Ljava/lang/Runnable;

    iput p2, p0, Lcom/nuance/nmdp/speechkit/ac$a;->b:I

    return-void
.end method
