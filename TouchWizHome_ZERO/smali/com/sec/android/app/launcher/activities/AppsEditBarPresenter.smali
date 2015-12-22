.class public Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;
.super Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;
.source "AppsEditBarPresenter.java"


# instance fields
.field protected mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

.field private mFolderRemoveDialog:Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;

.field private mHandler:Landroid/os/Handler;

.field private mUseAppsEditBar:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mFolderRemoveDialog:Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mUseAppsEditBar:Z

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a029d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mTranslucentStatusBarHeight:I

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->setupEditBar()V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mUseAppsEditBar:Z

    return v0
.end method

.method private setupAddToHomeButton()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$2;

    const v1, 0x7f0b0054

    const v2, 0x7f0b0056

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$2;-><init>(Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->registerDragListener(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;)V

    return-void
.end method

.method private setupCancelButton()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$3;

    const v1, 0x7f0b0057

    const v2, 0x7f0b0058

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$3;-><init>(Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->registerDragListener(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;)V

    return-void
.end method

.method private setupEditBar()V
    .locals 1

    const v0, 0x7f030007

    invoke-super {p0, v0}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->setupEditBar(I)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->setupUninstallButton()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->setupAddToHomeButton()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->setupCancelButton()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->setupToAppsButton()V

    return-void
.end method

.method private setupToAppsButton()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$4;

    const v1, 0x7f0b0059

    const v2, 0x7f0b005a

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$4;-><init>(Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->registerDragListener(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;)V

    return-void
.end method

.method private setupUninstallButton()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1;

    const v1, 0x7f0b0051

    const v2, 0x7f0b0053

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$1;-><init>(Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->registerDragListener(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;)V

    return-void
.end method

.method private updateRightMargin(Z)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isTabletLayoutEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->isFolderItemDragMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0a0289

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v4, v4, v2, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/views/ContainerView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->destroy()V

    return-void
.end method

.method public dismissPopups()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mFolderRemoveDialog:Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mFolderRemoveDialog:Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected getParentView()Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method public invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->hideEditBar()V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z

    move-result v0

    return v0
.end method

.method public onDragEnd()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->hideEditBar()V

    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->onDragEnd()V

    return-void
.end method

.method public onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerViewBase;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->cancelPageChangeTimer()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$5;-><init>(Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    const v1, 0x7f0b0059

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerViewBase;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_0
.end method

.method public onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 2

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getDraggedItem()Lcom/sec/daliviews/views/Item;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->isItemEditable(Lcom/sec/daliviews/views/Item;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->updateRightMargin(Z)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->showEditBar(Lcom/sec/daliviews/views/Item;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    return-void
.end method

.method public onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->hideEditBar()V

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    return-void
.end method

.method public onItemUpdateCompleted()V
    .locals 0

    return-void
.end method
