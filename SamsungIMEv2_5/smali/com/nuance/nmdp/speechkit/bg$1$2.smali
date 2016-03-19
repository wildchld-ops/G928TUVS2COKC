.class final Lcom/nuance/nmdp/speechkit/bg$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/bg$1;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/nuance/nmdp/speechkit/bg$1;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/bg$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/bg$1$2;->b:Lcom/nuance/nmdp/speechkit/bg$1;

    iput p2, p0, Lcom/nuance/nmdp/speechkit/bg$1$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/nuance/nmdp/speechkit/bg$1$2;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg$1$2;->b:Lcom/nuance/nmdp/speechkit/bg$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/bg$1;->a:Lcom/nuance/nmdp/speechkit/bg;

    const-string v1, "Recorder error"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ab;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg$1$2;->b:Lcom/nuance/nmdp/speechkit/bg$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/bg$1;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/bg;->b(Lcom/nuance/nmdp/speechkit/bg;)Lcom/nuance/nmdp/speechkit/bc;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/bc;->g()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg$1$2;->b:Lcom/nuance/nmdp/speechkit/bg$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/bg$1;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/bg;->b(Lcom/nuance/nmdp/speechkit/bg;)Lcom/nuance/nmdp/speechkit/bc;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/bc;->i()V

    goto :goto_0
.end method
