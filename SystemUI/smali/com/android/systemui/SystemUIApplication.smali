.class public Lcom/android/systemui/SystemUIApplication;
.super Landroid/app/Application;
.source "SystemUIApplication.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SystemUIService"


# instance fields
.field private final SERVICES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mBootCompleted:Z

.field private final mComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mServices:[Lcom/android/systemui/SystemUI;

.field private mServicesStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/android/systemui/recent/Recents;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/android/systemui/volume/VolumeUI;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/systemui/statusbar/SystemBars;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/systemui/usb/StorageNotification;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/systemui/power/PowerUI;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/systemui/media/RingtonePlayer;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/systemui/SystemUI;

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SystemUIApplication;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/SystemUIApplication;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/SystemUIApplication;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object v0
.end method


# virtual methods
.method public getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getServices()[Lcom/android/systemui/SystemUI;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-boolean v2, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const v1, 0x7f100042

    invoke-virtual {p0, v1}, Lcom/android/systemui/SystemUIApplication;->setTheme(I)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    new-instance v1, Lcom/android/systemui/SystemUIApplication$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIApplication$1;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/SystemUIApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public startServicesIfNeeded()V
    .locals 10

    const/4 v9, 0x1

    iget-boolean v6, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v6, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    if-nez v6, :cond_1

    const-string v6, "1"

    const-string v7, "sys.boot_completed"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iput-boolean v9, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    :cond_1
    invoke-static {}, Lcom/android/systemui/Utils;->isDeviceEncrypting()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "SystemUIService"

    const-string v7, "encrypting_progress blocks starting SystemUI services."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v6, "SystemUIService"

    const-string v7, "Starting SystemUI services."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, -0x13

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    array-length v0, v6

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    aget-object v1, v6, v3

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/SystemUI;

    aput-object v6, v7, v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v3

    iput-object p0, v6, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v3

    iget-object v7, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    iput-object v7, v6, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    move v4, v3

    const-string v6, "PERF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " start"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/android/systemui/SystemUI;->start()V

    const-string v6, "PERF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " end"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/android/systemui/SystemUI;->onBootCompleted()V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :catch_1
    move-exception v2

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_4
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.systemui.ISUP"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/SystemUIApplication;->sendBroadcast(Landroid/content/Intent;)V

    const-string v6, "SystemUIService"

    const-string v7, "send Broadcast (LOCK_NOTIFY_ACTION)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    goto/16 :goto_0
.end method
