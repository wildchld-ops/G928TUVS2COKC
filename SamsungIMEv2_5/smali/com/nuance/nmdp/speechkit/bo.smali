.class public final Lcom/nuance/nmdp/speechkit/bo;
.super Lcom/nuance/nmdp/speechkit/bg;


# instance fields
.field private e:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/bd;Lcom/nuance/nmdp/speechkit/bb;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/de;",
            "Lcom/nuance/nmdp/speechkit/al;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;",
            "Lcom/nuance/nmdp/speechkit/cg",
            "<*>;",
            "Lcom/nuance/nmdp/speechkit/bd;",
            "Lcom/nuance/nmdp/speechkit/bb;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {v1 .. v13}, Lcom/nuance/nmdp/speechkit/bg;-><init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;ZZLjava/lang/String;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/bd;Lcom/nuance/nmdp/speechkit/bb;)V

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/bo;->e:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/bo;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/nuance/nmdp/speechkit/ej;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/nuance/nmdp/speechkit/bg;->a(Lcom/nuance/nmdp/speechkit/ej;)V

    const-string v0, "dictation_language"

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/bo;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bo;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "application_session_id"

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/bo;->f:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/am;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/bo;->g()Lcom/nuance/nmdp/speechkit/ej;

    move-result-object v0

    new-instance v1, Lcom/nuance/nmdp/speechkit/as;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/bo;->e:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v1, v2}, Lcom/nuance/nmdp/speechkit/as;-><init>(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    const-string v2, "appserver_data"

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/as;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/nmdp/speechkit/ab;->a(Lcom/nuance/nmdp/speechkit/ak;Ljava/util/Map;)Lcom/nuance/nmdp/speechkit/ej;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST_INFO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "REQUEST_INFO"

    invoke-virtual {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/bo;->a(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)V

    return-void
.end method

.method protected final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bo;->d:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->x()Ljava/lang/String;

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

    const/4 v0, 0x0

    return v0
.end method
