.class public final Lcom/nuance/nmdp/speechkit/bn;
.super Lcom/nuance/nmdp/speechkit/bg;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;Ljava/lang/String;ZZLjava/lang/String;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/bd;Lcom/nuance/nmdp/speechkit/bb;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/de;",
            "Lcom/nuance/nmdp/speechkit/al;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/cb;",
            "Lcom/nuance/nmdp/speechkit/cb;",
            "Lcom/nuance/nmdp/speechkit/cb;",
            "Lcom/nuance/nmdp/speechkit/cb;",
            "Lcom/nuance/nmdp/speechkit/cg",
            "<*>;",
            "Lcom/nuance/nmdp/speechkit/bd;",
            "Lcom/nuance/nmdp/speechkit/bb;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v1 .. v13}, Lcom/nuance/nmdp/speechkit/bg;-><init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;ZZLjava/lang/String;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/bd;Lcom/nuance/nmdp/speechkit/bb;)V

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/bn;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/nuance/nmdp/speechkit/ej;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/nuance/nmdp/speechkit/bg;->a(Lcom/nuance/nmdp/speechkit/ej;)V

    const-string v0, "dictation_language"

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/bn;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dictation_type"

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/bn;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/am;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/bn;->g()Lcom/nuance/nmdp/speechkit/ej;

    move-result-object v0

    const-string v1, "start"

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/ej;->b(Ljava/lang/String;I)V

    const-string v1, "end"

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/ej;->b(Ljava/lang/String;I)V

    const-string v1, "text"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "REQUEST_INFO"

    invoke-virtual {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/bn;->a(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)V

    return-void
.end method

.method protected final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bn;->d:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final l()Ljava/lang/String;
    .locals 1

    const-string v0, "AUDIO_INFO"

    return-object v0
.end method

.method protected final m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
