.class final Lcom/nuance/nmdp/speechkit/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/cg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/g;->a()Lcom/nuance/nmdp/speechkit/cg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nuance/nmdp/speechkit/cg",
        "<",
        "Lcom/nuance/nmdp/speechkit/GenericResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/g;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/g;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/g$1;->a:Lcom/nuance/nmdp/speechkit/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic a(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/nuance/nmdp/speechkit/ej;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/g$1;->a:Lcom/nuance/nmdp/speechkit/g;

    const-string v1, "status"

    invoke-interface {p1, v1}, Lcom/nuance/nmdp/speechkit/ej;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/g;->a(Lcom/nuance/nmdp/speechkit/g;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/g$1;->a:Lcom/nuance/nmdp/speechkit/g;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/g;->a(Lcom/nuance/nmdp/speechkit/g;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/g$1;->a:Lcom/nuance/nmdp/speechkit/g;

    return-object v0
.end method
