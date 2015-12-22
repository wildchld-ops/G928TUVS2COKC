.class public Lcom/sec/android/app/launcher/data/WidgetListItem;
.super Lcom/sec/android/app/launcher/data/IconItem;
.source "WidgetListItem.java"

# interfaces
.implements Lcom/sec/android/app/launcher/data/LauncherItem$TextHighlightable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCanUninstall:Ljava/lang/Boolean;

.field private mColourMap:Lcom/sec/daliviews/views/TextView$ColourMap;

.field private mFilteredItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFolderItem:Ljava/lang/Boolean;

.field private mItemView:Lcom/sec/daliviews/views/IconView;

.field private mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

.field private mShortcut:Z

.field private mShowPreviewImageOnly:Z

.field private mSiblings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanDescriptionFormat:Ljava/lang/String;

.field private mSpanTextFormat:Ljava/lang/String;

.field private mThemeName:Ljava/lang/String;

.field private mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

.field private mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mWidgetSpanX:I

.field private mWidgetSpanY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/data/WidgetListItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/IconItem;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSpanTextFormat:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSpanDescriptionFormat:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mItemView:Lcom/sec/daliviews/views/IconView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mShortcut:Z

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mFilteredItems:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mShowPreviewImageOnly:Z

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mCanUninstall:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mColourMap:Lcom/sec/daliviews/views/TextView$ColourMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mIsFolderItem:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mIsFolderItem:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mThemeName:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->MENU_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mItemType:I

    return-void
.end method

