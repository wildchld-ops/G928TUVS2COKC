.class public final Lcom/nuance/nmdp/speechkit/av;
.super Lcom/nuance/nmdp/speechkit/aq;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;Ljava/util/List;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/ai;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/de;",
            "Lcom/nuance/nmdp/speechkit/al;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/ar;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/cg",
            "<*>;",
            "Lcom/nuance/nmdp/speechkit/ai;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/nuance/nmdp/speechkit/al;->v()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/aq;-><init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;Ljava/lang/String;Ljava/util/List;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/ai;)V

    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/av;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/nuance/nmdp/speechkit/ej;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/nuance/nmdp/speechkit/aq;->a(Lcom/nuance/nmdp/speechkit/ej;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/av;->e:Ljava/lang/String;

    const-string v0, "application_session_id"

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/av;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
