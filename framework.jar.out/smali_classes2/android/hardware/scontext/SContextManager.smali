.class public Landroid/hardware/scontext/SContextManager;
.super Ljava/lang/Object;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextManager"


# instance fields
.field private mAvailableServiceMap:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsHistoryData:Z

.field private mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;

.field private mSContextService:Landroid/hardware/scontext/ISContextService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryData:Z

    iput-object v1, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    const-string/jumbo v0, "scontext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/scontext/ISContextService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    return-void
.end method

.method static synthetic access$200(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->checkHistoryMode(Landroid/hardware/scontext/SContextEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/hardware/scontext/SContextManager;)Landroid/hardware/scontext/SContextListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method private addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;
    .locals 1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Landroid/hardware/scontext/SContextAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Landroid/hardware/scontext/SContextEnvironmentAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEnvironmentAttribute;-><init>()V

    goto :goto_0

    :sswitch_4
    new-instance v0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;-><init>()V

    goto :goto_0

    :sswitch_5
    new-instance v0, Landroid/hardware/scontext/SContextShakeMotionAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextShakeMotionAttribute;-><init>()V

    goto :goto_0

    :sswitch_6
    new-instance v0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;-><init>()V

    goto :goto_0

    :sswitch_7
    new-instance v0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;-><init>()V

    goto :goto_0

    :sswitch_8
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;-><init>()V

    goto :goto_0

    :sswitch_9
    new-instance v0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;-><init>()V

    goto :goto_0

    :sswitch_a
    new-instance v0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;-><init>()V

    goto :goto_0

    :sswitch_b
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;-><init>()V

    goto :goto_0

    :sswitch_c
    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>()V

    goto :goto_0

    :sswitch_d
    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>()V

    goto :goto_0

    :sswitch_e
    new-instance v0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;-><init>()V

    goto :goto_0

    :sswitch_f
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>()V

    goto :goto_0

    :sswitch_10
    new-instance v0, Landroid/hardware/scontext/SContextExerciseAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextExerciseAttribute;-><init>()V

    goto :goto_0

    :sswitch_11
    new-instance v0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;-><init>()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0x8 -> :sswitch_3
        0x9 -> :sswitch_4
        0xc -> :sswitch_5
        0x17 -> :sswitch_6
        0x18 -> :sswitch_7
        0x1b -> :sswitch_8
        0x1c -> :sswitch_9
        0x1d -> :sswitch_a
        0x1e -> :sswitch_b
        0x21 -> :sswitch_c
        0x23 -> :sswitch_d
        0x24 -> :sswitch_e
        0x27 -> :sswitch_f
        0x28 -> :sswitch_10
        0x2f -> :sswitch_11
    .end sparse-switch
.end method

.method private checkHistoryMode(Landroid/hardware/scontext/SContextEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v5, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v5}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    return v2

    :sswitch_0
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getPedometerContext()Landroid/hardware/scontext/SContextPedometer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextPedometer;->getMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getStepLevelMonitorContext()Landroid/hardware/scontext/SContextStepLevelMonitor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/scontext/SContextStepLevelMonitor;->getMode()I

    move-result v5

    if-ne v5, v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getActivityBatchContext()Landroid/hardware/scontext/SContextActivityBatch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextActivityBatch;->getMode()I

    move-result v5

    if-ne v5, v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x1a -> :sswitch_2
        0x21 -> :sswitch_1
    .end sparse-switch
.end method

.method private checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v2, "SContextManager"

    const-string v3, "Listener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method private getAvailableServiceMap()Ljava/util/HashMap;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v3}, Landroid/hardware/scontext/ISContextService;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashMap;

    move-object v2, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v3, "SContextManager"

    const-string v4, "RemoteException in getAvailableServiceMap: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .locals 4

    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method public changeParameters(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1

    :cond_1
    const/16 v2, 0x21

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>(I)V

    goto :goto_0
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(IDD)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    return v6
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    const/4 v1, 0x1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    return v6
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 5

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    const/16 v3, 0x21

    if-eq p2, v3, :cond_2

    const/16 v3, 0x23

    if-eq p2, v3, :cond_2

    const/16 v3, 0x27

    if-eq p2, v3, :cond_2

    const/16 v3, 0x2f

    if-ne p2, v3, :cond_0

    :cond_2
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v3, "SContextManager"

    const-string v4, "  .changeParameters : SContextListener is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2, p3}, Landroid/hardware/scontext/ISContextService;->changeParameters(Landroid/os/IBinder;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .changeParameters : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SContextManager"

    const-string v3, "RemoteException in changeParameters: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getFeatureLevel(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initializeSContextService(Landroid/hardware/scontext/SContextListener;I)V
    .locals 5

    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v2, "SContextManager"

    const-string v3, "  .initializeSContextService : SContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->initializeService(Landroid/os/IBinder;I)V

    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .initializeSContextService : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SContextManager"

    const-string v3, "RemoteException in initializeSContextService: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isAvailableService(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextManager;->getAvailableServiceMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x2f

    if-ne p1, v1, :cond_1

    const-string v1, "BCM4773_SLOCATION_CORE"

    const-string/jumbo v2, "ro.gps.chip.vendor.slocation"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextManager;->addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    new-instance v0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;-><init>(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1

    :cond_1
    const/4 v2, 0x6

    if-ne p2, v2, :cond_2

    new-instance v0, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>(I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x10

    if-ne p2, v2, :cond_3

    new-instance v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;-><init>(I)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x21

    if-ne p2, v2, :cond_4

    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>(I)V

    goto :goto_0

    :cond_4
    const/16 v2, 0x24

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;-><init>(I)V

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(IDD)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    return v6
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;III)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v2, 0x8

    if-ne p2, v2, :cond_1

    new-instance v0, Landroid/hardware/scontext/SContextEnvironmentAttribute;

    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextEnvironmentAttribute;-><init>(II)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1

    :cond_1
    const/16 v2, 0xc

    if-ne p2, v2, :cond_2

    new-instance v0, Landroid/hardware/scontext/SContextShakeMotionAttribute;

    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextShakeMotionAttribute;-><init>(II)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x1d

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;

    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;-><init>(II)V

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIDI)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne p2, v2, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move v6, p7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;-><init>(IIDI)V

    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIII)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v4, 0x5dc

    const/4 v0, 0x0

    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    move v1, p3

    move v2, p4

    move v3, p5

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    return v6
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v2, 0x1c

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;-><init>(IIII)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIIII)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-ne p2, v1, :cond_1

    new-instance v0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;-><init>(IIIII)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    return v6

    :cond_1
    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIZ)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v2, 0x17

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;

    invoke-direct {v0, p3, p4, p5}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;-><init>(IIZ)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 6

    const/4 v1, 0x0

    const/16 v3, 0x30

    if-ne p2, v3, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/hardware/scontext/SContextManager;->setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    const/4 v3, 0x0

    iget-boolean v4, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryData:Z

    invoke-direct {v2, p0, p1, v3, v4}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v3, v2, p2, p3}, Landroid/hardware/scontext/ISContextService;->registerCallback(Landroid/os/IBinder;ILandroid/hardware/scontext/SContextAttribute;)V

    const-string v3, "SContextManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .registerListener : listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "SContextManager"

    const-string v4, "RemoteException in registerListener: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;Landroid/os/Looper;)Z
    .locals 5

    const/4 v2, 0x0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    iget-boolean v2, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryData:Z

    invoke-direct {v1, p0, p1, p4, v2}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V

    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2, p3}, Landroid/hardware/scontext/ISContextService;->registerCallback(Landroid/os/IBinder;ILandroid/hardware/scontext/SContextAttribute;)V

    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .registerListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SContextManager"

    const-string v3, "RemoteException in registerListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/os/Looper;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextManager;->addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;Landroid/os/Looper;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I[I)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v2, 0x1b

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;

    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;-><init>([I)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I[II)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v2, 0x1e

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;

    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;-><init>([II)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public requestHistoryData(Landroid/hardware/scontext/SContextListener;I)V
    .locals 6

    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    const/16 v3, 0x21

    if-eq p2, v3, :cond_2

    const/16 v3, 0x1a

    if-eq p2, v3, :cond_2

    const-string v3, "SContextManager"

    const-string v4, "  .requestHistoryData : This service is not supported!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v2

    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    if-nez v2, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryData:Z

    invoke-virtual {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v2

    :cond_3
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v3, v2, p2}, Landroid/hardware/scontext/ISContextService;->requestHistoryData(Landroid/os/IBinder;I)V

    const-string v3, "SContextManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .requestHistoryData : listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "SContextManager"

    const-string v4, "RemoteException in requestHistoryData: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestToUpdate(Landroid/hardware/scontext/SContextListener;I)V
    .locals 5

    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/16 v2, 0x19

    if-eq p2, v2, :cond_1

    const/16 v2, 0x1a

    if-eq p2, v2, :cond_1

    const/16 v2, 0x1d

    if-eq p2, v2, :cond_1

    const/16 v2, 0x28

    if-eq p2, v2, :cond_1

    const-string v2, "SContextManager"

    const-string v3, "  .requestToUpdate : This service is not supported!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v2, "SContextManager"

    const-string v3, "  .requestToUpdate : SContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->requestToUpdate(Landroid/os/IBinder;I)V

    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .requestToUpdate : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SContextManager"

    const-string v3, "RemoteException in requestToUpdate: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 11

    const/16 v9, 0x30

    const/4 v5, 0x0

    iget-object v8, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    if-eqz v8, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v6, v5

    :goto_0
    return v6

    :cond_1
    const/4 v0, 0x0

    if-ne p1, v9, :cond_2

    const/4 v8, 0x3

    invoke-virtual {p2, v8}, Landroid/hardware/scontext/SContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    move v6, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p1}, Landroid/hardware/scontext/SContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_3
    sparse-switch p1, :sswitch_data_0

    :cond_4
    :goto_2
    move v6, v5

    goto :goto_0

    :sswitch_0
    :try_start_0
    const-string v8, "net_data"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "gram_data"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "net_data"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    const-string v8, "gram_data"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v4, :cond_5

    if-nez v2, :cond_6

    :cond_5
    move v6, v5

    goto :goto_0

    :cond_6
    iget-object v8, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const/4 v9, 0x1

    invoke-interface {v8, v9, v4}, Landroid/hardware/scontext/ISContextService;->setReferenceData(I[B)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const/4 v9, 0x2

    invoke-interface {v8, v9, v2}, Landroid/hardware/scontext/ISContextService;->setReferenceData(I[B)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_7
    move v6, v5

    goto :goto_0

    :sswitch_1
    const-string v8, "luminance_config_data"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "luminance_config_data"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_8

    move v6, v5

    goto :goto_0

    :cond_8
    iget-object v8, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const/4 v9, 0x0

    invoke-interface {v8, v9, v3}, Landroid/hardware/scontext/ISContextService;->setReferenceData(I[B)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_9
    move v6, v5

    goto :goto_0

    :sswitch_2
    const-string/jumbo v8, "step_count"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    new-array v7, v8, [B

    const/4 v8, 0x0

    const-string/jumbo v9, "step_count"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    const-string v8, "SContextManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sysfs data : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v10, v7, v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const/16 v9, 0x30

    invoke-interface {v8, v9, v7}, Landroid/hardware/scontext/ISContextService;->setReferenceData(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_4

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_a
    move v6, v5

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v8, "SContextManager"

    const-string v9, "RemoteException in initializeSContextService: "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x27 -> :sswitch_1
        0x30 -> :sswitch_2
    .end sparse-switch
.end method

.method public setReferenceData(I[B[B)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v2, v1

    :goto_0
    return v2

    :cond_1
    const/16 v3, 0x10

    if-ne p1, v3, :cond_2

    new-instance v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;

    invoke-direct {v0, p2, p3}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;-><init>([B[B)V

    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    move v2, v1

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;)V
    .locals 7

    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v4, v2, v3}, Landroid/hardware/scontext/ISContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const-string v4, "SContextManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .unregisterListener : listener = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "SContextManager"

    const-string v5, "RemoteException in unregisterListener: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;I)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "SContextManager"

    const-string v3, "  .unregisterListener : SContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/16 v2, 0x21

    if-eq p2, v2, :cond_2

    const/16 v2, 0x1a

    if-ne p2, v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryData:Z

    if-eqz v2, :cond_3

    const-string v2, "SContextManager"

    const-string v3, "Data is received so remove listener related HistoryData : flag is initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryData:Z

    :cond_3
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .unregisterListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SContextManager"

    const-string v3, "RemoteException in unregisterListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
