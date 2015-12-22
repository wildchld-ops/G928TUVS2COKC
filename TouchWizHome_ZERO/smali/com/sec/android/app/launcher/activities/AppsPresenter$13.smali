.class Lcom/sec/android/app/launcher/activities/AppsPresenter$13;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/PagedListAdapter$OnItemsReorderedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;->setupAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$13;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemsReordered([Lcom/sec/daliviews/dragAndDrop/DisplacedItem;)V
    .locals 8

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    array-length v4, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v1, v0, v2

    if-nez v1, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mItem:Lcom/sec/daliviews/views/Item;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/views/Item;->updatePositions(Lcom/sec/daliviews/dragAndDrop/DisplacedItem;)V

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OnItemsReordered:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$13;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$13;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v6

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/launcher/data/DataManager;->updateDisplacedItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$13;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setNeedReorder(Z)V

    goto :goto_0
.end method
