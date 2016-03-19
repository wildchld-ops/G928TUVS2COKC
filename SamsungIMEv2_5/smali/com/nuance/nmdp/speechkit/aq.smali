.class public Lcom/nuance/nmdp/speechkit/aq;
.super Lcom/nuance/nmdp/speechkit/ak;


# instance fields
.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/ar;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/nuance/nmdp/speechkit/cg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/nmdp/speechkit/cg",
            "<*>;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;Ljava/lang/String;Ljava/util/List;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/ai;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/de;",
            "Lcom/nuance/nmdp/speechkit/al;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/ar;",
            ">;",
            "Lcom/nuance/nmdp/speechkit/cg",
            "<*>;",
            "Lcom/nuance/nmdp/speechkit/ai;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p6}, Lcom/nuance/nmdp/speechkit/ak;-><init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;Lcom/nuance/nmdp/speechkit/ai;)V

    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/aq;->e:Ljava/util/List;

    iput-object p5, p0, Lcom/nuance/nmdp/speechkit/aq;->f:Lcom/nuance/nmdp/speechkit/cg;

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/aq;->g:Ljava/lang/String;

    new-instance v0, Lcom/nuance/nmdp/speechkit/at;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/at;-><init>(Lcom/nuance/nmdp/speechkit/aq;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/aq;->a:Lcom/nuance/nmdp/speechkit/aj;

    return-void
.end method


# virtual methods
.method protected a(Lcom/nuance/nmdp/speechkit/ej;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/nuance/nmdp/speechkit/ak;->a(Lcom/nuance/nmdp/speechkit/ej;)V

    const-string v0, "dictation_language"

    const-string v1, "eng-USA"

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final i()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/am;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/aq;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/aq;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/ar;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/ar;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/ar;->b()Lcom/nuance/nmdp/speechkit/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/as;->f()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send custom param "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "INT is an unsupported param type"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/as;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/nuance/nmdp/speechkit/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/as;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Lcom/nuance/nmdp/speechkit/ak;Ljava/util/Map;)Lcom/nuance/nmdp/speechkit/ej;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/nuance/nmdp/speechkit/aq;->a(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)V

    goto :goto_1

    :pswitch_4
    const-string v0, "SEQ is an unsupported param type"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/as;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Lcom/nuance/nmdp/speechkit/ak;Ljava/util/Map;)Lcom/nuance/nmdp/speechkit/ej;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/nuance/nmdp/speechkit/aq;->b(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/as;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Lcom/nuance/nmdp/speechkit/ak;Ljava/util/Map;)Lcom/nuance/nmdp/speechkit/ej;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/nuance/nmdp/speechkit/aq;->c(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/as;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Lcom/nuance/nmdp/speechkit/ak;Ljava/util/Map;)Lcom/nuance/nmdp/speechkit/ej;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/nuance/nmdp/speechkit/aq;->d(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)V

    goto :goto_1

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/aq;->g:Ljava/lang/String;

    return-object v0
.end method

.method final k()Lcom/nuance/nmdp/speechkit/cg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nuance/nmdp/speechkit/cg",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/aq;->f:Lcom/nuance/nmdp/speechkit/cg;

    return-object v0
.end method
