.class public final Lcom/nuance/nmdp/speechkit/ck$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/ba;
.implements Lcom/nuance/nmdp/speechkit/ck$a;
.implements Lcom/nuance/nmdp/speechkit/ck$m;
.implements Lcom/nuance/nmdp/speechkit/cl$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/nuance/nmdp/speechkit/cj;

.field private b:Lcom/nuance/nmdp/speechkit/ck;

.field private c:Lcom/nuance/nmdp/speechkit/ct;

.field private d:Ljava/io/ByteArrayOutputStream;

.field private e:Ljava/util/Vector;

.field private f:Z

.field private g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:S

.field private j:Ljava/util/Vector;

.field private k:Lcom/nuance/nmdp/speechkit/cl;

.field private l:Ljava/lang/Object;

.field private m:Lcom/nuance/nmdp/speechkit/ck$k;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/ct;Lcom/nuance/nmdp/speechkit/cj;Lcom/nuance/nmdp/speechkit/de;Ljava/util/Vector;Lcom/nuance/nmdp/speechkit/ci;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-short v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->k:Lcom/nuance/nmdp/speechkit/cl;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->l:Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Lcom/nuance/nmdp/speechkit/dj;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/dj;->f()Lcom/nuance/nmdp/speechkit/cj;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->a:Lcom/nuance/nmdp/speechkit/cj;

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ck$c;->c:Lcom/nuance/nmdp/speechkit/ct;

    check-cast p3, Lcom/nuance/nmdp/speechkit/dj;

    invoke-virtual {p3}, Lcom/nuance/nmdp/speechkit/dj;->a()Lcom/nuance/nmdp/speechkit/cl;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->k:Lcom/nuance/nmdp/speechkit/cl;

    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/ck$c;->j:Ljava/util/Vector;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ck$c;->k:Lcom/nuance/nmdp/speechkit/cl;

    invoke-direct {v0, v1, p2, p4}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;-><init>(Lcom/nuance/nmdp/speechkit/cl;Lcom/nuance/nmdp/speechkit/cj;Ljava/util/Vector;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->b:Lcom/nuance/nmdp/speechkit/ck;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->d:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->e:Ljava/util/Vector;

    iput-boolean v2, p0, Lcom/nuance/nmdp/speechkit/ck$c;->h:Z

    iput-boolean v2, p0, Lcom/nuance/nmdp/speechkit/ck$c;->f:Z

    sget-object v0, Lcom/nuance/nmdp/speechkit/ci;->d:Lcom/nuance/nmdp/speechkit/ci;

    invoke-virtual {p5, v0}, Lcom/nuance/nmdp/speechkit/ci;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/nmdp/speechkit/ck$k;->d:Lcom/nuance/nmdp/speechkit/ck$k;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->m:Lcom/nuance/nmdp/speechkit/ck$k;

    :cond_0
    :goto_0
    invoke-static {p2}, Lcom/nuance/nmdp/speechkit/cs;->b(Lcom/nuance/nmdp/speechkit/cj;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->g:Ljava/util/LinkedList;

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/nuance/nmdp/speechkit/ci;->c:Lcom/nuance/nmdp/speechkit/ci;

    invoke-virtual {p5, v0}, Lcom/nuance/nmdp/speechkit/ci;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/nuance/nmdp/speechkit/ck$k;->c:Lcom/nuance/nmdp/speechkit/ck$k;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->m:Lcom/nuance/nmdp/speechkit/ck$k;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/nuance/nmdp/speechkit/ci;->b:Lcom/nuance/nmdp/speechkit/ci;

    invoke-virtual {p5, v0}, Lcom/nuance/nmdp/speechkit/ci;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/nuance/nmdp/speechkit/ck$k;->b:Lcom/nuance/nmdp/speechkit/ck$k;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->m:Lcom/nuance/nmdp/speechkit/ck$k;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/nuance/nmdp/speechkit/ci;->a:Lcom/nuance/nmdp/speechkit/ci;

    invoke-virtual {p5, v0}, Lcom/nuance/nmdp/speechkit/ci;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/nuance/nmdp/speechkit/ck$k;->a:Lcom/nuance/nmdp/speechkit/ck$k;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->m:Lcom/nuance/nmdp/speechkit/ck$k;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/nuance/nmdp/speechkit/ci;->e:Lcom/nuance/nmdp/speechkit/ci;

    invoke-virtual {p5, v0}, Lcom/nuance/nmdp/speechkit/ci;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/ck$k;->e:Lcom/nuance/nmdp/speechkit/ck$k;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->m:Lcom/nuance/nmdp/speechkit/ck$k;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->c:Lcom/nuance/nmdp/speechkit/ct;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->c:Lcom/nuance/nmdp/speechkit/ct;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/ct;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->k:Lcom/nuance/nmdp/speechkit/cl;

    new-instance v1, Lcom/nuance/nmdp/speechkit/cl$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/ck$c;->k:Lcom/nuance/nmdp/speechkit/cl;

    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {v0, v1, p0, v2}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/ck$b;)V
    .locals 1

    const/4 v0, 0x5

    iput-short v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    sget-object v0, Lcom/nuance/nmdp/speechkit/ck$b;->b:Lcom/nuance/nmdp/speechkit/ck$b;

    invoke-virtual {p1, v0}, Lcom/nuance/nmdp/speechkit/ck$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PLAYBACK_ERROR"

    :goto_0
    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/ck$c;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "STOPPED"

    goto :goto_0
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/ck$b;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->k:Lcom/nuance/nmdp/speechkit/cl;

    new-instance v1, Lcom/nuance/nmdp/speechkit/cl$a;

    const/4 v2, 0x7

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/ck$c;->k:Lcom/nuance/nmdp/speechkit/cl;

    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {v0, v1, p0, v2}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x5

    check-cast p1, Lcom/nuance/nmdp/speechkit/cl$a;

    iget-byte v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->a:B

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/a;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ck$c;->j:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/a;-><init>(Ljava/util/Vector;)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->a:Lcom/nuance/nmdp/speechkit/cj;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/cs;->c(Lcom/nuance/nmdp/speechkit/cj;)Lcom/nuance/nmdp/speechkit/cj;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->a:Lcom/nuance/nmdp/speechkit/cj;

    :cond_1
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iput-short v3, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    :goto_1
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    if-eqz v0, :cond_4

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iput-short v2, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    const-string v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/ck$c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    if-ne v0, v5, :cond_3

    const/4 v0, 0x3

    iput-short v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    goto :goto_1

    :cond_3
    iput-short v2, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    const-string v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/ck$c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->b:Lcom/nuance/nmdp/speechkit/ck;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ck$c;->m:Lcom/nuance/nmdp/speechkit/ck$k;

    invoke-interface {v0, v1, p0, p0}, Lcom/nuance/nmdp/speechkit/ck;->a(Lcom/nuance/nmdp/speechkit/ck$k;Lcom/nuance/nmdp/speechkit/ck$a;Lcom/nuance/nmdp/speechkit/ck$c;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-short v2, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    const-string v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/ck$c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->b:Lcom/nuance/nmdp/speechkit/ck;

    iput-short v2, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    const-string v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/ck$c;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    if-eq v0, v2, :cond_0

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    if-eq v0, v1, :cond_0

    iput-short v1, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->b:Lcom/nuance/nmdp/speechkit/ck;

    invoke-interface {v0, p0}, Lcom/nuance/nmdp/speechkit/ck;->b(Lcom/nuance/nmdp/speechkit/ck$m;)V

    goto :goto_0

    :pswitch_2
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    if-eq v0, v2, :cond_6

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    if-eq v0, v1, :cond_6

    iput-short v5, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->b:Lcom/nuance/nmdp/speechkit/ck;

    iput-short v2, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    const-string v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/ck$c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iput-short v2, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    const-string v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/ck$c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    if-eq v0, v2, :cond_7

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->b:Lcom/nuance/nmdp/speechkit/ck;

    iput-short v2, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    const-string v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/ck$c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iput-short v2, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    const-string v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/ck$c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    if-eq v0, v2, :cond_8

    iget-short v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->b:Lcom/nuance/nmdp/speechkit/ck;

    iput-short v2, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    const-string v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/ck$c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iput-short v2, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    const-string v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/ck$c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v3

    check-cast v1, [B

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/ck$c;->l:Ljava/lang/Object;

    monitor-enter v2

    if-eqz v1, :cond_9

    :try_start_0
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/ck$c;->a:Lcom/nuance/nmdp/speechkit/cj;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/ck$c;->a:Lcom/nuance/nmdp/speechkit/cj;

    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/cs;->b(Lcom/nuance/nmdp/speechkit/cj;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/ck$c;->g:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->h:Z

    :cond_a
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_b
    :try_start_1
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/ck$c;->d:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/ck$c;->e:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :pswitch_6
    iget-object v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Lcom/nuance/nmdp/speechkit/ck$b;

    sget-object v1, Lcom/nuance/nmdp/speechkit/ck$b;->b:Lcom/nuance/nmdp/speechkit/ck$b;

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/ck$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-short v2, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    const-string v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/ck$c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iput-short v2, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    const-string v0, "STOPPED"

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/ck$c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a([BIIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/dc;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset cannot be negative!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_2

    if-gtz p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length can only be positive!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->a:Lcom/nuance/nmdp/speechkit/cj;

    sget-object v1, Lcom/nuance/nmdp/speechkit/cj;->c:Lcom/nuance/nmdp/speechkit/cj;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->a:Lcom/nuance/nmdp/speechkit/cj;

    sget-object v1, Lcom/nuance/nmdp/speechkit/cj;->b:Lcom/nuance/nmdp/speechkit/cj;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->a:Lcom/nuance/nmdp/speechkit/cj;

    sget-object v1, Lcom/nuance/nmdp/speechkit/cj;->a:Lcom/nuance/nmdp/speechkit/cj;

    if-ne v0, v1, :cond_4

    :cond_3
    const v0, 0x25800

    if-le p3, v0, :cond_4

    const-string v0, "PLAYBACK_ERROR"

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/ck$c;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/ck$c;->a_()V

    :goto_0
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->f:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/nuance/nmdp/speechkit/dc;

    const-string v1, "audio player is full, the last buffer has already apended!"

    invoke-direct {v0, v1}, Lcom/nuance/nmdp/speechkit/dc;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->f:Z

    if-nez v0, :cond_6

    if-eqz p4, :cond_6

    iput-boolean v3, p0, Lcom/nuance/nmdp/speechkit/ck$c;->f:Z

    :cond_6
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    new-array v0, p3, [B

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->k:Lcom/nuance/nmdp/speechkit/cl;

    new-instance v2, Lcom/nuance/nmdp/speechkit/cl$a;

    const/4 v3, 0x6

    invoke-direct {v2, v3, v1}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/ck$c;->k:Lcom/nuance/nmdp/speechkit/cl;

    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {v0, v2, p0, v1}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a([BLjava/lang/Object;Lcom/nuance/nmdp/speechkit/ck$i;Lcom/nuance/nmdp/speechkit/ck$i;Ljava/lang/Float;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget-short v3, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    if-nez v3, :cond_0

    const/4 v3, 0x1

    iput-short v3, p0, Lcom/nuance/nmdp/speechkit/ck$c;->i:S

    const-string v3, "STARTED"

    invoke-direct {p0, v3}, Lcom/nuance/nmdp/speechkit/ck$c;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/ck$c;->a:Lcom/nuance/nmdp/speechkit/cj;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/ck$c;->a:Lcom/nuance/nmdp/speechkit/cj;

    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/cs;->b(Lcom/nuance/nmdp/speechkit/cj;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/ck$c;->a:Lcom/nuance/nmdp/speechkit/cj;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/ck$c;->a:Lcom/nuance/nmdp/speechkit/cj;

    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/cs;->a(Lcom/nuance/nmdp/speechkit/cj;)Z

    move-result v3

    if-eqz v3, :cond_e

    :goto_0
    array-length v3, p1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->a:Lcom/nuance/nmdp/speechkit/cj;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/cs;->b(Lcom/nuance/nmdp/speechkit/cj;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->h:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    if-lez v0, :cond_1

    const-string v1, "BUFFER_PLAYED"

    invoke-direct {p0, v1}, Lcom/nuance/nmdp/speechkit/ck$c;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ck$c;->a:Lcom/nuance/nmdp/speechkit/cj;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ck$c;->a:Lcom/nuance/nmdp/speechkit/cj;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/cs;->b(Lcom/nuance/nmdp/speechkit/cj;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ck$c;->a:Lcom/nuance/nmdp/speechkit/cj;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ck$c;->a:Lcom/nuance/nmdp/speechkit/cj;

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/cs;->a(Lcom/nuance/nmdp/speechkit/cj;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v0, p3, Lcom/nuance/nmdp/speechkit/ck$i;->a:I

    :cond_2
    :goto_2
    return-void

    :cond_3
    check-cast p2, [B

    move-object p1, p2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, v0

    if-ge v3, v1, :cond_6

    move v0, v2

    goto :goto_1

    :cond_6
    array-length v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/ck$c;->l:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-gtz v0, :cond_9

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->h:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->d:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->d:Ljava/io/ByteArrayOutputStream;

    array-length v0, v1

    if-ge v3, v0, :cond_b

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->a:Lcom/nuance/nmdp/speechkit/cj;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->a:Lcom/nuance/nmdp/speechkit/cj;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/cs;->a(Lcom/nuance/nmdp/speechkit/cj;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v3

    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_a

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/ck$c;->d:Ljava/io/ByteArrayOutputStream;

    array-length v3, v1

    sub-int/2addr v3, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :catch_1
    move-exception v0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "got an exception ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] message ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->a:Lcom/nuance/nmdp/speechkit/cj;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->a:Lcom/nuance/nmdp/speechkit/cj;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/cs;->a(Lcom/nuance/nmdp/speechkit/cj;)Z

    move-result v0

    if-eqz v0, :cond_d

    array-length v2, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v2

    goto :goto_5

    :cond_c
    iput v0, p4, Lcom/nuance/nmdp/speechkit/ck$i;->a:I

    goto/16 :goto_2

    :cond_d
    move v0, v2

    goto :goto_5

    :cond_e
    move-object p1, v0

    goto/16 :goto_0
.end method

.method public final a_()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ck$c;->k:Lcom/nuance/nmdp/speechkit/cl;

    new-instance v1, Lcom/nuance/nmdp/speechkit/cl$a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/ck$c;->k:Lcom/nuance/nmdp/speechkit/cl;

    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {v0, v1, p0, v2}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    return-void
.end method
