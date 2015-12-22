.class Lcom/sec/android/app/launcher/data/connectors/DataConnector$2;
.super Ljava/lang/Object;
.source "DataConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/data/connectors/DataConnector;->notifyItemsAdded(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$2;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    iput-object p2, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$2;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$2;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    iget-object v4, v3, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mListeners:Ljava/util/HashSet;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$2;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    iget-object v3, v3, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/data/DataManager$IDataListener;

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$2;->val$items:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    invoke-interface {v2, v3}, Lcom/sec/android/app/launcher/data/DataManager$IDataListener;->isInWatchList(Lcom/sec/daliviews/views/Item;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$2;->val$items:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v0}, Lcom/sec/android/app/launcher/data/DataManager$IDataListener;->onItemsAdded(Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
