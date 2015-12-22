.class public Lcom/sec/android/app/launcher/activities/HomeFolderEditor;
.super Lcom/sec/android/app/launcher/activities/FolderEditorBase;
.source "HomeFolderEditor.java"


# instance fields
.field private final mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;-><init>(Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;)V

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    return-void
.end method

.method private doAddDroppedItemToFolder(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/HomeItem;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mDroppedItemClone:Lcom/sec/android/app/launcher/data/HomeItem;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mDroppedItemClone:Lcom/sec/android/app/launcher/data/HomeItem;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/data/HomeItem;->setDbId(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mDroppedItemClone:Lcom/sec/android/app/launcher/data/HomeItem;

    :cond_0
    invoke-virtual {v0, v3, v3, v3}, Lcom/sec/android/app/launcher/data/HomeItem;->setPosition(III)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/data/FolderItem;->addItem(Lcom/sec/daliviews/views/Item;)V

    :cond_1
    return-void
.end method

.method private switchToHomeFragment()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/utils/FadeDuration;

    const v2, 0x3c23d70a    # 0.01f

    invoke-direct {v1, v2}, Lcom/sec/android/app/launcher/utils/FadeDuration;-><init>(F)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showHomeFragmentAnimated(Lcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    return-void
.end method


# virtual methods
.method protected addDroppedItemToFolder(Z)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->doAddDroppedItemToFolder(Z)V
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
    .locals 7
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

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    rem-int v0, p2, v4

    div-int v1, p2, v4

    invoke-virtual {v3, v0, v1}, Lcom/sec/daliviews/views/Item;->setPosition(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public createFolder(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->correctPos(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)V

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->createFolder(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)I

    move-result v0

    return v0
.end method

.method protected createInitialFolder()Lcom/sec/android/app/launcher/data/FolderItem;
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/data/FolderItem;-><init>()V

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->setDataSourceType(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerType()I

    move-result v1

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->setContainerType(I)V

    :goto_1
    invoke-virtual {v0, v3}, Lcom/sec/android/app/launcher/data/FolderItem;->setSpanX(I)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/launcher/data/FolderItem;->setSpanY(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->findAvailablePosition(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/daliviews/views/Item;Z)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->setContainerType(I)V

    goto :goto_1
.end method

.method protected finalizeFolder()V
    .locals 0

    return-void
.end method

.method protected notifyFolderCreated(Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onFolderCreated(Lcom/sec/android/app/launcher/data/FolderItem;)V

    return-void
.end method

.method public onAppSelectionCancelled()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->onAppSelectionCancelled()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->switchToHomeFragment()V

    return-void
.end method

.method public onAppsSelected(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->onAppsSelected(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->switchToHomeFragment()V

    return-void
.end method

.method protected prepareItemsToAdd(Lcom/sec/android/app/launcher/data/FolderItem;Ljava/util/List;)Ljava/util/List;
    .locals 11
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

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    const/4 v6, 0x0

    :cond_1
    :goto_0
    return-object v6

    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemCount()I

    move-result v8

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0027

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/Item;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/Item;->setDbId(I)V

    rem-int v0, v8, v7

    div-int v1, v8, v7

    const/4 v10, -0x1

    invoke-virtual {v2, v0, v1, v8, v10}, Lcom/sec/daliviews/views/Item;->setPosition(IIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected removeItemsFromOldContainers(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->isClone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->detachItem(Lcom/sec/android/app/launcher/data/HomeItem;)V

    :cond_0
    return-void
.end method

.method protected restoreFolderPosition(Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    const-string v1, "folder_cell_x"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "folder_cell_y"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "folder_pos"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "folder_container_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/launcher/data/FolderItem;->setPosition(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    const-string v1, "folder_container_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->setContainerType(I)V

    return-void
.end method

.method protected saveFolderPosition(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "folder_cell_x"

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getCellX()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "folder_cell_y"

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getCellY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "folder_pos"

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getPos()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "folder_container_id"

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "folder_container_type"

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderEditor;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
