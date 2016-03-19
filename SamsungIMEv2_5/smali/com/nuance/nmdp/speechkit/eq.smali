.class public abstract Lcom/nuance/nmdp/speechkit/eq;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/nuance/nmdp/speechkit/es;

.field private c:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/eq;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/eq;->a:Landroid/content/Context;

    new-instance v0, Lcom/nuance/nmdp/speechkit/es;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/eq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nuance/nmdp/speechkit/es;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/eq;->b:Lcom/nuance/nmdp/speechkit/es;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/nuance/nmdp/speechkit/eq;
    .locals 2

    sget v0, Lcom/nuance/nmdp/speechkit/ep;->a:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    sget-boolean v1, Lcom/nuance/nmdp/speechkit/ep;->b:Z

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/ew;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/ew;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0x9

    if-ge v0, v1, :cond_2

    new-instance v0, Lcom/nuance/nmdp/speechkit/ex;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/ex;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xb

    if-ge v0, v1, :cond_3

    new-instance v0, Lcom/nuance/nmdp/speechkit/eu;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/eu;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/nuance/nmdp/speechkit/ev;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/ev;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/eq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eq;->c:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/nuance/nmdp/speechkit/es;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/nuance/nmdp/speechkit/eq$1;

    invoke-direct {v1, p0}, Lcom/nuance/nmdp/speechkit/eq$1;-><init>(Lcom/nuance/nmdp/speechkit/eq;)V

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/eq;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/eq;->a:Landroid/content/Context;

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/eq;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eq;->c:Ljava/lang/Object;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eq;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eq;->b:Lcom/nuance/nmdp/speechkit/es;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/es;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eq;->b:Lcom/nuance/nmdp/speechkit/es;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/eq;->b:Lcom/nuance/nmdp/speechkit/es;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/es;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/eq;->b:Lcom/nuance/nmdp/speechkit/es;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()I
.end method
