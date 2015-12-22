.class public Lcom/sec/android/app/launcher/activities/AppsFolderEditor;
.super Lcom/sec/android/app/launcher/activities/FolderEditorBase;
.source "AppsFolderEditor.java"


# instance fields
.field private final mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;-><init>(Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;)V

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    return-void
.end method

.method private doAddDroppedItemToFolder(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/HomeItem;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mDroppedItemClone:Lcom/sec/android/app/launcher/data/HomeItem;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mDroppedItemClone:Lcom/sec/android/app/launcher/data/HomeItem;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/data/HomeItem;->setDbId(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mDroppedItemClone:Lcom/sec/android/app/launcher/data/HomeItem;

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/data/HomeItem;->setCustomPosition(II)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/data/FolderItem;->addItem(Lcom/sec/daliviews/views/Item;)V

    :cond_1
    return-void
.end method

.method private getFolder(I)Lcom/sec/android/app/launcher/data/FolderItem;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->getDataManager()Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/data/DataManager;->getItemWithDbId(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/FolderItem;

    return-object v0
.end method


# virtual methods
.method protected addDroppedItemToFolder(Z)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->doAddDroppedItemToFolder(Z)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected arrangeItemsInFolder(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/data/HomeItem;->setCustomPos(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method protected createInitialFolder()Lcom/sec/android/app/launcher/data/FolderItem;
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/data/FolderItem;-><init>()V

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->setDataSourceType(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->setContainerType(I)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/data/FolderItem;->setSpanX(I)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/data/FolderItem;->setSpanY(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->setContainerId(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->getCustomContainerId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->setCustomContainerId(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->setPos(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->getCustomPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->setCustomPos(I)V

    goto :goto_0
.end method

.method protected finalizeFolder()V
    .locals 0

    return-void
.end method

.method protected notifyFolderCreated(Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onFolderCreated(Lcom/sec/android/app/launcher/data/FolderItem;)V

    return-void
.end method

.method protected prepareItemsToAdd(Lcom/sec/android/app/launcher/data/FolderItem;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/launcher/data/FolderItem;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 p2, 0x0

    :cond_1
    return-object p2

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemCount()I

    move-result v3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/launcher/data/HomeItem;->setCustomPos(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected removeItemsFromOldContainers(Z)V
    .locals 13

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/data/HomeItem;->isClone()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mNewlySelectedApps:Ljava/util/List;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    return-void

    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/daliviews/views/Item;

    move-object v4, v7

    check-cast v4, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerType()I

    move-result v1

    sget-object v11, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v11

    if-ne v1, v11, :cond_5

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    sget-object v11, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v11

    if-ne v1, v11, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomeItem;->getCustomContainerId()I

    move-result v0

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v11

    if-eq v0, v11, :cond_4

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v0, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_6
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v11, v9, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->detachItems(Ljava/util/List;Z)V

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v6, v11, :cond_2

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->getFolder(I)Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v12

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-virtual {v12, v11}, Lcom/sec/android/app/launcher/data/FolderItem;->detachItems(Ljava/util/List;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method protected restoreFolderPosition(Landroid/os/Bundle;)V
    .locals 4

    const-string v2, "folder_pos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "folder_container_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/app/launcher/data/FolderItem;->setCustomPosition(II)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->setPos(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    const-string v3, "folder_container_type"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/data/FolderItem;->setContainerType(I)V

    return-void
.end method

.method protected saveFolderPosition(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "folder_pos"

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getPos()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "folder_container_id"

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getCustomContainerId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "folder_container_type"

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderEditor;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
