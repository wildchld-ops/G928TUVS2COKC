.class final Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;
.super Ljava/lang/Thread;

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

.field private b:Landroid/os/Handler;

.field private c:Landroid/media/AudioTrack;

.field private d:[B

.field private e:[S

.field private f:Z

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:Z

.field private l:Lcom/nuance/nmdp/speechkit/ck$a;

.field private m:Lcom/nuance/nmdp/speechkit/ck$c;

.field private n:Lcom/nuance/nmdp/speechkit/ck$m;


# direct methods
.method private constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->k:Z

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->l:Lcom/nuance/nmdp/speechkit/ck$a;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->m:Lcom/nuance/nmdp/speechkit/ck$c;

    iput-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->n:Lcom/nuance/nmdp/speechkit/ck$m;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;-><init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)V

    return-void
.end method

.method private a([SILcom/nuance/nmdp/speechkit/ck$i;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v6, 0x0

    if-nez p2, :cond_0

    move p2, v6

    :goto_0
    return p2

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    move-result-object v0

    sget-object v2, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    if-ne v0, v2, :cond_5

    sget v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->d:I

    sget v2, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c:I

    sub-int v7, v0, v2

    if-lt v7, p2, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->l(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)[S

    move-result-object v0

    sget v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c:I

    invoke-static {v0, v1, p1, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c:I

    add-int/2addr v0, p2

    sput v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c:I

    goto :goto_0

    :cond_1
    if-lez v7, :cond_2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->l(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)[S

    move-result-object v0

    sget v2, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c:I

    invoke-static {v0, v2, p1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    sput v6, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c:I

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->l:Lcom/nuance/nmdp/speechkit/ck$a;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->m(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)[B

    move-result-object v2

    new-instance v3, Lcom/nuance/nmdp/speechkit/ck$i;

    invoke-direct {v3, v6}, Lcom/nuance/nmdp/speechkit/ck$i;-><init>(I)V

    move-object v4, p3

    move-object v5, v1

    invoke-interface/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/ck$a;->a([BLjava/lang/Object;Lcom/nuance/nmdp/speechkit/ck$i;Lcom/nuance/nmdp/speechkit/ck$i;Ljava/lang/Float;)V

    iget v0, p3, Lcom/nuance/nmdp/speechkit/ck$i;->a:I

    if-lez v0, :cond_4

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->m(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)[B

    move-result-object v0

    iget v2, p3, Lcom/nuance/nmdp/speechkit/ck$i;->a:I

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->l(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)[S

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v4}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->l(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)[S

    move-result-object v4

    array-length v4, v4

    invoke-static {v0, v2, v3, v4}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->decodeSpeex([BI[SI)I

    move-result v0

    sput v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->d:I

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->l(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)[S

    move-result-object v2

    array-length v2, v2

    if-le v0, v2, :cond_3

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->l(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)[S

    move-result-object v2

    array-length v2, v2

    sput v2, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->d:I

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_4

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Call to decodeSpeex() failed with code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->speexCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    if-lez v7, :cond_5

    move p2, v7

    goto/16 :goto_0

    :cond_5
    move p2, v6

    goto/16 :goto_0
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;
        }
    .end annotation

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c()V

    return-void
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->i:Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/eq;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/eq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/eq;->e()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)V

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->m:Lcom/nuance/nmdp/speechkit/ck$c;

    sget-object v2, Lcom/nuance/nmdp/speechkit/ck$b;->b:Lcom/nuance/nmdp/speechkit/ck$b;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/nuance/nmdp/speechkit/ck$c;->a(Lcom/nuance/nmdp/speechkit/ck$b;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->b()V

    return-void
.end method

.method private c()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v10, -0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->i:Z

    if-eqz v0, :cond_1e

    new-instance v1, Lcom/nuance/nmdp/speechkit/ck$i;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->n(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/nuance/nmdp/speechkit/ck$i;-><init>(I)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->n(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v0

    new-array v2, v0, [S

    move v0, v8

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->n(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v4, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->k:Z

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->i:Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v8

    :cond_1
    :goto_1
    if-lez v0, :cond_5

    :try_start_2
    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->n(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v1

    if-ge v0, v1, :cond_5

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->n(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->e:[S

    const/4 v3, 0x0

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    monitor-exit v3

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->n(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a([SILcom/nuance/nmdp/speechkit/ck$i;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    const-wide/16 v4, 0x12c

    :try_start_3
    invoke-static {v4, v5}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_3
    :try_start_4
    iget v4, v1, Lcom/nuance/nmdp/speechkit/ck$i;->a:I

    if-ne v4, v10, :cond_4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->i:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3

    throw v0

    :cond_4
    iget v4, v1, Lcom/nuance/nmdp/speechkit/ck$i;->a:I

    if-lez v4, :cond_0

    if-lez v3, :cond_0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->e:[S

    invoke-static {v2, v4, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    goto :goto_0

    :cond_5
    if-lez v0, :cond_9

    :goto_4
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->e:[S

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->n(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    invoke-virtual {v1, v2, v8, v3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v1

    if-lez v1, :cond_6

    sub-int/2addr v0, v1

    add-int/2addr v8, v1

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->h:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->h:I

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->h:I

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    move-result v0

    if-eqz v0, :cond_7

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Call to AudioTrack.setNotificationMarkerPosition() SPEEX 0 failed with code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    :goto_5
    monitor-exit v9

    :goto_6
    return-void

    :cond_9
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->h:I

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->o(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v1

    if-ge v0, v1, :cond_d

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->o(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v0

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->h:I

    sub-int/2addr v0, v1

    new-array v1, v0, [S

    :goto_7
    if-ge v8, v0, :cond_a

    const/4 v2, 0x0

    aput-short v2, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_a
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/media/AudioTrack;->write([SII)I

    move-result v0

    if-lez v0, :cond_b

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->h:I

    :cond_b
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->h:I

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    move-result v0

    if-eqz v0, :cond_c

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Call to AudioTrack.setNotificationMarkerPosition() SPEEX 1 failed with code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v9

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v8

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->j:I

    if-ne v8, v0, :cond_1c

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->h:I

    :goto_8
    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->j:I

    :goto_9
    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->h:I

    if-lt v0, v1, :cond_8

    if-le v0, v8, :cond_e

    sub-int/2addr v0, v8

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->k(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v1

    div-int/2addr v0, v1

    int-to-long v6, v0

    :cond_e
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/cl;

    move-result-object v0

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$2;

    invoke-direct {v1, p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$2;-><init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;)V

    invoke-interface {v0, v1, v6, v7}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;J)V

    goto/16 :goto_5

    :cond_f
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->i:Z

    if-eqz v0, :cond_1b

    new-instance v3, Lcom/nuance/nmdp/speechkit/ck$i;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v0

    invoke-direct {v3, v0}, Lcom/nuance/nmdp/speechkit/ck$i;-><init>(I)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->l:Lcom/nuance/nmdp/speechkit/ck$a;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->d:[B

    const/4 v2, 0x0

    new-instance v4, Lcom/nuance/nmdp/speechkit/ck$i;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/nuance/nmdp/speechkit/ck$i;-><init>(I)V

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/ck$a;->a([BLjava/lang/Object;Lcom/nuance/nmdp/speechkit/ck$i;Lcom/nuance/nmdp/speechkit/ck$i;Ljava/lang/Float;)V

    iget v0, v3, Lcom/nuance/nmdp/speechkit/ck$i;->a:I

    :goto_a
    if-nez v0, :cond_10

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->g:I

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    if-ge v1, v2, :cond_10

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v0

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->g:I

    sub-int/2addr v0, v1

    move v1, v8

    :goto_b
    if-ge v1, v0, :cond_10

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->d:[B

    const/4 v3, 0x0

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_10
    if-eq v0, v10, :cond_13

    :goto_c
    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->d:[B

    invoke-virtual {v1, v2, v8, v0}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    if-lez v1, :cond_11

    sub-int/2addr v0, v1

    add-int/2addr v8, v1

    iget v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->g:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->g:I

    goto :goto_c

    :cond_11
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->g:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    move-result v0

    if-eqz v0, :cond_12

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Call to AudioTrack.setNotificationMarkerPosition() PCM 0 failed with code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    :cond_13
    iget v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->g:I

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->q(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->q(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v0

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->g:I

    sub-int/2addr v0, v1

    new-array v1, v0, [B

    :goto_d
    if-ge v8, v0, :cond_14

    const/4 v2, 0x0

    aput-byte v2, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_14
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    if-lez v0, :cond_15

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->g:I

    :cond_15
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->g:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    move-result v0

    if-eqz v0, :cond_16

    new-instance v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Call to AudioTrack.setNotificationMarkerPosition() PCM 1 failed with code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v9

    goto/16 :goto_6

    :cond_17
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->j:I

    if-ne v0, v1, :cond_19

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->g:I

    div-int/lit8 v8, v1, 0x2

    :goto_e
    iput v8, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->j:I

    :goto_f
    iget v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->g:I

    div-int/lit8 v1, v1, 0x2

    if-lt v8, v1, :cond_8

    if-le v8, v0, :cond_18

    sub-int v0, v8, v0

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->k(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v1

    div-int/2addr v0, v1

    int-to-long v0, v0

    :goto_10
    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->p(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/cl;

    move-result-object v2

    new-instance v3, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$3;

    invoke-direct {v3, p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$3;-><init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;)V

    invoke-interface {v2, v3, v0, v1}, Lcom/nuance/nmdp/speechkit/cl;->a(Lcom/nuance/nmdp/speechkit/co;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    :catch_0
    move-exception v4

    goto/16 :goto_3

    :cond_18
    move-wide v0, v6

    goto :goto_10

    :cond_19
    move v8, v0

    goto :goto_e

    :cond_1a
    move v0, v8

    goto :goto_f

    :cond_1b
    move v0, v8

    goto/16 :goto_a

    :cond_1c
    move v0, v8

    goto/16 :goto_8

    :cond_1d
    move v0, v8

    goto/16 :goto_9

    :cond_1e
    move v0, v8

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;)V
    .locals 3

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->i:Z

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/eq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/eq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/eq;->e()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->n:Lcom/nuance/nmdp/speechkit/ck$m;

    sget-object v2, Lcom/nuance/nmdp/speechkit/ck$b;->a:Lcom/nuance/nmdp/speechkit/ck$b;

    invoke-interface {v0, v2}, Lcom/nuance/nmdp/speechkit/ck$m;->a(Lcom/nuance/nmdp/speechkit/ck$b;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->decodeCleanupSpeex()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;[S)[S

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;[B)[B

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;)Landroid/media/AudioTrack;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;)Lcom/nuance/nmdp/speechkit/ck$c;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->m:Lcom/nuance/nmdp/speechkit/ck$c;

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->i:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/nuance/nmdp/speechkit/ck$a;Lcom/nuance/nmdp/speechkit/ck$c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/eq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmdp/speechkit/eq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/eq;->a()V

    :cond_0
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->l:Lcom/nuance/nmdp/speechkit/ck$a;

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->m:Lcom/nuance/nmdp/speechkit/ck$c;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->i(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$b;

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->j(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->k(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->decodeInitSpeex(III)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v2, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "decodeInitSpeex failed with code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->speexCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    const/high16 v2, 0x80000

    new-array v2, v2, [S

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;[S)[S

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    const/high16 v2, 0x80000

    new-array v2, v2, [B

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;[B)[B

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    :try_start_4
    sput v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c:I

    const/4 v0, 0x0

    sput v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->d:I

    :cond_2
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->start()V

    :goto_0
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->b:Landroid/os/Handler;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_3

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    :try_start_6
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->isAlive()Z

    move-result v0

    if-nez v0, :cond_4

    monitor-exit p0

    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->b:Landroid/os/Handler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method

.method public final a(Lcom/nuance/nmdp/speechkit/ck$m;)V
    .locals 3

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->b()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->k:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->i:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-enter p0

    :try_start_2
    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->n:Lcom/nuance/nmdp/speechkit/ck$m;

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->b:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->b:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->f:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v0, :cond_3

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c()V
    :try_end_0
    .catch Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->b()V

    goto :goto_0
.end method

.method public final onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 9

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c$1;-><init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->b:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->a()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1
    .catch Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->c(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->d:[B

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->d(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v0

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->e:[S
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    :try_start_3
    iput v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->j:I

    new-instance v0, Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->e(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v1

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v2}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->f(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v5}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->g(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v5

    iget-object v6, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;

    invoke-static {v6}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;->h(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v8, :cond_1

    :cond_0
    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    const-string v1, "AudioTrack object has not been initialized correctly. One or several parameters used to create it must be wrong."

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    const-string v1, "Could not instanciate AudioTrack object."

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v7

    throw v0
    :try_end_5
    .catch Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_1
    move-exception v0

    :try_start_6
    invoke-direct {p0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->b()V

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_0
    return-void

    :cond_1
    :try_start_7
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0, p0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    invoke-static {}, Landroid/os/Looper;->loop()V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$c;->f:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method
