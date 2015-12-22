.class public Lcom/sec/android/app/launcher/activities/FolderPanelManager;
.super Ljava/lang/Object;
.source "FolderPanelManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/FolderPanelManager$FolderAlphabeticalComparator;
    }
.end annotation


# static fields
.field public static final FOLDER_COMPARATOR:Lcom/sec/android/app/launcher/activities/FolderPanelManager$FolderAlphabeticalComparator;

.field private static final INIT_DURATION:F = 0.01f

.field private static final TAG:Ljava/lang/String; = "FolderPanelManager"


# instance fields
.field private mAdapter:Lcom/sec/daliviews/views/ListAdapter;

.field private mAdapterView:Lcom/sec/daliviews/views/AdapterView;

.field private mApplyLandGUI:Z

.field private mApplySlideInVI:Z

.field private mAttachRootChildView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/NativeViewBase;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachRootView:Lcom/sec/daliviews/views/ContainerView;

.field private mFolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderPanelLayerIndex:I

.field private mFolderPanelLayoutColumns:I

.field private mFolderPanelLayoutRows:I

.field private mFolderPanelRootView:Lcom/sec/daliviews/views/ContainerView;

.field private mFolderPresenter:Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

.field private mHomeFolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mSlidingAnimDuration:F

.field private mUIAnimSetInitial:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mUIAnimSetSlideIn:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mUIAnimSetSlideOut:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

.field public showFolderPanelAfterDrag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/launcher/activities/FolderPanelManager$FolderAlphabeticalComparator;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager$FolderAlphabeticalComparator;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->FOLDER_COMPARATOR:Lcom/sec/android/app/launcher/activities/FolderPanelManager$FolderAlphabeticalComparator;

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/launcher/activities/FolderPresenterBase;Lcom/sec/daliviews/views/ContainerView;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelRootView:Lcom/sec/daliviews/views/ContainerView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAttachRootView:Lcom/sec/daliviews/views/ContainerView;

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->showFolderPanelAfterDrag:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mApplySlideInVI:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mApplyLandGUI:Z

    iput v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelLayerIndex:I

    iput v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelLayoutColumns:I

    iput v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelLayoutRows:I

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mHomeFolderList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAttachRootChildView:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAttachRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->setupFolderPanel()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/activities/FolderPanelManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->setOpacityPanelViews(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/activities/FolderPanelManager;)Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelRootView:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/activities/FolderPanelManager;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelLayoutColumns:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/activities/FolderPanelManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mHomeFolderList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/launcher/activities/FolderPanelManager;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->loadFolderItems(IIZ)V

    return-void
.end method

.method private destroyAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUIAnimSetInitial:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUIAnimSetInitial:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUIAnimSetSlideIn:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUIAnimSetSlideIn:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUIAnimSetSlideOut:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUIAnimSetSlideOut:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    :cond_3
    return-void
.end method

