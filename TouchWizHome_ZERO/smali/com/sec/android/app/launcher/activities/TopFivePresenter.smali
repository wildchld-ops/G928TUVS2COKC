.class public Lcom/sec/android/app/launcher/activities/TopFivePresenter;
.super Lcom/sec/android/app/launcher/activities/PresenterBase;
.source "TopFivePresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;
.implements Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;
.implements Lcom/sec/daliviews/views/AdapterView$OnItemTouchListener;
.implements Lcom/sec/android/app/launcher/data/DataManager$ILoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/TopFivePresenter$TopFiveFilter;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final TAG:Ljava/lang/String;

.field private static sIconHeight:I

.field private static sIconWidth:I

.field public static sIsTopFiveFolderOpened:Z

.field public static sTopFiveFolder:Lcom/sec/android/app/launcher/data/FolderItem;


# instance fields
.field private final mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

.field private final mAdapter:Lcom/sec/daliviews/views/ListAdapter;

.field private final mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

.field private mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

.field private mAppsTransitionDuration:F

.field private mBackgroundView:Lcom/sec/daliviews/views/NativeViewBase;

.field private final mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

.field private mDragListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

.field private mDroppedOnFolder:Z

.field private mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

.field private mIsExitFromTopFiveSpace:Z

.field private mIsTopFiveItem:Z

.field public mIsTopListChanged:Z

.field private mLayout:Lcom/sec/daliviews/layouts/GridLayout;

.field private mLoadingCancelled:Z

.field private mPageAnimDuration:F

.field private mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

.field private mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

.field private mTopFiveBackgroundZoominPosition:F

.field private mTopFiveFadeInAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mTopFiveFadeInAnimSetWithNoScale:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mTopFiveFadeOutAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mTopFiveFadeOutAnimSetWithNoScale:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mTopFiveItemPositionY:F

.field private mTopFiveMaxCount:I

