.class public abstract Lcom/sec/android/app/launcher/activities/FolderPresenterBase;
.super Lcom/sec/android/app/launcher/activities/PresenterBase;
.source "FolderPresenterBase.java"

# interfaces
.implements Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;
.implements Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;
.implements Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/FolderPresenterBase$FolderFilter;
    }
.end annotation


# static fields
.field private static final DARKEN_VIEW_HIDE_TIME:F = 0.3f

.field private static final DARKEN_VIEW_SHOW_TIME:F = 0.3f

.field public static final OPEN_FOLDER_ID:Ljava/lang/String; = "open_folder_id"

.field public static final OPEN_FOLDER_MODE:Ljava/lang/String; = "open_folder_mode"

.field public static final OPEN_FOLDER_POSITION:Ljava/lang/String; = "open_folder_position"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

.field private mCheckFingerPosition:Z

.field public mCurFolderDbId:I

.field protected final mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

.field protected mDbIdFolderMap:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mDragSourceFolder:Lcom/sec/android/app/launcher/data/FolderItem;

.field protected mFolderEditor:Lcom/sec/android/app/launcher/activities/FolderEditorBase;

.field private mFolderOpenListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mGridColumns:I

.field protected mHandler:Landroid/os/Handler;

.field private mIsFolderItemDragMode:Z

.field protected mMoveToPageRunnable:Ljava/lang/Runnable;

.field protected mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

.field protected mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

