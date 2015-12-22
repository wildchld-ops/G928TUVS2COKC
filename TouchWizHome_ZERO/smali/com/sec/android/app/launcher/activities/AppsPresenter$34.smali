.class Lcom/sec/android/app/launcher/activities/AppsPresenter$34;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;->sortAlphabeticalIntegratedAndSaveDB()V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$34;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$34;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/PagedListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/daliviews/views/PagedListAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$34;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListRowCount:I
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$5600(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$34;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListColumnCount:I
    invoke-static {v8}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$5700(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I

    move-result v8

    mul-int v3, v7, v8

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$34;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v7, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->sortLocale(Ljava/util/List;)V

    :cond_0
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    if-eqz v1, :cond_2

    div-int v4, v0, v3

    rem-int v5, v0, v3

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getCustomContainerId()I

    move-result v7

    if-ne v7, v4, :cond_1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getCustomPos()I

    move-result v7

    if-eq v7, v5, :cond_2

    :cond_1
    invoke-virtual {v1, v5, v4}, Lcom/sec/daliviews/views/Item;->setCustomPosition(II)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$34;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$34;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    invoke-static {v8}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v8

    invoke-virtual {v7, v8, v6, v9}, Lcom/sec/android/app/launcher/data/DataManager;->updateItemsPositions(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;Z)V

    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$34;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    const/high16 v8, 0x3e800000    # 0.25f

    invoke-virtual {v7, v9, v8}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->moveToPage(IF)V

    return-void
.end method
