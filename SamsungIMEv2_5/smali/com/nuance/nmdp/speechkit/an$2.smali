.class final Lcom/nuance/nmdp/speechkit/an$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/bb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/an;->a(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/bd;Lcom/nuance/nmdp/speechkit/bb;)Lcom/nuance/nmdp/speechkit/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/bb;

.field private synthetic b:Lcom/nuance/nmdp/speechkit/an;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/an;Lcom/nuance/nmdp/speechkit/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/an$2;->b:Lcom/nuance/nmdp/speechkit/an;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/an$2;->a:Lcom/nuance/nmdp/speechkit/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nuance/nmdp/speechkit/ah;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an$2;->b:Lcom/nuance/nmdp/speechkit/an;

    invoke-static {v0, p1}, Lcom/nuance/nmdp/speechkit/an;->a(Lcom/nuance/nmdp/speechkit/an;Lcom/nuance/nmdp/speechkit/ah;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an$2;->a:Lcom/nuance/nmdp/speechkit/bb;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/bb;->a(Lcom/nuance/nmdp/speechkit/ah;)V

    return-void
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/ah;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an$2;->a:Lcom/nuance/nmdp/speechkit/bb;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nuance/nmdp/speechkit/bb;->a(Lcom/nuance/nmdp/speechkit/ah;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an$2;->b:Lcom/nuance/nmdp/speechkit/an;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/an;->a(Lcom/nuance/nmdp/speechkit/an;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/nuance/nmdp/speechkit/ah;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an$2;->a:Lcom/nuance/nmdp/speechkit/bb;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/bb;->b(Lcom/nuance/nmdp/speechkit/ah;)V

    return-void
.end method

.method public final c(Lcom/nuance/nmdp/speechkit/ah;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an$2;->a:Lcom/nuance/nmdp/speechkit/bb;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/bb;->c(Lcom/nuance/nmdp/speechkit/ah;)V

    return-void
.end method

.method public final d(Lcom/nuance/nmdp/speechkit/ah;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an$2;->a:Lcom/nuance/nmdp/speechkit/bb;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/bb;->d(Lcom/nuance/nmdp/speechkit/ah;)V

    return-void
.end method
