.class Lcom/sec/android/app/launcher/activities/AppsPresenter$33;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;->sortAlphabeticalAndSaveDB()V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$33;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$33;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;
    invoke-static {v10}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$4000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getFolderItems()Ljava/util/List;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$33;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;
    invoke-static {v10}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2400(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Ljava/util/Set;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$33;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListRowCount:I
    invoke-static {v10}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$5600(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$33;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListColumnCount:I
    invoke-static {v11}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$5700(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I

    move-result v11

    mul-int v5, v10, v11

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$33;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v10, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->sortLocale(Ljava/util/List;)V

    :cond_0
    if-eqz v1, :cond_1

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$33;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v10, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->sortLocale(Ljava/util/List;)V

    :cond_1
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/Item;

    if-eqz v4, :cond_3

    div-int v6, v3, v5

    rem-int v7, v3, v5

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getCustomContainerId()I

    move-result v10

    if-ne v10, v6, :cond_2

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getCustomPos()I

    move-result v10

    if-eq v10, v7, :cond_3

    :cond_2
    invoke-virtual {v4, v7, v6}, Lcom/sec/daliviews/views/Item;->setCustomPosition(II)V

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move v8, v3

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v10, v8

    if-ge v3, v10, :cond_7

    sub-int v0, v3, v8

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/Item;

    if-eqz v4, :cond_6

    div-int v6, v3, v5

    rem-int v7, v3, v5

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getCustomContainerId()I

    move-result v10

    if-ne v10, v6, :cond_5

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getCustomPos()I

    move-result v10

    if-eq v10, v7, :cond_6

    :cond_5
    invoke-virtual {v4, v7, v6}, Lcom/sec/daliviews/views/Item;->setCustomPosition(II)V

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$33;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;
    invoke-static {v10}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$33;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    invoke-static {v11}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v9, v12}, Lcom/sec/android/app/launcher/data/DataManager;->updateItemsPositions(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;Z)V

    :cond_8
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$33;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    const/4 v11, 0x0

    const/high16 v12, 0x3e800000    # 0.25f

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->moveToPage(IF)V

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "sort AtoZ completed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
