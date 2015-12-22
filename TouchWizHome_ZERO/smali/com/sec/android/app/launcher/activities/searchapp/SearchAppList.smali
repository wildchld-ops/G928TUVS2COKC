.class public Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;
.super Landroid/app/Activity;
.source "SearchAppList.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;,
        Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$SearchFilter;,
        Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;,
        Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$Filter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Searchapp.SearchAppList"


# instance fields
.field private apps:Landroid/widget/ListView;

.field listener:Landroid/widget/AdapterView$OnItemClickListener;

.field mAdapter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

.field private mAddButton:Landroid/widget/TextView;

.field private mAppContext:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

.field public mAppData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

.field private mFreshActivity:Z

.field private mIndexView:Landroid/view/View;

.field mListView:Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListContainer;

.field private mMode:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

.field private mPreCheckedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mSearchEdit:Landroid/widget/SearchView;

.field private mSearchLayout:Landroid/view/View;

.field private mSelectionAll:Landroid/widget/CheckBox;

.field private mSelectionLayout:Landroid/widget/LinearLayout;

.field private mSelectionText:Landroid/widget/TextView;

.field private mSkippedFirst:Z

.field private mSupportSearchIndex:Z

.field private srcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    sget-object v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;->SEARCH:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mMode:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAppContext:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mPreCheckedItems:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSupportSearchIndex:Z

    new-instance v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$3;-><init>(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$4;-><init>(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSelectionAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->addToFolder()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAppContext:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->setPreCheckedOfFolderApp()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mMode:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSupportSearchIndex:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mIndexView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->setSelectionCount()V

    return-void
.end method

.method private addToFolder()V
    .locals 28

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDataManager()Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v20

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v21

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v25

    const-string v2, "SearchAppList"

    const-string v3, "SearchAppList::addToFolder() start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SearchAppList"

    const-string v3, "SearchAppList::addToFolder() query"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent like \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "itemType ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_2

    const-string v2, "Searchapp.SearchAppList"

    const-string v3, "can not find item"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "componentName=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "itemType ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    goto :goto_1

    :cond_2
    const-string v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move/from16 v0, v18

    int-to-long v6, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6, v7}, Lcom/sec/android/app/launcher/data/DataManager;->getItemWithDbId(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;J)Lcom/sec/daliviews/views/Item;

    move-result-object v19

    :goto_2
    if-nez v19, :cond_4

    const-string v2, "Searchapp.SearchAppList"

    const-string v3, "item is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_3
    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move/from16 v0, v18

    int-to-long v6, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6, v7}, Lcom/sec/android/app/launcher/data/DataManager;->getItemWithDbId(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;J)Lcom/sec/daliviews/views/Item;

    move-result-object v19

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemCount()I

    move-result v26

    move-object/from16 v0, v25

    instance-of v2, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v2, :cond_7

    move-object/from16 v8, v25

    check-cast v8, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_5

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v8, v0, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->detachItems(Ljava/util/List;Z)V

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    :cond_5
    invoke-virtual/range {v19 .. v19}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_6

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/daliviews/views/Item;->getCustomContainerId()I

    move-result v3

    int-to-long v6, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6, v7}, Lcom/sec/android/app/launcher/data/DataManager;->getItemWithDbId(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;J)Lcom/sec/daliviews/views/Item;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/launcher/data/FolderItem;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->removeItem(Lcom/sec/daliviews/views/Item;)V

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemCount()I

    move-result v2

    if-gtz v2, :cond_6

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/views/ListAdapter;->removeItem(Lcom/sec/daliviews/views/Item;)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v2

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/views/Item;->setCustomPosition(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/data/FolderItem;->addItem(Lcom/sec/daliviews/views/Item;)V

    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_7
    const/4 v10, 0x0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {v19 .. v19}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_9

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v3

    int-to-long v6, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6, v7}, Lcom/sec/android/app/launcher/data/DataManager;->getItemWithDbId(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;J)Lcom/sec/daliviews/views/Item;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/launcher/data/FolderItem;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->removeItem(Lcom/sec/daliviews/views/Item;)V

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_8

    move-object/from16 v0, v25

    check-cast v0, Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-object v2, v0

    move-object/from16 v0, v25

    check-cast v0, Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v3

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onReplaceFolderToItems(Lcom/sec/android/app/launcher/data/FolderItem;I)V

    :cond_8
    :goto_4
    rem-int v2, v26, v21

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/Item;->setCellX(I)V

    div-int v2, v26, v21

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/Item;->setCellY(I)V

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/Item;->setPos(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/data/FolderItem;->addItem(Lcom/sec/daliviews/views/Item;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_3

    :cond_9
    :try_start_1
    move-object/from16 v0, v25

    check-cast v0, Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-object v2, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenter(I)Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v24

    const/16 v27, 0x0

    if-eqz v24, :cond_a

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v27

    :goto_5
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ListAdapter;->removeItem(Lcom/sec/daliviews/views/Item;)Z

    goto :goto_4

    :cond_a
    move-object/from16 v0, v25

    check-cast v0, Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v27

    goto :goto_5

    :cond_b
    invoke-virtual/range {v19 .. v19}, Lcom/sec/daliviews/views/Item;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/daliviews/views/Item;

    move-object v10, v0

    move-object v0, v10

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    move-object/from16 v16, v0

    move-object/from16 v0, v19

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/data/HomeItem;->loadIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/data/HomeItem;->setIconImage(Landroid/graphics/Bitmap;)V

    invoke-virtual {v10}, Lcom/sec/daliviews/views/Item;->onCreateItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v11

    check-cast v11, Lcom/sec/daliviews/views/IconView;

    move-object v0, v10

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/HomeItem;->getCurrentMode()I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sec/daliviews/views/IconView;->changeMode(I)V

    invoke-virtual {v10, v11}, Lcom/sec/daliviews/views/Item;->linkItemView(Lcom/sec/daliviews/views/NativeViewBase;)V

    rem-int v2, v26, v21

    invoke-virtual {v10, v2}, Lcom/sec/daliviews/views/Item;->setCellX(I)V

    div-int v2, v26, v21

    invoke-virtual {v10, v2}, Lcom/sec/daliviews/views/Item;->setCellY(I)V

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/sec/daliviews/views/Item;->setPos(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/sec/daliviews/views/Item;->setContainerId(I)V

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/sec/daliviews/views/Item;->setContainerType(I)V

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v10}, Lcom/sec/android/app/launcher/data/DataManager;->insertItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)Landroid/net/Uri;

    const/4 v2, -0x2

    invoke-virtual {v10, v2}, Lcom/sec/daliviews/views/Item;->setContainerId(I)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, v25

    instance-of v2, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-nez v2, :cond_d

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getDataConnector()Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v12, v2}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->updateItemsInFolder(Lcom/sec/android/app/launcher/data/FolderItem;)V

    :cond_e
    move-object/from16 v0, v25

    instance-of v2, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v2, :cond_f

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PagedListAdapter;->reorderItems()V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->finish()V

    return-void
