.class Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;
.super Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;
.source "HomeEditBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setupRemovePageButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mUndoTinting:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;II)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;-><init>(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->mUndoTinting:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->mUndoTinting:Ljava/lang/Runnable;

    return-object p1
.end method


# virtual methods
.method protected canAcceptDrop(Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/daliviews/views/PageView$DynamicPageItem;

    return v0
.end method

.method protected handleOnDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mUseNewTrashAnim:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    :cond_0
    instance-of v0, p1, Lcom/sec/android/app/launcher/views/HomePageView;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->deletePageInZoomedOutPageMode(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->mUndoTinting:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->mUndoTinting:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onDragEnd()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->onDragEnd()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->mUndoTinting:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->mUndoTinting:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    invoke-static {p1, v1}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->mRight:Lcom/sec/daliviews/views/ContainerView;

    invoke-static {p1, v1}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p2, Lcom/sec/android/app/launcher/views/HomePageView;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase;->getBackgroundTint()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setBackgroundTint(I)V

    new-instance v1, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5$1;-><init>(Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;Lcom/sec/daliviews/views/NativeViewBase;I)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->mUndoTinting:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    invoke-static {p1, v0}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->mRight:Lcom/sec/daliviews/views/ContainerView;

    invoke-static {p1, v0}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p2, Lcom/sec/android/app/launcher/views/HomePageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->mUndoTinting:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->mUndoTinting:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected onInit()V
    .locals 2

    const/4 v1, -0x2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->mButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setContainerId(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mUseNewTrashAnim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->mRight:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setContainerId(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;->mRight:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setContainerId(I)V

    :cond_0
    return-void
.end method