.field private mTopFiveScaleDownAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mTopFiveScaleUpAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const-class v0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->DEBUGGABLE:Z

    sput v1, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->sIconWidth:I

    sput v1, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->sIconHeight:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->sIsTopFiveFolderOpened:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->sTopFiveFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/launcher/views/TopFiveAdapterView;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v1, Lcom/sec/android/app/launcher/activities/TopFivePresenter$TopFiveFilter;

    invoke-direct {v1, v3}, Lcom/sec/android/app/launcher/activities/TopFivePresenter$TopFiveFilter;-><init>(Lcom/sec/android/app/launcher/activities/TopFivePresenter$1;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/PresenterBase;-><init>(Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;)V

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_UNKNOWN:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iput v2, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mPageAnimDuration:F

    iput v2, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveBackgroundZoominPosition:F

    iput v2, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveItemPositionY:F

    iput v2, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsTransitionDuration:F

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v1, 0x5

    iput v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveMaxCount:I

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mIsExitFromTopFiveSpace:Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mIsTopFiveItem:Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mIsTopListChanged:Z

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveScaleDownAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveScaleUpAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeInAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeOutAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeInAnimSetWithNoScale:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeOutAnimSetWithNoScale:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mLoadingCancelled:Z

    new-instance v1, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter$3;-><init>(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mDragListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iput-object p3, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->sIconHeight:I

    sput v1, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->sIconWidth:I

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    const v2, 0x7f0b00a0

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mBackgroundView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->setDragEventInterest(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->setContainerTypeAndId(II)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->setTopFivePresenter(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)V

    :cond_0
    new-instance v1, Lcom/sec/daliviews/views/ListAdapter;

    invoke-direct {v1, v4}, Lcom/sec/daliviews/views/ListAdapter;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    const v1, 0x7f0c0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f0c0047

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveMaxCount:I

    const v1, 0x7f0a004a

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsTransitionDuration:F

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDataManager()Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/sec/android/app/launcher/data/DataManager;->checkItemLoading(Lcom/sec/android/app/launcher/data/DataManager$ILoadCompleteListener;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Landroid/os/Bundle;Z)V

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/launcher/activities/TopFivePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mDroppedOnFolder:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/daliviews/layouts/GridLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mLayout:Lcom/sec/daliviews/layouts/GridLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mIsTopFiveItem:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/launcher/activities/TopFivePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mIsTopFiveItem:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mIsExitFromTopFiveSpace:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/launcher/activities/TopFivePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mIsExitFromTopFiveSpace:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/views/TopFiveAdapterView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/daliviews/views/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveMaxCount:I

    return v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)Lcom/sec/android/app/launcher/data/DataManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    return-object v0
.end method

.method private getFolderBoundingBox()Landroid/graphics/Rect;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderBoundingBox()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private populateView()V
    .locals 13

    const/4 v12, 0x0

    sget-object v9, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->TAG:Ljava/lang/String;

    const-string v10, "populateView()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    sget-object v11, Lcom/sec/android/app/launcher/data/DataManager$SortType;->ITEMS_TO_SHOW_ONLY:Lcom/sec/android/app/launcher/data/DataManager$SortType;

    invoke-virtual {v9, v10, p0, v12, v11}, Lcom/sec/android/app/launcher/data/DataManager;->getItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;ZLcom/sec/android/app/launcher/data/DataManager$SortType;)Ljava/util/List;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v9, p0, v10}, Lcom/sec/android/app/launcher/data/DataManager;->registerDataListener(Lcom/sec/android/app/launcher/data/DataManager$IDataListener;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    const/4 v7, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_8

    move-object v9, v3

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/sec/android/app/launcher/utils/Utils;->sortItemsByCellPos(Ljava/util/List;)V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v9

    check-cast v9, Lcom/sec/daliviews/layouts/GridLayout;

    iput-object v9, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mLayout:Lcom/sec/daliviews/layouts/GridLayout;

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mLayout:Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v9, v12}, Lcom/sec/daliviews/layouts/GridLayout;->setDancingIcons(Z)V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mLayout:Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v9}, Lcom/sec/daliviews/layouts/GridLayout;->getColumnCount()I

    move-result v0

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mLayout:Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v9}, Lcom/sec/daliviews/layouts/GridLayout;->getRowCount()I

    move-result v8

    mul-int v6, v0, v8

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    sget-boolean v9, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->DEBUGGABLE:Z

    if-eqz v9, :cond_1

    sget-object v9, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "item, getTitle() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / getCellX() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / pos : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v9, v6, -0x1

    if-ne v7, v9, :cond_3

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    sget-object v9, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->TAG:Ljava/lang/String;

    const-string v10, "<<<updateItemsPositions>>>"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    sget-object v9, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    item.getTitle(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", item.getCellX(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v9

    if-eq v9, v7, :cond_4

    invoke-virtual {v2, v7}, Lcom/sec/daliviews/views/Item;->setCellX(I)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v2, v7}, Lcom/sec/daliviews/views/Item;->setPos(I)V

    invoke-virtual {v2, v12}, Lcom/sec/daliviews/views/Item;->setCellY(I)V

    instance-of v9, v2, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v2

    check-cast v9, Lcom/sec/android/app/launcher/data/HomeItem;

    const v10, 0x7f0b00de

    invoke-virtual {v9, v10}, Lcom/sec/android/app/launcher/data/HomeItem;->setCurrentMode(I)V

    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    move-object v9, v2

    check-cast v9, Lcom/sec/android/app/launcher/data/HomeItem;

    const v10, 0x7f0b00dc

    invoke-virtual {v9, v10}, Lcom/sec/android/app/launcher/data/HomeItem;->setCurrentMode(I)V

    goto :goto_2

    :cond_7
    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v9, v10, v5, v12}, Lcom/sec/android/app/launcher/data/DataManager;->updateItemsPositions(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;Z)V

    :cond_8
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {p0, v7}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->populateAllApps(I)V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v9, v4}, Lcom/sec/daliviews/views/ListAdapter;->addItems(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->setLayout()V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v9, v10}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->setAdapter(Lcom/sec/daliviews/views/Adapter;)V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    invoke-virtual {v9, p0}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->setOnItemClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;)V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    invoke-virtual {v9, p0}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->setOnItemLongClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;)V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    invoke-virtual {v9, p0}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->setOnItemTouchListener(Lcom/sec/daliviews/views/AdapterView$OnItemTouchListener;)V

    return-void
.end method

