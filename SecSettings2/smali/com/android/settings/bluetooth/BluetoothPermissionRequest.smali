.class public final Lcom/android/settings/bluetooth/BluetoothPermissionRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionRequest.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field mContext:Landroid/content/Context;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field mRequestType:I

.field mReturnClass:Ljava/lang/String;

.field mReturnPackage:Ljava/lang/String;

.field private mServiceUuid:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/bluetooth/Utils;->V:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    return-void
.end method

.method private checkUserChoice()Z
    .locals 13

    const/4 v6, 0x0

    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v9, :cond_0

    const-string v9, "BluetoothPermissionRequest"

    const-string v10, "Remote device info is null, so dismiss the BT permission activity"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    const/4 v6, 0x1

    move v7, v6

    :goto_0
    return v7

    :cond_0
    iget v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    iget v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    iget v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_2

    sget-boolean v9, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "BluetoothPermissionRequest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkUserChoice() :: Unknown RequestType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v7, v6

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v9}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v9, v10, v11}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    :cond_3
    iget v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    :goto_1
    const-string v9, "BluetoothPermissionRequest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkUserChoice() :: returning "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    goto :goto_0

    :cond_5
    const/4 v9, 0x1

    if-ne v5, v9, :cond_6

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v9, 0x2

    if-ne v5, v9, :cond_7

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    const/4 v6, 0x1

    goto :goto_1

    :cond_7
    const-string v9, "BluetoothPermissionRequest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad phonebookPermission: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    iget v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_b

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_9

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    const/4 v6, 0x1

    goto :goto_1

    :cond_9
    const/4 v9, 0x2

    if-ne v4, v9, :cond_a

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->sendReplyIntentToReceiver(Z)V

    const/4 v6, 0x1

    goto :goto_1

    :cond_a
    const-string v9, "BluetoothPermissionRequest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad messagePermission: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_b
    iget v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_4

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getSimPermissionChoice()I

    move-result v8

    sget-boolean v9, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->DEBUG:Z

    if-eqz v9, :cond_c

    const-string v9, "BluetoothPermissionRequest"

    const-string v10, "checkUserChoice BluetoothDevice.REQUEST_TYPE_SIM_ACCESS"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz v8, :cond_4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v10, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mServiceUuid:Landroid/os/ParcelUuid;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Landroid/os/ParcelUuid;ZZ)Z

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_d
    const/4 v9, 0x2

    if-ne v8, v9, :cond_e

    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v10, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mServiceUuid:Landroid/os/ParcelUuid;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Landroid/os/ParcelUuid;ZZ)Z

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_e
    const-string v9, "BluetoothPermissionRequest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad sapPermission: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private playPopupAlert(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const v2, 0x1080080

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private sendReplyIntentToReceiver(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v2, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v6, "BluetoothPermissionRequest"

    const-string v7, "onReceive :: Intent.getAction() is return null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "BluetoothPermissionRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive :: getAction = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "user"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    invoke-static {v5}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-boolean v6, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "BluetoothPermissionRequest"

    const-string v7, "Blocking notification for managed profile."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    iput-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v6, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const-string v6, "android.bluetooth.device.extra.PACKAGE_NAME"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    const-string v6, "android.bluetooth.device.extra.CLASS_NAME"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    sget-boolean v6, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "BluetoothPermissionRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive request type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->checkUserChoice()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v6, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    invoke-virtual {v2, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v6, 0x18000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v7, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "android.bluetooth.device.extra.DEVICE"

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v6, "android.bluetooth.device.extra.PACKAGE_NAME"

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.bluetooth.device.extra.CLASS_NAME"

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->playPopupAlert(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_4
    const-string v6, "com.samsung.bluetooth.device.action.ACTION_AUTHORIZE_REQUEST"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    iput-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v6, "android.bluetooth.device.extra.UUID"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isSap(Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x4

    iput v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const-string v6, "1"

    const-string v7, "service.bt.security.policy.mode"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "BluetoothPermissionRequest"

    const-string v7, "SAP service is disabled; IT Policy is Handsfree Only"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string v6, "phone"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const-string v6, "BluetoothPermissionRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCallState() returns :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v6, v7, v9, v9}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Landroid/os/ParcelUuid;ZZ)Z

    goto/16 :goto_0

    :cond_6
    const-string v6, "BluetoothPermissionRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: bad mServiceUuid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v6, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    invoke-virtual {v2, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v6, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v7, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "android.bluetooth.device.extra.DEVICE"

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v6, "android.bluetooth.device.extra.UUID"

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v7}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->checkUserChoice()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->playPopupAlert(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_8
    const-string v6, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "notification"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    const v6, 0x1080080

    invoke-virtual {v3, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method
