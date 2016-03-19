.class final Lcom/nuance/nmdp/speechkit/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/b;-><init>(Lcom/nuance/nmdp/speechkit/v;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/b;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/b;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/b$1;->a:Lcom/nuance/nmdp/speechkit/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/b$1;->a:Lcom/nuance/nmdp/speechkit/b;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/b$1;->a:Lcom/nuance/nmdp/speechkit/b;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/b$1;->a:Lcom/nuance/nmdp/speechkit/b;

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/b;->a(Lcom/nuance/nmdp/speechkit/b;)Lcom/nuance/nmdp/speechkit/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/v;->c()Lcom/nuance/nmdp/speechkit/an;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/b$1;->a:Lcom/nuance/nmdp/speechkit/b;

    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/b;->b(Lcom/nuance/nmdp/speechkit/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/b$1;->a:Lcom/nuance/nmdp/speechkit/b;

    invoke-static {v4}, Lcom/nuance/nmdp/speechkit/b;->c(Lcom/nuance/nmdp/speechkit/b;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/nmdp/speechkit/b;->a(Lcom/nuance/nmdp/speechkit/an;Ljava/lang/String;Ljava/util/List;)Lcom/nuance/nmdp/speechkit/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/b;->a(Lcom/nuance/nmdp/speechkit/b;Lcom/nuance/nmdp/speechkit/a;)Lcom/nuance/nmdp/speechkit/a;

    return-void
.end method