.method private scaleDownAnimWithBg()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveScaleDownAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mBackgroundView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mBackgroundView:Lcom/sec/daliviews/views/NativeViewBase;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mPageAnimDuration:F

    invoke-virtual {v0, v4, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibilityAnimated(IF)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mBackgroundView:Lcom/sec/daliviews/views/NativeViewBase;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveBackgroundZoominPosition:F

    invoke-virtual {v0, v3, v1, v3, v4}, Lcom/sec/daliviews/views/NativeViewBase;->setPosition(FFFZ)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mBackgroundView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v3, v3, v3, v5}, Lcom/sec/daliviews/views/NativeViewBase;->setPosition(FFFZ)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveItemPositionY:F

    invoke-virtual {v0, v3, v1, v3, v5}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->setPosition(FFFZ)V

    :cond_2
    return-void
.end method

.method private scaleUpAnimWithBg()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveScaleUpAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mBackgroundView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mBackgroundView:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mPageAnimDuration:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibilityAnimated(IF)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mBackgroundView:Lcom/sec/daliviews/views/NativeViewBase;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveBackgroundZoominPosition:F

    invoke-virtual {v0, v3, v1, v3, v4}, Lcom/sec/daliviews/views/NativeViewBase;->setPosition(FFFZ)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    invoke-virtual {v0, v3, v3, v3, v4}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->setPosition(FFFZ)V

    :cond_2
    return-void
.end method

