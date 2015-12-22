.class public Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;
.super Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;
.source "HomeEditBarPresenter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

.field protected mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

.field private mLeftDummyContainer:Lcom/sec/daliviews/views/NativeViewBase;

.field private mRightDummyContainer:Lcom/sec/daliviews/views/NativeViewBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mLeftDummyContainer:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mRightDummyContainer:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a029d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTranslucentStatusBarHeight:I

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setupEditBar()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/data/LauncherItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->createPage(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/data/LauncherItem;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createPage(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/data/LauncherItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->newPageInZoomedOutPageMode(Lcom/sec/android/app/launcher/data/LauncherItem;)V

    return-void
.end method

.method private setVisibilityDummyContainer()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mLeftDummyContainer:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mRightDummyContainer:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->getmShowEditBarItems()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mLeftDummyContainer:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mRightDummyContainer:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mLeftDummyContainer:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mRightDummyContainer:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupAddToPersonalButton()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$6;

    const v1, 0x7f0b007d

    const v2, 0x7f0b007e

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$6;-><init>(Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->registerDragListener(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;)V

    return-void
.end method

.method private setupCancelButton()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$3;

    const v1, 0x7f0b007f

    const v2, 0x7f0b0080

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$3;-><init>(Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->registerDragListener(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;)V

    return-void
.end method

.method private setupCreatePageButton()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$1;

    const v1, 0x7f0b0077

    const v2, 0x7f0b0078

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$1;-><init>(Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->registerDragListener(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;)V

    return-void
.end method

.method private setupDummyContainer()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mLeftDummyContainer:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mRightDummyContainer:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_0
    return-void
.end method

.method private setupEditBar()V
    .locals 1

    const v0, 0x7f030022

    invoke-super {p0, v0}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->setupEditBar(I)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setupCreatePageButton()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setupUninstallButton()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setupRemoveButton()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setupRemovePageButton()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setupCancelButton()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setupAddToPersonalButton()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setupToHomescreenButton()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setupDummyContainer()V

    return-void
.end method

.method private setupRemoveButton()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;

    const v1, 0x7f0b0082

    const v2, 0x7f0b0083

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$4;-><init>(Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->registerDragListener(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;)V

    return-void
.end method

.method private setupRemovePageButton()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;

    const v1, 0x7f0b0085

    const v2, 0x7f0b0086

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$5;-><init>(Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->registerDragListener(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;)V

    return-void
.end method

.method private setupToHomescreenButton()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$7;

    const v1, 0x7f0b0088

    const v2, 0x7f0b0089

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$7;-><init>(Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->registerDragListener(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;)V

    return-void
.end method

.method private setupUninstallButton()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;

    const v1, 0x7f0b007a

    const v2, 0x7f0b007b

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$2;-><init>(Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->registerDragListener(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;)V

    return-void
.end method

.method private updateRightMargin(Z)V
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isTabletLayoutEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->isFolderItemDragMode()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->isFolderOpened()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-eqz v0, :cond_4

    :cond_1
    const v4, 0x7f0a0289

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v3, v3, v4, v3}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/views/ContainerView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ContainerView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    :cond_2
    return-void

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    goto :goto_1
.end method


# virtual methods
.method addToPersonal(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/data/HomeItem;)V
    .locals 7

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragCancel()V

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/data/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v0, "com.samsung.intent.action.LAUNCH_PERSONA_SHORTCUT"

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mLauncherActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v5}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "userId"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "persona_shortcut://"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v5, "package"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "personalId"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "commandType"

    const-string v6, "createShortcut"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "component"

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/data/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public checkVisible()I
    .locals 3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentFragmentId()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->isPageDeletionPossible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected getParentView()Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method public onDragEnd()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->hideEditBar()V

    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->onDragEnd()V

    return-void
.end method

.method public onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mLauncherActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->isFolderItemDragMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->closeFolderDelayed()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method

.method public onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 3

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDraggedItemParent()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/daliviews/views/AdapterView;

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->TAG:Ljava/lang/String;

    const-string v2, "Dragged item from a non-adapter, item lost!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    goto :goto_0
.end method

.method public onItemUpdateCompleted()V
    .locals 0

    return-void
.end method

.method public refreshContentDescriptions()V
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    const v3, 0x7f0b0082

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0d0052

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setContentDescription(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    const v3, 0x7f0b0085

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0d0053

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setContentDescription(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    const v3, 0x7f0b007f

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0d002a

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setRightMargin(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->updateRightMargin(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->restoreOffsetPosition()V

    return-void
.end method

.method public showEditBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mCurrMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mCurrMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->checkVisible()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->showEditBar()V

    :cond_0
    return-void
.end method

.method public showEditBar(Lcom/sec/daliviews/views/Item;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mCurrMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->updateRightMargin(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->showEditBar(Lcom/sec/daliviews/views/Item;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setVisibilityDummyContainer()V

    return-void
.end method

.method public showEditBarForEmptyPage()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mCurrMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mCurrMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->showEditBar()V

    :cond_0
    return-void
.end method

.method public switchMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V
    .locals 3

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mCurrMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne p2, v2, :cond_1

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getDraggedItem()Lcom/sec/daliviews/views/Item;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->isItemEditable(Lcom/sec/daliviews/views/Item;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->showEditBar(Lcom/sec/daliviews/views/Item;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PageView;->getDynamicItem()Lcom/sec/daliviews/views/PageView$DynamicPageItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->checkVisible()I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->updateRightMargin(Z)V

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setupEditBar(Lcom/sec/daliviews/views/Item;I)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq p2, v2, :cond_4

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne p2, v2, :cond_0

    :cond_4
    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mUseNewTrashAnim:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mHide:Z

    if-nez v2, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->hideEditBar()V

    goto :goto_0
.end method

.method public updateLayoutView()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v0

    const v2, 0x7f0a00b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/views/ContainerView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    return-void
.end method
