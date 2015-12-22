.class public Lcom/android/server/usb/UsbStorageNotification;
.super Ljava/lang/Object;
.source "UsbStorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbStorageNotification$StorageNotificationHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbStorageNotification"


# instance fields
.field private final UPDATE_DELAY:I

.field private final USBHOST_UPDATE_STATE:I

.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/usb/UsbNotificationHandler;

.field private mNeedIntent:Z

.field private mNotificationEventHandler:Landroid/os/Handler;

.field private mReady:Z

.field private mStorageEventListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumes:[Landroid/os/storage/StorageVolume;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbNotificationHandler;)V
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mReady:Z

    new-instance v1, Lcom/android/server/usb/UsbStorageNotification$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbStorageNotification$1;-><init>(Lcom/android/server/usb/UsbStorageNotification;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    iput-boolean v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mNeedIntent:Z

    new-instance v1, Lcom/android/server/usb/UsbStorageNotification$2;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbStorageNotification$2;-><init>(Lcom/android/server/usb/UsbStorageNotification;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/usb/UsbStorageNotification;->USBHOST_UPDATE_STATE:I

    const/16 v1, 0x7d0

    iput v1, p0, Lcom/android/server/usb/UsbStorageNotification;->UPDATE_DELAY:I

    iput-object p1, p0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const-string/jumbo v1, "storage"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    iget-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    :goto_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UsbStorageNotification"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/usb/UsbStorageNotification$StorageNotificationHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/usb/UsbStorageNotification$StorageNotificationHandler;-><init>(Lcom/android/server/usb/UsbStorageNotification;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    return-void

    :cond_0
    const-string v1, "UsbStorageNotification"

    const-string/jumbo v2, "not yet initialized the mountservice ?"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbStorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/UsbStorageNotification;->onUsbHostStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbStorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/UsbStorageNotification;->onWaterProofing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/usb/UsbStorageNotification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbStorageNotification;->mReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbStorageNotification;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbStorageNotification;->mNeedIntent:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/usb/UsbStorageNotification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbStorageNotification;->mNeedIntent:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbStorageNotification;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isSDCard(Ljava/lang/String;)Z
    .locals 4

    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isUsbHostDevice(Ljava/lang/String;)Z
    .locals 4

    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "usb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private onUsbHostStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    invoke-direct/range {p0 .. p1}, Lcom/android/server/usb/UsbStorageNotification;->isUsbHostDevice(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "UsbStorageNotification"

    const-string/jumbo v3, "onUsbHostStateChanged :: Media {%s} state changed from {%s} -> {%s}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbStorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbStorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    const-string v2, "checking"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.usb.ExternalStorageUnmountActivity"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "storage_volume"

    move-object/from16 v0, p1

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v6, 0x1040b7f

    const v7, 0x1040b80

    const v8, 0x1080775

    const/4 v9, 0x0

    const/4 v11, 0x1

    const-string v12, "UsbDevices"

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZLandroid/app/PendingIntent;ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "removed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const-string v3, "UsbDevices"

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbNotificationHandler;->clearNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v2, "bad_removal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "sys.fakeShutdown.state"

    const-string/jumbo v3, "power_on"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v2, "UsbStorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fake state : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "power_on"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v12, 0x1040b81

    const v13, 0x1040b82

    const v14, 0x108008a

    const/4 v15, 0x1

    const/16 v16, 0x1

    const-string v17, "UsbDevices"

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v2, "unmounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbStorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbStorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x7d0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "UsbStorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onUsbHostStateChanged :: failed to send message"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const-string v3, "UsbDevices"

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbNotificationHandler;->clearNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "nofs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "storage_volume"

    move-object/from16 v0, p1

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v6, 0x1040b83

    const v7, 0x1040b84

    const v8, 0x108007b

    const/4 v9, 0x0

    const/4 v11, 0x1

    const-string v12, "UsbDevices"

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZLandroid/app/PendingIntent;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "unmountable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v12, 0x1040b85

    const v13, 0x1040b86

    const v14, 0x108007b

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-string v17, "UsbDevices"

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onWaterProofing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbStorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "UsbStorageNotification"

    const-string/jumbo v1, "onWaterProofing :: Media {%s} state changed from {%s} -> {%s}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "removed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "bad_removal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "bad_removal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "removed"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/usb/UsbStorageNotification;->mReady:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/usb/UsbStorageNotification;->sendWaterProfingIntent()V

    goto :goto_0

    :cond_3
    iput-boolean v4, p0, Lcom/android/server/usb/UsbStorageNotification;->mNeedIntent:Z

    goto :goto_0
.end method


# virtual methods
.method sendWaterProfingIntent()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.popupuireceiver.action.BATTERY_COVER_WATERPROOF_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v1, "UsbStorageNotification"

    const-string/jumbo v2, "onWaterProofing : Sent the intent"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
