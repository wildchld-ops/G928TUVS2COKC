.class final Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
.implements Lcom/nuance/nmdp/speechkit/cl$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private a:Landroid/media/AudioRecord;

.field private b:Z

.field private c:Lcom/nuance/nmdp/speechkit/ck$a;

.field private d:Lcom/nuance/nmdp/speechkit/ck$d;

.field private e:Lcom/nuance/nmdp/speechkit/ck$l;

.field private f:Lcom/nuance/nmdp/speechkit/ck$e;

.field private g:Lcom/nuance/nmdp/speechkit/ck$f;

.field private h:Lcom/nuance/nmdp/speechkit/ck$m;

.field private i:Lcom/nuance/nmdp/speechkit/ck$g;

.field private j:Z

.field private k:Z

.field private synthetic l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;


# direct methods
.method private constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->c:Lcom/nuance/nmdp/speechkit/ck$a;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->d:Lcom/nuance/nmdp/speechkit/ck$d;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->e:Lcom/nuance/nmdp/speechkit/ck$l;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->f:Lcom/nuance/nmdp/speechkit/ck$e;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->g:Lcom/nuance/nmdp/speechkit/ck$f;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->h:Lcom/nuance/nmdp/speechkit/ck$m;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->i:Lcom/nuance/nmdp/speechkit/ck$g;

    iput-boolean v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->j:Z

    iput-boolean v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->k:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;-><init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)V

    return-void
.end method

