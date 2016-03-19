.class final Lcom/nuance/nmdp/speechkit/n$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/bb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/n;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/n;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/n$1;->a:Lcom/nuance/nmdp/speechkit/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nuance/nmdp/speechkit/ah;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n$1;->a:Lcom/nuance/nmdp/speechkit/n;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/n;->a(Lcom/nuance/nmdp/speechkit/n;)Lcom/nuance/nmdp/speechkit/ba;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n$1;->a:Lcom/nuance/nmdp/speechkit/n;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/n;->b(Lcom/nuance/nmdp/speechkit/n;)Lcom/nuance/nmdp/speechkit/ba;

    :cond_0
    return-void
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/ah;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n$1;->a:Lcom/nuance/nmdp/speechkit/n;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/n;->a(Lcom/nuance/nmdp/speechkit/n;)Lcom/nuance/nmdp/speechkit/ba;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n$1;->a:Lcom/nuance/nmdp/speechkit/n;

    new-instance v1, Lcom/nuance/nmdp/speechkit/t;

    invoke-direct {v1, p2, p3, p4}, Lcom/nuance/nmdp/speechkit/t;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/n;->a(Lcom/nuance/nmdp/speechkit/SpeechError;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/nuance/nmdp/speechkit/ah;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n$1;->a:Lcom/nuance/nmdp/speechkit/n;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/n;->a(Lcom/nuance/nmdp/speechkit/n;)Lcom/nuance/nmdp/speechkit/ba;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n$1;->a:Lcom/nuance/nmdp/speechkit/n;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/n;->b()V

    :cond_0
    return-void
.end method

.method public final c(Lcom/nuance/nmdp/speechkit/ah;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n$1;->a:Lcom/nuance/nmdp/speechkit/n;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/n;->a(Lcom/nuance/nmdp/speechkit/n;)Lcom/nuance/nmdp/speechkit/ba;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n$1;->a:Lcom/nuance/nmdp/speechkit/n;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/n;->c()V

    :cond_0
    return-void
.end method

.method public final d(Lcom/nuance/nmdp/speechkit/ah;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n$1;->a:Lcom/nuance/nmdp/speechkit/n;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/n;->a(Lcom/nuance/nmdp/speechkit/n;)Lcom/nuance/nmdp/speechkit/ba;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/n$1;->a:Lcom/nuance/nmdp/speechkit/n;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/n$1;->a:Lcom/nuance/nmdp/speechkit/n;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/n;->c(Lcom/nuance/nmdp/speechkit/n;)Lcom/nuance/nmdp/speechkit/cg;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/nmdp/speechkit/cg;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/n;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
