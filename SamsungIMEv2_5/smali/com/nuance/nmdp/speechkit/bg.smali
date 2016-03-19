.class public abstract Lcom/nuance/nmdp/speechkit/bg;
.super Lcom/nuance/nmdp/speechkit/ak;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/ba;


# instance fields
.field private final e:Lcom/nuance/nmdp/speechkit/bd;

.field private final f:Lcom/nuance/nmdp/speechkit/cc;

.field private g:Lcom/nuance/nmdp/speechkit/cf;

.field private final h:Lcom/nuance/nmdp/speechkit/ce;

.field private final i:Lcom/nuance/nmdp/speechkit/ce;

.field private final j:Lcom/nuance/nmdp/speechkit/ce;

.field private final k:Lcom/nuance/nmdp/speechkit/ce;

.field private final l:Z

.field private final m:Z

.field private final n:Lcom/nuance/nmdp/speechkit/cg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/nmdp/speechkit/cg",
            "<*>;"
        }
    .end annotation
.end field

.field private final o:Lcom/nuance/nmdp/speechkit/ca;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;ZZLjava/lang/String;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cb;Lcom/nuance/nmdp/speechkit/cg;Lcom/nuance/nmdp/speechkit/bd;Lcom/nuance/nmdp/speechkit/bb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/de;",
            "Lcom/nuance/nmdp/speechkit/al;",
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

    invoke-direct {p0, p1, p2, p5, p12}, Lcom/nuance/nmdp/speechkit/ak;-><init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ai;)V

    iput-object p10, p0, Lcom/nuance/nmdp/speechkit/bg;->n:Lcom/nuance/nmdp/speechkit/cg;

    iput-object p11, p0, Lcom/nuance/nmdp/speechkit/bg;->e:Lcom/nuance/nmdp/speechkit/bd;

    new-instance v0, Lcom/nuance/nmdp/speechkit/bg$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/bg$1;-><init>(Lcom/nuance/nmdp/speechkit/bg;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->f:Lcom/nuance/nmdp/speechkit/cc;

    new-instance v0, Lcom/nuance/nmdp/speechkit/bg$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/bg$2;-><init>(Lcom/nuance/nmdp/speechkit/bg;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->o:Lcom/nuance/nmdp/speechkit/ca;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->g:Lcom/nuance/nmdp/speechkit/cf;

    iput-boolean p3, p0, Lcom/nuance/nmdp/speechkit/bg;->l:Z

    iput-boolean p4, p0, Lcom/nuance/nmdp/speechkit/bg;->m:Z

    if-nez p6, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->h:Lcom/nuance/nmdp/speechkit/ce;

    if-nez p7, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->i:Lcom/nuance/nmdp/speechkit/ce;

    if-nez p8, :cond_2

    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->j:Lcom/nuance/nmdp/speechkit/ce;

    if-nez p9, :cond_3

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->k:Lcom/nuance/nmdp/speechkit/ce;

    new-instance v0, Lcom/nuance/nmdp/speechkit/be;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/be;-><init>(Lcom/nuance/nmdp/speechkit/bg;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->a:Lcom/nuance/nmdp/speechkit/aj;

    return-void

    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/ce;

    invoke-virtual {p2}, Lcom/nuance/nmdp/speechkit/al;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/bg;->o:Lcom/nuance/nmdp/speechkit/ca;

    invoke-direct {v0, p6, v1, p0, v2}, Lcom/nuance/nmdp/speechkit/ce;-><init>(Lcom/nuance/nmdp/speechkit/cb;Ljava/lang/Object;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/ca;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/nuance/nmdp/speechkit/ce;

    invoke-virtual {p2}, Lcom/nuance/nmdp/speechkit/al;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/bg;->o:Lcom/nuance/nmdp/speechkit/ca;

    invoke-direct {v0, p7, v1, p0, v2}, Lcom/nuance/nmdp/speechkit/ce;-><init>(Lcom/nuance/nmdp/speechkit/cb;Ljava/lang/Object;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/ca;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/nuance/nmdp/speechkit/ce;

    invoke-virtual {p2}, Lcom/nuance/nmdp/speechkit/al;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/bg;->o:Lcom/nuance/nmdp/speechkit/ca;

    invoke-direct {v0, p8, v1, p0, v2}, Lcom/nuance/nmdp/speechkit/ce;-><init>(Lcom/nuance/nmdp/speechkit/cb;Ljava/lang/Object;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/ca;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/nuance/nmdp/speechkit/ce;

    invoke-virtual {p2}, Lcom/nuance/nmdp/speechkit/al;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/bg;->o:Lcom/nuance/nmdp/speechkit/ca;

    invoke-direct {v0, p9, v1, p0, v2}, Lcom/nuance/nmdp/speechkit/ce;-><init>(Lcom/nuance/nmdp/speechkit/cb;Ljava/lang/Object;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/ca;)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/bg;)Lcom/nuance/nmdp/speechkit/bd;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->e:Lcom/nuance/nmdp/speechkit/bd;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/nmdp/speechkit/bg;)Lcom/nuance/nmdp/speechkit/bc;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->a:Lcom/nuance/nmdp/speechkit/aj;

    check-cast v0, Lcom/nuance/nmdp/speechkit/bc;

    return-object v0
.end method


# virtual methods
.method public final a_()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->a:Lcom/nuance/nmdp/speechkit/aj;

    check-cast v0, Lcom/nuance/nmdp/speechkit/bc;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/bc;->j()V

    return-void
.end method

.method final i()Lcom/nuance/nmdp/speechkit/cg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nuance/nmdp/speechkit/cg",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->n:Lcom/nuance/nmdp/speechkit/cg;

    return-object v0
.end method

.method protected abstract j()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/am;
        }
    .end annotation
.end method

.method protected abstract k()Ljava/lang/String;
.end method

.method protected abstract l()Ljava/lang/String;
.end method

.method protected abstract m()Z
.end method

.method final n()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->h:Lcom/nuance/nmdp/speechkit/ce;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->h:Lcom/nuance/nmdp/speechkit/ce;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/ce;->a()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final o()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->h:Lcom/nuance/nmdp/speechkit/ce;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->h:Lcom/nuance/nmdp/speechkit/ce;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/ce;->b()V

    :cond_0
    return-void
.end method

.method final p()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->i:Lcom/nuance/nmdp/speechkit/ce;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->i:Lcom/nuance/nmdp/speechkit/ce;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/ce;->a()V

    :cond_0
    return-void
.end method

.method final q()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->j:Lcom/nuance/nmdp/speechkit/ce;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->j:Lcom/nuance/nmdp/speechkit/ce;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/ce;->a()V

    :cond_0
    return-void
.end method

.method final r()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->k:Lcom/nuance/nmdp/speechkit/ce;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->k:Lcom/nuance/nmdp/speechkit/ce;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/ce;->a()V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 7

    new-instance v0, Lcom/nuance/nmdp/speechkit/cf;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/bg;->c:Lcom/nuance/nmdp/speechkit/de;

    iget-boolean v2, p0, Lcom/nuance/nmdp/speechkit/bg;->l:Z

    iget-boolean v3, p0, Lcom/nuance/nmdp/speechkit/bg;->m:Z

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/bg;->d:Lcom/nuance/nmdp/speechkit/al;

    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/bg;->f:Lcom/nuance/nmdp/speechkit/cc;

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/cf;-><init>(Lcom/nuance/nmdp/speechkit/de;ZZLjava/lang/Object;Lcom/nuance/nmdp/speechkit/al;Lcom/nuance/nmdp/speechkit/cc;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->g:Lcom/nuance/nmdp/speechkit/cf;

    return-void
.end method

.method public final t()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->g:Lcom/nuance/nmdp/speechkit/cf;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cf;->a()V

    return-void
.end method

.method public final u()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/am;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/bg;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/nmdp/speechkit/bg;->b(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/bg;->g:Lcom/nuance/nmdp/speechkit/cf;

    invoke-virtual {v1, v0}, Lcom/nuance/nmdp/speechkit/cf;->a(Lcom/nuance/nmdp/speechkit/cx;)V

    return-void
.end method

.method public final v()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->g:Lcom/nuance/nmdp/speechkit/cf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->g:Lcom/nuance/nmdp/speechkit/cf;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/cf;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/bg;->g:Lcom/nuance/nmdp/speechkit/cf;

    :cond_0
    return-void
.end method
