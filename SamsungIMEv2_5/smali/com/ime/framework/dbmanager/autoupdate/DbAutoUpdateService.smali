.class public Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;
.super Landroid/app/Service;
.source "DbAutoUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$boradCastReceiver;,
        Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$DbAutoUpdateServiceBinder;
    }
.end annotation


# static fields
.field private static final DB_AUTO_UPDATE_STARTDELAY_VALUE:I = 0x1f4

.field private static final DB_ONE_DAY:J = 0x5265c00L

.field private static final DB_ONE_HOUR:J = 0x36ee80L

.field private static final DB_ONE_MIN:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "DbAutoUpdateService"


# instance fields
.field private DEBUG:Z

.field private final mBinder:Landroid/os/IBinder;

.field private mBroadCastReceiver:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$boradCastReceiver;

.field private mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

.field private mHandler:Landroid/os/Handler;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mUpdateTimeTask:Ljava/lang/Runnable;

.field private mWLanOnlyFilter:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->DEBUG:Z

    iput-object v1, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

    new-instance v0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$DbAutoUpdateServiceBinder;

    invoke-direct {v0, p0}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$DbAutoUpdateServiceBinder;-><init>(Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;)V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mBinder:Landroid/os/IBinder;

    iput-object v1, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mInputManager:Lcom/ime/framework/common/InputManager;

    new-instance v0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1;

    invoke-direct {v0, p0}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1;-><init>(Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;)V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mUpdateTimeTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;)Lcom/ime/framework/dbmanager/DbSettings;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->bNeedCheckNewVersion(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mUpdateTimeTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bNeedCheckNewVersion(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->getCurrentHotwordtimeStamp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v6, "DbAutoUpdateService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bNeedCheckNewVersion lastUpdateTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ret : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v6, 0x5265c00

    add-long/2addr v6, v4

    cmp-long v6, v2, v6

    if-ltz v6, :cond_3

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    iget-boolean v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DbAutoUpdateService"

    const-string v1, "DbUpdateService onBind.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mInputManager:Lcom/ime/framework/common/InputManager;

    new-instance v0, Lcom/ime/framework/dbmanager/DbSettings;

    invoke-virtual {p0}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ime/framework/dbmanager/DbSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mWLanOnlyFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mWLanOnlyFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.inputmethod.setting.dbmanager.WLAN_ONLY_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$boradCastReceiver;

    invoke-direct {v0, p0}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$boradCastReceiver;-><init>(Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;)V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mBroadCastReceiver:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$boradCastReceiver;

    iget-object v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mBroadCastReceiver:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$boradCastReceiver;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mWLanOnlyFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DbAutoUpdateService"

    const-string v1, "service created "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DbAutoUpdateService"

    const-string v1, "service stoped "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->stopAutoUpdate()V

    iget-object v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mBroadCastReceiver:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$boradCastReceiver;

    invoke-virtual {p0, v0}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    iget-boolean v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DbAutoUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->startAutoUpdate()V

    if-eqz p1, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DbAutoUpdateService"

    const-string v1, "DbUpdateService onUnBind.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startAutoUpdate()V
    .locals 4

    iget-object v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopAutoUpdate()V
    .locals 3

    iget-boolean v1, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DbAutoUpdateService"

    const-string v2, "autoUpdate Stop "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->getInstance()Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->stopDownload()V

    :cond_1
    return-void
.end method
