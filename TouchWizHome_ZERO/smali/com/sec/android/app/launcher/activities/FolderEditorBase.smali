.class public abstract Lcom/sec/android/app/launcher/activities/FolderEditorBase;
.super Ljava/lang/Object;
.source "FolderEditorBase.java"

# interfaces
.implements Lcom/sec/android/app/launcher/data/FolderItem$IFolderEditListener;
.implements Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;


# static fields
.field protected static final FOLDER_CELL_X:Ljava/lang/String; = "folder_cell_x"

.field protected static final FOLDER_CELL_Y:Ljava/lang/String; = "folder_cell_y"

.field protected static final FOLDER_CONTAINER_ID:Ljava/lang/String; = "folder_container_id"

.field protected static final FOLDER_CONTAINER_TYPE:Ljava/lang/String; = "folder_container_type"

.field protected static final FOLDER_DROP_ITEM_CLONED:Ljava/lang/String; = "folder_drop_item_cloned"

.field protected static final FOLDER_DROP_ITEM_DB_ID:Ljava/lang/String; = "folder_drop_item_db_id"

.field protected static final FOLDER_DROP_ITEM_SOURCE:Ljava/lang/String; = "folder_drop_item_src"

.field protected static final FOLDER_POS:Ljava/lang/String; = "folder_pos"

.field protected static final FOLDER_TITLE:Ljava/lang/String; = "folder_title"

.field protected static final FOLDER_TITLE_SEL_END:Ljava/lang/String; = "folder_title_sel_end"

.field protected static final FOLDER_TITLE_SEL_START:Ljava/lang/String; = "folder_title_sel_start"

.field protected static final NEW_FOLDER_MODE:Ljava/lang/String; = "new_folder_mode"


# instance fields
.field protected final mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

.field protected mCreateFolderMode:Z

.field protected mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

.field protected mDroppedItemClone:Lcom/sec/android/app/launcher/data/HomeItem;

.field protected mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

.field protected final mFolderOpenListener:Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;

.field protected mNewlySelectedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field protected mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

.field private mOpenForSelectionListener:Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mCreateFolderMode:Z

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mDroppedItemClone:Lcom/sec/android/app/launcher/data/HomeItem;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mNewlySelectedApps:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/launcher/activities/FolderEditorBase$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase$1;-><init>(Lcom/sec/android/app/launcher/activities/FolderEditorBase;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mOpenForSelectionListener:Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderOpenListener:Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/activities/FolderEditorBase;)Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mOpenForSelectionListener:Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/activities/FolderEditorBase;Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->showAppsSelector(Lcom/sec/android/app/launcher/data/FolderItem;)V

    return-void
.end method

