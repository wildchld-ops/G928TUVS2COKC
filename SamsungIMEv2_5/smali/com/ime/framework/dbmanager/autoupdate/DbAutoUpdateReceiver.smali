.class public Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DbAutoUpdateReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DbAutoUpdateReceiver"

.field public static final mAutoUpdateExtra:Ljava/lang/String; = "com.sec.android.inputmethod.dbupdate.auto"


# instance fields
.field private DEBUG:Z

.field private mInputManager:Lcom/ime/framework/common/InputManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateReceiver;->DEBUG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateReceiver;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-void
.end method

.method private autoUpdateServiceHandler(Landroid/content/Context;Z)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.sec.android.inputmethod.dbupdate.auto"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    const-string v3, "DbAutoUpdateReceiver"

    const-string v4, "onReceive : intent is null, return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateReceiver;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateReceiver;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateReceiver;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateReceiver;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isSogouHotwordUpdateSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    const/4 v0, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    :cond_4
    iget-boolean v3, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateReceiver;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "DbAutoUpdateReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifi network connected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateReceiver;->autoUpdateServiceHandler(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sec.android.inputmethod.lifecircle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "lifecircleinfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "DbAutoUpdateReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SamsungChineseIME status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "onDestroy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateReceiver;->autoUpdateServiceHandler(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "onCreate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isWIFIorETHERNETConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateReceiver;->autoUpdateServiceHandler(Landroid/content/Context;Z)V

    goto/16 :goto_0
.end method
