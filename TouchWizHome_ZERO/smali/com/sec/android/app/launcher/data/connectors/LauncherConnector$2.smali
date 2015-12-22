.class Lcom/sec/android/app/launcher/data/connectors/LauncherConnector$2;
.super Ljava/lang/Object;
.source "LauncherConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->notifyAndDeleteItem(Lcom/sec/daliviews/views/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;

.field final synthetic val$item:Lcom/sec/daliviews/views/Item;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;Lcom/sec/daliviews/views/Item;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector$2;->this$0:Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;

    iput-object p2, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector$2;->val$item:Lcom/sec/daliviews/views/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector$2;->val$item:Lcom/sec/daliviews/views/Item;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector$2;->this$0:Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;

    iget-object v2, v2, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector$2;->this$0:Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;

    iget-object v3, v2, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector$2;->this$0:Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;

    iget-object v2, v2, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mListeners:Ljava/util/HashSet;

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

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector$2;->val$item:Lcom/sec/daliviews/views/Item;

    invoke-interface {v1, v2}, Lcom/sec/android/app/launcher/data/DataManager$IDataListener;->isInWatchList(Lcom/sec/daliviews/views/Item;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector$2;->val$item:Lcom/sec/daliviews/views/Item;

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
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector$2;->val$item:Lcom/sec/daliviews/views/Item;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->destroy()V

    :cond_3
    return-void
.end method
