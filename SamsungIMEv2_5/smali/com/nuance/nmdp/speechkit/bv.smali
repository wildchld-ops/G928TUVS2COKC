.class public final Lcom/nuance/nmdp/speechkit/bv;
.super Lcom/nuance/nmdp/speechkit/ak;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/ah;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/nuance/nmdp/speechkit/ca;

.field private i:Lcom/nuance/nmdp/speechkit/cd;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/nuance/nmdp/speechkit/cj;Lcom/nuance/nmdp/speechkit/br;)V
    .locals 6

    invoke-direct {p0, p1, p2, p5, p8}, Lcom/nuance/nmdp/speechkit/ak;-><init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ai;)V

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/bv;->f:Ljava/lang/String;

    if-eqz p6, :cond_0

    const-string v0, "ssml"

    :goto_0
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/bv;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/bv;->e:Ljava/lang/String;

    new-instance v0, Lcom/nuance/nmdp/speechkit/bv$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/bv$1;-><init>(Lcom/nuance/nmdp/speechkit/bv;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/bv;->h:Lcom/nuance/nmdp/speechkit/ca;

    new-instance v0, Lcom/nuance/nmdp/speechkit/cd;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/bv;->c:Lcom/nuance/nmdp/speechkit/de;

    invoke-virtual {p2}, Lcom/nuance/nmdp/speechkit/al;->a()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/bv;->h:Lcom/nuance/nmdp/speechkit/ca;

    move-object v2, p0

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/cd;-><init>(Lcom/nuance/nmdp/speechkit/de;Ljava/lang/Object;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/ca;Lcom/nuance/nmdp/speechkit/cj;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/bv;->i:Lcom/nuance/nmdp/speechkit/cd;

    new-instance v0, Lcom/nuance/nmdp/speechkit/bt;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/bt;-><init>(Lcom/nuance/nmdp/speechkit/bv;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/bv;->a:Lcom/nuance/nmdp/speechkit/aj;

    return-void

    :cond_0
    const-string v0, "text"

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/bv;)Lcom/nuance/nmdp/speechkit/bs;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bv;->a:Lcom/nuance/nmdp/speechkit/aj;

    check-cast v0, Lcom/nuance/nmdp/speechkit/bs;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/nuance/nmdp/speechkit/ej;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bv;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "tts_voice"

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/bv;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "tts_language"

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/bv;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bv;->d:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bv;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bv;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bv;->i:Lcom/nuance/nmdp/speechkit/cd;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cd;->a()V

    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bv;->i:Lcom/nuance/nmdp/speechkit/cd;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cd;->b()V

    return-void
.end method

.method public final n()Lcom/nuance/nmdp/speechkit/cx;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bv;->i:Lcom/nuance/nmdp/speechkit/cd;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cd;->c()Lcom/nuance/nmdp/speechkit/ba;

    move-result-object v0

    return-object v0
.end method