.field private temp:Lcom/sec/daliviews/views/Item;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/launcher/activities/PresenterBase;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase$FolderFilter;

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase$FolderFilter;-><init>(Lcom/sec/android/app/launcher/activities/FolderPresenterBase$1;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/PresenterBase;-><init>(Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mCurFolderDbId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDbIdFolderMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mFolderOpenListeners:Ljava/util/List;

    iput v2, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mGridColumns:I

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mMoveToPageRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mFolderEditor:Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mIsFolderItemDragMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mCheckFingerPosition:Z

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDataManager()Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mGridColumns:I

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->loadItems()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getCellXY(ILandroid/content/res/Resources;)[I
    .locals 2

    const v1, 0x7f0c0027

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/android/app/launcher/utils/Utils;->getCellXY(II)[I

    move-result-object v1

    return-object v1
.end method

.method private getContainerFolder(Lcom/sec/daliviews/views/Item;)Lcom/sec/android/app/launcher/data/FolderItem;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDbIdFolderMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getItemContainerId(Lcom/sec/daliviews/views/Item;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/FolderItem;

    return-object v0
.end method

.method private getDarkenView()Lcom/sec/daliviews/views/ContainerViewBase;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDarkenView()Lcom/sec/daliviews/views/ClippedContainerView;

    move-result-object v0

    return-object v0
.end method

.method private getItemsInFolder(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/launcher/data/FolderItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getFolderFilter(Lcom/sec/android/app/launcher/data/FolderItem;)Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/data/DataManager$SortType;->ITEMS_TO_SHOW_ONLY:Lcom/sec/android/app/launcher/data/DataManager$SortType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/data/DataManager;->getItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;Lcom/sec/android/app/launcher/data/DataManager$SortType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private hideDarkenView(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PresenterBase;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerViewBase;->setSensitive(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getDarkenView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/NativeViewBase;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/NativeViewBase;->setOnTouchListener(Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;)V

    if-eqz p1, :cond_2

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v3, v2}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibilityAnimated(IF)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    goto :goto_0
.end method

.method private loadItems()V
    .locals 10

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v8, v9}, Lcom/sec/android/app/launcher/data/DataManager;->getItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)Ljava/util/List;

    move-result-object v0

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v8, p0, v9}, Lcom/sec/android/app/launcher/data/DataManager;->registerDataListener(Lcom/sec/android/app/launcher/data/DataManager$IDataListener;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/daliviews/views/Item;

    instance-of v8, v6, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDbIdFolderMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v8

    sget-object v9, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v9

    if-ne v8, v9, :cond_2

    invoke-virtual {p0, v6}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getItemContainerId(Lcom/sec/daliviews/views/Item;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v4, v8, :cond_7

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDbIdFolderMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    if-eqz v1, :cond_6

    check-cast v1, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lcom/sec/android/app/launcher/data/FolderItem;->addItems(Ljava/util/List;Z)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->insertLoggingFolderNameStatus()Z

    goto :goto_0
.end method

.method private showDarkenView(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PresenterBase;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/ContainerViewBase;->setSensitive(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getDarkenView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v3, v2}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibilityAnimated(IF)V

    :goto_0
    new-instance v2, Lcom/sec/android/app/launcher/activities/FolderPresenterBase$2;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase$2;-><init>(Lcom/sec/android/app/launcher/activities/FolderPresenterBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/NativeViewBase;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public cancelClosingFolder()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->cancelClosingFolder()V

    :cond_0
    return-void
.end method

.method public checkEmptyFolder()V
    .locals 7

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isSafeMode()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getFolderItemsCount()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getFolderItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemCount()I

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkEmptyFolder() folder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " getDataSourceType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/sec/android/app/launcher/data/DataManager;->deleteItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public checkEmptyFolder(Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 7

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isSafeMode()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDbIdFolderMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemCount()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/data/DataManager;->getItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v5

    if-ne v4, v5, :cond_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v4, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2 checkEmptyFolder() folder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " getDataSourceType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/sec/android/app/launcher/data/DataManager;->deleteItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)V

    goto :goto_0
.end method

.method public checkOpenFolderPanel(Lcom/sec/daliviews/views/Item;)Z
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportFolderItemMove:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->isFolderOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/LauncherItem;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v1

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getFolderItemsCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeFolderDelayed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->closeFolderDelayed(Z)V

    :cond_0
    return-void
.end method

.method public abstract closeFolderPanel()V
.end method

.method public closeOpenFolder()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->closeOpenFolder(Z)Z

    move-result v0

    return v0
.end method

.method public closeOpenFolder(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->isClosedViewPopulated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem;->closeFolder(Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createFolder(Lcom/sec/daliviews/views/Item;ZLandroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getFolderEditor()Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->createFolder(Lcom/sec/daliviews/views/Item;ZLandroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase$1;-><init>(Lcom/sec/android/app/launcher/activities/FolderPresenterBase;Lcom/sec/daliviews/views/Item;ZLandroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->registerFolderOpenListener(Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->closeOpenFolder()Z

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/launcher/data/DataManager;->unregisterDataListener(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mFolderEditor:Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mFolderEditor:Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public detachItemFromFolder(Lcom/sec/daliviews/views/Item;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getContainerFolder(Lcom/sec/daliviews/views/Item;)Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem;->detachItem(Lcom/sec/daliviews/views/Item;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->onItemsRemovedFromFolder(Lcom/sec/android/app/launcher/data/FolderItem;)V

    :cond_0
    return-void
.end method

.method protected getActiveFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    return-object v0
.end method

.method public getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract getFolderEditor()Lcom/sec/android/app/launcher/activities/FolderEditorBase;
.end method

.method protected abstract getFolderFilter(Lcom/sec/android/app/launcher/data/FolderItem;)Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;
.end method

.method public getFolderItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDbIdFolderMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFolderItemsCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDbIdFolderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method protected abstract getFolderPreferenceName()Ljava/lang/String;
.end method

.method protected abstract getItemContainerId(Lcom/sec/daliviews/views/Item;)I
.end method

.method public getRootView()Lcom/sec/daliviews/views/ContainerViewBase;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insertLoggingFolderNameStatus()Z
    .locals 12

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const-string v2, "HOFN"

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getFolderItems()Ljava/util/List;

    move-result-object v7

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    sget-object v3, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    if-ne v1, v3, :cond_0

    const-string v2, "APFN"

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :goto_0
    return v6

    :cond_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/Item;

    check-cast v0, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getFolderItemsCount()I

    move-result v1

    if-ne v10, v1, :cond_4

    const/4 v11, 0x3

    :goto_2
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0

    :cond_4
    if-nez v10, :cond_5

    const/4 v11, 0x1

    goto :goto_2

    :cond_5
    const/4 v11, 0x2

    goto :goto_2
.end method

.method public invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCheckFingerPosition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mCheckFingerPosition:Z

    return v0
.end method

.method public isFolderItemDragMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mIsFolderItemDragMode:Z

    return v0
.end method

.method public isFolderOpened()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToPage(Z)V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->closeOpenFolder()Z

    move-result v0

    return v0
.end method

.method public onDragEnd()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDragSourceFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDragSourceFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->isFolderOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDragSourceFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->onDragEnd()V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDragSourceFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->updateBadgeIfNeeded()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDragSourceFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDragSourceFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->onReplaceFolderToItem(Lcom/sec/android/app/launcher/data/FolderItem;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDragSourceFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/launcher/data/FolderItem;->unregisterDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDragSourceFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDragSourceFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/AdapterView;->exitDragMode()V

    goto :goto_0
.end method

.method public onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 3

    instance-of v1, p1, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/sec/daliviews/views/NativeViewBase;->canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->makeSilhouetteVisible(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_1
    return-void
.end method

.method public onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v3

    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v2, v5, Landroid/graphics/Rect;->left:I

    iget v4, v5, Landroid/graphics/Rect;->right:I

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDragFingerPosition()Landroid/graphics/Point;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v6

    instance-of v6, v6, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FolderPresenterBase::onDragExit() fingerPos "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "     "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v1, Landroid/graphics/Point;->x:I

    if-gt v6, v2, :cond_2

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->moveToPage(Z)V

    :cond_0
    :goto_0
    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_1
    return-void

    :cond_2
    iget v6, v1, Landroid/graphics/Point;->x:I

    if-lt v6, v4, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->moveToPage(Z)V

    goto :goto_0
.end method

.method public onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDragSourceFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDragSourceFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/launcher/data/FolderItem;->registerDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    instance-of v1, p2, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v1, :cond_0

    check-cast p2, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/data/HomeItem;->getBadgeCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDragSourceFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->updateBadgeIfNeeded()V

    :cond_0
    return-void
.end method

.method public onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 18

    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/sec/android/app/launcher/views/IconDropContainer;

    if-eqz v13, :cond_5

    move-object/from16 v0, p3

    instance-of v13, v0, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v13, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v13

    instance-of v13, v13, Lcom/sec/android/app/launcher/views/FolderView;

    if-eqz v13, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->updatePositionOnDrop(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/daliviews/views/Item;)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d00b8

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v12}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->announce(Lcom/sec/daliviews/views/NativeViewBase;Ljava/lang/String;)V

    :cond_0
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lcom/sec/android/app/launcher/data/FolderItem;->closeFolder(Z)V

    sget-boolean v13, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLiveIconEnabled:Z

    if-eqz v13, :cond_7

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemCount()I

    move-result v13

    const/4 v14, 0x3

    if-eq v13, v14, :cond_1

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemCount()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_7

    :cond_1
    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/daliviews/views/Item;

    instance-of v13, v9, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v13, :cond_4

    invoke-virtual {v9}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/launcher/views/HomeItemView;

    check-cast v9, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/data/HomeItem;->hasLiveIcon()Z

    move-result v13

    if-eqz v13, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/views/HomeItemView;->startAnim()V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/sec/android/app/launcher/views/IconDropContainer;

    if-eqz v13, :cond_9

    move-object/from16 v0, p3

    instance-of v13, v0, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v13, :cond_9

    invoke-virtual/range {p1 .. p2}, Lcom/sec/daliviews/views/NativeViewBase;->canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/views/HomeItemView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getFolderEditor()Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v3, v0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->createFolder(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mCurFolderDbId:I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d00b3

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d0078

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d00b1

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v12}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->announce(Lcom/sec/daliviews/views/NativeViewBase;Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v13

    move-object/from16 v0, p1

    if-eq v13, v0, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->isFolderOpen()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->cancelClosingFolder()V

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lcom/sec/android/app/launcher/data/FolderItem;->closeFolder(Z)V

    :cond_8
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v11, v0, v1, v2}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/sec/android/app/launcher/views/FolderAdapterView;

    if-eqz v13, :cond_7

    move-object/from16 v0, p3

    instance-of v13, v0, Lcom/sec/android/app/launcher/data/WidgetListItem;

    if-eqz v13, :cond_7

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragCancel()V

    goto :goto_2
.end method

.method public onFolderCloseCompleted(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 0

    return-void
.end method

.method public onFolderClosed(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->hideDarkenView(Z)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isKeypadFocusAttached()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->selectArea(Lcom/sec/daliviews/views/NativeViewBase;Z)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-static {v4, p1}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v4, p0}, Lcom/sec/android/app/launcher/data/FolderItem;->unregisterFolderOpenListener(Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mFolderOpenListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->removeFocus()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    const v5, 0x7f0d0043

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->announce(Lcom/sec/daliviews/views/NativeViewBase;Ljava/lang/String;)V

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mFolderOpenListeners:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;->onFolderClosed(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    goto :goto_1

    :cond_5
    sget-object v4, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->sTopFiveFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sput-boolean v7, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->sIsTopFiveFolderOpened:Z

    goto :goto_0
.end method

.method public onFolderClosing(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getDarkenView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase;->setOnTouchListener(Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mFolderOpenListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mFolderOpenListeners:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;

    invoke-interface {v3, p1, p2}, Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;->onFolderClosing(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    goto :goto_0
.end method

.method public onFolderOpened(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/PresenterBase;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isKeypadFocusAttached()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->selectArea(Lcom/sec/daliviews/views/NativeViewBase;Z)V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, v6}, Lcom/sec/daliviews/views/ContainerViewBase;->setSensitive(Z)V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mFolderOpenListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mFolderOpenListeners:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;->onFolderOpened(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    goto :goto_0
.end method

.method public onFolderOpening(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 6

    invoke-direct {p0, p2}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->showDarkenView(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getFolderStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->getSupportedColors()[I

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setMenuButtonVisible(I)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mFolderOpenListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    return-void

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->setMenuButtonVisible(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mFolderOpenListeners:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;->onFolderOpening(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    goto :goto_1
.end method

.method public onHomePressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->closeOpenFolder(Z)Z

    return-void
.end method

.method public onItemAdded(Lcom/sec/daliviews/views/Item;)V
    .locals 6

    instance-of v3, p1, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v3, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/launcher/data/FolderItem;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDbIdFolderMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getItemsInFolder(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->temp:Lcom/sec/daliviews/views/Item;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemAdded() dbId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->temp:Lcom/sec/daliviews/views/Item;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " containerId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->temp:Lcom/sec/daliviews/views/Item;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/Item;->getCustomContainerId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", put into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->temp:Lcom/sec/daliviews/views/Item;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getCustomContainerId()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->temp:Lcom/sec/daliviews/views/Item;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->temp:Lcom/sec/daliviews/views/Item;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->temp:Lcom/sec/daliviews/views/Item;

    :cond_3
    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/data/FolderItem;->addItems(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->insertLoggingFolderNameStatus()Z

    goto :goto_0

    :cond_4
    instance-of v3, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getContainerFolder(Lcom/sec/daliviews/views/Item;)Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem;->addItem(Lcom/sec/daliviews/views/Item;)V

    goto :goto_0
.end method

.method public onItemBadgeUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 2

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getContainerFolder(Lcom/sec/daliviews/views/Item;)Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->updateBadgeIfNeeded()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    instance-of v1, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/activities/PresenterBase;->onItemBadgeUpdated(Lcom/sec/daliviews/views/Item;)V

    :cond_0
    return-void
.end method

.method public onItemDeleted(Lcom/sec/daliviews/views/Item;)V
    .locals 2

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDbIdFolderMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->insertLoggingFolderNameStatus()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->removeItemFromFolder(Lcom/sec/daliviews/views/Item;)V

    goto :goto_0
.end method

.method public onItemUpdateCompleted()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getFolderItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/Item;

    check-cast v0, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->updateBadgeIfNeeded()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onItemUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 3

    instance-of v2, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/launcher/data/HomeItem;

    const v2, 0x7f0b00e0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/data/HomeItem;->setCurrentMode(I)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getContainerFolder(Lcom/sec/daliviews/views/Item;)Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->containItem(Lcom/sec/daliviews/views/Item;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->updateItem(Lcom/sec/daliviews/views/Item;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->addItem(Lcom/sec/daliviews/views/Item;)V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->temp:Lcom/sec/daliviews/views/Item;

    goto :goto_0
.end method

.method public onItemsAdded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getContainerFolder(Lcom/sec/daliviews/views/Item;)Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem;->addItems(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onItemsDisplaced(ILjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/dragAndDrop/DisplacedItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    int-to-long v10, p1

    invoke-virtual {v5, v8, v10, v11}, Lcom/sec/android/app/launcher/data/DataManager;->getItemWithDbId(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    instance-of v5, v0, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v5, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;

    iget-object v5, v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mItem:Lcom/sec/daliviews/views/Item;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/Item;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/launcher/data/LauncherItem;

    if-eqz v4, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v5, v8, v2}, Lcom/sec/android/app/launcher/data/DataManager;->updateDisplacedItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;)V

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->TAG:Ljava/lang/String;

    const-string v8, "FP::onItemsDisplaced - destFolder is null!"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected abstract onItemsRemovedFromFolder(Lcom/sec/android/app/launcher/data/FolderItem;)V
.end method

.method public onItemsUpdated(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->onItemUpdated(Lcom/sec/daliviews/views/Item;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPeerDestroyed(Lcom/sec/daliviews/views/PeerBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDragSourceFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-static {p1, v0}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDragSourceFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    :cond_0
    return-void
.end method

.method protected abstract onReplaceFolderToItem(Lcom/sec/android/app/launcher/data/FolderItem;)V
.end method

.method public onResizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 10

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getFolderPreferenceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getFolderEditor()Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->restoreInstanceState(Landroid/os/Bundle;)V

    const-string v6, "open_folder_id"

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    int-to-long v8, v1

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/app/launcher/data/DataManager;->getItemWithDbId(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;J)Lcom/sec/daliviews/views/Item;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v6, "open_folder_position"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const-string v6, "open_folder_mode"

    sget-object v7, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->NORMAL:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->ordinal()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    move-object v2, v4

    check-cast v2, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-static {v5}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->fromInt(I)Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v2, v6, v7, v0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->openFolder(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;ZLandroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v4, :cond_3

    const-string v4, "open_folder_id"

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/AdapterView;->stopLoadingViews()V

    :cond_0
    const-string v4, "open_folder_mode"

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getMode()Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->ordinal()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenViewPosition()Landroid/graphics/Point;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getHeight()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v4, "open_folder_position"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v4, v8}, Lcom/sec/android/app/launcher/data/FolderItem;->closeFolder(Z)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getFolderEditor()Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getFolderPreferenceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_3
    const-string v4, "open_folder_id"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public openFolder(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;ZLandroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/data/FolderItem;->registerFolderOpenListener(Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getFolderEditor()Lcom/sec/android/app/launcher/activities/FolderEditorBase;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mActiveFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->openFolder(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;ZLandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public abstract openFolderPanel()V
.end method

.method public registerFolderOpenListener(Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mFolderOpenListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeItemFromFolder(Lcom/sec/daliviews/views/Item;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getContainerFolder(Lcom/sec/daliviews/views/Item;)Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem;->removeItem(Lcom/sec/daliviews/views/Item;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->onItemsRemovedFromFolder(Lcom/sec/android/app/launcher/data/FolderItem;)V

    :cond_0
    return-void
.end method

.method public removeItemsFromFolder(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    invoke-direct {p0, v3}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getContainerFolder(Lcom/sec/daliviews/views/Item;)Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/launcher/data/FolderItem;->removeItems(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->onItemsRemovedFromFolder(Lcom/sec/android/app/launcher/data/FolderItem;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setAccessibilityMode(Z)V
    .locals 0

    return-void
.end method

.method public setFolderItemDragMode(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->setFolderItemDragMode(ZZ)Z

    return-void
.end method

.method public setFolderItemDragMode(ZZ)Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportFolderItemMove:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mIsFolderItemDragMode:Z

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mIsFolderItemDragMode:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->closeOpenFolder()Z

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public unregisterFolderOpenListener(Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->mFolderOpenListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateOpenFolder(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->updateOpenViewPosition()V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/AdapterView;->showGrid()V

    :cond_0
    return-void
.end method

.method protected abstract updatePositionOnDrop(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/daliviews/views/Item;)V
.end method
