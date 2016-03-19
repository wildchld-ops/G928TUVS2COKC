.class final Lcom/nuance/nmdp/speechkit/ak$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/el;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nuance/nmdp/speechkit/ak;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ak$2;->a:Lcom/nuance/nmdp/speechkit/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nuance/nmdp/speechkit/ej;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak$2;->a:Lcom/nuance/nmdp/speechkit/ak;

    const-string v1, "PDX Query Result Returned"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nuance/nmdp/speechkit/ak$2$3;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmdp/speechkit/ak$2$3;-><init>(Lcom/nuance/nmdp/speechkit/ak$2;Lcom/nuance/nmdp/speechkit/ej;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/em;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak$2;->a:Lcom/nuance/nmdp/speechkit/ak;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PDX Query Error Returned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nuance/nmdp/speechkit/em;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nuance/nmdp/speechkit/em;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nuance/nmdp/speechkit/em;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nuance/nmdp/speechkit/ak$2$2;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmdp/speechkit/ak$2$2;-><init>(Lcom/nuance/nmdp/speechkit/ak$2;Lcom/nuance/nmdp/speechkit/em;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/en;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak$2;->a:Lcom/nuance/nmdp/speechkit/ak;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PDX Query Retry Returned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nuance/nmdp/speechkit/en;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nuance/nmdp/speechkit/en;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/nuance/nmdp/speechkit/en;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/nuance/nmdp/speechkit/en;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/nmdp/speechkit/ak$2$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/nuance/nmdp/speechkit/ak$2$4;-><init>(Lcom/nuance/nmdp/speechkit/ak$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(S)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak$2;->a:Lcom/nuance/nmdp/speechkit/ak;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PDX Command Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nuance/nmdp/speechkit/ak$2$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmdp/speechkit/ak$2$1;-><init>(Lcom/nuance/nmdp/speechkit/ak$2;S)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/by;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
