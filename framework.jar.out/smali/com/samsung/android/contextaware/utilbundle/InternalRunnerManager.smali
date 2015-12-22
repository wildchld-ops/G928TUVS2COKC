.class public Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;
.super Ljava/lang/Object;
.source "InternalRunnerManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;
.implements Lcom/samsung/android/contextaware/manager/IApPowerObserver;
.implements Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;


# static fields
.field private static final PHONE_STATE_ACTION:Ljava/lang/String; = "com.samsung.android.contextaware.PHONE_STATE"

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;


# instance fields
.field private final mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->sendEvent(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->instance:Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->instance:Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->instance:Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->instance:Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static sendEvent(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v1, "sending broadcast"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.contextaware.PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "StateBundle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private start(I)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->mContext:Landroid/content/Context;

    const-string v2, "context_aware"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/ContextAwareManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "contextAwareManager is null"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "mContext is null"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startServicesBootUp()V
    .locals 1

    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ABNORMAL_PRESSURE_MONITOR:I

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->start(I)V

    return-void
.end method

.method private startServicesLcdOff()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/contextaware/utilbundle/CaSettingsManager;->PHONE_STATE_SETTING:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v1, Lcom/samsung/android/contextaware/ContextAwareManager;->PHONE_STATE_MONITOR_SERVICE:I

    invoke-direct {p0, v1}, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->start(I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "PhoneState disabled"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stop(I)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->mContext:Landroid/content/Context;

    const-string v2, "context_aware"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/ContextAwareManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "contextAwareManager is null"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopServices()V
    .locals 1

    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->PHONE_STATE_MONITOR_SERVICE:I

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->stop(I)V

    return-void
.end method


# virtual methods
.method public bootCompleted()V
    .locals 0

    return-void
.end method

.method public initializeManager(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->registerApPowerObserver(Lcom/samsung/android/contextaware/manager/IApPowerObserver;)V

    return-void
.end method

.method public initializePreparedSubCollection()V
    .locals 0

    return-void
.end method

.method public terminateManager()V
    .locals 1

    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->PHONE_STATE_MONITOR_SERVICE:I

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/InternalRunnerManager;->stop(I)V

    return-void
.end method

.method public updateApPowerStatus(IJ)V
    .locals 1

    const/16 v0, -0x2e

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, -0x2f

    if-ne p1, v0, :cond_0

    goto :goto_0
.end method
