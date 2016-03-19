.class final Lcom/nuance/nmdp/speechkit/bg$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/cc;


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

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/bg$1;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/nuance/nmdp/speechkit/bg$1$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/bg$1$1;-><init>(Lcom/nuance/nmdp/speechkit/bg$1;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg$1;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/bg;->a(Lcom/nuance/nmdp/speechkit/bg;)Lcom/nuance/nmdp/speechkit/bd;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/bd;->a(F)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    new-instance v0, Lcom/nuance/nmdp/speechkit/bg$1$2;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmdp/speechkit/bg$1$2;-><init>(Lcom/nuance/nmdp/speechkit/bg$1;I)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    return-void
.end method
