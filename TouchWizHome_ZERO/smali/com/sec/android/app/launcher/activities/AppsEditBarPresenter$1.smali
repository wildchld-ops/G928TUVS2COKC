.class Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1;
.super Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;
.source "AppsEditBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->setupUninstallButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;-><init>(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;II)V

    return-void
.end method


# virtual methods
.method protected canAcceptDrop(Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mUseAppsEditBar:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->access$100(Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->isMenuItem(Lcom/sec/daliviews/views/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->isNonDisable()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemSigned()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleOnDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 2

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragCancel()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->access$000(Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1$1;

    invoke-direct {v1, p0, p2}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1$1;-><init>(Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1;Lcom/sec/daliviews/views/Item;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    invoke-virtual {v3, p2}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->isMenuItem(Lcom/sec/daliviews/views/Item;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v3, p2, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    iget-object v3, v3, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    const v4, 0x7f0b0052

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/TextView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    iget-object v3, v3, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    const v4, 0x7f0b0051

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/ContainerView;

    const/4 v0, 0x0

    check-cast p2, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemApp()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    iget-object v3, v3, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mLauncherActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/sec/daliviews/views/ContainerView;->setContentDescription(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    iget-object v3, v3, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mLauncherActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0057

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
