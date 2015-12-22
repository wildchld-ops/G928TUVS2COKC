.class Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;
.super Ljava/lang/Object;
.source "QuickConnectConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sconnect/extern/QuickConnectConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;


# direct methods
.method constructor <init>(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v1, "QuickConnectConnector"

    const-string/jumbo v2, "onServiceConnected:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    invoke-static {p2}, Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sconnect/central/extern/ISconnectService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$3(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;Lcom/samsung/android/sconnect/central/extern/ISconnectService;)V

    iget-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mServiceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;
    invoke-static {v1}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$0(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mServiceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;
    invoke-static {v1}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$0(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;->onConnected()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mISconnect:Lcom/samsung/android/sconnect/central/extern/ISconnectService;
    invoke-static {v1}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$1(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/central/extern/ISconnectService;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "QuickConnectConnector"

    const-string/jumbo v2, "onServiceConnected: mISconnect == null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mISconnect:Lcom/samsung/android/sconnect/central/extern/ISconnectService;
    invoke-static {v1}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$1(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/central/extern/ISconnectService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mCallback:Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;
    invoke-static {v2}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$2(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sconnect/central/extern/ISconnectService;->registerCallback(Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "QuickConnectConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onServiceConnected: RemoteException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const-string v1, "QuickConnectConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onServiceDisconnected:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mServiceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;
    invoke-static {v1}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$0(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mServiceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;
    invoke-static {v1}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$0(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;->onDisconnected()V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mISconnect:Lcom/samsung/android/sconnect/central/extern/ISconnectService;
    invoke-static {v1}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$1(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/central/extern/ISconnectService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mCallback:Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;
    invoke-static {v2}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$2(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sconnect/central/extern/ISconnectService;->unregisterCallback(Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "QuickConnectConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onServiceDisconnected: RemoteException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
