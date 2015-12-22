.class public Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;
.super Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;
.source "AppsFolderPanelPresenter.java"


# instance fields
.field private mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

.field private mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;-><init>(Lcom/sec/android/app/launcher/activities/PresenterBase;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    new-instance v1, Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;-><init>(Lcom/sec/android/app/launcher/activities/FolderPresenterBase;Lcom/sec/daliviews/views/ContainerView;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    return-void
.end method


# virtual methods
.method public addChildViewOfRoot()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->addChildViewOfRoot(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPagedAdapterView()Lcom/sec/daliviews/views/PagedAdapterView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->addChildViewOfRoot(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsPageIndicator()Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->addChildViewOfRoot(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsTitleBar()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->addChildViewOfRoot(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    return-void
.end method

.method public closeFolderPanel()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->closeFolderPanel(Z)V

    return-void
.end method

.method public closeFolderPanel(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->hideFolderPanelViews(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->setFolderItemDragMode(Z)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->destroy()V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->destroy()V

    return-void
.end method

.method public onDragEnd()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->onDragEnd()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->closeFolderPanel(Z)V

    return-void
.end method

.method public onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->isFolderItemDragMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_0
.end method

.method public onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->isListMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->checkOpenFolderPanel(Lcom/sec/daliviews/views/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->openFolderPanel()V

    :cond_0
    return-void
.end method

.method public onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->isFolderItemDragMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->checkDropView(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->showFolderPanelAfterDrag:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->closeFolderPanel(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    goto :goto_0
.end method

.method public onFolderClosed(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->onFolderClosed()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->onFolderClosed(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    return-void
.end method

.method public openFolderPanel()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->addChildViewOfRoot()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->setupAdapter()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->showFolderPanelViews()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->setFolderItemDragMode(Z)V

    :cond_0
    return-void
.end method

.method public updateOpenFolder(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->updateOpenFolder(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->updateFolderPanelLayout()V

    :cond_0
    return-void
.end method

.method protected updatePositionOnDrop(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/daliviews/views/Item;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->isFolderItemDragMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iget v2, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;->mGridColumns:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->updatePositionOnDrop(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/daliviews/views/Item;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->updatePositionOnDrop(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/daliviews/views/Item;)V

    goto :goto_0
.end method
