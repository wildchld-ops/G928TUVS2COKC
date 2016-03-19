.class final Lcom/nuance/nmdp/speechkit/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/ai;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/a;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/a;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/a$1;->a:Lcom/nuance/nmdp/speechkit/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nuance/nmdp/speechkit/ah;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/a$1;->a:Lcom/nuance/nmdp/speechkit/a;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/a;->a(Lcom/nuance/nmdp/speechkit/a;)Lcom/nuance/nmdp/speechkit/ah;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/a$1;->a:Lcom/nuance/nmdp/speechkit/a;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/a;->b(Lcom/nuance/nmdp/speechkit/a;)Lcom/nuance/nmdp/speechkit/cg;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/a$1;->a:Lcom/nuance/nmdp/speechkit/a;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/a$1;->a:Lcom/nuance/nmdp/speechkit/a;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/a;->b(Lcom/nuance/nmdp/speechkit/a;)Lcom/nuance/nmdp/speechkit/cg;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/nmdp/speechkit/cg;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/a;->a(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/a$1;->a:Lcom/nuance/nmdp/speechkit/a;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/a;->c(Lcom/nuance/nmdp/speechkit/a;)Lcom/nuance/nmdp/speechkit/ah;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/a$1;->a:Lcom/nuance/nmdp/speechkit/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/a;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/ah;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/a$1;->a:Lcom/nuance/nmdp/speechkit/a;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/a;->a(Lcom/nuance/nmdp/speechkit/a;)Lcom/nuance/nmdp/speechkit/ah;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/a$1;->a:Lcom/nuance/nmdp/speechkit/a;

    new-instance v1, Lcom/nuance/nmdp/speechkit/t;

    invoke-direct {v1, p2, p3, p4}, Lcom/nuance/nmdp/speechkit/t;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/a;->a(Lcom/nuance/nmdp/speechkit/SpeechError;)V

    :cond_0
    return-void
.end method