.method private isLandscapeMode()Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mApplyLandGUI:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadFolderItems(IIZ)V
    .locals 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    move v5, p1

    const-string v8, "FolderPanelManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "----loadFolderItems mAdapter : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " loadCount : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " firstLoad : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mHomeFolderList:Ljava/util/List;

    if-eqz v8, :cond_6

    if-ge p1, p2, :cond_6

    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_2

    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mHomeFolderList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/Item;

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->isLandscapeMode()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v5, v5}, Lcom/sec/daliviews/views/Item;->setPosition(III)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8, v5}, Lcom/sec/daliviews/views/Item;->setPosition(III)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    :cond_2
    if-eqz p3, :cond_7

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderList:Ljava/util/List;

    invoke-virtual {v8, v9}, Lcom/sec/daliviews/views/ListAdapter;->addItems(Ljava/util/List;)V

    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v8}, Lcom/sec/daliviews/views/AdapterView;->clearAdapter()V

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v8}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v4, :cond_5

    iget v8, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelLayoutRows:I

    invoke-direct {p0, v4, v8, p2}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->setGridSize(Lcom/sec/daliviews/layouts/GridLayout;II)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->isLandscapeMode()Z

    move-result v8

    if-nez v8, :cond_4

    move v6, v7

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->isLandscapeMode()Z

    move-result v8

    invoke-virtual {v4, v6, v8}, Lcom/sec/daliviews/layouts/GridLayout;->setScrollable(ZZ)V

    invoke-virtual {v4, v7}, Lcom/sec/daliviews/layouts/GridLayout;->setScrollBarVisible(Z)V

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/AdapterView;->setAdapter(Lcom/sec/daliviews/views/Adapter;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v6

    check-cast v6, Lcom/sec/daliviews/layouts/GridLayout;

    iget v8, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelLayoutRows:I

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {p0, v6, v8, v9}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->setGridSize(Lcom/sec/daliviews/layouts/GridLayout;II)V

    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderList:Ljava/util/List;

    invoke-virtual {v6, v8, v7}, Lcom/sec/daliviews/views/ListAdapter;->resetItems(Ljava/util/List;Z)V

    goto :goto_2
.end method

.method private setGridSize(Lcom/sec/daliviews/layouts/GridLayout;II)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->isLandscapeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p3, p2}, Lcom/sec/daliviews/layouts/GridLayout;->setGridSize(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/sec/daliviews/layouts/GridLayout;->setGridSize(II)V

    goto :goto_0
.end method

.method private setOpacityPanelViews(Z)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    move v2, v4

    :goto_0
    if-eqz p1, :cond_3

    :goto_1
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAttachRootView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAttachRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v4, v2}, Lcom/sec/daliviews/views/ContainerView;->setOpacity(F)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAttachRootChildView:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setOpacity(F)V

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->isFolderOpened()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAttachRootView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAttachRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v4, v2}, Lcom/sec/daliviews/views/ContainerView;->setOpacity(F)V

    :cond_5
    return-void
.end method

