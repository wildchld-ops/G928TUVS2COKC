.class public abstract Lcom/nuance/nmdp/speechkit/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/ah;


# instance fields
.field protected a:Lcom/nuance/nmdp/speechkit/aj;

.field protected final b:Ljava/lang/String;

.field protected final c:Lcom/nuance/nmdp/speechkit/de;

.field protected final d:Lcom/nuance/nmdp/speechkit/al;

.field private e:Lcom/nuance/nmdp/speechkit/ai;

.field private f:Lcom/nuance/nmdp/speechkit/ek;

.field private g:Lcom/nuance/nmdp/speechkit/ei;

.field private final h:Lcom/nuance/nmdp/speechkit/di;

.field private final i:Lcom/nuance/nmdp/speechkit/el;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;Lcom/nuance/nmdp/speechkit/ai;)V
    .locals 1

    invoke-virtual {p2}, Lcom/nuance/nmdp/speechkit/al;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/nuance/nmdp/speechkit/ak;-><init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ai;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/al;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ai;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/ak;->e:Lcom/nuance/nmdp/speechkit/ai;

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ak;->c:Lcom/nuance/nmdp/speechkit/de;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/ak;->d:Lcom/nuance/nmdp/speechkit/al;

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/nuance/nmdp/speechkit/al;->i()Ljava/lang/String;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/ak;->b:Ljava/lang/String;

    new-instance v0, Lcom/nuance/nmdp/speechkit/ak$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/ak$1;-><init>(Lcom/nuance/nmdp/speechkit/ak;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->h:Lcom/nuance/nmdp/speechkit/di;

    new-instance v0, Lcom/nuance/nmdp/speechkit/ak$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/ak$2;-><init>(Lcom/nuance/nmdp/speechkit/ak;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->i:Lcom/nuance/nmdp/speechkit/el;

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/ak;->f:Lcom/nuance/nmdp/speechkit/ek;

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/ak;->g:Lcom/nuance/nmdp/speechkit/ei;

    return-void
.end method

.method private a(Lcom/nuance/nmdp/speechkit/ck$j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/am;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->g:Lcom/nuance/nmdp/speechkit/ei;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/ei;->a(Lcom/nuance/nmdp/speechkit/ck$j;)V
    :try_end_0
    .catch Lcom/nuance/nmdp/speechkit/da; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nuance/nmdp/speechkit/db; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/nuance/nmdp/speechkit/am;

    const-string v2, "Error sending parameter (TransactionAlreadyFinishedException)"

    invoke-direct {v1, v2, v0}, Lcom/nuance/nmdp/speechkit/am;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/nuance/nmdp/speechkit/am;

    const-string v2, "Error sending parameter (TransactionExpiredException)"

    invoke-direct {v1, v2, v0}, Lcom/nuance/nmdp/speechkit/am;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->a:Lcom/nuance/nmdp/speechkit/aj;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/aj;->c()V

    return-void
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/aj;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->a:Lcom/nuance/nmdp/speechkit/aj;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/aj;->b()V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ak;->a:Lcom/nuance/nmdp/speechkit/aj;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->a:Lcom/nuance/nmdp/speechkit/aj;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/aj;->a()V

    return-void
.end method

.method protected a(Lcom/nuance/nmdp/speechkit/ej;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/dh;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->f:Lcom/nuance/nmdp/speechkit/ek;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/ak;->g()Lcom/nuance/nmdp/speechkit/ej;

    move-result-object v7

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->d:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->h()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->d:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->j()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->d:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/al;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ak;->d:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/al;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/ak;->d:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/al;->n()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/ak;->d:Lcom/nuance/nmdp/speechkit/al;

    invoke-static {}, Lcom/nuance/nmdp/speechkit/al;->p()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/ak;->d:Lcom/nuance/nmdp/speechkit/al;

    invoke-static {}, Lcom/nuance/nmdp/speechkit/al;->m()Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/nuance/nmdp/speechkit/ak;->d:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v8}, Lcom/nuance/nmdp/speechkit/al;->b()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/nmdp/speechkit/ak;->d:Lcom/nuance/nmdp/speechkit/al;

    invoke-static {}, Lcom/nuance/nmdp/speechkit/al;->f()Ljava/lang/String;

    const-string v9, "ui_language"

    iget-object v10, p0, Lcom/nuance/nmdp/speechkit/ak;->b:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "phone_submodel"

    invoke-interface {v7, v9, v6}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "phone_OS"

    invoke-interface {v7, v9, v0}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-interface {v7, v0, v1}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nmdp_version"

    invoke-interface {v7, v0, v4}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nmaid"

    invoke-interface {v7, v0, v8}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "network_type"

    invoke-interface {v7, v0, v2}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    new-array v0, v0, [B

    :try_start_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ak;->d:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v1, v0}, Lcom/nuance/nmdp/speechkit/al;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v1, "app_transaction_id"

    invoke-interface {v7, v1, v0}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;[B)V

    invoke-virtual {p0, v7}, Lcom/nuance/nmdp/speechkit/ak;->a(Lcom/nuance/nmdp/speechkit/ej;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->f:Lcom/nuance/nmdp/speechkit/ek;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ak;->i:Lcom/nuance/nmdp/speechkit/el;

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/ak;->b:Ljava/lang/String;

    move-object v2, p1

    invoke-interface/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/ek;->a(Lcom/nuance/nmdp/speechkit/el;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)Lcom/nuance/nmdp/speechkit/ei;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->g:Lcom/nuance/nmdp/speechkit/ei;

    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/am;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->f:Lcom/nuance/nmdp/speechkit/ek;

    invoke-interface {v0, p1, p2}, Lcom/nuance/nmdp/speechkit/ek;->a(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)Lcom/nuance/nmdp/speechkit/ck$j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/ak;->a(Lcom/nuance/nmdp/speechkit/ck$j;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/am;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->f:Lcom/nuance/nmdp/speechkit/ek;

    invoke-interface {v0, p1, p2}, Lcom/nuance/nmdp/speechkit/ek;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/ck$j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/ak;->a(Lcom/nuance/nmdp/speechkit/ck$j;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/cx;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/am;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/ak;->g()Lcom/nuance/nmdp/speechkit/ej;

    move-result-object v0

    const-string v1, "tts_input"

    invoke-interface {v0, v1, p2}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tts_type"

    invoke-interface {v0, v1, p1}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ak;->f:Lcom/nuance/nmdp/speechkit/ek;

    const-string v2, "TEXT_TO_READ"

    invoke-interface {v1, v2, v0, p3}, Lcom/nuance/nmdp/speechkit/ek;->a(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;Lcom/nuance/nmdp/speechkit/cx;)Lcom/nuance/nmdp/speechkit/ck$j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/ak;->a(Lcom/nuance/nmdp/speechkit/ck$j;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/cx;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/am;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->f:Lcom/nuance/nmdp/speechkit/ek;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/ek;->a(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/cx;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/ak;->a(Lcom/nuance/nmdp/speechkit/ck$j;)V

    return-object v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->a:Lcom/nuance/nmdp/speechkit/aj;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/aj;->d()V

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/am;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->f:Lcom/nuance/nmdp/speechkit/ek;

    invoke-interface {v0, p1, p2}, Lcom/nuance/nmdp/speechkit/ek;->d(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)Lcom/nuance/nmdp/speechkit/ck$j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/ak;->a(Lcom/nuance/nmdp/speechkit/ck$j;)V

    return-void
.end method

.method public final c()Lcom/nuance/nmdp/speechkit/ai;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->e:Lcom/nuance/nmdp/speechkit/ai;

    return-object v0
.end method

.method public final c(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/am;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->f:Lcom/nuance/nmdp/speechkit/ek;

    invoke-interface {v0, p1, p2}, Lcom/nuance/nmdp/speechkit/ek;->b(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)Lcom/nuance/nmdp/speechkit/ck$j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/ak;->a(Lcom/nuance/nmdp/speechkit/ck$j;)V

    return-void
.end method

.method public final d()V
    .locals 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Lcom/nuance/nmdp/speechkit/cz;

    const-string v2, "Android_Context"

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/ak;->d:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/al;->a()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/nuance/nmdp/speechkit/cz$a;->a:Lcom/nuance/nmdp/speechkit/cz$a;

    invoke-direct {v1, v2, v3, v4}, Lcom/nuance/nmdp/speechkit/cz;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cz$a;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ak;->c:Lcom/nuance/nmdp/speechkit/de;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/ak;->h:Lcom/nuance/nmdp/speechkit/di;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/ak;->d:Lcom/nuance/nmdp/speechkit/al;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/al;->b()Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Lcom/nuance/nmdp/speechkit/de;Lcom/nuance/nmdp/speechkit/di;Ljava/util/Vector;)Lcom/nuance/nmdp/speechkit/ek;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->f:Lcom/nuance/nmdp/speechkit/ek;

    return-void
.end method

.method public final d(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/am;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->f:Lcom/nuance/nmdp/speechkit/ek;

    invoke-interface {v0, p1, p2}, Lcom/nuance/nmdp/speechkit/ek;->c(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)Lcom/nuance/nmdp/speechkit/ck$j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/ak;->a(Lcom/nuance/nmdp/speechkit/ck$j;)V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->f:Lcom/nuance/nmdp/speechkit/ek;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->f:Lcom/nuance/nmdp/speechkit/ek;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/ek;->a()V
    :try_end_0
    .catch Lcom/nuance/nmdp/speechkit/dh; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->f:Lcom/nuance/nmdp/speechkit/ek;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/am;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->g:Lcom/nuance/nmdp/speechkit/ei;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/ei;->a()V
    :try_end_0
    .catch Lcom/nuance/nmdp/speechkit/da; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nuance/nmdp/speechkit/db; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/nuance/nmdp/speechkit/am;

    const-string v2, "Error ending PDX command (TransactionAlreadyFinishedException)"

    invoke-direct {v1, v2, v0}, Lcom/nuance/nmdp/speechkit/am;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/nuance/nmdp/speechkit/am;

    const-string v2, "Error ending PDX command (TransactionExpiredException)"

    invoke-direct {v1, v2, v0}, Lcom/nuance/nmdp/speechkit/am;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final g()Lcom/nuance/nmdp/speechkit/ej;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->f:Lcom/nuance/nmdp/speechkit/ek;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/ek;->g()Lcom/nuance/nmdp/speechkit/ej;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/nuance/nmdp/speechkit/eo;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak;->f:Lcom/nuance/nmdp/speechkit/ek;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/ek;->h()Lcom/nuance/nmdp/speechkit/eo;

    move-result-object v0

    return-object v0
.end method