.method private static a([S)F
    .locals 8

    const-wide/16 v4, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-short v3, p0, v2

    int-to-long v6, v3

    mul-long/2addr v6, v6

    const/16 v3, 0x9

    shr-long/2addr v6, v3

    add-long/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-double v0, v0

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v2

    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    const-wide v0, -0x3fa9800000000000L    # -90.0

    :cond_1
    :goto_1
    double-to-float v0, v0

    return v0

    :cond_2
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    cmpl-double v2, v0, v4

    if-lez v2, :cond_1

    move-wide v0, v4

    goto :goto_1
.end method

.method private a()V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->b:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->b:Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a:Landroid/media/AudioRecord;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->i:Lcom/nuance/nmdp/speechkit/ck$g;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/ck$g;->d()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->encodeCleanupSpeex()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/eq;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/eq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/eq;->e()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)V

    :cond_3
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->h:Lcom/nuance/nmdp/speechkit/ck$m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->h:Lcom/nuance/nmdp/speechkit/ck$m;

    sget-object v1, Lcom/nuance/nmdp/speechkit/ck$b;->b:Lcom/nuance/nmdp/speechkit/ck$b;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/ck$m;->a(Lcom/nuance/nmdp/speechkit/ck$b;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nuance/nmdp/speechkit/ck$e;)V
    .locals 4

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->f:Lcom/nuance/nmdp/speechkit/ck$e;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/cl;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->d()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/cl;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/cl;->b()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/cl;

    move-result-object v3

    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {v0, v1, p0, v2}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/ck$f;)V
    .locals 4

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->g:Lcom/nuance/nmdp/speechkit/ck$f;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/cl;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->e()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/cl;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/cl;->b()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/cl;

    move-result-object v3

    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {v0, v1, p0, v2}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/ck$m;Lcom/nuance/nmdp/speechkit/ck$d;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->b:Z

    if-ne v2, v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->H(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->b:Z

    if-eq v2, v1, :cond_5

    :goto_0
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->b:Z

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a:Landroid/media/AudioRecord;

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->encodeCleanupSpeex()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/eq;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/eq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/eq;->e()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/ck$d;->a()V

    :cond_3
    if-eqz p1, :cond_4

    sget-object v0, Lcom/nuance/nmdp/speechkit/ck$b;->a:Lcom/nuance/nmdp/speechkit/ck$b;

    invoke-interface {p1, v0}, Lcom/nuance/nmdp/speechkit/ck$m;->a(Lcom/nuance/nmdp/speechkit/ck$b;)V

    :cond_4
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->I(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/f;

    return-void

    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    check-cast p1, [Ljava/lang/Object;

    aget-object v0, p1, v8

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->d()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->j:Z

    if-nez v0, :cond_0

    iput-boolean v9, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->j:Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->B(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->b()V

    iput-boolean v8, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->k:Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->f:Lcom/nuance/nmdp/speechkit/ck$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->f:Lcom/nuance/nmdp/speechkit/ck$e;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/ck$e;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v0, p1, v8

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->j:Z

    if-eqz v0, :cond_0

    iput-boolean v8, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->j:Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->g:Lcom/nuance/nmdp/speechkit/ck$f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->g:Lcom/nuance/nmdp/speechkit/ck$f;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/ck$f;->c()V

    goto :goto_0

    :cond_2
    aget-object v0, p1, v8

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->f()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_0

    aget-object v0, p1, v9

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x2

    aget-object v0, p1, v0

    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    move-result-object v2

    sget-object v3, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->y(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    new-array v2, v2, [B

    iget-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->b:Z

    if-eqz v3, :cond_0

    check-cast v0, [S

    if-gez v4, :cond_3

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Call to AudioRecord.read() failed with code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a()V

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->z(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->A(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/f;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->A(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/f;

    move-result-object v3

    array-length v4, v0

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v5}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->t(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/nuance/nmsp/client/sdk/oem/f;->a([SII)Z

    move-result v3

    if-ne v3, v9, :cond_4

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    sget-object v4, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->b:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    invoke-static {v3, v4}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;)Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    :cond_4
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->A(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/f;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->A(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/f;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v0, v4}, Lcom/nuance/nmsp/client/sdk/oem/f;->a([SI)V

    :cond_5
    sget-object v4, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->b:Z

    if-nez v3, :cond_6

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->y(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->encodeSpeex([S[BI)I

    move-result v6

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->z(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->j:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->k:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->B(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->a()Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    move-result-object v3

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    array-length v7, v0

    invoke-static {v5, v7}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;I)I

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v5}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->C(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    move-result-object v5

    sget-object v7, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    if-ne v5, v7, :cond_7

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v5}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->D(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v5

    iget-object v7, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v7}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->E(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v7

    if-le v5, v7, :cond_7

    sget-object v3, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->b:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    const-string v5, "NMSP"

    const-string v7, "Start Silence Timeout"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-object v5, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->a:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    if-eq v3, v5, :cond_8

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v5, v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;)Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    :cond_8
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v6, :cond_9

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Call to encodeSpeex() failed with code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->speexCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a()V

    goto/16 :goto_0

    :cond_9
    const/high16 v3, -0x40800000    # -1.0f

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v4}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->F(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a([S)F

    move-result v0

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v0, v3

    float-to-long v4, v0

    long-to-float v0, v4

    move v5, v0

    :goto_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->c:Lcom/nuance/nmdp/speechkit/ck$a;

    new-instance v3, Lcom/nuance/nmdp/speechkit/ck$i;

    invoke-direct {v3, v8}, Lcom/nuance/nmdp/speechkit/ck$i;-><init>(I)V

    new-instance v4, Lcom/nuance/nmdp/speechkit/ck$i;

    invoke-direct {v4, v6}, Lcom/nuance/nmdp/speechkit/ck$i;-><init>(I)V

    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_b

    move-object v5, v1

    :goto_2
    invoke-interface/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/ck$a;->a([BLjava/lang/Object;Lcom/nuance/nmdp/speechkit/ck$i;Lcom/nuance/nmdp/speechkit/ck$i;Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->C(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->b:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    if-ne v0, v1, :cond_a

    iput-boolean v9, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->k:Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->G(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->h:Lcom/nuance/nmdp/speechkit/ck$m;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->d:Lcom/nuance/nmdp/speechkit/ck$d;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a(Lcom/nuance/nmdp/speechkit/ck$m;Lcom/nuance/nmdp/speechkit/ck$d;)V

    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->C(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    if-ne v0, v1, :cond_0

    const-string v0, "NMSP"

    const-string v1, "EndPointerOEM.EpType.SPEECH_START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->e:Lcom/nuance/nmdp/speechkit/ck$l;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/ck$l;->e()V

    goto/16 :goto_0

    :cond_b
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->d:Lcom/nuance/nmdp/speechkit/ck$d;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->d:Lcom/nuance/nmdp/speechkit/ck$d;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/ck$d;->a()V

    goto :goto_3

    :cond_d
    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->b:Z

    if-eqz v2, :cond_0

    move-object v3, v0

    check-cast v3, [B

    if-gez v4, :cond_e

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Call to AudioRecord.read() failed with code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a()V

    goto/16 :goto_0

    :cond_e
    if-eqz v4, :cond_0

    new-instance v5, Lcom/nuance/nmdp/speechkit/ck$i;

    invoke-direct {v5, v4}, Lcom/nuance/nmdp/speechkit/ck$i;-><init>(I)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->c:Lcom/nuance/nmdp/speechkit/ck$a;

    new-instance v6, Lcom/nuance/nmdp/speechkit/ck$i;

    invoke-direct {v6, v8}, Lcom/nuance/nmdp/speechkit/ck$i;-><init>(I)V

    move-object v4, v1

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Lcom/nuance/nmdp/speechkit/ck$a;->a([BLjava/lang/Object;Lcom/nuance/nmdp/speechkit/ck$i;Lcom/nuance/nmdp/speechkit/ck$i;Ljava/lang/Float;)V

    goto/16 :goto_0

    :cond_f
    move v5, v3

    goto/16 :goto_1
.end method

.method public final a(ZLcom/nuance/nmdp/speechkit/ck$a;Lcom/nuance/nmdp/speechkit/ck$m;Lcom/nuance/nmdp/speechkit/ck$g;Lcom/nuance/nmdp/speechkit/ck$l;Lcom/nuance/nmdp/speechkit/ck$d;Lcom/nuance/nmdp/speechkit/ck$e;Lcom/nuance/nmdp/speechkit/ck$f;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/eq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/eq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/eq;->a()V

    :cond_0
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->c:Lcom/nuance/nmdp/speechkit/ck$a;

    iput-object p6, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->d:Lcom/nuance/nmdp/speechkit/ck$d;

    iput-object p5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->e:Lcom/nuance/nmdp/speechkit/ck$l;

    iput-object p7, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->f:Lcom/nuance/nmdp/speechkit/ck$e;

    iput-object p8, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->g:Lcom/nuance/nmdp/speechkit/ck$f;

    iput-object p3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->h:Lcom/nuance/nmdp/speechkit/ck$m;

    iput-object p4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->i:Lcom/nuance/nmdp/speechkit/ck$g;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->f:Lcom/nuance/nmdp/speechkit/ck$e;

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a(Lcom/nuance/nmdp/speechkit/ck$e;)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->j(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v0

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->k(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v4}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->r(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v0, v2, v3, v4, v5}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->encodeInitSpeex(IIIII)I

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gez v0, :cond_2

    :try_start_2
    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encodeInitSpeex failed with code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->speexCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    const-string v0, "NMSP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RECORDER_SAMPLE_RATE_IN_HZ = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->s(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->t(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v1

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->s(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v5}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->u(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a:Landroid/media/AudioRecord;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a:Landroid/media/AudioRecord;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->v(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v0, Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->t(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v1

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->s(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v5}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->u(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a:Landroid/media/AudioRecord;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    :cond_4
    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    const-string v1, "AudioRecord object has not been initialized correctly. One or several parameters used to create it must be wrong."

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_0
    move-exception v0

    :try_start_7
    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    const-string v1, "Could not instanciate AudioRecord object."

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a:Landroid/media/AudioRecord;

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->b:Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0, p0}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    move-result v0

    if-eqz v0, :cond_6

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Call to AudioRecord.setPositionNotificationPeriod() failed with code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_6
    :try_start_8
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v0, 0x0

    :try_start_9
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v1

    new-array v1, v1, [S

    :cond_7
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->a:Landroid/media/AudioRecord;

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v1, v0, v3}, Landroid/media/AudioRecord;->read([SII)I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_8

    const/4 v3, -0x2

    if-ne v2, v3, :cond_9

    :cond_8
    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Call to AudioRecord.read() failed with code:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    const-string v1, "Call to AudioRecord.startRecording() failed."

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-lez v2, :cond_a

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    if-lt v0, v2, :cond_7

    :cond_a
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    return-void
.end method

.method public final onMarkerReached(Landroid/media/AudioRecord;)V
    .locals 0

    return-void
.end method

.method public final onPeriodicNotification(Landroid/media/AudioRecord;)V
    .locals 7

    const/4 v5, -0x2

    const/4 v4, -0x3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    move-result-object v1

    sget-object v2, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->b:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    new-array v2, v2, [S

    :cond_0
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v2, v0, v3}, Landroid/media/AudioRecord;->read([SII)I

    move-result v3

    if-eq v3, v4, :cond_1

    if-eq v3, v5, :cond_1

    if-lez v3, :cond_1

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->w(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    if-lt v0, v3, :cond_0

    :cond_1
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/cl;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->f()Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v0, 0x2

    aput-object v2, v4, v0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/cl;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/cl;->b()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/cl;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {v3, v4, p0, v0}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->b:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->x(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    new-array v2, v2, [B

    :cond_4
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->x(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v2, v0, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v3

    if-eq v3, v4, :cond_5

    if-eq v3, v5, :cond_5

    if-lez v3, :cond_5

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->x(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    if-lt v0, v3, :cond_4

    :cond_5
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/cl;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->f()Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v0, 0x2

    aput-object v2, v4, v0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/cl;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/cl;->b()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$d;->l:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/cl;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {v3, v4, p0, v0}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    :cond_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
