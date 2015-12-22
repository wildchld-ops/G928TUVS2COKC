.class public Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;
.super Lcom/sec/android/app/launcher/activities/FolderPresenterBase;
.source "AppsFolderPresenter.java"


# instance fields
.field private APPS_FOLDER_PREF:Ljava/lang/String;

.field private mIsRemovefromFolder:Z

.field private mIsReplaceUpdating:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/activities/PresenterBase;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;-><init>(Lcom/sec/android/app/launcher/activities/PresenterBase;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    const-string v0, "apps_folder_pref"

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->APPS_FOLDER_PREF:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mIsReplaceUpdating:Z

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mIsRemovefromFolder:Z

    return-void
.end method

.method private preSelectItemsInFolder(Lcom/sec/android/app/launcher/data/FolderItem;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/launcher/data/FolderItem;",
            "Ljava/util/Set",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/views/HomeItemView;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public closeFolderPanel()V
    .locals 0

    return-void
.end method

.method public displayItemsInAlphabeticalOrder()V
    .locals 6

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter;->APPS_COMPARATOR:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsAlphabeticalComparator;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsAlphabeticalComparator;->updateCollator()V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mDbIdFolderMap:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mDbIdFolderMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mDbIdFolderMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ListAdapter;->setSortOrder(I)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    check-cast v4, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setFolderDragEventInterest(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    goto :goto_0
.end method

.method public displayItemsInCustomOrder()V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mDbIdFolderMap:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mDbIdFolderMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mDbIdFolderMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/Item;

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ListAdapter;->setSortOrder(I)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    check-cast v4, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setFolderDragEventInterest(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    goto :goto_0
.end method

.method protected getFolderEditor()Lcom/sec/android/app/launcher/activities/FolderEditorBase;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mFolderEditor:Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    if-nez v0, :cond_0

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    check-cast v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;-><init>(Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mFolderEditor:Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mFolderEditor:Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    return-object v0
.end method

.method protected getFolderFilter(Lcom/sec/android/app/launcher/data/FolderItem;)Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;
    .locals 1

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter$1;-><init>(Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;Lcom/sec/android/app/launcher/data/FolderItem;)V

    return-object v0
.end method

.method protected getFolderPreferenceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->APPS_FOLDER_PREF:Ljava/lang/String;

    return-object v0
.end method

.method protected getItemContainerId(Lcom/sec/daliviews/views/Item;)I
    .locals 1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCustomContainerId()I

    move-result v0

    return v0
.end method

.method public moveToPage(Z)V
    .locals 8

    const-wide/16 v6, 0x1f4

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    check-cast v4, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    check-cast v4, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v1

    move v2, v0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    if-lt v2, v4, :cond_0

    add-int/lit8 v3, v2, -0x1

    new-instance v4, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter$3;

    invoke-direct {v4, p0, v3}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter$3;-><init>(Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;I)V

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mMoveToPageRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mMoveToPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int/lit8 v4, v1, -0x2

    if-gt v2, v4, :cond_0

    add-int/lit8 v3, v2, 0x1

    new-instance v4, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter$4;

    invoke-direct {v4, p0, v3}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter$4;-><init>(Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;I)V

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mMoveToPageRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mMoveToPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    check-cast v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListMode()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->SELECT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mFolderEditor:Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mFolderEditor:Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->onBackPressed()Z

    move-result v1

    goto :goto_0
.end method

.method public onHomePressed()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->onHomePressed()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mFolderEditor:Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mFolderEditor:Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->onHomePressed()Z

    :cond_0
    return-void
.end method

.method public onItemAdded(Lcom/sec/daliviews/views/Item;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    check-cast v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCustomPos()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateItemCustomPosition(Lcom/sec/daliviews/views/Item;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->onItemAdded(Lcom/sec/daliviews/views/Item;)V

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onFolderItemAdded(Lcom/sec/android/app/launcher/data/FolderItem;)V

    :cond_1
    return-void
.end method

.method public onItemDeleted(Lcom/sec/daliviews/views/Item;)V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->onItemDeleted(Lcom/sec/daliviews/views/Item;)V

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/launcher/data/FolderItem;->closeFolder(Z)V

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mIsRemovefromFolder:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    const-string v2, "APFO"

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getFolderItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    check-cast v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    check-cast p1, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onFolderItemDeleted(Lcom/sec/android/app/launcher/data/FolderItem;)V

    :cond_1
    iput-boolean v7, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mIsReplaceUpdating:Z

    iput-boolean v7, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mIsRemovefromFolder:Z

    return-void
.end method

.method public onItemLongClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    check-cast v3, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListMode()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v3

    sget-object v6, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v3, v6, :cond_3

    move-object/from16 v0, p3

    instance-of v3, v0, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/AdapterView;->setCanAcceptDrop(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    check-cast v3, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setRootViewSensitivity(Z)V

    invoke-virtual/range {p3 .. p3}, Lcom/sec/daliviews/views/Item;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/views/Item;

    const/4 v3, -0x1

    invoke-virtual {v5, v3}, Lcom/sec/daliviews/views/Item;->setCellX(I)V

    const/4 v3, -0x1

    invoke-virtual {v5, v3}, Lcom/sec/daliviews/views/Item;->setCellY(I)V

    const/4 v3, -0x1

    invoke-virtual {v5, v3}, Lcom/sec/daliviews/views/Item;->setDbId(I)V

    invoke-virtual {v5}, Lcom/sec/daliviews/views/Item;->onCreateItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/launcher/views/HomeItemView;

    instance-of v3, v5, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v3, :cond_0

    move-object v0, v5

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->getCurrentMode()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/sec/android/app/launcher/views/HomeItemView;->changeMode(I)V

    :cond_0
    invoke-virtual {v5, v4}, Lcom/sec/daliviews/views/Item;->linkItemView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/sec/daliviews/views/NativeViewBase;->getWidth()I

    move-result v6

    int-to-float v7, v6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/daliviews/views/NativeViewBase;->getHeight()I

    move-result v6

    int-to-float v8, v6

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v6, p4

    invoke-virtual/range {v3 .. v10}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;FFII)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getActiveFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v16

    if-eqz v16, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->closeOpenFolder()Z

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setFlagToMoveToFavoritePage()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v3, 0x7f0a004a

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v6, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v14

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    new-instance v6, Lcom/sec/android/app/launcher/utils/FadeDuration;

    invoke-direct {v6, v14}, Lcom/sec/android/app/launcher/utils/FadeDuration;-><init>(F)V

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showHomeFragmentAnimated(Lcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    check-cast v3, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->storeCurrentPage()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    check-cast v3, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListMode()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v3

    sget-object v6, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v3, v6, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/sec/daliviews/views/Item;->getMovability()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v3, :cond_4

    move-object/from16 v3, p2

    check-cast v3, Lcom/sec/android/app/launcher/views/HomeItemView;

    const v6, 0x7f0b00db

    invoke-virtual {v3, v6}, Lcom/sec/android/app/launcher/views/HomeItemView;->changeMode(I)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/daliviews/views/NativeViewBase;->getWidth()I

    move-result v3

    int-to-float v10, v3

    invoke-virtual/range {p2 .. p2}, Lcom/sec/daliviews/views/NativeViewBase;->getHeight()I

    move-result v3

    int-to-float v11, v3

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v6 .. v13}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;FFII)V

    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v0, v1, v2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method public onItemPostAdded(Lcom/sec/daliviews/views/Item;)V
    .locals 8

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v1, :cond_1

    move-object v7, p1

    check-cast v7, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mCurFolderDbId:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mIsReplaceUpdating:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    const-string v2, "APFO"

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getFolderItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    check-cast v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->isFirstCreateFolder(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/data/FolderItem;)Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mCurFolderDbId:I

    :cond_1
    return-void
.end method

.method protected onItemsRemovedFromFolder(Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 10

    const/4 v9, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v9, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->onReplaceFolderToItem(Lcom/sec/android/app/launcher/data/FolderItem;)V

    goto :goto_0

    :cond_2
    new-instance v6, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter$2;-><init>(Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;)V

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v5, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/Item;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getCustomPos()I

    move-result v6

    if-eq v5, v6, :cond_3

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/Item;->setCustomPos(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v3, v8}, Lcom/sec/android/app/launcher/data/DataManager;->updateItemsPositions(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;Z)V

    iput-boolean v9, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mIsRemovefromFolder:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    check-cast v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListType()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-static {v6, v7}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

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

    move-result v3

    if-ne v3, v7, :cond_2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/Item;->setContainerType(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/Item;->setContainerId(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getCustomContainerId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/Item;->setCustomContainerId(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getPos()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/Item;->setPos(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getCustomPos()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/Item;->setCustomPos(I)V

    invoke-virtual {p1, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->removeItem(Lcom/sec/daliviews/views/Item;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    check-cast v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, v6}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->onFolderClosed(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "AppsFolderPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item view is null. create view again."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->createItemView()Lcom/sec/daliviews/views/NativeViewBase;

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/views/ListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->addItem(Lcom/sec/daliviews/views/Item;)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/daliviews/views/ListAdapter;->removeItem(Lcom/sec/daliviews/views/Item;)Z

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v3, v4, v1}, Lcom/sec/android/app/launcher/data/DataManager;->updateItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)I

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v3, v4, p1}, Lcom/sec/android/app/launcher/data/DataManager;->deleteItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)V

    iput-boolean v7, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mIsReplaceUpdating:Z

    instance-of v3, v1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/views/HomeItemView;

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/app/launcher/views/HomeItemView;->setTitleAttribute(II)V

    :cond_2
    return-void
.end method

.method public openFolderInSelectionMode(Lcom/sec/android/app/launcher/data/FolderItem;Ljava/util/Set;Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/launcher/data/FolderItem;",
            "Ljava/util/Set",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->SELECT:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    const/4 v1, 0x1

    invoke-super {p0, p1, v0, v1, p3}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->openFolder(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;ZLandroid/graphics/Rect;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->preSelectItemsInFolder(Lcom/sec/android/app/launcher/data/FolderItem;Ljava/util/Set;)V

    return-void
.end method

.method public openFolderPanel()V
    .locals 0

    return-void
.end method

.method protected updatePositionOnDrop(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/daliviews/views/Item;)V
    .locals 7

    move-object v1, p2

    check-cast v1, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemCount()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/sec/android/app/launcher/data/HomeItem;->setCustomPosition(II)V

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/android/app/launcher/data/HomeItem;->setContainerType(I)V

    const v4, 0x7f0b00e0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/launcher/data/HomeItem;->setCurrentMode(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Lcom/sec/android/app/launcher/data/DataManager;->updateItemsPositions(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;Z)V

    return-void
.end method

.method protected updatePositionOnItemDisplaced(Lcom/sec/android/app/launcher/data/LauncherItem;Lcom/sec/daliviews/dragAndDrop/DisplacedItem;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    check-cast v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListOrder()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->CUSTOMISABLE:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewCellX:I

    iget v2, p2, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewCellY:I

    const v3, 0x7f0c0027

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p2, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerDbId:I

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/launcher/data/LauncherItem;->setCustomPosition(II)V

    :cond_0
    return-void
.end method
