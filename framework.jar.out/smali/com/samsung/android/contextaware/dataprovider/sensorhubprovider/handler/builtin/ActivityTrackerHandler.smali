.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;
.source "ActivityTrackerHandler.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;


# instance fields
.field private mCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final disable()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->mCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "mCurrentPosition is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->mCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->disable()V

    goto :goto_0
.end method

.method protected final enable()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->mCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "mCurrentPosition is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->mCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->enable()V

    goto :goto_0
.end method

.method protected final getModeList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_INTERRUPT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_BATCH:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_TRACKER_EXTANDED_INTERRUPT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected final initialize(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->mCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-direct {v0, p1, p2, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->mCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    :cond_0
    return-void
.end method

.method public final updatePassiveCurrentPosition(I[IDDDDFFI)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "send the passive current position to SensorHub"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-static/range {p1 .. p13}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->sendPositionToSensorHub(I[IDDDDFFI)I

    move-result v0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
