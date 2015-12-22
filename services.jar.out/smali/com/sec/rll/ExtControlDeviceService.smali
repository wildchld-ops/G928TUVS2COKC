.class public Lcom/sec/rll/ExtControlDeviceService;
.super Lcom/sec/rll/IExtControlDeviceService$Stub;
.source "ExtControlDeviceService.java"


# static fields
.field private static final ACTION_NFC_POLICY_CHANGED:Ljava/lang/String; = "android.action.nfc.policychanged"

.field private static final DEVICE_GPS:I = 0x1001

.field private static final DEVICE_NFC:I = 0x2001

.field private static final PROPERTY_NFC_LOCKOUT:Ljava/lang/String; = "persist.security.nfc.lockout"

.field private static final STATUS_DISABLED:I = 0x0

.field private static final STATUS_ENABLED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SRIB-ExtControlDeviceService"

.field private static mContext:Landroid/content/Context;

.field private static mPackageManager:Landroid/content/pm/PackageManager;

.field private static mUid:I

.field private static sService:Lcom/sec/rll/ExtControlDeviceService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/rll/IExtControlDeviceService$Stub;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/rll/ExtControlDeviceService;
    .locals 2

    const-class v1, Lcom/sec/rll/ExtControlDeviceService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/rll/ExtControlDeviceService;->sService:Lcom/sec/rll/ExtControlDeviceService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/rll/ExtControlDeviceService;

    invoke-direct {v0}, Lcom/sec/rll/ExtControlDeviceService;-><init>()V

    sput-object v0, Lcom/sec/rll/ExtControlDeviceService;->sService:Lcom/sec/rll/ExtControlDeviceService;

    :cond_0
    sget-object v0, Lcom/sec/rll/ExtControlDeviceService;->sService:Lcom/sec/rll/ExtControlDeviceService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getNfcState()I
    .locals 2

    const-string/jumbo v0, "persist.security.nfc.lockout"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    sput-object p0, Lcom/sec/rll/ExtControlDeviceService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/sec/rll/ExtControlDeviceService;->mUid:I

    sget-object v0, Lcom/sec/rll/ExtControlDeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/sec/rll/ExtControlDeviceService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private isAccessPermitted()Z
    .locals 10

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    sget v7, Lcom/sec/rll/ExtControlDeviceService;->mUid:I

    if-ne v1, v7, :cond_0

    const-string v7, "SRIB-ExtControlDeviceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UID matches - access granted to uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v6

    :cond_0
    sget-object v7, Lcom/sec/rll/ExtControlDeviceService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    const-string v7, "com.example.testrll"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "com.kddi.extcontroldevice"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const-string v7, "SRIB-ExtControlDeviceService"

    const-string v8, "Allowing RLL access"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string v6, "SRIB-ExtControlDeviceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Access denied to UID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static setLocationMode(I)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    sget-object v0, Lcom/sec/rll/ExtControlDeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_mode"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static setNfcState(I)V
    .locals 3

    const-string/jumbo v1, "persist.security.nfc.lockout"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.action.nfc.policychanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "NfcState"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/sec/rll/ExtControlDeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getStatus(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "SRIB-ExtControlDeviceService"

    const-string/jumbo v4, "getStatus called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/rll/ExtControlDeviceService;->isAccessPermitted()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, -0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 v3, 0x1001

    if-ne p1, v3, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    const-string v3, "SRIB-ExtControlDeviceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get gps state called return value  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/rll/ExtControlDeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "location_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/sec/rll/ExtControlDeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "location_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/16 v2, 0x2001

    if-ne p1, v2, :cond_0

    const-string v1, "SRIB-ExtControlDeviceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get nfc/felica state called return value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/rll/ExtControlDeviceService;->getNfcState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/rll/ExtControlDeviceService;->getNfcState()I

    move-result v1

    goto :goto_0
.end method

.method public setStatus(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    const-string v2, "SRIB-ExtControlDeviceService"

    const-string/jumbo v3, "setStatus called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/rll/ExtControlDeviceService;->isAccessPermitted()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v2, 0x1001

    if-ne p1, v2, :cond_6

    const-string v2, "SRIB-ExtControlDeviceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set gps state called with state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    sget-object v2, Lcom/sec/rll/ExtControlDeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_0

    :goto_1
    sget-object v2, Lcom/sec/rll/ExtControlDeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_0
    if-ne p2, v5, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_1
    if-ne p2, v5, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_2
    if-ne p2, v5, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_3
    if-ne p2, v5, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    const/16 v2, 0x2001

    if-ne p1, v2, :cond_0

    const-string v2, "SRIB-ExtControlDeviceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set NFC/Felica state called with state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/sec/rll/ExtControlDeviceService;->setNfcState(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
