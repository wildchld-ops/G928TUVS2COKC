.class public Lcom/android/settings/MasterClearModemReset;
.super Landroid/app/Service;
.source "MasterClearModemReset.java"


# instance fields
.field private called:Z

.field private mDelayRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mPhone2:Lcom/samsung/android/sec_platform_library/FactoryPhone;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MasterClearModemReset;->mPhone2:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    new-instance v0, Lcom/android/settings/MasterClearModemReset$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClearModemReset$1;-><init>(Lcom/android/settings/MasterClearModemReset;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearModemReset;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClearModemReset;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/MasterClearModemReset;->sendMasterClearIntent()V

    return-void
.end method

.method private sendMasterClearIntent()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/MasterClearModemReset;->called:Z

    iget-boolean v0, p0, Lcom/android/settings/MasterClearModemReset;->called:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MasterClearModemReset;->called:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClearModemReset;->sendBroadcast(Landroid/content/Intent;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendResetCommandToRIL()V
    .locals 6

    const-string v2, "ril.modem.board"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MasterClearModemReset"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modem name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/sec_platform_library/PacketBuilder;

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sec_platform_library/PacketBuilder;-><init>(BB)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/sec_platform_library/PacketBuilder;->addData(B)Lcom/samsung/android/sec_platform_library/PacketBuilder;

    iget-object v2, p0, Lcom/android/settings/MasterClearModemReset;->mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v1}, Lcom/samsung/android/sec_platform_library/PacketBuilder;->getPacket()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MasterClearModemReset;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3f0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MasterClearModemReset;->stopSelf()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearModemReset;->mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/MasterClearModemReset;->mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 8

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v4, "FACTORY"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/MasterClearModemReset;->stopSelf()V

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v4, 0x103012b

    invoke-direct {v1, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    const v4, 0x1040107

    invoke-virtual {p0, v4}, Lcom/android/settings/MasterClearModemReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    const-string v4, "MasterClearModemReset"

    const-string v5, "Modem reset started..."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/MasterClearModemReset;->sendResetCommandToRIL()V

    new-instance v4, Lcom/android/settings/MasterClearModemReset$2;

    invoke-direct {v4, p0}, Lcom/android/settings/MasterClearModemReset$2;-><init>(Lcom/android/settings/MasterClearModemReset;)V

    iput-object v4, p0, Lcom/android/settings/MasterClearModemReset;->mDelayRunnable:Ljava/lang/Runnable;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v4, p0, Lcom/android/settings/MasterClearModemReset;->mDelayRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x4e20

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
