.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
.super Ljava/lang/Object;
.source "PowerResetNotiParser.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final notifySensorHubResetObserver(I)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;->updateSensorHubResetStatus(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final parse([BI)I
    .locals 7

    move v2, p2

    array-length v4, p1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_0

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, p1, v2

    const-string v4, "Noti"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0x2b

    if-ne v1, v4, :cond_1

    const-string v4, "================= Noti (Power) ================="

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    const-string v4, "Noti Type : SensorHub Reset"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->notifySensorHubResetObserver(I)V

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->isBootComplete()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.android.contextaware.SENSORHUB_RESET"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public final registerSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final unregisterSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
