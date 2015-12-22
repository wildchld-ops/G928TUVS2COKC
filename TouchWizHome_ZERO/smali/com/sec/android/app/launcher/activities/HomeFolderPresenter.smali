.class public Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;
.super Lcom/sec/android/app/launcher/activities/FolderPresenterBase;
.source "HomeFolderPresenter.java"


# instance fields
.field private HOME_FOLDER_PREF:Ljava/lang/String;

.field private mIsReplaceUpdating:Z


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/launcher/activities/PresenterBase;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;-><init>(Lcom/sec/android/app/launcher/activities/PresenterBase;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    const-string v0, "home_folder_pref"

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->HOME_FOLDER_PREF:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mIsReplaceUpdating:Z

    return-void
.end method


# virtual methods
.method public closeFolderPanel()V
    .locals 0

    return-void
.end method

.method protected getFolderEditor()Lcom/sec/android/app/launcher/activities/FolderEditorBase;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mFolderEditor:Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    if-nez v0, :cond_0

    new-instance v1, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    check-cast v0, Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;-><init>(Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mFolderEditor:Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mFolderEditor:Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    return-object v0
.end method

.method protected getFolderFilter(Lcom/sec/android/app/launcher/data/FolderItem;)Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;
    .locals 1

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter$1;-><init>(Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;Lcom/sec/android/app/launcher/data/FolderItem;)V

    return-object v0
.end method

.method protected getFolderPreferenceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->HOME_FOLDER_PREF:Ljava/lang/String;

    return-object v0
.end method

.method protected getItemContainerId(Lcom/sec/daliviews/views/Item;)I
    .locals 1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mFolderEditor:Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mFolderEditor:Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onItemDeleted(Lcom/sec/daliviews/views/Item;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->onItemDeleted(Lcom/sec/daliviews/views/Item;)V

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    const-string v2, "HSFO"

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->getFolderItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mIsReplaceUpdating:Z

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->hasItems()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/data/DataManager;->deleteItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onItemPostAdded(Lcom/sec/daliviews/views/Item;)V
    .locals 7

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/FolderItem;

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mIsReplaceUpdating:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    const-string v2, "HSFO"

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->getFolderItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mCurFolderDbId:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    check-cast v1, Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v2, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->CREATE:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->openFolder(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mCurFolderDbId:I

    :cond_1
    return-void
.end method

.method protected onItemsRemovedFromFolder(Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 11

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->onReplaceFolderToItem(Lcom/sec/android/app/launcher/data/FolderItem;)V

    goto :goto_0

    :cond_2
    new-instance v8, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter$2;

    invoke-direct {v8, p0}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter$2;-><init>(Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;)V

    invoke-static {v3, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/views/Item;

    iget v8, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mGridColumns:I

    rem-int v0, v6, v8

    iget v8, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mGridColumns:I

    div-int v1, v6, v8

    add-int/lit8 v6, v6, 0x1

    move-object v4, v5

    check-cast v4, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/LauncherItem;->getCellX()I

    move-result v8

    if-ne v0, v8, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/LauncherItem;->getCellY()I

    move-result v8

    if-eq v1, v8, :cond_3

    :cond_4
    invoke-virtual {v4, v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->setCellX(I)V

    invoke-virtual {v4, v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->setCellY(I)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v7, v10}, Lcom/sec/android/app/launcher/data/DataManager;->updateItemsPositions(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->refresh()V

    goto :goto_0
.end method

.method protected onReplaceFolderToItem(Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v6}, Lcom/sec/android/app/launcher/data/FolderItem;->detachAllItems(Z)V

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v7, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->getActiveFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, p1, v6}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->onFolderClosed(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    :cond_0
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerType()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/daliviews/views/Item;->setContainerType(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/daliviews/views/Item;->setContainerId(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getCellX()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/daliviews/views/Item;->setCellX(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getCellY()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/daliviews/views/Item;->setCellY(I)V

    invoke-virtual {p1, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->removeItem(Lcom/sec/daliviews/views/Item;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    check-cast v5, Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenter(I)Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v4

    :goto_0
    invoke-virtual {v4, v1}, Lcom/sec/daliviews/views/ListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f040003

    invoke-static {v5, v6}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_1
    invoke-virtual {v4, p1}, Lcom/sec/daliviews/views/ListAdapter;->removeItem(Lcom/sec/daliviews/views/Item;)Z

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    sget-object v6, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v5, v6, v1}, Lcom/sec/android/app/launcher/data/DataManager;->updateItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)I

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v5, v6, p1}, Lcom/sec/android/app/launcher/data/DataManager;->deleteItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)V

    iput-boolean v7, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mIsReplaceUpdating:Z

    :cond_2
    return-void

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    check-cast v5, Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v4

    goto :goto_0
.end method

.method public openFolderPanel()V
    .locals 0

    return-void
.end method

.method protected updatePositionOnDrop(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/daliviews/views/Item;)V
    .locals 6

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemCount()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mGridColumns:I

    rem-int v3, v2, v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/launcher/data/HomeItem;->setCellX(I)V

    iget v3, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mGridColumns:I

    div-int v3, v2, v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/launcher/data/HomeItem;->setCellY(I)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/data/HomeItem;->setPos(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/launcher/data/HomeItem;->setContainerId(I)V

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/launcher/data/HomeItem;->setContainerType(I)V

    const v3, 0x7f0b00e0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/launcher/data/HomeItem;->setCurrentMode(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getDbId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Lcom/sec/android/app/launcher/data/DataManager;->updateItemsPositions(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v3, v4, v0}, Lcom/sec/android/app/launcher/data/DataManager;->insertItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)Landroid/net/Uri;

    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/launcher/data/HomeItem;->setContainerId(I)V

    goto :goto_0
.end method