.method private addItemsToFolder(Lcom/sec/android/app/launcher/data/FolderItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/launcher/data/FolderItem;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/sec/android/app/launcher/data/FolderItem;->addItems(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method private commitFolder()I
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mCreateFolderMode:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->insertFolderToDB()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->reset()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private createFolderWithDroppedItem(Lcom/sec/daliviews/views/Item;Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mCreateFolderMode:Z

    check-cast p1, Lcom/sec/android/app/launcher/data/HomeItem;

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mDroppedItemClone:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->createInitialFolder()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderOpenListener:Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->registerFolderOpenListener(Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/data/FolderItem;->setFolderEditListener(Lcom/sec/android/app/launcher/data/FolderItem$IFolderEditListener;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->addDroppedItemToFolder(Z)V

    goto :goto_0
.end method

.method private getOriginalItem(Lcom/sec/android/app/launcher/data/HomeItem;)Lcom/sec/android/app/launcher/data/HomeItem;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getOriginalItem()Lcom/sec/android/app/launcher/data/LauncherItem;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    goto :goto_0
.end method

.method private insertFolderToDB()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/data/FolderItem;->closeFolder(Z)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->removeItemsFromOldContainers(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->replaceCloneWithDroppedItem()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mNewlySelectedApps:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->prepareItemsToAdd(Lcom/sec/android/app/launcher/data/FolderItem;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->addItemsToFolder(Lcom/sec/android/app/launcher/data/FolderItem;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->finalizeFolder()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->getDataManager()Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/app/launcher/data/DataManager;->insertItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->notifyFolderCreated(Lcom/sec/android/app/launcher/data/FolderItem;)V

    return-void
.end method

.method private reset()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mCreateFolderMode:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->destroyOpenFolderView()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->destroy()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mDroppedItemClone:Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mDroppedItemClone:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->destroy()V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->destroy()V

    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mCreateFolderMode:Z

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mDroppedItemClone:Lcom/sec/android/app/launcher/data/HomeItem;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mNewlySelectedApps:Ljava/util/List;

    return-void
.end method

.method private showAppsSelector(Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mNewlySelectedApps:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showAppsSelector(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;)V

    return-void
.end method


# virtual methods
.method protected abstract addDroppedItemToFolder(Z)V
.end method

.method protected abstract arrangeItemsInFolder(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;I)V"
        }
    .end annotation
.end method

.method public createFolder(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mNewlySelectedApps:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->createFolderWithDroppedItem(Lcom/sec/daliviews/views/Item;Z)V

    invoke-virtual {p2, v2}, Lcom/sec/daliviews/views/Item;->setPos(I)V

    invoke-virtual {p2, v2}, Lcom/sec/daliviews/views/Item;->setCustomPos(I)V

    invoke-virtual {p2, v2}, Lcom/sec/daliviews/views/Item;->setCellX(I)V

    invoke-virtual {p2, v1}, Lcom/sec/daliviews/views/Item;->setCellY(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0, p2, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->addItem(Lcom/sec/daliviews/views/Item;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->commitFolder()I

    move-result v0

    return v0
.end method

.method public createFolder(Lcom/sec/daliviews/views/Item;ZLandroid/graphics/Rect;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mNewlySelectedApps:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->createFolderWithDroppedItem(Lcom/sec/daliviews/views/Item;Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->CREATE:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    invoke-virtual {v0, v1, v2, p3}, Lcom/sec/android/app/launcher/data/FolderItem;->openFolder(ZLcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;Landroid/graphics/Rect;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    return-void
.end method

.method protected abstract createInitialFolder()Lcom/sec/android/app/launcher/data/FolderItem;
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method protected abstract finalizeFolder()V
.end method

.method protected getDataManager()Lcom/sec/android/app/launcher/data/DataManager;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDataManager()Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v0

    return-object v0
.end method

.method protected abstract notifyFolderCreated(Lcom/sec/android/app/launcher/data/FolderItem;)V
.end method

.method public onAddIconClick(Lcom/sec/android/app/launcher/data/FolderItem;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mOpenForSelectionListener:Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/launcher/data/FolderItem;->registerFolderOpenListener(Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;)V

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mCreateFolderMode:Z

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/sec/android/app/launcher/data/FolderItem;->closeFolder(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move v0, v1

    goto :goto_0
.end method

.method public onAppSelectionCancelled()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mNewlySelectedApps:Ljava/util/List;

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mCreateFolderMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->commitFolder()I

    :cond_0
    return-void
.end method

.method public onAppsSelected(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mNewlySelectedApps:Ljava/util/List;

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mCreateFolderMode:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->commitFolder()I

    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mNewlySelectedApps:Ljava/util/List;

    return-void

    :cond_1
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getDataConnector()Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->removeItemsFromOldContainers(Z)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mNewlySelectedApps:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->prepareItemsToAdd(Lcom/sec/android/app/launcher/data/FolderItem;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->addItemsToFolder(Lcom/sec/android/app/launcher/data/FolderItem;Ljava/util/List;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->updateItemsInFolder(Lcom/sec/android/app/launcher/data/FolderItem;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->commitFolder()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onColorSelected(Lcom/sec/android/app/launcher/data/FolderItem;I)V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mCreateFolderMode:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDataConnector()Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->updateItem(Lcom/sec/daliviews/views/Item;)I

    :cond_0
    return-void
.end method

.method public onHomePressed()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->commitFolder()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDonePressed(Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->commitFolder()I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 12

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mCreateFolderMode:Z

    if-nez v8, :cond_0

    const-string v6, "new_folder_mode"

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    if-nez v8, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->commitFolder()I

    const-string v6, "new_folder_mode"

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-boolean v7, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mCreateFolderMode:Z

    goto :goto_0

    :cond_1
    const-string v8, "new_folder_mode"

    invoke-virtual {p1, v8, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->saveFolderPosition(Landroid/os/Bundle;)V

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTitle()Ljava/lang/String;

    move-result-object v5

    const-string v8, "folder_title"

    invoke-virtual {p1, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTitleSelectionStart()I

    move-result v4

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTitleSelectionEnd()I

    move-result v3

    const-string v8, "folder_title_sel_start"

    invoke-virtual {p1, v8, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "folder_title_sel_end"

    invoke-virtual {p1, v8, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-direct {p0, v8}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->getOriginalItem(Lcom/sec/android/app/launcher/data/HomeItem;)Lcom/sec/android/app/launcher/data/HomeItem;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v8, "folder_drop_item_db_id"

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/DataItemBase;->getDbId()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {p1, v8, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "folder_drop_item_src"

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/DataItemBase;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->ordinal()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "folder_drop_item_cloned"

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mDroppedItemClone:Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v9, :cond_3

    :goto_1
    invoke-virtual {p1, v8, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenViewPosition()Landroid/graphics/Point;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getHeight()I

    move-result v9

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v6, "open_folder_position"

    invoke-virtual {p1, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    :cond_3
    move v6, v7

    goto :goto_1

    :cond_4
    const-string v6, "folder_drop_item_db_id"

    const-wide/16 v8, -0x1

    invoke-virtual {p1, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2
.end method

.method public onTitleChanged(Lcom/sec/android/app/launcher/data/FolderItem;Ljava/lang/String;)V
    .locals 3

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mCreateFolderMode:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDataConnector()Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->updateItem(Lcom/sec/daliviews/views/Item;)I

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-nez v2, :cond_1

    check-cast v1, Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->insertLoggingFolderNameStatus()Z

    :goto_0
    return-void

    :cond_1
    check-cast v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->insertLoggingFolderNameStatus()Z

    goto :goto_0
.end method

.method public openFolder(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;ZLandroid/graphics/Rect;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->SELECT:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    invoke-static {p2, v0}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/data/FolderItem;->setFolderEditListener(Lcom/sec/android/app/launcher/data/FolderItem$IFolderEditListener;)V

    :cond_0
    invoke-virtual {p1, p3, p2, p4}, Lcom/sec/android/app/launcher/data/FolderItem;->openFolder(ZLcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;Landroid/graphics/Rect;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    return-void
.end method

.method protected abstract prepareItemsToAdd(Lcom/sec/android/app/launcher/data/FolderItem;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/launcher/data/FolderItem;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract removeItemsFromOldContainers(Z)V
.end method

.method protected replaceCloneWithDroppedItem()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mDroppedItemClone:Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->isClone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mDroppedItem:Lcom/sec/android/app/launcher/data/HomeItem;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mDroppedItemClone:Lcom/sec/android/app/launcher/data/HomeItem;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/data/FolderItem;->replaceItem(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;Z)V

    :cond_0
    return-void
.end method

.method protected abstract restoreFolderPosition(Landroid/os/Bundle;)V
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 10

    const-string v7, "new_folder_mode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mCreateFolderMode:Z

    iget-boolean v7, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mCreateFolderMode:Z

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v7, "folder_drop_item_db_id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-wide/16 v8, -0x1

    cmp-long v7, v4, v8

    if-eqz v7, :cond_1

    const-string v7, "folder_drop_item_src"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->fromInt(I)Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v6

    const-string v7, "folder_drop_item_cloned"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->getDataManager()Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v6, v4, v5}, Lcom/sec/android/app/launcher/data/DataManager;->loadItemWithDbId(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;J)Lcom/sec/daliviews/views/Item;

    move-result-object v3

    :cond_1
    invoke-direct {p0, v3, v1}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->createFolderWithDroppedItem(Lcom/sec/daliviews/views/Item;Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->restoreFolderPosition(Landroid/os/Bundle;)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    const-string v8, "folder_title"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/launcher/data/FolderItem;->setTitle(Ljava/lang/String;)V

    const-string v7, "open_folder_position"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    const/4 v8, 0x0

    sget-object v9, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->CREATE:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    invoke-virtual {v7, v8, v9, v0}, Lcom/sec/android/app/launcher/data/FolderItem;->openFolder(ZLcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;Landroid/graphics/Rect;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/FolderEditorBase;->mOpenFolderView:Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    goto :goto_0
.end method

.method protected abstract saveFolderPosition(Landroid/os/Bundle;)V
.end method