.method private updateTopFiveItems(Lcom/sec/daliviews/views/Item;)V
    .locals 9

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getPos()I

    move-result v0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getPos()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    if-eq v2, v6, :cond_0

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/Item;->setPos(I)V

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/Item;->setCellX(I)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Lcom/sec/android/app/launcher/data/DataManager;->updateItemsPositions(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addTopFiveItem(Lcom/sec/daliviews/views/Item;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveMaxCount:I

    if-lt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sec/daliviews/views/Item;->setContainerType(I)V

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/Item;->setContainerId(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/daliviews/views/Item;->setPosition(III)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v0, p1, v1}, Lcom/sec/daliviews/views/ListAdapter;->addItem(Lcom/sec/daliviews/views/Item;Z)V

    move v0, v1

    goto :goto_0
.end method

.method public canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/app/launcher/views/FolderView;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public correctPos(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveMaxCount:I

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/Item;->setCellX(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getPos()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getPos()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/Item;->setPos(I)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mLoadingCancelled:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/launcher/data/DataManager;->unregisterDataListener(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveScaleDownAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveScaleDownAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveScaleUpAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveScaleUpAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeInAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeInAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeOutAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeOutAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeInAnimSetWithNoScale:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeInAnimSetWithNoScale:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeOutAnimSetWithNoScale:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeOutAnimSetWithNoScale:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_8
    return-void
.end method

.method public detachItem(Lcom/sec/android/app/launcher/data/HomeItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ListAdapter;->detachItem(Lcom/sec/daliviews/views/Item;)Z

    :cond_0
    return-void
.end method

.method public fadeInAnimateTopFive()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeInAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start()V

    :cond_0
    return-void
.end method

.method public fadeInNoScaleAnimateTopFive()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeInAnimSetWithNoScale:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start()V

    :cond_0
    return-void
.end method

.method public fadeOutAnimateTopFive()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeOutAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start()V

    :cond_0
    return-void
.end method

.method public fadeOutNoScaleAnimateTopFive()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeOutAnimSetWithNoScale:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start()V

    :cond_0
    return-void
.end method

.method public getAdapter()Lcom/sec/daliviews/views/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    return-object v0
.end method

.method public getAppsIconViewPos()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppsItem()Lcom/sec/android/app/launcher/data/HomeItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    return-object v0
.end method

.method public getDragListener()Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mDragListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    return-object v0
.end method

.method public getItemAt(I)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    goto :goto_0
.end method

.method public getRootView()Lcom/sec/daliviews/views/ContainerViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    return-object v0
.end method

.method public hideTopFive()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->fadeOutAnimateTopFive()V

    return-void
.end method

.method public onItemAdded(Lcom/sec/daliviews/views/Item;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->TAG:Ljava/lang/String;

    const-string v1, "TopFive::onItemAdded mAdapter is null..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveMaxCount:I

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TopFive::onItemAdded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " itemSourceType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TopFive::onItemAdded trying to add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->updateTopFiveItems(Lcom/sec/daliviews/views/Item;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setMainHomeScreenshot(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->setLayout()V

    goto :goto_0
.end method

.method public onItemBadgeUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setTakescreenshot()V

    return-void
.end method

.method public onItemClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->genClick(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDragState()I

    move-result v7

    const/4 v1, 0x3

    if-ne v7, v1, :cond_2

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->resizeEnd()V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->resizeFinished()V

    :cond_1
    :goto_0
    return v6

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isFocusAttached()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isKeypadFocusAttached()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->cancelPinchMode()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v7, :cond_1

    instance-of v1, p3, Lcom/sec/android/app/launcher/data/LauncherItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDarkenView()Lcom/sec/daliviews/views/ClippedContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    new-instance v2, Lcom/sec/android/app/launcher/utils/FadeDuration;

    iget v3, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsTransitionDuration:F

    invoke-direct {v2, v3}, Lcom/sec/android/app/launcher/utils/FadeDuration;-><init>(F)V

    invoke-virtual {v1, v2, v10}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showAppsFragmentAnimated(Lcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    :cond_4
    move v6, v10

    goto :goto_0

    :cond_5
    instance-of v1, p3, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v1, :cond_6

    move-object v9, p3

    check-cast v9, Lcom/sec/android/app/launcher/data/FolderItem;

    sput-object v9, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->sTopFiveFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v2, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->NORMAL:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getFolderBoundingBox()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v9, v2, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->openFolder(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;Landroid/graphics/Rect;)V

    sput-boolean v10, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->sIsTopFiveFolderOpened:Z

    move v6, v10

    goto/16 :goto_0

    :cond_6
    instance-of v1, p3, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isLaunchEffectEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setAppLaunchedWithLaunchEffect()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getLaunchEffect()Lcom/sec/daliviews/effects/LaunchEffect;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lcom/sec/daliviews/effects/LaunchEffect;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    const v2, 0x7f0b008e

    invoke-virtual {v8, v1, v2}, Lcom/sec/daliviews/effects/LaunchEffect;->perform(Lcom/sec/daliviews/views/NativeViewBase;I)V

    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object v1, p3

    check-cast v1, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-static {v2, v1}, Lcom/sec/android/app/launcher/utils/Utils;->launchUri(Landroid/app/Activity;Lcom/sec/android/app/launcher/data/LauncherItem;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v2, "HOIS"

    check-cast p3, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {p3}, Lcom/sec/android/app/launcher/data/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    move v6, v10

    goto/16 :goto_0

    :cond_8
    const-string v1, "LaunchEffect"

    const-string v2, "[JAVA] TopFivePresenter.onItemClick() - State is not correct for this operation."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onItemDeleted(Lcom/sec/daliviews/views/Item;)V
    .locals 9

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getPos()I

    move-result v4

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v6, p1}, Lcom/sec/daliviews/views/ListAdapter;->removeItem(Lcom/sec/daliviews/views/Item;)Z

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getPos()I

    move-result v2

    if-le v2, v4, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    if-eq v1, v6, :cond_0

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/Item;->setPos(I)V

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/Item;->setCellX(I)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Lcom/sec/android/app/launcher/data/DataManager;->updateItemsPositions(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;Z)V

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setMainHomeScreenshot(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->setLayout()V

    return-void
.end method

.method public onItemLoadCompleted(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mLoadingCancelled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->populateView()V

    goto :goto_0
.end method

.method public onItemLongClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z
    .locals 12

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    if-eqz v0, :cond_2

    if-nez v10, :cond_1

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getMovability()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setFlagToMoveToFavoritePage()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mIsTopFiveItem:Z

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase;->getHeight()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getSpanX()I

    move-result v6

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getSpanY()I

    move-result v7

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v0 .. v7}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;FFII)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    if-eqz v10, :cond_2

    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, ".homescreen"

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Apps LongPress, file.exists(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v11, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-class v1, Lcom/sec/android/app/launcher/services/LauncherService;

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.sec.android.intent.action.REQUEST_BACKUP_HOMESCREEN"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v0, "SOURCE"

    const-string v1, "DEFAULT_LAYOUT"

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/launcher/activities/LauncherApp;->startLauncherService(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v1, "default_workspace.xml, default_application_order.xml is creating..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onItemTouch(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isFocusAttached()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isKeypadFocusAttached()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v0, p2, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {p2, p4, p1}, Lcom/sec/android/app/launcher/views/HomeItemView;->showGlowEffectIfNeeded(Landroid/view/MotionEvent;Lcom/sec/daliviews/views/ContainerViewBase;)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lcom/sec/android/app/launcher/views/FolderView;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual {p2, p4, p1}, Lcom/sec/android/app/launcher/views/HomeFolderView;->showGlowEffectIfNeeded(Landroid/view/MotionEvent;Lcom/sec/daliviews/views/ContainerViewBase;)V

    goto :goto_0
.end method

.method public onItemUpdateCompleted()V
    .locals 0

    return-void
.end method

.method public onItemUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mLayout:Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/GridLayout;->getColumnCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/sec/daliviews/views/Item;->setPos(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/views/ListAdapter;->updateItem(Lcom/sec/daliviews/views/Item;)V

    return-void
.end method

.method public onItemsDisplaced(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/dragAndDrop/DisplacedItem;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;

    iget-object v6, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mItem:Lcom/sec/daliviews/views/Item;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v6, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->TAG:Ljava/lang/String;

    const-string v7, "TFP::onItemsDisplaced - item(%d) not exist on this TopFive"

    new-array v8, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->TAG:Ljava/lang/String;

    const-string v7, "Skipping Apps icon from the displacement list"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v6, v7, v1}, Lcom/sec/android/app/launcher/data/DataManager;->updateDisplacedItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v6, v11}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setMainHomeScreenshot(Z)V

    goto :goto_0
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

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->onItemUpdated(Lcom/sec/daliviews/views/Item;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method populateAllApps(I)V
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Lcom/sec/android/app/launcher/activities/TopFivePresenter$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter$2;-><init>(Lcom/sec/android/app/launcher/activities/TopFivePresenter;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getAllapps()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    const v2, 0x7f0d001b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/data/HomeItem;->setTitle(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    sget v2, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->sIconWidth:I

    sget v3, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->sIconHeight:I

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/data/HomeItem;->setIconImage(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    const v2, 0x7f0b00de

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/data/HomeItem;->setCurrentMode(I)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/data/HomeItem;->setPos(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/data/HomeItem;->setCellX(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/data/HomeItem;->setCellY(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/launcher/data/HomeItem;->setSpanX(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/launcher/data/HomeItem;->setSpanY(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    const v2, 0x7f0b00dc

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/data/HomeItem;->setCurrentMode(I)V

    goto :goto_0
.end method

.method public refreshContentDescriptions()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v2, 0x7f0d0017

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setContentDescription(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAccessibilityMode(Z)V
    .locals 0

    return-void
.end method

.method public setAdapterViewSensitive(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->setSensitive(Z)V

    return-void
.end method

.method public setAppsItem(Lcom/sec/android/app/launcher/data/HomeItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAppsItem:Lcom/sec/android/app/launcher/data/HomeItem;

    return-void
.end method

.method public setDefaultMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->setDefaultMode(I)V

    return-void
.end method

.method setLayout()V
    .locals 8

    const/4 v7, 0x1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isTabletLayoutEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v6

    if-eqz v6, :cond_2

    const v1, 0x7f0b00de

    :goto_0
    const v3, 0x7f0a0115

    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    invoke-virtual {v6, v1}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->setDefaultMode(I)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getShadowEffect(I)Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3, v5, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    const/4 v6, 0x0

    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/sec/daliviews/effects/ShadowEffect;->setOffset(FF)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    invoke-virtual {v6, v2}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->setShadowEffect(Lcom/sec/daliviews/effects/ShadowEffect;)V

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mLayout:Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mLayout:Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v6}, Lcom/sec/daliviews/layouts/GridLayout;->layoutViews()V

    :cond_1
    return-void

    :cond_2
    const v1, 0x7f0b00dc

    goto :goto_0

    :cond_3
    const/4 v6, 0x5

    if-ne v4, v6, :cond_5

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v6

    if-eqz v6, :cond_4

    const v1, 0x7f0b00df

    :goto_2
    const v3, 0x7f0a0116

    goto :goto_1

    :cond_4
    const v1, 0x7f0b00dd

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v6

    if-eqz v6, :cond_6

    const v1, 0x7f0b00de

    :goto_3
    const v3, 0x7f0a0115

    goto :goto_1

    :cond_6
    const v1, 0x7f0b00dc

    goto :goto_3
.end method

.method public setupTopFiveAnimation()V
    .locals 11

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a028a

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveBackgroundZoominPosition:F

    const v6, 0x7f0a028c

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveItemPositionY:F

    const v6, 0x7f0a0239

    invoke-virtual {v2, v6, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mPageAnimDuration:F

    const v6, 0x7f0a0292

    invoke-virtual {v2, v6, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    new-instance v4, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;

    new-instance v6, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    invoke-direct {v6, v3, v3, v9}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    iget v7, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mPageAnimDuration:F

    invoke-direct {v4, v6, v8, v7, v10}, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    new-instance v5, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;

    new-instance v6, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    invoke-direct {v6, v9, v9, v9}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    iget v7, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mPageAnimDuration:F

    invoke-direct {v5, v6, v8, v7, v10}, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    new-instance v0, Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;

    iget v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mPageAnimDuration:F

    invoke-direct {v0, v9, v8, v6, v10}, Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;-><init>(FFFI)V

    new-instance v1, Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;

    iget v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mPageAnimDuration:F

    invoke-direct {v1, v8, v8, v6, v10}, Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;-><init>(FFFI)V

    new-instance v6, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget v7, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mPageAnimDuration:F

    invoke-direct {v6, v7}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;-><init>(F)V

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    new-instance v7, Lcom/sec/android/app/launcher/activities/TopFivePresenter$1;

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    invoke-direct {v7, p0, v8}, Lcom/sec/android/app/launcher/activities/TopFivePresenter$1;-><init>(Lcom/sec/android/app/launcher/activities/TopFivePresenter;Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->connectToUIAnimationSignal(Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveScaleDownAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveScaleDownAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_1
    new-instance v6, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveScaleDownAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveScaleDownAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v6, v4}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveScaleDownAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v6, v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveScaleUpAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveScaleUpAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_2
    new-instance v6, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveScaleUpAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveScaleUpAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v6, v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveScaleUpAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v6, v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeInAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeInAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_3
    new-instance v6, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeInAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeInAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v6, v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeInAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v6, v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeOutAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeOutAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_4
    new-instance v6, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeOutAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeOutAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v6, v4}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeOutAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v6, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeInAnimSetWithNoScale:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeInAnimSetWithNoScale:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_5
    new-instance v6, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeInAnimSetWithNoScale:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeInAnimSetWithNoScale:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v6, v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeOutAnimSetWithNoScale:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeOutAnimSetWithNoScale:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_6
    new-instance v6, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeOutAnimSetWithNoScale:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveFadeOutAnimSetWithNoScale:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v6, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;)V

    return-void
.end method

.method public switchMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->dragEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->dragEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->enterDragMode()V

    :cond_0
    :goto_0
    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne p2, v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->scaleDownAnimWithBg()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->dragEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->dragEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->exitDragMode()V

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mDroppedOnFolder:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->oneShotRearrange(Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Z)Z

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mDroppedOnFolder:Z

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->setLayout()V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne p2, v0, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->scaleUpAnimWithBg()V

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mIsTopListChanged:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Logging;->topFiveItemListLogging(Landroid/app/Activity;)V

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mIsTopListChanged:Z

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne p2, v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->fadeOutAnimateTopFive()V

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->fadeInAnimateTopFive()V

    goto :goto_1
.end method

.method public updateAnimateOffsetY()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a028c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mTopFiveItemPositionY:F

    return-void
.end method

.method public updateShadowEffect()V
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isTabletLayoutEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const v1, 0x7f0a0115

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getShadowEffect(I)Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/daliviews/effects/ShadowEffect;->setOffset(FF)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapterView:Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->setShadowEffect(Lcom/sec/daliviews/effects/ShadowEffect;)V

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    const v1, 0x7f0a0116

    goto :goto_0

    :cond_2
    const v1, 0x7f0a0115

    goto :goto_0
.end method

.method public updateTextViewMode()V
    .locals 8

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v7}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/Item;

    instance-of v7, v4, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v7, :cond_1

    move-object v2, v4

    check-cast v2, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/HomeItemView;->updateTextParams()V

    :cond_1
    instance-of v7, v4, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v7, :cond_0

    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeFolderView;->updateTextParams()V

    goto :goto_0

    :cond_2
    return-void
.end method
