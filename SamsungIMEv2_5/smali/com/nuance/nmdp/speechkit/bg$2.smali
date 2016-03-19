.class final Lcom/nuance/nmdp/speechkit/bg$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/ca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nuance/nmdp/speechkit/bg;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/bg$2;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg$2;->a:Lcom/nuance/nmdp/speechkit/bg;

    const-string v1, "Prompt error"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ab;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nuance/nmdp/speechkit/bg$2$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/bg$2$1;-><init>(Lcom/nuance/nmdp/speechkit/bg$2;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/nuance/nmdp/speechkit/bg$2$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/bg$2$2;-><init>(Lcom/nuance/nmdp/speechkit/bg$2;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    return-void
.end method
