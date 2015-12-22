.class final Lcom/android/settings/bluetooth/BleAudioProfile;
.super Ljava/lang/Object;
.source "BleAudioProfile.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BleAudioProfile$1;,
        Lcom/android/settings/bluetooth/BleAudioProfile$BleAudioServiceListener;
    }
.end annotation


# static fields
.field private static V:Z


# instance fields
.field private final mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field private mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/bluetooth/BleAudioProfile;->V:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BleAudioProfile"

    const-string v1, "BluetoothLeAudio :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iput-object p3, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    iput-object p4, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    new-instance v0, Lcom/android/settings/bluetooth/BleAudioProfile$BleAudioServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/BleAudioProfile$BleAudioServiceListener;-><init>(Lcom/android/settings/bluetooth/BleAudioProfile;Lcom/android/settings/bluetooth/BleAudioProfile$1;)V

    invoke-static {p1, v0}, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/bluetooth/BleAudioProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BleAudioProfile;)Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/BleAudioProfile;Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;)Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BleAudioProfile;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/BleAudioProfile;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/BleAudioProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/bluetooth/BleAudioProfile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    const/4 v2, 0x0

    const-string v3, "BleAudioProfile"

    const-string v4, "connect :: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const-string v3, "BleAudioProfile"

    const-string v4, "connect :: mService is not null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v3, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getGearManagerName()[B

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    aget-byte v3, v1, v3

    packed-switch v3, :pswitch_data_0

    const-string v3, "BleAudioProfile"

    const-string v4, "connect :: Can\'t connect with SLD device, Not has channel"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const-string v3, "BleAudioProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect :: Try to connect with SLD device, using Channel left. Encryption="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    invoke-virtual {v5}, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->getEncryption()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    sget v4, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->BLE_AUDIO_CHANNEL_LEFT:I

    iget-object v5, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    invoke-virtual {v5}, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->getEncryption()Z

    move-result v5

    invoke-virtual {v3, p1, v4, v2, v5}, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->connect(Landroid/bluetooth/BluetoothDevice;IZZ)Z

    move-result v2

    goto :goto_0

    :pswitch_1
    const-string v3, "BleAudioProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect :: Try to connect with SLD device, using Channel right. Encryption="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    invoke-virtual {v5}, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->getEncryption()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    sget v4, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->BLE_AUDIO_CHANNEL_RIGHT:I

    iget-object v5, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    invoke-virtual {v5}, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->getEncryption()Z

    move-result v5

    invoke-virtual {v3, p1, v4, v2, v5}, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->connect(Landroid/bluetooth/BluetoothDevice;IZZ)Z

    move-result v2

    goto :goto_0

    :cond_1
    const-string v3, "BleAudioProfile"

    const-string v4, "connect :: Can\'t try connect to BleAudioProfile, mManufacturerData is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const-string v3, "BleAudioProfile"

    const-string v4, "connect :: Can\'t try connect to BleAudioProfile, cachedDevice is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    const-string v0, "BleAudioProfile"

    const-string v1, "disconnect :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "BleAudioProfile"

    const-string v1, "disconnect :: mService is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    const v0, 0x7f0201dd

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    const v0, 0x7f0a07a7

    return v0
.end method

.method public getNameResourceTts(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    const v0, 0x7f0a07a7

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    const v0, 0x7f0a07a7

    return v0
.end method

.method public isAutoConnectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isProfileReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BleAudioProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "BLEAUDIO"

    return-object v0
.end method
