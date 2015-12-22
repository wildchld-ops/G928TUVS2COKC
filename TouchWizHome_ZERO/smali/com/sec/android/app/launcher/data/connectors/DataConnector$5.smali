.class Lcom/sec/android/app/launcher/data/connectors/DataConnector$5;
.super Ljava/lang/Object;
.source "DataConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/data/connectors/DataConnector;->notifyItemsUpdated(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/data/connectors/DataConnector;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$5;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    iput-object p2, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$5;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$5;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    iget-object v6, v5, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mListeners:Ljava/util/HashSet;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$5;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    iget-object v7, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$5;->val$items:Ljava/util/List;

    # invokes: Lcom/sec/android/app/launcher/data/connectors/DataConnector;->sortItemsByListener(Ljava/util/List;)Ljava/util/Map;
    invoke-static {v5, v7}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->access$000(Lcom/sec/android/app/launcher/data/connectors/DataConnector;Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/data/DataManager$IDataListener;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v3, v2}, Lcom/sec/android/app/launcher/data/DataManager$IDataListener;->onItemsUpdated(Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