.end method

.method public static launchApp(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 4

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MENU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch. tag= intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "MENU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private populateData()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->apps:Landroid/widget/ListView;

    if-nez v0, :cond_0

    const v0, 0x7f0b011c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->apps:Landroid/widget/ListView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->apps:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private setFolderMultiSelectionView()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;->FOLDER:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mMode:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSelectionLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSelectionAll:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$1;-><init>(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAddButton:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$2;-><init>(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->setSelectionCount()V

    return-void
.end method

.method private setPreCheckedOfFolderApp()V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mMode:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    sget-object v5, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;->FOLDER:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    instance-of v4, v1, Lcom/sec/android/app/launcher/data/LauncherItem;

    if-eqz v4, :cond_2

    move-object v4, v1

    check-cast v4, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/LauncherItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mPreCheckedItems:Ljava/util/ArrayList;

    check-cast v1, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mPreCheckedItems:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mPreCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mPreCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->setChecked(Z)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->setEnabled(Z)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->setSelectionCount()V

    goto :goto_0
.end method

.method private setSelectionCount()V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSelectionText:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSelectionAll:Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v7, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mFreshActivity:Z

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mContext:Landroid/content/Context;

    const v3, 0x7f030051

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->setContentView(I)V

    const v3, 0x7f0b011e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mIndexView:Landroid/view/View;

    const v3, 0x7f0b011a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSearchLayout:Landroid/view/View;

    const v3, 0x7f0b0114

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSelectionLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0b0116

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSelectionAll:Landroid/widget/CheckBox;

    const v3, 0x7f0b0118

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSelectionText:Landroid/widget/TextView;

    const v3, 0x7f0b0119

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAddButton:Landroid/widget/TextView;

    new-instance v3, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

    invoke-direct {v3, p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAppContext:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAppContext:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->getMoreAppsListState()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAppContext:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->loadApps(Z)V

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAppContext:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

    iget-object v4, v4, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mOtherAppsList:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mApps:Ljava/util/ArrayList;

    const v3, 0x7f0b00d6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSearchEdit:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v3, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSearchEdit:Landroid/widget/SearchView;

    const-string v4, ""

    invoke-virtual {v3, v4, v6}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v3, v7}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v3, v6}, Landroid/widget/SearchView;->setFocusable(Z)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSkippedFirst:Z

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->supportSearchIndex()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSupportSearchIndex:Z

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSupportSearchIndex:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSearchLayout:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v3, 0x7f0b011b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListContainer;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mListView:Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListContainer;

    new-instance v3, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    invoke-direct {v3, p0, p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;-><init>(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAdapter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAdapter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->runFilter()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mListView:Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListContainer;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListContainer;->requestFocus()Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v3, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->ACTION_UPDATE_DATA:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "folder"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, -0x1

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->setFolderMultiSelectionView()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "folderSourceType"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "foldrID"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v2, v7, :cond_4

    sget-object v3, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->srcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    :goto_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDataManager()Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->srcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    int-to-long v6, v1

    invoke-virtual {v3, v4, v6, v7}, Lcom/sec/android/app/launcher/data/DataManager;->getItemWithDbId(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;J)Lcom/sec/daliviews/views/Item;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/data/FolderItem;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAdapter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mListView:Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListContainer;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAdapter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/searchapp/AlphabeticalListContainer;->setAdapter(Landroid/widget/BaseAdapter;)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->populateData()V

    return-void

    :cond_4
    sget-object v3, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->srcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAppContext:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAppContext:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAdapter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAdapter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->unBind()V

    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->apps:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAdapter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSkippedFirst:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAdapter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->runFilter()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSkippedFirst:Z

    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSearchEdit:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    :cond_1
    return v3
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mFreshActivity:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mFreshActivity:Z

    :cond_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSearchEdit:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    :cond_1
    return-void
.end method

.method public supportSearchIndex()Z
    .locals 3

    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "CHINA"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
