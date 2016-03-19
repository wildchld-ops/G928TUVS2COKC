.class final Lcom/nuance/nmdp/speechkit/an$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/br;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/nuance/nmdp/speechkit/br;)Lcom/nuance/nmdp/speechkit/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/br;

.field private synthetic b:Lcom/nuance/nmdp/speechkit/an;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/an;Lcom/nuance/nmdp/speechkit/br;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/an$6;->b:Lcom/nuance/nmdp/speechkit/an;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/an$6;->a:Lcom/nuance/nmdp/speechkit/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nuance/nmdp/speechkit/ah;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an$6;->b:Lcom/nuance/nmdp/speechkit/an;

    invoke-static {v0, p1}, Lcom/nuance/nmdp/speechkit/an;->a(Lcom/nuance/nmdp/speechkit/an;Lcom/nuance/nmdp/speechkit/ah;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an$6;->a:Lcom/nuance/nmdp/speechkit/br;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/br;->a(Lcom/nuance/nmdp/speechkit/ah;)V

    return-void
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/ah;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an$6;->a:Lcom/nuance/nmdp/speechkit/br;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nuance/nmdp/speechkit/br;->a(Lcom/nuance/nmdp/speechkit/ah;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an$6;->b:Lcom/nuance/nmdp/speechkit/an;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/an;->a(Lcom/nuance/nmdp/speechkit/an;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/nuance/nmdp/speechkit/ah;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/an$6;->a:Lcom/nuance/nmdp/speechkit/br;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/br;->b(Lcom/nuance/nmdp/speechkit/ah;)V

    return-void
.end method