.method public constructor <init>(ZIILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/IconItem;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSpanTextFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSpanDescriptionFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mItemView:Lcom/sec/daliviews/views/IconView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mShortcut:Z

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mFilteredItems:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mShowPreviewImageOnly:Z

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mCanUninstall:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mColourMap:Lcom/sec/daliviews/views/TextView$ColourMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mIsFolderItem:Ljava/lang/Boolean;

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mShortcut:Z

    iput p2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetSpanX:I

    iput p3, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetSpanY:I

    invoke-static {p4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mPackageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mThemeName:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->MENU_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mItemType:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/data/WidgetListItem;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/launcher/data/WidgetListItem;Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;)Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    return-object p1
.end method

.method private checkPosibleToFolderWork()Z
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mIsFolderItem:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/app/launcher/data/WidgetListItem;->TAG:Ljava/lang/String;

    const-string v2, "Warning - This item isn\'t folder. Sibling work only can be excuted by Folder WidgetListItem"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/app/launcher/data/WidgetListItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This Item : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private createFolderView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mIsFolderItem:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->setWidgetListItem(Lcom/sec/android/app/launcher/data/WidgetListItem;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->registerDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ListAdapter;->addItems(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private destroyWidgetFolderView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->unparentAndDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    :cond_0
    return-void
.end method


# virtual methods
.method public addSibling(Lcom/sec/android/app/launcher/data/WidgetListItem;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->checkPosibleToFolderWork()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mFilteredItems:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/launcher/data/WidgetListItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning - Already have item. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->createFolderView()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    goto :goto_0
.end method

.method public applyAdapterFiltering()V
    .locals 7

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->createFolderView()V

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mFilteredItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mFilteredItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v5}, Lcom/sec/daliviews/views/ListAdapter;->detachItems(Ljava/util/List;)Z

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/ListAdapter;->addItems(Ljava/util/List;)V

    return-void
.end method

.method public applyTextHighlight(Ljava/lang/String;I)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->hasSiblings()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    new-instance v6, Lcom/sec/daliviews/views/TextView$ColourMap;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v6, v3, v7, p2}, Lcom/sec/daliviews/views/TextView$ColourMap;-><init>(III)V

    iput-object v6, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mColourMap:Lcom/sec/daliviews/views/TextView$ColourMap;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    if-eqz v5, :cond_1

    move-object v2, v5

    check-cast v2, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mColourMap:Lcom/sec/daliviews/views/TextView$ColourMap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mColourMap:Lcom/sec/daliviews/views/TextView$ColourMap;

    invoke-virtual {v4, v6}, Lcom/sec/daliviews/views/TextView;->applyTitleColourMap(Lcom/sec/daliviews/views/TextView$ColourMap;)V

    :cond_0
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mColourMap:Lcom/sec/daliviews/views/TextView$ColourMap;

    :cond_1
    return-void

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mFilteredItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    check-cast v1, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->applyTextHighlight(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public canUninstall()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mCanUninstall:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->canUninstall(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mCanUninstall:Ljava/lang/Boolean;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mCanUninstall:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public clearSibling()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->checkPosibleToFolderWork()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->hasSiblings()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public clearTextHighlight()V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->isFolderItem()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mColourMap:Lcom/sec/daliviews/views/TextView$ColourMap;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v3, v5

    check-cast v3, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/daliviews/views/TextView;->clearTitleColour()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    check-cast v2, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->clearTextHighlight()V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mFilteredItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public containsKeyword(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->hasSiblings()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/data/IconItem;->containsKeyword(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mFilteredItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/views/Item;->containsKeyword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mFilteredItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mFilteredItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/launcher/data/IconItem;->destroy()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->destroy()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->unregisterDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->destroyWidgetFolderView()V

    :cond_2
    return-void
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mShortcut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/utils/Utils;->getWidgetInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->INST:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mThemeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    goto :goto_0
.end method

.method public getAppWidgetInfo(Ljava/util/List;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)",
            "Landroid/appwidget/AppWidgetProviderInfo;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mShortcut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p1, v0}, Lcom/sec/android/app/launcher/utils/Utils;->getWidgetInfo(Ljava/util/List;Landroid/content/ComponentName;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->INST:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mThemeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    goto :goto_0
.end method

.method public getSiblingCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSiblings()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSpanDescription()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    const v1, 0x7f0d00be

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSpanDescriptionFormat:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSpanDescriptionFormat:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetSpanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetSpanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpanText()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSpanTextFormat:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetSpanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetSpanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetFolderView()Lcom/sec/android/app/launcher/views/WidgetFolderView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    return-object v0
.end method

.method public getWidgetSpanX()I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageColumns()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetSpanX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public getWidgetSpanY()I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageRows()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetSpanY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public getWidgetView()Lcom/sec/daliviews/views/IconView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mItemView:Lcom/sec/daliviews/views/IconView;

    return-object v0
.end method

.method public hasSiblings()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompatable(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFolderItem()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mIsFolderItem:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public loadPreviewImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->loadPreviewImage(Lcom/sec/daliviews/views/Item;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateItemView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    const v1, 0x7f03005b

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mItemView:Lcom/sec/daliviews/views/IconView;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mItemView:Lcom/sec/daliviews/views/IconView;

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/views/IconView;->registerDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mItemView:Lcom/sec/daliviews/views/IconView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->populateView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mItemView:Lcom/sec/daliviews/views/IconView;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    const v1, 0x7f03005a

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mItemView:Lcom/sec/daliviews/views/IconView;

    goto :goto_0
.end method

.method public onPeerDestroyed(Lcom/sec/daliviews/views/PeerBase;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/data/IconItem;->onPeerDestroyed(Lcom/sec/daliviews/views/PeerBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mItemView:Lcom/sec/daliviews/views/IconView;

    invoke-static {p1, v0}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->cancel()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mItemView:Lcom/sec/daliviews/views/IconView;

    return-void
.end method

.method public populateView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    instance-of v2, p1, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->createFolderView()V

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->setTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->isOpened()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, ""

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/sec/daliviews/views/NativeViewBase;->setLongClickable(Z)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->setSpanText(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->setWidgetFolderView(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->setTag(Ljava/lang/Object;)V

    :cond_2
    new-instance v2, Lcom/sec/android/app/launcher/data/WidgetListItem$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/launcher/data/WidgetListItem$1;-><init>(Lcom/sec/android/app/launcher/data/WidgetListItem;Lcom/sec/daliviews/views/NativeViewBase;)V

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->runLoadTask(Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    instance-of v2, p1, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    if-eqz v2, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mShowPreviewImageOnly:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mColourMap:Lcom/sec/daliviews/views/TextView$ColourMap;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mColourMap:Lcom/sec/daliviews/views/TextView$ColourMap;

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->setTitle(Ljava/lang/String;Lcom/sec/daliviews/views/TextView$ColourMap;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mColourMap:Lcom/sec/daliviews/views/TextView$ColourMap;

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getSpanText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->setSpanText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getSpanDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->setSpanDescription(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->setTag(Ljava/lang/Object;)V

    :cond_5
    new-instance v2, Lcom/sec/android/app/launcher/data/WidgetListItem$2;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/launcher/data/WidgetListItem$2;-><init>(Lcom/sec/android/app/launcher/data/WidgetListItem;Lcom/sec/daliviews/views/NativeViewBase;)V

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mLoadTask:Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->runLoadTask(Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->setTitle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public removeSibling(Lcom/sec/android/app/launcher/data/WidgetListItem;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->checkPosibleToFolderWork()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/sec/android/app/launcher/data/WidgetListItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning - Try to uncontained item : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ListAdapter;->removeItem(Lcom/sec/daliviews/views/Item;)Z

    goto :goto_0
.end method

.method public resetAdapterFiltering()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ListAdapter;->addItems(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setAppWidgetInfo(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-void
.end method

.method public setFlagToShowPreviewOnly()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mShowPreviewImageOnly:Z

    return-void
.end method

.method public setFolderItem(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mIsFolderItem:Ljava/lang/Boolean;

    return-void
.end method

.method public setSpanDescriptionFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSpanDescriptionFormat:Ljava/lang/String;

    return-void
.end method

.method public setSpanTextFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSpanTextFormat:Ljava/lang/String;

    return-void
.end method

.method public update(Lcom/sec/daliviews/views/Item;)Z
    .locals 5

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/WidgetListItem;

    iget-boolean v2, v0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mShortcut:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mShortcut:Z

    iget v2, v0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetSpanX:I

    iput v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetSpanX:I

    iget v2, v0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetSpanY:I

    iput v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mWidgetSpanY:I

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mThemeName:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mThemeName:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mTitle:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mTitle:Ljava/lang/String;

    const/4 v1, 0x1

    :cond_0
    sget-object v2, Lcom/sec/android/app/launcher/data/WidgetListItem;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update mTitle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " item.mTitle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->updateTitles(Z)V

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/data/IconItem;->update(Lcom/sec/daliviews/views/Item;)Z

    move-result v2

    return v2
.end method

.method public updateTitles(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/IconView;

    instance-of v2, v0, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->setTitle(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v2, v0, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->setTitle(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->hasSiblings()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mSiblings:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/WidgetListItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/Item;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method
