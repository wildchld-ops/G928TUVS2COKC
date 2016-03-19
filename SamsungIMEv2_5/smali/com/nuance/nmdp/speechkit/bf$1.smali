.class final Lcom/nuance/nmdp/speechkit/bf$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/bf;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/bf;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/bf$1;->a:Lcom/nuance/nmdp/speechkit/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bf$1;->a:Lcom/nuance/nmdp/speechkit/bf;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/bf;->a:Lcom/nuance/nmdp/speechkit/bg;

    new-instance v1, Lcom/nuance/nmdp/speechkit/bj;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/bf$1;->a:Lcom/nuance/nmdp/speechkit/bf;

    iget-object v2, v2, Lcom/nuance/nmdp/speechkit/bf;->a:Lcom/nuance/nmdp/speechkit/bg;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/bj;-><init>(Lcom/nuance/nmdp/speechkit/bg;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/bg;->a(Lcom/nuance/nmdp/speechkit/aj;)V

    return-void
.end method
