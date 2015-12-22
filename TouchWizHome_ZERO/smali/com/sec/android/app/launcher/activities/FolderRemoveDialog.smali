.class public Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;
.super Landroid/app/DialogFragment;
.source "FolderRemoveDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderRemoveDialog"

.field private static mAppsListColumnCount:I = 0x0

.field private static mAppsListRowCount:I = 0x0

.field private static mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter; = null

.field private static mDataManager:Lcom/sec/android/app/launcher/data/DataManager; = null

.field private static mDragStartPage:I = 0x0

.field private static mFolder:Lcom/sec/android/app/launcher/data/FolderItem; = null

.field private static mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter; = null

.field private static resources:Landroid/content/res/Resources; = null

.field private static final sFragmentTag:Ljava/lang/String; = "FolderRemoveConfirm"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    sput-object v1, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sput v0, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mDragStartPage:I

    sput-object v1, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    sput v0, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mAppsListColumnCount:I

    sput v0, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mAppsListRowCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createAndShow(Landroid/app/FragmentManager;Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/data/FolderItem;II)Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sput-object p3, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    sput-object p1, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    sput-object p2, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sput p5, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mDragStartPage:I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDataManager()Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->resources:Landroid/content/res/Resources;

    sget-object v1, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsListColumnCount()I

    move-result v1

    sput v1, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mAppsListColumnCount:I

    sget-object v1, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsListRowCount()I

    move-result v1

    sput v1, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mAppsListRowCount:I

    :cond_1
    new-instance v0, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;-><init>()V

    const-string v1, "FolderRemoveConfirm"

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2

    const-string v1, "FolderRemoveConfirm"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    return-void
.end method

.method private findLastItemInCustomMode(Ljava/util/List;)Lcom/sec/android/app/launcher/data/LauncherItem;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)",
            "Lcom/sec/android/app/launcher/data/LauncherItem;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/launcher/data/LauncherItem;

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/data/LauncherItem;->isCustomPositionAfter(Lcom/sec/android/app/launcher/data/LauncherItem;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_4
    move-object v2, v0

    goto :goto_0
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1

    const-string v0, "FolderRemoveConfirm"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 16

    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_8

    sget-object v3, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v3, :cond_6

    const/4 v14, 0x0

    sget v3, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mAppsListColumnCount:I

    sget v4, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mAppsListRowCount:I

    mul-int v13, v3, v4

    sget-object v3, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->sortItemsInCustomPosOrder()V

    sget-object v3, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v10

    sget-object v3, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/data/FolderItem;->detachAllItems(Z)V

    if-eqz v10, :cond_4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    sget-object v3, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->findLastItemInCustomMode(Ljava/util/List;)Lcom/sec/android/app/launcher/data/LauncherItem;

    move-result-object v11

    if-nez v11, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v11}, Lcom/sec/android/app/launcher/data/LauncherItem;->getCustomContainerId()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->getCustomContainerId()I

    move-result v4

    if-eq v3, v4, :cond_2

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/data/LauncherItem;->getCustomPos()I

    move-result v3

    add-int/lit8 v14, v3, 0x1

    :goto_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/daliviews/views/Item;

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/sec/daliviews/views/Item;->setContainerType(I)V

    if-lt v14, v13, :cond_3

    sget-object v3, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPagedAdapterView()Lcom/sec/daliviews/views/PagedAdapterView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/PagedAdapterView;->createAdditionalPages(I)V

    const/4 v14, 0x0

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/data/LauncherItem;->getCustomContainerId()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v9, v14, v3}, Lcom/sec/daliviews/views/Item;->setCustomPosition(II)V

    :goto_3
    invoke-virtual {v9}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v9}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v9}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Lcom/sec/android/app/launcher/views/HomeItemView;->setTitleAttribute(II)V

    :cond_1
    move-object v11, v9

    check-cast v11, Lcom/sec/android/app/launcher/data/LauncherItem;

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v11}, Lcom/sec/android/app/launcher/data/LauncherItem;->getCustomPos()I

    move-result v14

    goto :goto_1

    :cond_3
    invoke-virtual {v11}, Lcom/sec/android/app/launcher/data/LauncherItem;->getCustomContainerId()I

    move-result v3

    invoke-virtual {v9, v14, v3}, Lcom/sec/daliviews/views/Item;->setCustomPosition(II)V

    goto :goto_3

    :cond_4
    sget-object v3, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    sget-object v4, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v3, v4, v10}, Lcom/sec/android/app/launcher/data/DataManager;->updateItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;)V

    sget-object v3, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    sget-object v4, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    sget-object v5, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/launcher/data/DataManager;->deleteItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    const-string v4, "DTAF"

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_5
    :goto_4
    const/4 v3, 0x0

    sput-object v3, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    const/4 v3, 0x0

    sput-object v3, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    goto/16 :goto_0

    :cond_6
    sget-object v3, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v3

    add-int/lit8 v12, v3, -0x1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v12, v12, -0x1

    :cond_7
    sget-object v3, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v4, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3, v4, v12}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onReplaceFolderToItems(Lcom/sec/android/app/launcher/data/FolderItem;I)V

    goto :goto_4

    :cond_8
    const/4 v3, -0x2

    move/from16 v0, p2

    if-ne v0, v3, :cond_9

    sget-object v3, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v3, :cond_9

    sget-object v3, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v4, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    sget v5, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mDragStartPage:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->restoreFolderItem(Lcom/sec/android/app/launcher/data/FolderItem;IZ)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->removeFocus()V

    goto :goto_4

    :cond_9
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->removeFocus()V

    goto :goto_4
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    const v10, 0x7f0d009e

    const v7, 0x7f0d009c

    const v9, 0x7f0d009a

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v4, "VZW"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-object v4, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->resources:Landroid/content/res/Resources;

    if-nez v4, :cond_0

    const-string v4, "FolderRemoveDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreateDialog() resource is null : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0d0099

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :cond_0
    sget-object v4, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v4, ""

    sget-object v5, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseFolderPopup:Z

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    sget-object v4, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->resources:Landroid/content/res/Resources;

    const v5, 0x7f0d009d

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/data/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    sget-boolean v4, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseFolderPopup:Z

    if-eqz v4, :cond_7

    if-eqz v1, :cond_6

    sget-object v4, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->resources:Landroid/content/res/Resources;

    const v5, 0x7f0d009b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    goto :goto_0

    :cond_1
    sget-object v4, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->resources:Landroid/content/res/Resources;

    new-array v5, v6, [Ljava/lang/Object;

    sget-object v6, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->resources:Landroid/content/res/Resources;

    new-array v5, v6, [Ljava/lang/Object;

    sget-object v6, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    sget-boolean v4, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseFolderPopup:Z

    if-eqz v4, :cond_5

    if-eqz v1, :cond_4

    sget-object v4, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->resources:Landroid/content/res/Resources;

    const v5, 0x7f0d009f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    goto :goto_1

    :cond_4
    sget-object v4, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->resources:Landroid/content/res/Resources;

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    sget-object v4, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->resources:Landroid/content/res/Resources;

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_6
    sget-object v4, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->resources:Landroid/content/res/Resources;

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    sget-object v4, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->resources:Landroid/content/res/Resources;

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v1, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    sget v2, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mDragStartPage:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->restoreFolderItem(Lcom/sec/android/app/launcher/data/FolderItem;IZ)V

    :cond_0
    sput-object v4, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    sput-object v4, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
