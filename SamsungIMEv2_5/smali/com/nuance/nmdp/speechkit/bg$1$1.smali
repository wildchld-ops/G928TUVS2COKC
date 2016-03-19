.class final Lcom/nuance/nmdp/speechkit/bg$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/bg$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/bg$1;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/bg$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/bg$1$1;->a:Lcom/nuance/nmdp/speechkit/bg$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg$1$1;->a:Lcom/nuance/nmdp/speechkit/bg$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/bg$1;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/bg;->b(Lcom/nuance/nmdp/speechkit/bg;)Lcom/nuance/nmdp/speechkit/bc;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/bc;->h()V

    return-void
.end method
