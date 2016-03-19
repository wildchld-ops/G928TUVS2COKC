.class final Lcom/nuance/nmdp/speechkit/v$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/v;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/v;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/v;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/v$2;->a:Lcom/nuance/nmdp/speechkit/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$2;->a:Lcom/nuance/nmdp/speechkit/v;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/v;->b(Lcom/nuance/nmdp/speechkit/v;)Lcom/nuance/nmdp/speechkit/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/an;->a()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$2;->a:Lcom/nuance/nmdp/speechkit/v;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/v;->c(Lcom/nuance/nmdp/speechkit/v;)Lcom/nuance/nmdp/speechkit/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bz;->c()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$2;->a:Lcom/nuance/nmdp/speechkit/v;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/v;->c(Lcom/nuance/nmdp/speechkit/v;)Lcom/nuance/nmdp/speechkit/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/bz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/Prompt;->a()Lcom/nuance/nmdp/speechkit/cb;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/cb;->c()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
