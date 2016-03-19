.class public final Lcom/nuance/nmdp/speechkit/dn;
.super Lcom/nuance/nmdp/speechkit/dm;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/ek;


# static fields
.field private static j:Ljava/lang/String;


# instance fields
.field private g:Lcom/nuance/nmdp/speechkit/cl;

.field private h:Lcom/nuance/nmdp/speechkit/di;

.field private i:Lcom/nuance/nmdp/speechkit/eg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/nuance/nmdp/speechkit/dn;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/nmdp/speechkit/dj;Lcom/nuance/nmdp/speechkit/di;Ljava/util/Vector;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/nmdp/speechkit/dm;-><init>(Lcom/nuance/nmdp/speechkit/dj;Lcom/nuance/nmdp/speechkit/di;Ljava/util/Vector;)V

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/dn;->h:Lcom/nuance/nmdp/speechkit/di;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/dj;->a()Lcom/nuance/nmdp/speechkit/cl;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dn;->g:Lcom/nuance/nmdp/speechkit/cl;

    invoke-virtual {p1}, Lcom/nuance/nmdp/speechkit/dj;->g()Lcom/nuance/nmdp/speechkit/dk;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/dn;->a:Lcom/nuance/nmdp/speechkit/dk;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dn;->a:Lcom/nuance/nmdp/speechkit/dk;

    invoke-virtual {v0, p0}, Lcom/nuance/nmdp/speechkit/dk;->a(Lcom/nuance/nmdp/speechkit/dg;)V

    iput-object v3, p0, Lcom/nuance/nmdp/speechkit/dn;->i:Lcom/nuance/nmdp/speechkit/eg;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dn;->g:Lcom/nuance/nmdp/speechkit/cl;

    new-instance v1, Lcom/nuance/nmdp/speechkit/cl$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/dn;->g:Lcom/nuance/nmdp/speechkit/cl;

    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {v0, v1, p0, v2}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    return-void
.end method

