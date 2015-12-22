.class Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;
.super Ljava/lang/Object;
.source "TopFivePresenter.java"

# interfaces
.implements Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/TopFivePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAnimationsDisabled:Z

.field mFolderAdaptorView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->mFolderAdaptorView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    return-void
.end method

.method private fastCloseFolder(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    const/4 v3, 0x1

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->getFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/data/FolderItem;->setFastClose(Z)V

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/data/FolderItem;->closeFolder(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/data/FolderItem;->setFastClose(Z)V

    goto :goto_0
.end method


# virtual methods
.method public invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDragEnd()V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->mAnimationsDisabled:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mLayout:Lcom/sec/daliviews/layouts/GridLayout;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$1100(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/layouts/GridLayout;->setAnimatePositioning(Z)V

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->mAnimationsDisabled:Z

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$500(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$500(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/daliviews/views/ListAdapter;->getItem(I)Lcom/sec/daliviews/views/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/daliviews/views/NativeViewBase;->onDragEnd()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->mFolderAdaptorView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->mFolderAdaptorView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->swapTopFive(Z)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->mFolderAdaptorView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    :cond_3
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->setLayout()V

    :cond_4
    return-void
.end method

.method public onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$400(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mIsExitFromTopFiveSpace:Z
    invoke-static {v5, v4}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$302(Lcom/sec/android/app/launcher/activities/TopFivePresenter;Z)Z

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDraggedItemParent()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$400(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/views/Adapter;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveMaxCount:I
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$600(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)I

    move-result v6

    if-ne v5, v6, :cond_3

    move v1, v3

    :goto_0
    instance-of v5, v0, Lcom/sec/android/app/launcher/views/FolderAdapterView;

    if-eqz v5, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->fastCloseFolder(Lcom/sec/daliviews/views/NativeViewBase;)V

    check-cast v0, Lcom/sec/android/app/launcher/views/FolderAdapterView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->mFolderAdaptorView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->mFolderAdaptorView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v5, v3}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->swapTopFive(Z)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/dragAndDrop/DragState;->getSwappedOutItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->mFolderAdaptorView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v5, v2}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->swapTopFiveView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/sec/android/app/launcher/data/WidgetItem;

    if-nez v5, :cond_1

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v5, :cond_4

    :cond_1
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->makeSilhouetteVisible(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    instance-of v5, p2, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    if-nez v5, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->makeSilhouetteVisible(Z)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->makeSilhouetteVisible(Z)V

    goto :goto_1
.end method

.method public onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$400(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mIsExitFromTopFiveSpace:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$302(Lcom/sec/android/app/launcher/activities/TopFivePresenter;Z)Z

    instance-of v0, p2, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/sec/android/app/launcher/views/FolderView;

    const v0, 0x7f0b00db

    invoke-virtual {p2, v0}, Lcom/sec/android/app/launcher/views/FolderView;->changeMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->mFolderAdaptorView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->mFolderAdaptorView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->swapTopFive(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->mFolderAdaptorView:Lcom/sec/android/app/launcher/views/FolderAdapterView;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->setLayout()V

    :cond_2
    return-void
.end method

.method public onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$400(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Adapter;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveMaxCount:I
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$600(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)I

    move-result v5

    if-ne v4, v5, :cond_1

    move v1, v2

    :goto_0
    sget-boolean v4, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->sIsTopFiveFolderOpened:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mIsTopFiveItem:Z
    invoke-static {v4, v2}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$202(Lcom/sec/android/app/launcher/activities/TopFivePresenter;Z)Z

    :cond_0
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDraggedItemParent()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    if-eqz v1, :cond_2

    instance-of v4, v0, Lcom/sec/android/app/launcher/views/FolderAdapterView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mLayout:Lcom/sec/daliviews/layouts/GridLayout;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$1100(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/daliviews/layouts/GridLayout;->setAnimatePositioning(Z)V

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->mAnimationsDisabled:Z

    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->mAnimationsDisabled:Z

    goto :goto_1
.end method

.method public onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 10

    const-wide/16 v4, -0x1

    const/4 v9, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mIsTopFiveItem:Z
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$200(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, p1, Lcom/sec/android/app/launcher/views/FolderAdapterView;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->sIsTopFiveFolderOpened:Z

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mIsExitFromTopFiveSpace:Z
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$300(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mIsExitFromTopFiveSpace:Z
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$300(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$400(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$400(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    instance-of v1, p3, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$100(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    const-string v2, "HSDT"

    move-object v3, p3

    check-cast v3, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    iput-boolean v9, v1, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mIsTopListChanged:Z

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mIsTopFiveItem:Z
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$200(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$400(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    instance-of v1, p1, Lcom/sec/android/app/launcher/views/IconDropContainer;

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$400(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    instance-of v1, p3, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$100(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    const-string v2, "HSAD"

    move-object v3, p3

    check-cast v3, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_5
    :goto_1
    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$100(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    const v2, 0x7f0d00b5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$100(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    const v4, 0x7f0d0064

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v0, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    iput-boolean v9, v1, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mIsTopListChanged:Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$100(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1, p2, v8}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->announce(Lcom/sec/daliviews/views/NativeViewBase;Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$400(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz p3, :cond_c

    invoke-virtual {p3, v6}, Lcom/sec/daliviews/views/Item;->setContainerId(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$500(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v7

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveMaxCount:I
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$600(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)I

    move-result v1

    if-lt v7, v1, :cond_e

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveMaxCount:I
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$600(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)I

    move-result v1

    if-lt v7, v1, :cond_a

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dragCancel itemCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTopFiveMaxCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveMaxCount:I
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$600(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragCancel()V

    :goto_2
    return-void

    :cond_8
    instance-of v1, p3, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$100(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    const-string v2, "HSDT"

    const-string v3, "Folder"

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_0

    :cond_9
    instance-of v1, p3, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$100(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    const-string v2, "HSAD"

    const-string v3, "Folder"

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_1

    :cond_a
    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/sec/daliviews/views/Item;->setContainerType(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$900(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$800(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lcom/sec/android/app/launcher/data/DataManager;->insertItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)Landroid/net/Uri;

    instance-of v1, p3, Lcom/sec/android/app/launcher/data/FolderItem;

    if-nez v1, :cond_b

    const/4 v1, -0x2

    invoke-virtual {p3, v1}, Lcom/sec/daliviews/views/Item;->setContainerId(I)V

    :cond_b
    :goto_3
    instance-of v1, p2, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v1, :cond_f

    check-cast p2, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v1

    invoke-virtual {p2, v1, v6}, Lcom/sec/android/app/launcher/views/HomeItemView;->setTitleAttribute(II)V

    :cond_c
    :goto_4
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    :cond_d
    :goto_5
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mIsTopFiveItem:Z
    invoke-static {v1, v6}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$202(Lcom/sec/android/app/launcher/activities/TopFivePresenter;Z)Z

    goto :goto_2

    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$500(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sec/daliviews/views/ListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    goto :goto_3

    :cond_f
    instance-of v1, p2, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v1, :cond_c

    check-cast p2, Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/launcher/views/HomeFolderView;->setTitleAttribute(I)V

    goto :goto_4

    :cond_10
    instance-of v1, p1, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mDroppedOnFolder:Z
    invoke-static {v1, v9}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->access$1002(Lcom/sec/android/app/launcher/activities/TopFivePresenter;Z)Z

    goto :goto_5
.end method

.method public onResizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method
