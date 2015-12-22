.class Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;
.super Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;
.source "HomeEditBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setupRemoveButton()V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;-><init>(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;II)V

    return-void
.end method


# virtual methods
.method protected canAcceptDrop(Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/FolderItem;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/WidgetListItem;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->isMenuItem(Lcom/sec/daliviews/views/Item;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->isWidgetListItem(Lcom/sec/daliviews/views/Item;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleOnDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setFolderItemDragMode(ZZ)V

    return-void
.end method

.method public onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-boolean v2, v2, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mUseNewTrashAnim:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v2, v2, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    const v3, 0x7f0b0082

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->mRight:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    check-cast p1, Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ContainerView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/dragAndDrop/DragState;->setDropAnimation(Z)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerView;->getPosition()Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    move-result-object v3

    iget v3, v3, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->x:F

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerView;->getPosition()Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    move-result-object v4

    iget v4, v4, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->y:F

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x41700000    # 15.0f

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/daliviews/dragAndDrop/DragState;->setDropAnimPosition(FFF)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    # getter for: Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unexpected"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-boolean v1, v1, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mUseNewTrashAnim:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->mRight:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    check-cast p1, Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ContainerView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/dragAndDrop/DragState;->setDropAnimation(Z)V

    :cond_1
    return-void
.end method

.method public onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mUseNewTrashAnim:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->draggedView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->draggedView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->mEditBarDetachListener:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener$EditBarDetachListener;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setDetachListener(Lcom/sec/daliviews/views/NativeViewBase$DetachListener;)V

    :cond_0
    return-void
.end method

.method protected onInit()V
    .locals 2

    const/4 v1, -0x2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setContainerId(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mUseNewTrashAnim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->mRight:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setContainerId(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;->mRight:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setContainerId(I)V

    :cond_0
    return-void
.end method
