.class public final Lcom/nuance/nmdp/speechkit/er;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/es$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:I

.field private static final d:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final e:Ljava/lang/reflect/Method;

.field private static final f:Ljava/lang/reflect/Method;

.field private static final g:Ljava/lang/reflect/Method;

.field private static final h:Ljava/lang/reflect/Method;

.field private static final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private j:Ljava/lang/Object;

.field private k:Lcom/nuance/nmdp/speechkit/es$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "android.bluetooth.BluetoothHeadset"

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v0, "android.bluetooth.BluetoothHeadset$ServiceListener"

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lcom/nuance/nmdp/speechkit/er;->d:Ljava/lang/reflect/Constructor;

    const-string v2, "getState"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/et;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "getState"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/bluetooth/BluetoothDevice;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    :cond_0
    const-string v2, "getCurrentHeadset"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/nuance/nmdp/speechkit/er;->g:Ljava/lang/reflect/Method;

    const-string v2, "connectHeadset"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/bluetooth/BluetoothDevice;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "disconnectHeadset"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/et;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "disconnectHeadset"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/bluetooth/BluetoothDevice;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    :cond_1
    const-string v2, "startVoiceRecognition"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/nuance/nmdp/speechkit/er;->e:Ljava/lang/reflect/Method;

    const-string v2, "stopVoiceRecognition"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/nuance/nmdp/speechkit/er;->f:Ljava/lang/reflect/Method;

    const-string v2, "close"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/nuance/nmdp/speechkit/er;->h:Ljava/lang/reflect/Method;

    const-string v2, "getPriority"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/bluetooth/BluetoothDevice;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "setPriority"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Landroid/bluetooth/BluetoothDevice;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-object v0, Lcom/nuance/nmdp/speechkit/er;->i:Ljava/lang/Class;

    const-string v0, "ACTION_STATE_CHANGED"

    invoke-static {v1, v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ACTION_AUDIO_STATE_CHANGED"

    invoke-static {v1, v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/nmdp/speechkit/er;->a:Ljava/lang/String;

    const-string v0, "EXTRA_STATE"

    invoke-static {v1, v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "EXTRA_AUDIO_STATE"

    invoke-static {v1, v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/nmdp/speechkit/er;->b:Ljava/lang/String;

    const-string v0, "STATE_ERROR"

    invoke-static {v1, v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "STATE_DISCONNECTED"

    invoke-static {v1, v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "STATE_CONNECTING"

    invoke-static {v1, v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "STATE_CONNECTED"

    invoke-static {v1, v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "AUDIO_STATE_DISCONNECTED"

    invoke-static {v1, v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "AUDIO_STATE_CONNECTED"

    invoke-static {v1, v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/nmdp/speechkit/er;->c:I

    const-string v0, "PRIORITY_OFF"

    invoke-static {v1, v0}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "PRIORITY_UNDEFINED"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/nuance/nmdp/speechkit/et;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/nmdp/speechkit/es$a;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/er;->k:Lcom/nuance/nmdp/speechkit/es$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Lcom/nuance/nmdp/speechkit/er;->i:Ljava/lang/Class;

    aput-object v2, v1, v3

    new-instance v2, Lcom/nuance/nmdp/speechkit/er$1;

    invoke-direct {v2, p0}, Lcom/nuance/nmdp/speechkit/er$1;-><init>(Lcom/nuance/nmdp/speechkit/er;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/nuance/nmdp/speechkit/er;->d:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/er;->j:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/er;)Lcom/nuance/nmdp/speechkit/es$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/er;->k:Lcom/nuance/nmdp/speechkit/es$a;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/bluetooth/BluetoothDevice;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/nuance/nmdp/speechkit/er;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/er;->g:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/er;->j:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/nuance/nmdp/speechkit/er;->e:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/er;->j:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

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
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/nuance/nmdp/speechkit/er;->f:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/er;->j:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

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

.method public final d()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/nuance/nmdp/speechkit/er;->h:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/er;->j:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
