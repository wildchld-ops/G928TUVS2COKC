.class public final Lcom/nuance/nmdp/speechkit/es;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:I


# instance fields
.field private d:Landroid/content/Context;

.field private e:Z

.field private f:Lcom/nuance/nmdp/speechkit/er;

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/Object;

.field private final j:Lcom/nuance/nmdp/speechkit/et;

.field private k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->f:Lcom/nuance/nmdp/speechkit/er;

    iput-boolean v4, p0, Lcom/nuance/nmdp/speechkit/es;->g:Z

    iput-boolean v4, p0, Lcom/nuance/nmdp/speechkit/es;->h:Z

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->i:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->k:Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/es;->d:Landroid/content/Context;

    new-instance v0, Lcom/nuance/nmdp/speechkit/et;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/et;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->j:Lcom/nuance/nmdp/speechkit/et;

    sget v0, Lcom/nuance/nmdp/speechkit/ep;->a:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    iput-boolean v5, p0, Lcom/nuance/nmdp/speechkit/es;->e:Z

    sget-object v0, Lcom/nuance/nmdp/speechkit/er;->a:Ljava/lang/String;

    sput-object v0, Lcom/nuance/nmdp/speechkit/es;->a:Ljava/lang/String;

    sget-object v0, Lcom/nuance/nmdp/speechkit/er;->b:Ljava/lang/String;

    sput-object v0, Lcom/nuance/nmdp/speechkit/es;->b:Ljava/lang/String;

    sget v0, Lcom/nuance/nmdp/speechkit/er;->c:I

    sput v0, Lcom/nuance/nmdp/speechkit/es;->c:I

    new-instance v0, Lcom/nuance/nmdp/speechkit/es$a;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/es$a;-><init>(Lcom/nuance/nmdp/speechkit/es;)V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/es;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/nuance/nmdp/speechkit/er;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/es;->d:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/nuance/nmdp/speechkit/er;-><init>(Landroid/content/Context;Lcom/nuance/nmdp/speechkit/es$a;)V

    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/es;->f:Lcom/nuance/nmdp/speechkit/er;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->k:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/es;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/es;->g:Z

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/es;->e()V

    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    iput-boolean v4, p0, Lcom/nuance/nmdp/speechkit/es;->e:Z

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->j:Lcom/nuance/nmdp/speechkit/et;

    const-string v0, "android.bluetooth.BluetoothHeadset"

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->j:Lcom/nuance/nmdp/speechkit/et;

    const-string v0, "ACTION_AUDIO_STATE_CHANGED"

    invoke-static {v1, v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/nmdp/speechkit/es;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->j:Lcom/nuance/nmdp/speechkit/et;

    const-string v0, "EXTRA_STATE"

    invoke-static {v1, v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/nmdp/speechkit/es;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->j:Lcom/nuance/nmdp/speechkit/et;

    const-string v0, "STATE_AUDIO_CONNECTED"

    invoke-static {v1, v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/nmdp/speechkit/es;->c:I

    sget v0, Lcom/nuance/nmdp/speechkit/ep;->a:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    sget v0, Lcom/nuance/nmdp/speechkit/ep;->a:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    sget v0, Lcom/nuance/nmdp/speechkit/ep;->a:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    sget v0, Lcom/nuance/nmdp/speechkit/ep;->a:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    sget v0, Lcom/nuance/nmdp/speechkit/ep;->a:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/nuance/nmdp/speechkit/es$1;

    invoke-direct {v2, v0}, Lcom/nuance/nmdp/speechkit/es$1;-><init>([Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_2
    aget-object v1, v0, v4

    if-nez v1, :cond_3

    const-wide/16 v2, 0xa

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_3
    aget-object v0, v0, v5

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    move-object v1, v0

    :goto_3
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->j:Lcom/nuance/nmdp/speechkit/et;

    const-string v0, "android.bluetooth.BluetoothProfile$ServiceListener"

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Class;

    aput-object v2, v3, v4

    new-instance v4, Lcom/nuance/nmdp/speechkit/es$2;

    invoke-direct {v4, p0}, Lcom/nuance/nmdp/speechkit/es$2;-><init>(Lcom/nuance/nmdp/speechkit/es;)V

    invoke-static {v0, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/es;->k:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->j:Lcom/nuance/nmdp/speechkit/et;

    const-string v0, "android.bluetooth.BluetoothProfile"

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->j:Lcom/nuance/nmdp/speechkit/et;

    const-string v0, "android.bluetooth.BluetoothAdapter"

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    :try_start_5
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->j:Lcom/nuance/nmdp/speechkit/et;

    const-string v0, "isEnabled"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-static {v6, v0, v7}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    if-nez v0, :cond_5

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->j:Lcom/nuance/nmdp/speechkit/et;

    const-string v0, "getProfileProxy"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v2, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    invoke-static {v6, v0, v7}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v0

    const/4 v2, 0x3

    :try_start_8
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v2, v6

    const/4 v6, 0x1

    aput-object v3, v2, v6

    const/4 v3, 0x2

    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/es;->j:Lcom/nuance/nmdp/speechkit/et;

    const-string v6, "HEADSET"

    invoke-static {v5, v6}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_4
    :try_start_9
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->k:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_5
    :try_start_a
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/es;->h:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/es;->g:Z

    :cond_6
    monitor-exit v4

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/es;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/es;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/es;->i:Ljava/lang/Object;

    return-object p1
.end method

.method private a(Ljava/lang/Object;)V
    .locals 7

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->j:Lcom/nuance/nmdp/speechkit/et;

    const-string v0, "android.bluetooth.BluetoothProfile"

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/es;->j:Lcom/nuance/nmdp/speechkit/et;

    const-string v1, "android.bluetooth.BluetoothAdapter"

    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/es;->j:Lcom/nuance/nmdp/speechkit/et;

    const-string v2, "closeProfileProxy"

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/et;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/es;->j:Lcom/nuance/nmdp/speechkit/et;

    const-string v5, "HEADSET"

    invoke-static {v0, v5}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nuance/nmdp/speechkit/es;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/es;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/nuance/nmdp/speechkit/es;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/es;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/nuance/nmdp/speechkit/es;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/es;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/nuance/nmdp/speechkit/es;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/es;->e()V

    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->f:Lcom/nuance/nmdp/speechkit/er;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->f:Lcom/nuance/nmdp/speechkit/er;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/er;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->f:Lcom/nuance/nmdp/speechkit/er;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/bluetooth/BluetoothDevice;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/es;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->f:Lcom/nuance/nmdp/speechkit/er;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->f:Lcom/nuance/nmdp/speechkit/er;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/er;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/es;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->i:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->j:Lcom/nuance/nmdp/speechkit/et;

    const-string v0, "android.bluetooth.BluetoothProfile"

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/es;->j:Lcom/nuance/nmdp/speechkit/et;

    const-string v2, "getConnectedDevices"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lcom/nuance/nmdp/speechkit/et;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/es;->i:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->j:Lcom/nuance/nmdp/speechkit/et;

    const-string v0, "android.bluetooth.BluetoothHeadset"

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/es;->j:Lcom/nuance/nmdp/speechkit/et;

    const-string v2, "startVoiceRecognition"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/bluetooth/BluetoothDevice;

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/nuance/nmdp/speechkit/et;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/es;->i:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/es;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/es;->f:Lcom/nuance/nmdp/speechkit/er;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->f:Lcom/nuance/nmdp/speechkit/er;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/er;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public final b(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->j:Lcom/nuance/nmdp/speechkit/et;

    const-string v0, "android.bluetooth.BluetoothHeadset"

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/es;->j:Lcom/nuance/nmdp/speechkit/et;

    const-string v2, "stopVoiceRecognition"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/bluetooth/BluetoothDevice;

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/nuance/nmdp/speechkit/et;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/es;->i:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/es;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/es;->f:Lcom/nuance/nmdp/speechkit/er;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->f:Lcom/nuance/nmdp/speechkit/er;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/er;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/es;->e:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/es;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->i:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->i:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/es;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/es;->i:Ljava/lang/Object;

    goto :goto_0
.end method
