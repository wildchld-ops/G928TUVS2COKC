.class public Lcom/samsung/android/scloud/oem/lib/sync/SyncService;
.super Landroid/app/Service;
.source "SyncService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SCloud-SyncService"

.field private static sSyncAdapter:Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->sSyncAdapterLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->sSyncAdapter:Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 8

    const/4 v7, 0x0

    const-string v3, "SCloud-SyncService"

    const-string v4, "onBind"

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v3, "SCloud-SyncService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "action : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->isSyncable()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "SCloud-SyncService"

    const-string v4, "set sync invisible. from xml config"

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/SCloudUtil;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v3

    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getContentAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lcom/samsung/android/scloud/oem/lib/SCloudUtil;->visibleSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    sget-object v3, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->sSyncAdapter:Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v3

    return-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "SCloud-SyncService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "intent bundle - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getClientMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    :goto_2
    if-nez v1, :cond_1

    const-string v3, "SCloud-SyncService"

    const-string v4, "set sync invisible. from ISCloudSyncClient config"

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/SCloudUtil;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v3

    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getContentAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lcom/samsung/android/scloud/oem/lib/SCloudUtil;->visibleSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;

    invoke-interface {v0, p0}, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;->isSyncable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v1, 0x0

    goto :goto_2
.end method

.method public onCreate()V
    .locals 4

    sget-object v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "SCloud-SyncService"

    const-string v2, "onCreate"

    invoke-static {v0, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->sSyncAdapter:Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncService;->sSyncAdapter:Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