.method private setupAdapterView()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelRootView:Lcom/sec/daliviews/views/ContainerView;

    const v3, 0x7f0b006b

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/AdapterView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/AdapterView;->setDragEventInterest(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    const v3, 0x7f0b00dc

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/AdapterView;->setDefaultMode(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/GridLayout;->getClippedContainerView()Lcom/sec/daliviews/views/ClippedContainerView;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelLayerIndex:I

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ClippedContainerView;->setLayerLocation(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/GridLayout;->scrollToTop(F)V

    goto :goto_0
.end method


# virtual methods
.method public addChildViewOfRoot(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAttachRootChildView:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAttachRootChildView:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAttachRootChildView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public checkDropView(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/launcher/views/IconDropContainer;

    if-eqz v0, :cond_0

    instance-of v0, p3, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/launcher/views/FolderView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAdapter()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/AdapterView;->stopLoadingViews()V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->destroyAnimation()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->clearAdapter()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    return-void
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelRootView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public hideFolderPanelViews(Z)V
    .locals 2

    const/4 v1, 0x4

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mApplySlideInVI:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->setVisibility(IZ)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->setOpacityPanelViews(Z)V

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->setVisibility(IZ)V

    goto :goto_0
.end method

.method public onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 10

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v7

    if-ne v7, p1, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->isCheckFingerPosition()Z

    move-result v1

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->isCheckFingerPosition()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v4, v5, Landroid/graphics/Rect;->top:I

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDragFingerPosition()Landroid/graphics/Point;

    move-result-object v3

    const-string v7, "FolderPanelManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDragExit() fingerPos "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  top:  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  bottom:   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v3, Landroid/graphics/Point;->y:I

    if-le v7, v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDarkenView()Lcom/sec/daliviews/views/ClippedContainerView;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Lcom/sec/daliviews/views/ContainerView;->setSize(II)V

    const/4 v6, 0x1

    :cond_1
    return v6
.end method

.method public onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)Z
    .locals 3

    instance-of v2, p1, Lcom/sec/android/app/launcher/views/IconDropContainer;

    if-eqz v2, :cond_1

    instance-of v2, p3, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/app/launcher/views/FolderView;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->isClone()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    invoke-virtual {v2, v0, p3}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->updatePositionOnDrop(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/daliviews/views/Item;)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onFolderClosed()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->clearAdapter()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAttachRootView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAttachRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getOpacity()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAttachRootView:Lcom/sec/daliviews/views/ContainerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setOpacity(F)V

    :cond_0
    return-void
.end method

.method public setVisibility(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelRootView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mApplySlideInVI:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->startSlideInAnimation(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setupAdapter()V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->setupAdapterView()V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-nez v5, :cond_1

    new-instance v5, Lcom/sec/daliviews/views/ListAdapter;

    invoke-direct {v5, v4}, Lcom/sec/daliviews/views/ListAdapter;-><init>(Z)V

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mHomeFolderList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mHomeFolderList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mHomeFolderList:Ljava/util/List;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelLayoutColumns:I

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getFolderItems()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mHomeFolderList:Ljava/util/List;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mHomeFolderList:Ljava/util/List;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v5, "FolderPanelManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "----setupFolderList mAdapter : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " folderList : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mHomeFolderList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mHomeFolderList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->sortFolderPanelList(Ljava/util/List;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mHomeFolderList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    iget v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelLayoutColumns:I

    if-le v0, v5, :cond_2

    move v2, v3

    :goto_0
    if-eqz v2, :cond_3

    iget v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelLayoutColumns:I

    :goto_1
    invoke-direct {p0, v4, v1, v3}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->loadFolderItems(IIZ)V

    iget v3, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelLayoutColumns:I

    if-le v0, v3, :cond_1

    new-instance v3, Lcom/sec/android/app/launcher/activities/FolderPanelManager$2;

    const-string v4, "FolderPanelManager"

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/launcher/activities/FolderPanelManager$2;-><init>(Lcom/sec/android/app/launcher/activities/FolderPanelManager;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/FolderPanelManager$2;->start()V

    :cond_1
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method protected setupAnimations()V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x3c23d70a    # 0.01f

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->isLandscapeMode()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;

    new-instance v3, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    invoke-direct {v3, v5, v5, v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    iget v4, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mSlidingAnimDuration:F

    invoke-direct {v1, v3, v6, v4, v7}, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUIAnimSetSlideIn:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;)V

    new-instance v2, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;

    new-instance v3, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v4, v5, v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    iget v4, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mSlidingAnimDuration:F

    invoke-direct {v2, v3, v6, v4, v7}, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUIAnimSetSlideOut:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v3, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;)V

    new-instance v0, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;

    new-instance v3, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v4, v5, v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    invoke-direct {v0, v3, v5, v6, v7}, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUIAnimSetInitial:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v3, v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;

    new-instance v3, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    invoke-direct {v3, v5, v5, v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    iget v4, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mSlidingAnimDuration:F

    invoke-direct {v1, v3, v6, v4, v7}, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUIAnimSetSlideIn:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;)V

    new-instance v2, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;

    new-instance v3, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v5, v4, v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    iget v4, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mSlidingAnimDuration:F

    invoke-direct {v2, v3, v6, v4, v7}, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUIAnimSetSlideOut:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v3, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;)V

    new-instance v0, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;

    new-instance v3, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v5, v4, v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    invoke-direct {v0, v3, v5, v6, v7}, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUIAnimSetInitial:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v3, v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;)V

    goto :goto_0
.end method

.method public setupFolderPanel()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v1

    const v2, 0x7f03001d

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelRootView:Lcom/sec/daliviews/views/ContainerView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelRootView:Lcom/sec/daliviews/views/ContainerView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setDragEventInterest(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAttachRootView:Lcom/sec/daliviews/views/ContainerView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mSlidingAnimDuration:F

    const v1, 0x7f0c0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelLayerIndex:I

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelLayoutColumns:I

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelLayoutRows:I

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mApplySlideInVI:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUIAnimSetSlideIn:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    new-instance v1, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUIAnimSetSlideOut:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    new-instance v1, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUIAnimSetInitial:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    new-instance v1, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget v2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mSlidingAnimDuration:F

    invoke-direct {v1, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;-><init>(F)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->setupAnimations()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->setupAdapterView()V

    return-void
.end method

.method public showFolderPanelViews()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->setVisibility(IZ)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->setOpacityPanelViews(Z)V

    return-void
.end method

.method public sortFolderPanelList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->FOLDER_COMPARATOR:Lcom/sec/android/app/launcher/activities/FolderPanelManager$FolderAlphabeticalComparator;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager$FolderAlphabeticalComparator;->updateCollator()V

    sget-object v0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->FOLDER_COMPARATOR:Lcom/sec/android/app/launcher/activities/FolderPanelManager$FolderAlphabeticalComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method protected startSlideInAnimation(I)V
    .locals 3

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mSlidingAnimDuration:F

    invoke-direct {v0, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;-><init>(F)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    :cond_0
    const-string v0, "FolderPanelManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSlideInAnimation mUiAnimPlayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUIAnimSetSlideIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUIAnimSetSlideIn:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelRootView:Lcom/sec/daliviews/views/ContainerView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUIAnimSetInitial:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelRootView:Lcom/sec/daliviews/views/ContainerView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUIAnimSetSlideIn:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mSlidingAnimDuration:F

    invoke-direct {v0, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;-><init>(F)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelRootView:Lcom/sec/daliviews/views/ContainerView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUIAnimSetSlideOut:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    new-instance v1, Lcom/sec/android/app/launcher/activities/FolderPanelManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager$1;-><init>(Lcom/sec/android/app/launcher/activities/FolderPanelManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->connectToUIAnimationSignal(Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mUiAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start()V

    goto :goto_0
.end method

.method public updateFolderPanelLayout()V
    .locals 8

    const/4 v7, 0x0

    iget-boolean v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mApplyLandGUI:Z

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->destroyAnimation()V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/AdapterView;->stopLoadingViews()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAttachRootView:Lcom/sec/daliviews/views/ContainerView;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/ContainerView;->detachView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->setupFolderPanel()V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v5, :cond_3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->isLandscapeMode()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v7, v4, v4}, Lcom/sec/daliviews/views/Item;->setPosition(III)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4, v7, v4}, Lcom/sec/daliviews/views/Item;->setPosition(III)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/AdapterView;->setAdapter(Lcom/sec/daliviews/views/Adapter;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v3, :cond_3

    iget v5, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderPanelLayoutRows:I

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->mFolderList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Lcom/sec/android/app/launcher/activities/FolderPanelManager;->setGridSize(Lcom/sec/daliviews/layouts/GridLayout;II)V

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/GridLayout;->layoutViews()V

    :cond_3
    return-void
.end method

.method protected updatePositionOnDrop(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/daliviews/views/Item;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;I)Z
    .locals 11

    const/4 v7, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->isClone()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v2, p2

    check-cast v2, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getOriginalItem()Lcom/sec/android/app/launcher/data/LauncherItem;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v8

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/HomeItem;->getDbId()I

    move-result v9

    if-ne v8, v9, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemCount()I

    move-result v6

    sget-object v8, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    if-ne p3, v8, :cond_2

    rem-int v8, v6, p4

    invoke-virtual {v2, v8}, Lcom/sec/android/app/launcher/data/HomeItem;->setCellX(I)V

    div-int v8, v6, p4

    invoke-virtual {v2, v8}, Lcom/sec/android/app/launcher/data/HomeItem;->setCellY(I)V

    invoke-virtual {v2, v6}, Lcom/sec/android/app/launcher/data/HomeItem;->setPos(I)V

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/sec/android/app/launcher/data/HomeItem;->setContainerId(I)V

    :goto_1
    sget-object v8, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/sec/android/app/launcher/data/HomeItem;->setContainerType(I)V

    const-string v8, "FolderPanelManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "----updatePositionOnDrop origin.getDbId() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " item.getDbId() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/HomeItem;->getDbId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "FolderPanelManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "----updatePositionOnDrop folder.getDbId() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " folder.mIsClone() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->isClone()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v8, 0x7f0b00e0

    invoke-virtual {v2, v8}, Lcom/sec/android/app/launcher/data/HomeItem;->setCurrentMode(I)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDataManager()Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/HomeItem;->getDbId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, p3, v3, v7}, Lcom/sec/android/app/launcher/data/DataManager;->updateItemsPositions(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;Z)V

    :goto_2
    :try_start_0
    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/HomeItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/Item;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v0, v9}, Lcom/sec/daliviews/views/ListAdapter;->addItem(Lcom/sec/daliviews/views/Item;Z)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v8

    invoke-virtual {v2, v6, v8}, Lcom/sec/android/app/launcher/data/HomeItem;->setCustomPosition(II)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v4, p3, v2}, Lcom/sec/android/app/launcher/data/DataManager;->insertItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)Landroid/net/Uri;

    const/4 v8, -0x2

    invoke-virtual {v2, v8}, Lcom/sec/android/app/launcher/data/HomeItem;->setContainerId(I)V

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0
.end method
