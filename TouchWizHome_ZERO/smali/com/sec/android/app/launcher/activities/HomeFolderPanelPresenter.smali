.class public Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;
.super Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;
.source "HomeFolderPanelPresenter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderPanelManager"


# instance fields
.field private mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

.field private mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;-><init>(Lcom/sec/android/app/launcher/activities/PresenterBase;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    new-instance v1, Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;-><init>(Lcom/sec/android/app/launcher/activities/FolderPresenterBase;Lcom/sec/daliviews/views/ContainerView;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    return-void
.end method


# virtual methods
.method public addChildViewOfRoot()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->addChildViewOfRoot(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageRootView()Lcom/sec/daliviews/views/PageViewContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->addChildViewOfRoot(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getBottomView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->addChildViewOfRoot(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageIndicator()Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->addChildViewOfRoot(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    return-void
.end method

.method public closeFolderPanel()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->closeFolderPanel(Z)V

    return-void
.end method

.method public closeFolderPanel(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->hideFolderPanelViews(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->setFolderItemDragMode(Z)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->destroy()V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->destroy()V

    return-void
.end method

.method public onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->isFolderItemDragMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_0
.end method

.method public onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->isFolderItemDragMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    goto :goto_0
.end method

.method public onFolderClosed(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->onFolderClosed()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->onFolderClosed(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    return-void
.end method

.method public openFolderPanel()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->addChildViewOfRoot()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->setupAdapter()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->showFolderPanelViews()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->setFolderItemDragMode(Z)V

    :cond_0
    return-void
.end method

.method public switchMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V
    .locals 3

    const-string v0, "FolderPanelManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchMode newMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isFolderItemDragMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->isFolderItemDragMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->isFolderItemDragMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq p2, v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->showFolderPanelAfterDrag:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->closeFolderPanel(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->openFolderPanel()V

    goto :goto_0
.end method

.method public updateOpenFolder(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->updateOpenFolder(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->updateFolderPanelLayout()V

    :cond_0
    return-void
.end method

.method protected updatePositionOnDrop(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/daliviews/views/Item;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->isFolderItemDragMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mFolderManager:Lcom/sec/android/app/launcher/activities/FolderPanelManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iget v2, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;->mGridColumns:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->updatePositionOnDrop(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/daliviews/views/Item;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->updatePositionOnDrop(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/daliviews/views/Item;)V

    goto :goto_0
.end method
