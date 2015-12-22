.class public final Landroid/bluetooth/BtCallback;
.super Ljava/lang/Object;
.source "BtCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BtCallback$BluetoothUniversalCb;
    }
.end annotation


# static fields
.field public static final BT_COMMNAD_ID_GAP_REGISTER_CALLBACK:I = 0x3e8

.field public static final BT_COMMNAD_ID_GAP_UNREGISTER_CALLBACK:I = 0x3e9

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BtCallback"

.field private static sBtCallback:Landroid/bluetooth/BtCallback;


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mCb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BtCallback$BluetoothUniversalCb;",
            ">;"
        }
    .end annotation
.end field

.field private final mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field private mManagerService:Landroid/bluetooth/IBluetoothManager;

.field private mService:Landroid/bluetooth/IBluetooth;

.field private final mUCallback:Landroid/bluetooth/IBtUCallback;

.field private mUuid:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/bluetooth/BtCallback;->sBtCallback:Landroid/bluetooth/BtCallback;

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BtCallback;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    new-instance v1, Landroid/bluetooth/BtCallback$1;

    invoke-direct {v1, p0}, Landroid/bluetooth/BtCallback$1;-><init>(Landroid/bluetooth/BtCallback;)V

    iput-object v1, p0, Landroid/bluetooth/BtCallback;->mUCallback:Landroid/bluetooth/IBtUCallback;

    new-instance v1, Landroid/bluetooth/BtCallback$2;

    invoke-direct {v1, p0}, Landroid/bluetooth/BtCallback$2;-><init>(Landroid/bluetooth/BtCallback;)V

    iput-object v1, p0, Landroid/bluetooth/BtCallback;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BtCallback;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object p1, p0, Landroid/bluetooth/BtCallback;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v1, p0, Landroid/bluetooth/BtCallback;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BtCallback;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/BtCallback;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BtCallback;->mService:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BtCallback;->mCb:Ljava/util/Map;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v1, p0, Landroid/bluetooth/BtCallback;->mUuid:Landroid/os/ParcelUuid;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "BtCallback"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/bluetooth/BtCallback;)Landroid/bluetooth/IBtUCallback;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BtCallback;->mUCallback:Landroid/bluetooth/IBtUCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BtCallback;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BtCallback;->mCb:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Landroid/bluetooth/BtCallback;)Landroid/bluetooth/IBluetooth;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BtCallback;->mService:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$202(Landroid/bluetooth/BtCallback;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BtCallback;->mService:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method public static declared-synchronized getBtCallback()Landroid/bluetooth/BtCallback;
    .locals 5

    const-class v3, Landroid/bluetooth/BtCallback;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/bluetooth/BtCallback;->sBtCallback:Landroid/bluetooth/BtCallback;

    if-nez v2, :cond_0

    const-string v2, "bluetooth_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    new-instance v2, Landroid/bluetooth/BtCallback;

    invoke-direct {v2, v1}, Landroid/bluetooth/BtCallback;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    sput-object v2, Landroid/bluetooth/BtCallback;->sBtCallback:Landroid/bluetooth/BtCallback;

    :cond_0
    :goto_0
    sget-object v2, Landroid/bluetooth/BtCallback;->sBtCallback:Landroid/bluetooth/BtCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    :cond_1
    :try_start_1
    const-string v2, "BtCallback"

    const-string v4, "Bluetooth binder is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private sendMessage(Ljava/lang/String;Z)V
    .locals 5

    const-string v2, "BtCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", register: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/bluetooth/BtUCallbackData;

    iget-object v2, p0, Landroid/bluetooth/BtCallback;->mUuid:Landroid/os/ParcelUuid;

    invoke-direct {v1, p1, v2}, Landroid/bluetooth/BtUCallbackData;-><init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    const-string v2, "cbData"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p2, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BtCallback;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v3, 0x3e8

    iget-object v4, p0, Landroid/bluetooth/BtCallback;->mUCallback:Landroid/bluetooth/IBtUCallback;

    invoke-virtual {v2, v3, v0, v4}, Landroid/bluetooth/BluetoothAdapter;->callBtCommonApi(ILandroid/os/Bundle;Landroid/bluetooth/IBtUCallback;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BtCallback;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v3, 0x3e9

    iget-object v4, p0, Landroid/bluetooth/BtCallback;->mUCallback:Landroid/bluetooth/IBtUCallback;

    invoke-virtual {v2, v3, v0, v4}, Landroid/bluetooth/BluetoothAdapter;->callBtCommonApi(ILandroid/os/Bundle;Landroid/bluetooth/IBtUCallback;)Z

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BtCallback;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v1, p0, Landroid/bluetooth/BtCallback;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public registerCallback(Ljava/lang/String;Landroid/bluetooth/BtCallback$BluetoothUniversalCb;)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "BtCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerCallback: cb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BtCallback;->mCb:Ljava/util/Map;

    monitor-enter v1

    if-eqz p2, :cond_0

    :try_start_0
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BtCallback;->mCb:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BtCallback;->mCb:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BtCallback;->sendMessage(Ljava/lang/String;Z)V

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "BtCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback is not registered, svc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterCallback(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "BtCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterCallback: service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BtCallback;->mCb:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BtCallback;->mCb:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BtCallback;->mCb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/bluetooth/BtCallback;->sendMessage(Ljava/lang/String;Z)V

    monitor-exit v1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v2, "BtCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callback is not unregistered, svc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
