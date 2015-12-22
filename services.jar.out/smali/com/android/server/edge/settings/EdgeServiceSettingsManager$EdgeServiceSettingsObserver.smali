.class Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;
.super Landroid/database/ContentObserver;
.source "EdgeServiceSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/edge/settings/EdgeServiceSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EdgeServiceSettingsObserver"
.end annotation


# instance fields
.field private mLastEnabled:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/edge/settings/EdgeServiceSettingsManager;


# direct methods
.method constructor <init>(Lcom/android/server/edge/settings/EdgeServiceSettingsManager;Landroid/os/Handler;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->this$0:Lcom/android/server/edge/settings/EdgeServiceSettingsManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->mLastEnabled:Ljava/lang/String;

    # getter for: Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->access$000(Lcom/android/server/edge/settings/EdgeServiceSettingsManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "edge_service_list"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    # getter for: Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->access$000(Lcom/android/server/edge/settings/EdgeServiceSettingsManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private getEdgeServiceList()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->this$0:Lcom/android/server/edge/settings/EdgeServiceSettingsManager;

    # getter for: Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->access$000(Lcom/android/server/edge/settings/EdgeServiceSettingsManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "edge_service_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getEdgeServiceList : list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private stopRequestAllEdgeServicesLocked()V
    .locals 4

    iget-object v3, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->this$0:Lcom/android/server/edge/settings/EdgeServiceSettingsManager;

    # getter for: Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mEdgeServiceInfos:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->access$200(Lcom/android/server/edge/settings/EdgeServiceSettingsManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;->running:Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateEdgeServiceList()V
    .locals 12

    const/4 v11, 0x1

    iget-object v6, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->this$0:Lcom/android/server/edge/settings/EdgeServiceSettingsManager;

    # getter for: Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mEdgeServiceInfos:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->access$200(Lcom/android/server/edge/settings/EdgeServiceSettingsManager;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->stopRequestAllEdgeServicesLocked()V

    iget-object v6, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->mLastEnabled:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->updateEdgeServicesLocked()V

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->mLastEnabled:Ljava/lang/String;

    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    :goto_1
    array-length v6, v4

    if-ge v1, v6, :cond_2

    aget-object v6, v4, v1

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-le v6, v11, :cond_1

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    # getter for: Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updaqteEdgeServiceList : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pos="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->this$0:Lcom/android/server/edge/settings/EdgeServiceSettingsManager;

    # getter for: Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mEdgeServiceInfos:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->access$200(Lcom/android/server/edge/settings/EdgeServiceSettingsManager;)Ljava/util/HashMap;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v8, v5, v8

    new-instance v9, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;

    iget-object v10, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->this$0:Lcom/android/server/edge/settings/EdgeServiceSettingsManager;

    invoke-direct {v9, v10, v2, v3}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;-><init>(Lcom/android/server/edge/settings/EdgeServiceSettingsManager;Landroid/content/ComponentName;I)V

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    # getter for: Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateEdgeServiceList : exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->updateEdgeServicesLocked()V

    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method private updateEdgeServicesLocked()V
    .locals 9

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->this$0:Lcom/android/server/edge/settings/EdgeServiceSettingsManager;

    # getter for: Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mEdgeServiceInfos:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->access$200(Lcom/android/server/edge/settings/EdgeServiceSettingsManager;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->this$0:Lcom/android/server/edge/settings/EdgeServiceSettingsManager;

    # getter for: Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mEdgeServiceInfos:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->access$200(Lcom/android/server/edge/settings/EdgeServiceSettingsManager;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;

    # getter for: Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateEdgeServices Stop: info.name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", info.position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;->position:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", info.running = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v1, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;->running:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", key = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, v1, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;->running:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->this$0:Lcom/android/server/edge/settings/EdgeServiceSettingsManager;

    # getter for: Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mContainer:Lcom/android/server/edge/EdgeServiceRecordContainer;
    invoke-static {v6}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->access$300(Lcom/android/server/edge/settings/EdgeServiceSettingsManager;)Lcom/android/server/edge/EdgeServiceRecordContainer;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;->name:Landroid/content/ComponentName;

    iget v8, v1, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;->position:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/edge/EdgeServiceRecordContainer;->stopEdgeService(Landroid/content/ComponentName;I)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->this$0:Lcom/android/server/edge/settings/EdgeServiceSettingsManager;

    # getter for: Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mEdgeServiceInfos:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->access$200(Lcom/android/server/edge/settings/EdgeServiceSettingsManager;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->this$0:Lcom/android/server/edge/settings/EdgeServiceSettingsManager;

    # getter for: Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mEdgeServiceInfos:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->access$200(Lcom/android/server/edge/settings/EdgeServiceSettingsManager;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->this$0:Lcom/android/server/edge/settings/EdgeServiceSettingsManager;

    # getter for: Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mEdgeServiceInfos:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->access$200(Lcom/android/server/edge/settings/EdgeServiceSettingsManager;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;

    # getter for: Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateEdgeServices Start: info.name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", info.position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;->position:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", info.running = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v1, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;->running:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", key = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, v1, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;->running:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->this$0:Lcom/android/server/edge/settings/EdgeServiceSettingsManager;

    # getter for: Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mContainer:Lcom/android/server/edge/EdgeServiceRecordContainer;
    invoke-static {v6}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->access$300(Lcom/android/server/edge/settings/EdgeServiceSettingsManager;)Lcom/android/server/edge/EdgeServiceRecordContainer;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;->name:Landroid/content/ComponentName;

    iget v8, v1, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;->position:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/edge/EdgeServiceRecordContainer;->startEdgeService(Landroid/content/ComponentName;I)Z

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    # getter for: Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->update()V

    return-void
.end method

.method public update()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->getEdgeServiceList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->mLastEnabled:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->mLastEnabled:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->updateEdgeServiceList()V

    :cond_0
    return-void
.end method
