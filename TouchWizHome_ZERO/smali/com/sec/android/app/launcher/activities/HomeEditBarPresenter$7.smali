.class Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$7;
.super Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;
.source "HomeEditBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setupToHomescreenButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;-><init>(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;II)V

    return-void
.end method


# virtual methods
.method protected canAcceptDrop(Lcom/sec/daliviews/views/Item;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v3, v3, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v3, v3, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->isCheckFingerPosition()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v3, v3, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->isFolderItemDragMode()Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->isWidgetListItem(Lcom/sec/daliviews/views/Item;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->isMenuItem(Lcom/sec/daliviews/views/Item;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method protected handleOnDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mUseNewTrashAnim:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    :cond_0
    return-void
.end method

.method public onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$7;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ContainerView;->setCanAcceptDrop(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$7;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-static {p1, v0}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p2, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setFolderItemDragMode(ZZ)V

    goto :goto_0
.end method

.method public onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->isFolderItemDragMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$7;->mButton:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$7;->mButton:Lcom/sec/daliviews/views/ContainerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