.method private a(B)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dn;->i:Lcom/nuance/nmdp/speechkit/eg;

    iget-byte v0, v0, Lcom/nuance/nmdp/speechkit/eg;->a:B

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/dn;->d()Lcom/nuance/nmdp/speechkit/de;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/dj;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dj;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmdp/speechkit/eg$a;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/eg$a;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)Lcom/nuance/nmdp/speechkit/ck$j;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dict can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/nmdp/speechkit/ds;

    check-cast p2, Lcom/nuance/nmdp/speechkit/dt;

    invoke-direct {v0, p1, p2}, Lcom/nuance/nmdp/speechkit/ds;-><init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/dt;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;Lcom/nuance/nmdp/speechkit/cx;)Lcom/nuance/nmdp/speechkit/ck$j;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tts_dict can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "audioSink can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/nuance/nmdp/speechkit/ee;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dn;->a:Lcom/nuance/nmdp/speechkit/dk;

    check-cast p2, Lcom/nuance/nmdp/speechkit/dt;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/nuance/nmdp/speechkit/ee;-><init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/dk;Lcom/nuance/nmdp/speechkit/dt;Lcom/nuance/nmdp/speechkit/cx;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/ck$j;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "text can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/nmdp/speechkit/ef;

    invoke-direct {v0, p1, p2}, Lcom/nuance/nmdp/speechkit/ef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/cx;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/dp;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dn;->a:Lcom/nuance/nmdp/speechkit/dk;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/dn;->g:Lcom/nuance/nmdp/speechkit/cl;

    invoke-direct {v0, p1, v1, v2}, Lcom/nuance/nmdp/speechkit/dp;-><init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/dk;Lcom/nuance/nmdp/speechkit/cl;)V

    return-object v0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/el;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)Lcom/nuance/nmdp/speechkit/ei;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/dh;
        }
    .end annotation

    const-string v2, ""

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "commandListener is invalid; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz p2, :cond_1

    const-string v3, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cmd should be non-null; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz p3, :cond_3

    const-string v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scriptVersion should be non-null; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-eqz p4, :cond_5

    const-string v3, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dictationLanguage should be non-null; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_6
    if-eqz p6, :cond_7

    const-string v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "phoneModel should be non-null; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_8
    const-wide/16 v4, 0x7530

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "commandTimeout is invalid; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/dn;->e:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/dn;->i:Lcom/nuance/nmdp/speechkit/eg;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/dn;->i:Lcom/nuance/nmdp/speechkit/eg;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/eg;->b()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/dn;->a:Lcom/nuance/nmdp/speechkit/dk;

    invoke-static {}, Lcom/nuance/nmdp/speechkit/dk;->b()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/nmdp/speechkit/dn;->d:I

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/dn;->g:Lcom/nuance/nmdp/speechkit/cl;

    new-instance v3, Lcom/nuance/nmdp/speechkit/cl$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/nmdp/speechkit/dn;->g:Lcom/nuance/nmdp/speechkit/cl;

    invoke-interface {v5}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-interface {v2, v3, v0, v4}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/dn;->a:Lcom/nuance/nmdp/speechkit/dk;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/dk;->f()B

    move-result v2

    move-object/from16 v0, p0

    iput-byte v2, v0, Lcom/nuance/nmdp/speechkit/dn;->f:B

    new-instance v2, Lcom/nuance/nmdp/speechkit/eg;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/nmdp/speechkit/dn;->g:Lcom/nuance/nmdp/speechkit/cl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmdp/speechkit/dn;->c:Lcom/nuance/nmdp/speechkit/de;

    check-cast v4, Lcom/nuance/nmdp/speechkit/dj;

    iget-object v6, v4, Lcom/nuance/nmdp/speechkit/dj;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/nmdp/speechkit/dn;->a:Lcom/nuance/nmdp/speechkit/dk;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmdp/speechkit/dn;->c:Lcom/nuance/nmdp/speechkit/de;

    check-cast v4, Lcom/nuance/nmdp/speechkit/dj;

    invoke-virtual {v4}, Lcom/nuance/nmdp/speechkit/dj;->d()Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    sget-object v10, Lcom/nuance/nmdp/speechkit/dn;->j:Ljava/lang/String;

    const-string v12, "enus"

    const-string v13, "ne"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmdp/speechkit/dn;->c:Lcom/nuance/nmdp/speechkit/de;

    check-cast v4, Lcom/nuance/nmdp/speechkit/dj;

    invoke-virtual {v4}, Lcom/nuance/nmdp/speechkit/dj;->e()Lcom/nuance/nmdp/speechkit/cj;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/nmdp/speechkit/dn;->c:Lcom/nuance/nmdp/speechkit/de;

    check-cast v4, Lcom/nuance/nmdp/speechkit/dj;

    invoke-virtual {v4}, Lcom/nuance/nmdp/speechkit/dj;->d()Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/dn;->h:Lcom/nuance/nmdp/speechkit/di;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/nuance/nmdp/speechkit/dn;->f:B

    move/from16 v23, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v11, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    move-object/from16 v20, p7

    move-object/from16 v21, p0

    invoke-direct/range {v2 .. v23}, Lcom/nuance/nmdp/speechkit/eg;-><init>(Lcom/nuance/nmdp/speechkit/cl;Lcom/nuance/nmdp/speechkit/el;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/dk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/cj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;Lcom/nuance/nmdp/speechkit/dn;Lcom/nuance/nmdp/speechkit/di;B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/nmdp/speechkit/dn;->i:Lcom/nuance/nmdp/speechkit/eg;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/nmdp/speechkit/dn;->i:Lcom/nuance/nmdp/speechkit/eg;

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v24

    throw v2
.end method

.method public final a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/dh;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dn;->i:Lcom/nuance/nmdp/speechkit/eg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dn;->i:Lcom/nuance/nmdp/speechkit/eg;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/eg;->b()V

    :cond_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dn;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/nuance/nmdp/speechkit/dn;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dn;->d:I

    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/dn;->g:Lcom/nuance/nmdp/speechkit/cl;

    new-instance v3, Lcom/nuance/nmdp/speechkit/cl$a;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/dn;->g:Lcom/nuance/nmdp/speechkit/cl;

    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {v2, v3, p0, v0}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :cond_1
    new-instance v0, Lcom/nuance/nmdp/speechkit/dh;

    const-string v2, "the resource was unloaded. "

    invoke-direct {v0, v2}, Lcom/nuance/nmdp/speechkit/dh;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(BS)V
    .locals 1

    iget-byte v0, p0, Lcom/nuance/nmdp/speechkit/dn;->f:B

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dn;->i:Lcom/nuance/nmdp/speechkit/eg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dn;->i:Lcom/nuance/nmdp/speechkit/eg;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/eg;->b()V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/nuance/nmdp/speechkit/dm;->a(BS)V

    goto :goto_0
.end method

.method public final a(B[B)V
    .locals 2

    invoke-static {p2}, Lcom/nuance/nmdp/speechkit/ab;->a([B)Lcom/nuance/nmdp/speechkit/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dw;->e()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/dn;->a(B)V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dn;->i:Lcom/nuance/nmdp/speechkit/eg;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dn;->i:Lcom/nuance/nmdp/speechkit/eg;

    check-cast v0, Lcom/nuance/nmdp/speechkit/ea;

    invoke-virtual {v1, v0, p1}, Lcom/nuance/nmdp/speechkit/eg;->a(Lcom/nuance/nmdp/speechkit/ea;B)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dn;->i:Lcom/nuance/nmdp/speechkit/eg;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dn;->i:Lcom/nuance/nmdp/speechkit/eg;

    check-cast v0, Lcom/nuance/nmdp/speechkit/dz;

    invoke-virtual {v1, v0, p1}, Lcom/nuance/nmdp/speechkit/eg;->a(Lcom/nuance/nmdp/speechkit/dz;B)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/dn;->a(B)V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dn;->i:Lcom/nuance/nmdp/speechkit/eg;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dn;->i:Lcom/nuance/nmdp/speechkit/eg;

    check-cast v0, Lcom/nuance/nmdp/speechkit/eb;

    invoke-virtual {v1, v0, p1}, Lcom/nuance/nmdp/speechkit/eg;->a(Lcom/nuance/nmdp/speechkit/eb;B)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7201
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/nuance/nmdp/speechkit/cl$a;

    iget-byte v0, v0, Lcom/nuance/nmdp/speechkit/cl$a;->a:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/nuance/nmdp/speechkit/dm;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_1
    invoke-super {p0, p0}, Lcom/nuance/nmdp/speechkit/dm;->a(Lcom/nuance/nmdp/speechkit/dl;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dn;->a:Lcom/nuance/nmdp/speechkit/dk;

    invoke-virtual {v0, p0}, Lcom/nuance/nmdp/speechkit/dk;->b(Lcom/nuance/nmdp/speechkit/dl;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dn;->h:Lcom/nuance/nmdp/speechkit/di;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(S)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dn;->i:Lcom/nuance/nmdp/speechkit/eg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dn;->i:Lcom/nuance/nmdp/speechkit/eg;

    invoke-virtual {v0, p1}, Lcom/nuance/nmdp/speechkit/eg;->a(S)V

    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/nmdp/speechkit/dm;->a(S)V

    return-void
.end method

.method public final a([B)V
    .locals 1

    invoke-super {p0, p1}, Lcom/nuance/nmdp/speechkit/dm;->a([B)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dn;->i:Lcom/nuance/nmdp/speechkit/eg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dn;->i:Lcom/nuance/nmdp/speechkit/eg;

    invoke-virtual {v0, p1}, Lcom/nuance/nmdp/speechkit/eg;->a([B)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)Lcom/nuance/nmdp/speechkit/ck$j;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dict can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/nmdp/speechkit/ec;

    check-cast p2, Lcom/nuance/nmdp/speechkit/dt;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Lcom/nuance/nmdp/speechkit/ec;-><init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/dt;B)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)Lcom/nuance/nmdp/speechkit/ck$j;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dict can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/nmdp/speechkit/ec;

    check-cast p2, Lcom/nuance/nmdp/speechkit/dt;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, v1}, Lcom/nuance/nmdp/speechkit/ec;-><init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/dt;B)V

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dn;->i:Lcom/nuance/nmdp/speechkit/eg;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/eg;->c()V

    return-void
.end method

.method public final d(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/ej;)Lcom/nuance/nmdp/speechkit/ck$j;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dict can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/nmdp/speechkit/ec;

    check-cast p2, Lcom/nuance/nmdp/speechkit/dt;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/nuance/nmdp/speechkit/ec;-><init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/dt;B)V

    return-object v0
.end method

.method public final e()J
    .locals 2

    invoke-super {p0}, Lcom/nuance/nmdp/speechkit/dm;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()Lcom/nuance/nmdp/speechkit/ej;
    .locals 1

    new-instance v0, Lcom/nuance/nmdp/speechkit/dt;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/dt;-><init>()V

    return-object v0
.end method

.method public final h()Lcom/nuance/nmdp/speechkit/eo;
    .locals 1

    new-instance v0, Lcom/nuance/nmdp/speechkit/ed;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/ed;-><init>()V

    return-object v0
.end method
