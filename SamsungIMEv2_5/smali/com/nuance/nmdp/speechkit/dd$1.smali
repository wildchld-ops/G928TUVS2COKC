.class final Lcom/nuance/nmdp/speechkit/dd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/co;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/dd;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/dd;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/dd$1;->a:Lcom/nuance/nmdp/speechkit/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dd$1;->a:Lcom/nuance/nmdp/speechkit/dd;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/dd;->a(Lcom/nuance/nmdp/speechkit/dd;)Lcom/nuance/nmdp/speechkit/co;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dd$1;->a:Lcom/nuance/nmdp/speechkit/dd;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/dd;->b(Lcom/nuance/nmdp/speechkit/dd;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dd$1;->a:Lcom/nuance/nmdp/speechkit/dd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/dd;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dd$1;->a:Lcom/nuance/nmdp/speechkit/dd;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/dd;->c(Lcom/nuance/nmdp/speechkit/dd;)V

    goto :goto_0
.end method
