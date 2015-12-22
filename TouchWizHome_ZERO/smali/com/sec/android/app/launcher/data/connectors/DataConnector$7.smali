.class Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;
.super Ljava/lang/Object;
.source "DataConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/data/connectors/DataConnector;->notifyAndDeleteItem(Lcom/sec/daliviews/views/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

.field final synthetic val$item:Lcom/sec/daliviews/views/Item;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/data/connectors/DataConnector;Lcom/sec/daliviews/views/Item;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    iput-object p2, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;->val$item:Lcom/sec/daliviews/views/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    iget-object v2, v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    iget-object v3, v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    iget-object v2, v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/DataManager$IDataListener;

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;->val$item:Lcom/sec/daliviews/views/Item;

    invoke-interface {v1, v2}, Lcom/sec/android/app/launcher/data/DataManager$IDataListener;->isInWatchList(Lcom/sec/daliviews/views/Item;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;->val$item:Lcom/sec/daliviews/views/Item;

    invoke-interface {v1, v2}, Lcom/sec/android/app/launcher/data/DataManager$IDataListener;->onItemDeleted(Lcom/sec/daliviews/views/Item;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    iget-object v2, v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoaderHandler:Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    iget-object v2, v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoaderHandler:Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;

    new-instance v3, Lcom/sec/android/app/launcher/data/connectors/DataConnector$7$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$7$1;-><init>(Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;->val$item:Lcom/sec/daliviews/views/Item;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->removeItemFromCache(Lcom/sec/daliviews/views/Item;)V

    goto :goto_1
.end method
