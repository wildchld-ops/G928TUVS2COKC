.class final Lcom/nuance/nmdp/speechkit/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/q;-><init>(Lcom/nuance/nmdp/speechkit/v;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:I

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/nuance/nmdp/speechkit/q;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/q;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/q$1;->d:Lcom/nuance/nmdp/speechkit/q;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/q$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/nmdp/speechkit/q$1;->b:I

    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/q$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v8, p0, Lcom/nuance/nmdp/speechkit/q$1;->d:Lcom/nuance/nmdp/speechkit/q;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/q$1;->d:Lcom/nuance/nmdp/speechkit/q;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/q$1;->d:Lcom/nuance/nmdp/speechkit/q;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/q;->a(Lcom/nuance/nmdp/speechkit/q;)Lcom/nuance/nmdp/speechkit/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/v;->c()Lcom/nuance/nmdp/speechkit/an;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/q$1;->a:Ljava/lang/String;

    iget v3, p0, Lcom/nuance/nmdp/speechkit/q$1;->b:I

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_0
    iget v6, p0, Lcom/nuance/nmdp/speechkit/q$1;->b:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    :goto_1
    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/q$1;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/q$1;->d:Lcom/nuance/nmdp/speechkit/q;

    invoke-static {v6}, Lcom/nuance/nmdp/speechkit/q;->b(Lcom/nuance/nmdp/speechkit/q;)Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/nuance/nmdp/speechkit/q$1;->d:Lcom/nuance/nmdp/speechkit/q;

    new-instance v7, Lcom/nuance/nmdp/speechkit/q$2;

    invoke-direct {v7, v9}, Lcom/nuance/nmdp/speechkit/q$2;-><init>(Lcom/nuance/nmdp/speechkit/q;)V

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/q;->a(Lcom/nuance/nmdp/speechkit/an;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/bd;)Lcom/nuance/nmdp/speechkit/n;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/nuance/nmdp/speechkit/q;->a(Lcom/nuance/nmdp/speechkit/q;Lcom/nuance/nmdp/speechkit/n;)Lcom/nuance/nmdp/speechkit/n;

    return-void

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method
