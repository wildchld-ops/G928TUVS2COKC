.class Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;
.super Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;
.source "HomeEditBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setupUninstallButton()V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;-><init>(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;II)V

    return-void
.end method


# virtual methods
.method protected canAcceptDrop(Lcom/sec/daliviews/views/Item;)Z
    .locals 12

    const v11, 0x7f0b012a

    const v10, 0x7f0b007c

    const v9, 0x7f0b007a

    const/4 v7, 0x1

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->mIsDisableDim:Z

    instance-of v6, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->isMenuItem(Lcom/sec/daliviews/views/Item;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, p1

    check-cast v6, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/HomeItem;->canUninstallOrDisable()Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v7

    :goto_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v0, :cond_0

    instance-of v6, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->isMenuItem(Lcom/sec/daliviews/views/Item;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput-boolean v7, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->mIsDisableDim:Z

    :cond_0
    if-eqz v0, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v6, v6, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6, v10}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/TextView;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v6, v6, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6, v9}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/views/ContainerView;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v6, v6, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6, v11}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/ImageView;

    check-cast p1, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemApp()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v6, v6, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mLauncherActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0d0054

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f02005e

    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v6, v6, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mLauncherActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/daliviews/views/ImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v2}, Lcom/sec/daliviews/views/ContainerView;->setContentDescription(Ljava/lang/String;)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/ContainerView;->setOpacity(F)V

    invoke-virtual {v3, v2}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_1
    :goto_2
    if-nez v0, :cond_2

    iget-boolean v6, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->mIsDisableDim:Z

    if-eqz v6, :cond_3

    :cond_2
    move v8, v7

    :cond_3
    return v8

    :cond_4
    move v0, v8

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v6, v6, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mLauncherActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0d0057

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f02005f

    goto :goto_1

    :cond_6
    iget-boolean v6, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->mIsDisableDim:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v6, v6, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6, v10}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/TextView;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v6, v6, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6, v9}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/views/ContainerView;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v6, v6, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6, v11}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/ImageView;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v6, v6, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mLauncherActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0d0054

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v6, v6, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mLauncherActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f02005e

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/daliviews/views/ImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v2}, Lcom/sec/daliviews/views/ContainerView;->setContentDescription(Ljava/lang/String;)V

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/ContainerView;->setOpacity(F)V

    invoke-virtual {v3, v2}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    goto :goto_2
.end method

.method protected handleOnDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 1

    instance-of v0, p2, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mLauncherActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->uninstallAndDisableApp(Lcom/sec/daliviews/views/Item;)V

    :cond_0
    return-void
.end method

.method public onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-boolean v2, v2, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mUseNewTrashAnim:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v2, v2, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    const v3, 0x7f0b007a

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->mRight:Lcom/sec/daliviews/views/ContainerView;

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

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-boolean v1, v1, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mUseNewTrashAnim:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->mLeft:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->mRight:Lcom/sec/daliviews/views/ContainerView;

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

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->isMenuItem(Lcom/sec/daliviews/views/Item;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mUseNewTrashAnim:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->draggedView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->draggedView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;->mEditBarDetachListener:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener$EditBarDetachListener;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setDetachListener(Lcom/sec/daliviews/views/NativeViewBase$DetachListener;)V

    goto :goto_0
.end method
