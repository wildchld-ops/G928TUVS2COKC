.class public Lcom/sec/android/app/launcher/activities/PagePresenter;
.super Lcom/sec/android/app/launcher/activities/PresenterBase;
.source "PagePresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;
.implements Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;
.implements Lcom/sec/daliviews/views/AdapterView$OnItemTouchListener;
.implements Lcom/sec/daliviews/views/Item$ViewLinkedListener;
.implements Lcom/sec/android/app/launcher/data/DataManager$ILoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/PagePresenter$9;,
        Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;,
        Lcom/sec/android/app/launcher/activities/PagePresenter$PagePresenterEmptyPageListener;,
        Lcom/sec/android/app/launcher/activities/PagePresenter$PageFilter;,
        Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;
    }
.end annotation


# static fields
.field public static final CMAWEATHER_SURFACE_WIDGET:Landroid/content/ComponentName;

.field public static final DIGITAL_CLOCK_WIDGET:Landroid/content/ComponentName;

.field public static final DUAL_CLOCK_WIDGET:Landroid/content/ComponentName;

.field public static final GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

.field public static final KWEATHER_SURFACE_WIDGET:Landroid/content/ComponentName;

.field static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field protected static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final WEATHER_SURFACE_WIDGET:Landroid/content/ComponentName;

.field public static mBackupPageColumn:I

.field public static mBackupPageRow:I

.field private static mItemComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sPopulateThread:Landroid/os/HandlerThread;


# instance fields
.field protected final mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

.field private mAdapter:Lcom/sec/daliviews/views/ListAdapter;

.field private mAlwaysClickable:Z

.field private mAppInstallAnim:Lcom/sec/daliviews/animation/NativeAnimation;

.field private mBackupItems:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/sec/android/app/launcher/data/BackupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mChannel:Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

.field private mCurrPageView:Lcom/sec/daliviews/views/PageView;

.field mCurrentVerticalEffect:I

.field private final mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

.field private mDefaultHome:Z

.field private mDefaultHomeIcon:Lcom/sec/daliviews/views/ImageView;

.field private mDefaultHomeIconContainer:Lcom/sec/daliviews/views/ContainerView;

.field private mDragListener:Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;

.field private mDraggedView:Lcom/sec/daliviews/views/NativeViewBase;

.field private mEmptyPageListener:Lcom/sec/android/app/launcher/activities/PagePresenter$PagePresenterEmptyPageListener;

.field protected mHandler:Landroid/os/Handler;

.field private mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

.field private mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

.field private mLoadingCancelled:Z

.field private mNeedUpdateForChangeGrid:Z

.field private mNeedtoOpenConfigureLater:Z

.field private mOutSideItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field protected mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

.field private final mPageView:Lcom/sec/daliviews/views/PageView;

.field protected final mPopulateWorker:Landroid/os/Handler;

.field private mPopulated:Z

.field private mPrearrangedItemsToAdd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mResizeNewWidgetOnItemAdded:Z

.field private mResizeNewWidgets:Z

.field protected mSpanCalculator:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

.field private mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

.field private mUserManager:Landroid/os/UserManager;

.field private options:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const-class v0, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "populateThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->sPopulateThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->sPopulateThread:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    sget-object v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->sPopulateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.widgetapp.ap.hero.accuweather"

    const-string v2, "com.sec.android.widgetapp.ap.weather.widget.surfacewidget.WeatherSurfaceWidget"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->WEATHER_SURFACE_WIDGET:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.widgetapp.ap.hero.kweather"

    const-string v2, "com.sec.android.widgetapp.ap.weather.widget.surfacewidget.WeatherSurfaceWidget"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->KWEATHER_SURFACE_WIDGET:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.widgetapp.ap.hero.cmaweather"

    const-string v2, "com.sec.android.widgetapp.ap.weather.widget.surfacewidget.WeatherSurfaceWidget"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->CMAWEATHER_SURFACE_WIDGET:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.widgetapp.digitalclock"

    const-string v2, "com.sec.android.widgetapp.digitalclock.DigitalClockWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->DIGITAL_CLOCK_WIDGET:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.widgetapp.dualclockdigital"

    const-string v2, "com.sec.android.widgetapp.dualclockdigital.DigitalDualClockWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->DUAL_CLOCK_WIDGET:Landroid/content/ComponentName;

    sput v3, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageRow:I

    sput v3, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageColumn:I

    new-instance v0, Lcom/sec/android/app/launcher/activities/PagePresenter$5;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/PagePresenter$5;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mItemComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/sec/daliviews/views/PageView;Lcom/sec/android/app/launcher/data/HomePageItem;Lcom/sec/android/app/launcher/activities/HomePresenter;ZZ)V
    .locals 9

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v6, p4

    move v7, v3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/launcher/activities/PagePresenter;-><init>(Lcom/sec/daliviews/views/PageView;Lcom/sec/android/app/launcher/data/HomePageItem;ZLcom/sec/android/app/launcher/activities/HomePresenter;ZZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/daliviews/views/PageView;Lcom/sec/android/app/launcher/data/HomePageItem;ZLcom/sec/android/app/launcher/activities/HomePresenter;ZZZZ)V
    .locals 15

    new-instance v1, Lcom/sec/android/app/launcher/activities/PagePresenter$PageFilter;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/sec/android/app/launcher/activities/PagePresenter$PageFilter;-><init>(Lcom/sec/android/app/launcher/data/PageItem;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/PresenterBase;-><init>(Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_UNKNOWN:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;->CHANNEL_UNKNOWN:Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mChannel:Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDragListener:Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSpanCalculator:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrPageView:Lcom/sec/daliviews/views/PageView;

    new-instance v1, Lcom/sec/android/app/launcher/activities/PagePresenter$PagePresenterEmptyPageListener;

    const/4 v12, 0x0

    invoke-direct {v1, p0, v12}, Lcom/sec/android/app/launcher/activities/PagePresenter$PagePresenterEmptyPageListener;-><init>(Lcom/sec/android/app/launcher/activities/PagePresenter;Lcom/sec/android/app/launcher/activities/PagePresenter$1;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mEmptyPageListener:Lcom/sec/android/app/launcher/activities/PagePresenter$PagePresenterEmptyPageListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHome:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedUpdateForChangeGrid:Z

    new-instance v1, Landroid/os/Handler;

    sget-object v12, Lcom/sec/android/app/launcher/activities/PagePresenter;->sPopulateThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v1, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPopulateWorker:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLoadingCancelled:Z

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v1, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPopulated:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAlwaysClickable:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mResizeNewWidgets:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedtoOpenConfigureLater:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAppInstallAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupItems:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrentVerticalEffect:I

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    iget-object v12, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mEmptyPageListener:Lcom/sec/android/app/launcher/activities/PagePresenter$PagePresenterEmptyPageListener;

    invoke-virtual {v1, v12}, Lcom/sec/daliviews/views/PageView;->setEmptyPageListener(Lcom/sec/daliviews/views/PageView$OnEmptyPageDropListener;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getSpanCalculater()Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSpanCalculator:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDataManager()Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    new-instance v1, Lcom/sec/daliviews/views/ListAdapter;

    const/4 v12, 0x0

    invoke-direct {v1, v12}, Lcom/sec/daliviews/views/ListAdapter;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v12, "user"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Lcom/sec/daliviews/views/PageView;->enableGrid(Z)V

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->setDefaultMode()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/launcher/data/HomePageItem;->getBackgroundColour()I

    move-result v12

    invoke-virtual {v1, v12}, Lcom/sec/daliviews/views/PageView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/launcher/data/HomePageItem;->getLongClickable()Z

    move-result v12

    invoke-virtual {v1, v12}, Lcom/sec/daliviews/views/PageView;->setLongClickable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Lcom/sec/daliviews/views/PageView;->setDragEventInterest(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v1, 0x7f0a0241

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v1, 0x7f0a023f

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    const v1, 0x7f0a0240

    const/4 v12, 0x1

    invoke-virtual {v10, v1, v11, v12}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v11}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    const v1, 0x7f0d00af

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v1, 0x7f0a023d

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v1, 0x7f0a023e

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual/range {v1 .. v7}, Lcom/sec/daliviews/views/PageView;->configureHighlight(IIIIFLjava/lang/String;)V

    const v1, 0x7f0c0042

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mResizeNewWidgets:Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getSource()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->fromInt(I)Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getChannel()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;->fromInt(I)Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mChannel:Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->options:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->options:Landroid/os/Bundle;

    const-string v12, "clone"

    move/from16 v0, p3

    invoke-virtual {v1, v12, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->options:Landroid/os/Bundle;

    const-string v12, "getItem"

    move/from16 v0, p5

    invoke-virtual {v1, v12, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->options:Landroid/os/Bundle;

    const-string v12, "tempPage"

    move/from16 v0, p7

    invoke-virtual {v1, v12, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p8, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v12, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iget-object v13, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->options:Landroid/os/Bundle;

    const/4 v14, 0x1

    invoke-virtual {v1, p0, v12, v13, v14}, Lcom/sec/android/app/launcher/data/DataManager;->checkItemLoading(Lcom/sec/android/app/launcher/data/DataManager$ILoadCompleteListener;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->setListeners(Lcom/sec/daliviews/views/AdapterView;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    sget v12, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    sget v13, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    invoke-virtual {v1, v12, v13}, Lcom/sec/android/app/launcher/data/HomePageItem;->setGridSize(II)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v9

    instance-of v1, v9, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v1, :cond_1

    move-object v1, v9

    check-cast v1, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/GridLayout;->isVerticalScroll()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v8, v9

    check-cast v8, Lcom/sec/daliviews/layouts/GridLayout;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getCellSizeWidth()I

    move-result v1

    iget-object v12, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/data/HomePageItem;->getCellSizeHeight()I

    move-result v12

    invoke-virtual {v8, v1, v12}, Lcom/sec/daliviews/layouts/GridLayout;->setCellSize(II)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getCellSpacingHorizontal()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/sec/daliviews/layouts/GridLayout;->setHorizontalSpacing(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getCellSpacingVertical()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/sec/daliviews/layouts/GridLayout;->setVerticalSpacing(I)V

    :cond_1
    new-instance v1, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;-><init>(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDragListener:Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;

    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->setupDefaultPageIcon(Z)V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/sec/daliviews/views/PageView;Ljava/util/List;Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/daliviews/views/PageView;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;",
            "Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/PresenterBase;-><init>(Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    sget-object v13, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_UNKNOWN:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    sget-object v13, Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;->CHANNEL_UNKNOWN:Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mChannel:Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDragListener:Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSpanCalculator:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrPageView:Lcom/sec/daliviews/views/PageView;

    new-instance v13, Lcom/sec/android/app/launcher/activities/PagePresenter$PagePresenterEmptyPageListener;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/sec/android/app/launcher/activities/PagePresenter$PagePresenterEmptyPageListener;-><init>(Lcom/sec/android/app/launcher/activities/PagePresenter;Lcom/sec/android/app/launcher/activities/PagePresenter$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mEmptyPageListener:Lcom/sec/android/app/launcher/activities/PagePresenter$PagePresenterEmptyPageListener;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHome:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedUpdateForChangeGrid:Z

    new-instance v13, Landroid/os/Handler;

    sget-object v14, Lcom/sec/android/app/launcher/activities/PagePresenter;->sPopulateThread:Landroid/os/HandlerThread;

    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPopulateWorker:Landroid/os/Handler;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLoadingCancelled:Z

    new-instance v13, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPopulated:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAlwaysClickable:Z

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mResizeNewWidgets:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedtoOpenConfigureLater:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAppInstallAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    new-instance v13, Landroid/util/LongSparseArray;

    invoke-direct {v13}, Landroid/util/LongSparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupItems:Landroid/util/LongSparseArray;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrentVerticalEffect:I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mEmptyPageListener:Lcom/sec/android/app/launcher/activities/PagePresenter$PagePresenterEmptyPageListener;

    invoke-virtual {v13, v14}, Lcom/sec/daliviews/views/PageView;->setEmptyPageListener(Lcom/sec/daliviews/views/PageView$OnEmptyPageDropListener;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDataManager()Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    new-instance v13, Lcom/sec/daliviews/views/ListAdapter;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/sec/daliviews/views/ListAdapter;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    sget-object v13, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    new-instance v13, Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-direct {v13}, Lcom/sec/android/app/launcher/data/HomePageItem;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v13, v14}, Lcom/sec/android/app/launcher/data/HomePageItem;->setHomePresenter(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v13, v14}, Lcom/sec/daliviews/views/PageView;->setAdapter(Lcom/sec/daliviews/views/Adapter;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/daliviews/views/PageView;->enableGrid(Z)V

    const/4 v8, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v13

    invoke-static {v13}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v13, v9}, Lcom/sec/android/app/launcher/utils/Utils;->getInstalledProviders(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v6, v8}, Lcom/sec/daliviews/views/Item;->setPos(I)V

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/sec/daliviews/views/Item;->setCellX(I)V

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/sec/daliviews/views/Item;->setCellY(I)V

    instance-of v13, v6, Lcom/sec/android/app/launcher/data/WidgetListItem;

    if-eqz v13, :cond_1

    move-object v12, v6

    check-cast v12, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v12, v3}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getAppWidgetInfo(Ljava/util/List;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v11

    if-nez v11, :cond_0

    :goto_1
    return-void

    :cond_0
    const/4 v7, 0x0

    instance-of v13, v11, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-eqz v13, :cond_2

    new-instance v7, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    move-object v13, v11

    check-cast v13, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-direct {v7, v14, v13}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;-><init>(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)V

    :goto_2
    if-eqz v7, :cond_1

    iget-object v13, v11, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v7, v13}, Lcom/sec/android/app/launcher/data/LauncherItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getWidgetSpanX()I

    move-result v13

    invoke-virtual {v7, v13}, Lcom/sec/android/app/launcher/data/LauncherItem;->setSpanX(I)V

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getWidgetSpanY()I

    move-result v13

    invoke-virtual {v7, v13}, Lcom/sec/android/app/launcher/data/LauncherItem;->setSpanY(I)V

    invoke-virtual {v7, v8}, Lcom/sec/android/app/launcher/data/LauncherItem;->setPos(I)V

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Lcom/sec/android/app/launcher/data/LauncherItem;->setCellX(I)V

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Lcom/sec/android/app/launcher/data/LauncherItem;->setCellY(I)V

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v8, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetHost()Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;

    move-result-object v2

    new-instance v4, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;

    invoke-direct {v4}, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;-><init>()V

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v13}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getUserId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v14

    iget-object v15, v11, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v10, v14, v15, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v13

    if-eqz v13, :cond_3

    new-instance v7, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-direct {v7, v11, v4}, Lcom/sec/android/app/launcher/data/AppWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Lcom/sec/android/app/launcher/widget/framework/WidgetBinder;)V

    move-object v13, v7

    check-cast v13, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-virtual {v13, v10}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->setWidgetId(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v10}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    sget-object v13, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Delete Widget that isn\'t allowed on page create time - deleteAppWidgetId : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/sec/daliviews/views/ListAdapter;->addItems(Ljava/util/List;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/app/launcher/activities/PagePresenter;->setListeners(Lcom/sec/daliviews/views/AdapterView;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/daliviews/views/PageView;->setVisibility(I)V

    new-instance v13, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;-><init>(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDragListener:Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;

    goto/16 :goto_1
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/activities/HomePresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/launcher/activities/PagePresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mResizeNewWidgets:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/launcher/activities/PagePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mResizeNewWidgetOnItemAdded:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/layouts/LayoutBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/launcher/activities/PagePresenter;Lcom/sec/daliviews/views/NativeViewBase;)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDraggedView:Lcom/sec/daliviews/views/NativeViewBase;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/launcher/activities/PagePresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPopulated:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/launcher/activities/PagePresenter;Lcom/sec/daliviews/views/Item;ZZLjava/util/List;)Lcom/sec/daliviews/views/Item;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/activities/PagePresenter;->addItem(Lcom/sec/daliviews/views/Item;ZZLjava/util/List;)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/launcher/activities/PagePresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->setDefaultMode()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/launcher/activities/PagePresenter;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/launcher/activities/PagePresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedtoOpenConfigureLater:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/launcher/activities/PagePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedtoOpenConfigureLater:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/data/DataManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/daliviews/views/PageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrPageView:Lcom/sec/daliviews/views/PageView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/launcher/activities/PagePresenter;Lcom/sec/daliviews/views/PageView;)Lcom/sec/daliviews/views/PageView;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrPageView:Lcom/sec/daliviews/views/PageView;

    return-object p1
.end method

.method private addItem(Lcom/sec/daliviews/views/Item;ZZLjava/util/List;)Lcom/sec/daliviews/views/Item;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/daliviews/views/Item;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)",
            "Lcom/sec/daliviews/views/Item;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v12, 0x0

    :goto_0
    return-object v12

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->findAndSetCellPosition(Lcom/sec/daliviews/views/Item;)Z

    move-result v13

    if-nez v13, :cond_1

    sget-object v13, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    const-string v14, "Unable to find an available cell. Skipping it!"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/sec/android/app/launcher/data/WidgetListItem;

    if-eqz v13, :cond_8

    move-object/from16 v12, p1

    check-cast v12, Lcom/sec/android/app/launcher/data/WidgetListItem;

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getAppWidgetInfo(Ljava/util/List;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v11

    if-eqz v11, :cond_8

    instance-of v13, v11, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-nez v13, :cond_b

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetHost()Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;

    invoke-direct {v3}, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;-><init>()V

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v13}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getUserId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v14

    iget-object v15, v11, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v10, v14, v15, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedtoOpenConfigureLater:Z

    if-eqz v13, :cond_a

    sget-object v13, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    const-string v14, "PagePresenter::addItem() - in case of configure widget from invalidDrop()"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/sec/android/app/launcher/activities/PagePresenter;->addAppWidgetConfigure(ILandroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/sec/android/app/launcher/activities/PagePresenter;->copyToPendingAddInfo(Lcom/sec/daliviews/views/Item;Lcom/sec/android/app/launcher/data/WidgetListItem;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v13, v14}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setDropPage(Lcom/sec/daliviews/views/PageView;)V

    goto/16 :goto_0

    :cond_2
    new-instance v6, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-direct {v6, v11, v3}, Lcom/sec/android/app/launcher/data/AppWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Lcom/sec/android/app/launcher/widget/framework/WidgetBinder;)V

    move-object v13, v6

    check-cast v13, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-virtual {v13, v10}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->setWidgetId(I)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedtoOpenConfigureLater:Z

    :cond_3
    :goto_1
    if-eqz v6, :cond_8

    move-object/from16 p1, v6

    const/4 v13, 0x4

    new-array v7, v13, [I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSpanCalculator:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    invoke-virtual {v13, v11, v7}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getWidgetSpanX()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/sec/daliviews/views/Item;->setSpanX(I)V

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getWidgetSpanY()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/sec/daliviews/views/Item;->setSpanY(I)V

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getCellX()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/sec/daliviews/views/Item;->setCellX(I)V

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getCellY()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/sec/daliviews/views/Item;->setCellY(I)V

    const/4 v13, 0x0

    aget v13, v7, v13

    const/4 v14, 0x1

    aget v14, v7, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/sec/daliviews/views/Item;->setMinSpanXY(II)V

    const/4 v13, 0x2

    aget v13, v7, v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    const/4 v13, 0x3

    aget v13, v7, v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    const/4 v13, 0x2

    aget v13, v7, v13

    const/4 v14, 0x3

    aget v14, v7, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/sec/daliviews/views/Item;->setMaxSpanXY(II)V

    :cond_4
    const/4 v13, -0x2

    invoke-virtual {v12, v13}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setContainerId(I)V

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v13, v11, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/LauncherItem;->getIntent()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_5

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/sec/android/app/launcher/data/LauncherItem;->setIntent(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/LauncherItem;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v13

    sget-object v14, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_UNKNOWN:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    if-ne v13, v14, :cond_6

    sget-object v13, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v6, v13}, Lcom/sec/android/app/launcher/data/LauncherItem;->setDataSourceType(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    :cond_6
    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/LauncherItem;->getDataConnector()Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    move-result-object v13

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    sget-object v14, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v13, v14}, Lcom/sec/android/app/launcher/data/DataManager;->getDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/sec/android/app/launcher/data/LauncherItem;->setDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    :cond_7
    const-string v13, "DragAndDrop"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mark widget list item [id: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] for delete!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget v13, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    invoke-virtual/range {p1 .. p1}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v14

    mul-int/2addr v13, v14

    invoke-virtual/range {p1 .. p1}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/sec/daliviews/views/Item;->setPos(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/sec/daliviews/views/Item;->setContainerId(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/data/PageItem;->getContainerFilter()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/sec/daliviews/views/Item;->setContainerType(I)V

    if-nez p3, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/sec/android/app/launcher/data/DataManager;->updateItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)I

    move-result v13

    if-nez v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/sec/android/app/launcher/data/DataManager;->insertItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    long-to-int v4, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/Item;->setDbId(I)V

    :cond_9
    :goto_2
    move-object/from16 v12, p1

    goto/16 :goto_0

    :cond_a
    new-instance v6, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-direct {v6, v11, v3}, Lcom/sec/android/app/launcher/data/AppWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Lcom/sec/android/app/launcher/widget/framework/WidgetBinder;)V

    move-object v13, v6

    check-cast v13, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-virtual {v13, v10}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->setWidgetId(I)V

    goto/16 :goto_1

    :cond_b
    move-object v9, v11

    check-cast v9, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/app/launcher/activities/PagePresenter;->canAddSurfaceWidget(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)Z

    move-result v13

    if-nez v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/HomePresenter;->showingToast()Z

    move-result v13

    if-eqz v13, :cond_c

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/sec/android/app/launcher/activities/PagePresenter$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/app/launcher/activities/PagePresenter$3;-><init>(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setShowToast(Z)V

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_d
    new-instance v6, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {v6, v13, v9}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;-><init>(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)V

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v13, v11, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v13, "instance"

    const/4 v14, 0x1

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/sec/android/app/launcher/data/LauncherItem;->setIntent(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_9

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/sec/daliviews/views/ListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    goto :goto_2
.end method

.method private animationInstall(Lcom/sec/android/app/launcher/data/HomeItem;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAppInstallAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v2, 0x7f040004

    invoke-static {v1, v2}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAppInstallAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAppInstallAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_1
    return-void
.end method

.method private deleteItemOnAdapter(Lcom/sec/daliviews/views/Item;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ListAdapter;->removeItem(Lcom/sec/daliviews/views/Item;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->pageContentChanged(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    return-void
.end method

.method private getOutSidePosition(Ljava/util/List;II)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;II)I"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v9

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    instance-of v11, v3, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-nez v11, :cond_1

    instance-of v11, v3, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v11, :cond_7

    :cond_1
    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getSpanX()I

    move-result v5

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getSpanY()I

    move-result v6

    if-le v5, p2, :cond_2

    invoke-virtual {v3, p2}, Lcom/sec/daliviews/views/Item;->setSpanX(I)V

    move v5, p2

    :cond_2
    if-le v6, p3, :cond_3

    invoke-virtual {v3, p3}, Lcom/sec/daliviews/views/Item;->setSpanY(I)V

    move v6, p3

    :cond_3
    if-ge v9, p2, :cond_4

    if-ge v10, p3, :cond_4

    add-int v11, v9, v5

    if-gt v11, p2, :cond_4

    add-int v11, v10, v6

    if-gt v11, p3, :cond_4

    mul-int v11, v5, v6

    add-int/2addr v1, v11

    :cond_4
    if-lez v9, :cond_5

    if-ge v10, p3, :cond_5

    add-int v11, v9, v5

    if-lez v11, :cond_5

    add-int v11, v10, v6

    if-gt v11, p3, :cond_5

    mul-int v11, v5, v6

    add-int/2addr v0, v11

    :cond_5
    if-ge v9, p2, :cond_6

    if-lez v10, :cond_6

    add-int v11, v9, v5

    if-gt v11, p2, :cond_6

    add-int v11, v10, v6

    if-lez v11, :cond_6

    mul-int v11, v5, v6

    add-int/2addr v8, v11

    :cond_6
    if-lez v9, :cond_0

    if-lez v10, :cond_0

    add-int v11, v9, v5

    if-lez v11, :cond_0

    add-int v11, v10, v6

    if-lez v11, :cond_0

    mul-int v11, v5, v6

    add-int/2addr v7, v11

    goto :goto_0

    :cond_7
    if-ge v9, p2, :cond_8

    if-ge v10, p3, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    if-lez v9, :cond_9

    if-ge v10, p3, :cond_9

    add-int/lit8 v0, v0, 0x1

    :cond_9
    if-ge v9, p2, :cond_a

    if-lez v10, :cond_a

    add-int/lit8 v8, v8, 0x1

    :cond_a
    if-lez v9, :cond_0

    if-lez v10, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    return v11
.end method

.method private loadItems(Z)V
    .locals 7

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v4, p0, v5}, Lcom/sec/android/app/launcher/data/DataManager;->registerDataListener(Lcom/sec/android/app/launcher/data/DataManager$IDataListener;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    sget-object v6, Lcom/sec/android/app/launcher/data/DataManager$SortType;->ITEMS_TO_SHOW_ONLY:Lcom/sec/android/app/launcher/data/DataManager$SortType;

    invoke-virtual {v4, v5, p0, p1, v6}, Lcom/sec/android/app/launcher/data/DataManager;->getItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;ZLcom/sec/android/app/launcher/data/DataManager$SortType;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    sget v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    iget-boolean v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLoadingCancelled:Z

    if-eqz v4, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getPos()I

    move-result v4

    if-gez v4, :cond_3

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v4

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v5

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/views/Item;->setPos(I)V

    :cond_3
    instance-of v4, v2, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v4, :cond_0

    check-cast v2, Lcom/sec/android/app/launcher/data/FolderItem;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/sec/android/app/launcher/data/FolderItem;->setDragEventInterest(I)V

    goto :goto_0

    :cond_4
    iget-boolean v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLoadingCancelled:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v4, v3}, Lcom/sec/daliviews/views/ListAdapter;->addItems(Ljava/util/List;)V

    :cond_5
    iget-boolean v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLoadingCancelled:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v4, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->pageLoadItems(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    goto :goto_1
.end method

.method private populateView(ZZ)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->loadItems(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLoadingCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PageView;->setAdapter(Lcom/sec/daliviews/views/Adapter;)V

    :cond_0
    return-void
.end method

.method private setDefaultMode()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    const v1, 0x7f0b00d8

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PageView;->setDefaultMode(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    const v1, 0x7f0b00d7

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PageView;->setDefaultMode(I)V

    goto :goto_0
.end method

.method private setListeners(Lcom/sec/daliviews/views/AdapterView;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sec/daliviews/views/AdapterView;->setOnItemClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1, p0}, Lcom/sec/daliviews/views/AdapterView;->setOnItemLongClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p1, p0}, Lcom/sec/daliviews/views/AdapterView;->setOnItemTouchListener(Lcom/sec/daliviews/views/AdapterView$OnItemTouchListener;)V

    return-void
.end method

.method private setupDefaultPageIcon(Z)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    const v1, 0x7f030013

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHomeIconContainer:Lcom/sec/daliviews/views/ContainerView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHomeIconContainer:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b0064

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHomeIcon:Lcom/sec/daliviews/views/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHomeIcon:Lcom/sec/daliviews/views/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ImageView;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHomeIconContainer:Lcom/sec/daliviews/views/ContainerView;

    new-instance v2, Lcom/sec/android/app/launcher/activities/PagePresenter$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/activities/PagePresenter$1;-><init>(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHomeIconContainer:Lcom/sec/daliviews/views/ContainerView;

    new-instance v2, Lcom/sec/android/app/launcher/activities/PagePresenter$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/activities/PagePresenter$2;-><init>(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setOnLongPressListener(Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->setAsDefaultHome(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHomeIconContainer:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/PageView;->setHeader(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method

.method private updatePageLayout(II)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPopulateWorker:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/launcher/activities/PagePresenter$6;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/sec/android/app/launcher/activities/PagePresenter$6;-><init>(Lcom/sec/android/app/launcher/activities/PagePresenter;Lcom/sec/daliviews/layouts/LayoutBase;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public IsDefaultHome()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHome:Z

    return v0
.end method

.method protected addAppWidgetConfigure(ILandroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 9

    const v8, 0x7f0d0015

    const/4 v7, 0x0

    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    const-string v2, "PagePresenter::addAppWidgetConfigure() make intent to start appwidget configure"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetHost()Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v1, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    move-exception v6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v1, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_2
    move-exception v6

    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    const-string v2, "PagePresenter::addAppWidgetConfigure() error occur!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addItemsToAdapter(Ljava/util/List;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;ZZ)V"
        }
    .end annotation

    :try_start_0
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    instance-of v5, v3, Lcom/sec/android/app/launcher/data/WidgetListItem;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v5, v4}, Lcom/sec/android/app/launcher/utils/Utils;->getInstalledProviders(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)Ljava/util/List;

    move-result-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    invoke-direct {p0, v3, p2, p3, v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->addItem(Lcom/sec/daliviews/views/Item;ZZLjava/util/List;)Lcom/sec/daliviews/views/Item;

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_2
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public addPrearrangedItemsToAdapter(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPrearrangedItemsToAdd:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPrearrangedItemsToAdd:Ljava/util/List;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->addItemsToAdapter(Ljava/util/List;ZZ)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPrearrangedItemsToAdd:Ljava/util/List;

    return-void
.end method

.method public backupPage()V
    .locals 8

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupItems:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->clear()V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    new-instance v0, Lcom/sec/android/app/launcher/data/BackupItem;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/data/BackupItem;-><init>()V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/data/BackupItem;->setItem(Lcom/sec/daliviews/views/Item;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupItems:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget v4, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    sput v4, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageColumn:I

    sget v4, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    sput v4, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageRow:I

    return-void
.end method

.method public buildSurfaceWidgetInfo(Lcom/sec/daliviews/views/Item;Lcom/sec/android/app/launcher/data/WidgetListItem;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)Lcom/sec/android/app/launcher/data/LauncherItem;
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p3}, Lcom/sec/android/app/launcher/activities/PagePresenter;->canAddSurfaceWidget(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {v1, v3, p3}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;-><init>(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v3, p3, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "instance"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "themename"

    invoke-virtual {p3}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getThemeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/data/LauncherItem;->setIntent(Ljava/lang/String;)V

    iget-object v3, p3, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/data/LauncherItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getWidgetSpanX()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/data/LauncherItem;->setSpanX(I)V

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getWidgetSpanY()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/data/LauncherItem;->setSpanY(I)V

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/data/LauncherItem;->setCellX(I)V

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/data/LauncherItem;->setCellY(I)V

    const/4 v3, 0x4

    new-array v2, v3, [I

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSpanCalculator:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    invoke-virtual {v3, p3, v2}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    aget v3, v2, v6

    aget v4, v2, v7

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/launcher/data/LauncherItem;->setMinSpanXY(II)V

    aget v3, v2, v8

    if-eq v3, v5, :cond_1

    aget v3, v2, v9

    if-eq v3, v5, :cond_1

    aget v3, v2, v8

    aget v4, v2, v9

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/launcher/data/LauncherItem;->setMaxSpanXY(II)V

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getDataConnector()Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/data/LauncherItem;->setDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    move-object v3, v1

    goto :goto_0
.end method

.method public canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter$9;->$SwitchMap$com$sec$android$app$launcher$data$connectors$DataConnector$SourceType:[I

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    instance-of v1, p1, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/sec/android/app/launcher/views/FolderView;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/sec/android/app/launcher/views/AppWidgetView;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected canAddSurfaceWidget(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)Z
    .locals 2

    sget-object v1, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->INST:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    const/4 v0, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->canAddSurfaceWidget(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public changeEmptyTextColor(I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    if-eqz v4, :cond_0

    const v4, 0x1ffffff

    if-eq p1, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomePageItem;->getEmptyPage()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/PageView;->deleteEmptyPageMessage()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v1

    const v4, 0x7f03004e

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    const v4, 0x7f0d00d3

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/TextView;->setText(I)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v4}, Lcom/sec/android/app/launcher/utils/Utils;->getScreenDimensions(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v2

    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/TextView;->calculateRenderedSizeInPixels(I)[I

    move-result-object v3

    aget v4, v3, v6

    const/4 v5, 0x1

    aget v5, v3, v5

    invoke-virtual {v0, v4, v5}, Lcom/sec/daliviews/views/TextView;->setSize(II)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v4, v0, v6, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setTextStyle(Lcom/sec/daliviews/views/TextView;ZI)V

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v4, v0, v6}, Lcom/sec/daliviews/views/PageView;->showEmptyPageMessage(Lcom/sec/daliviews/views/TextView;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v0, v5}, Lcom/sec/daliviews/views/PageView;->showEmptyPageMessage(Lcom/sec/daliviews/views/TextView;I)V

    goto :goto_0
.end method

.method public changeGridSize(II)Z
    .locals 18

    const/4 v6, 0x0

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mOutSideItems:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/sec/android/app/launcher/data/HomePageItem;->setGridSize(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/data/HomePageItem;->getPagePaddings()Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    iget v14, v7, Landroid/graphics/Rect;->left:I

    iget v15, v7, Landroid/graphics/Rect;->top:I

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Lcom/sec/daliviews/views/PageView;->setPadding(IIII)V

    :cond_0
    sget-object v13, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Screen Grid :: changeGridSize pageOrder : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v15}, Lcom/sec/android/app/launcher/data/HomePageItem;->getPageOrder()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Column : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Row : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v13, :cond_1c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v13}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getOutSidePosition(Ljava/util/List;II)I

    move-result v8

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v11

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    instance-of v13, v4, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-nez v13, :cond_1

    instance-of v13, v4, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v13, :cond_10

    :cond_1
    instance-of v13, v4, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedUpdateForChangeGrid:Z

    :cond_2
    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getSpanX()I

    move-result v9

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getSpanY()I

    move-result v10

    move/from16 v0, p1

    if-le v9, v0, :cond_3

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/sec/daliviews/views/Item;->setSpanX(I)V

    move/from16 v9, p1

    :cond_3
    move/from16 v0, p2

    if-le v10, v0, :cond_4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/sec/daliviews/views/Item;->setSpanY(I)V

    move/from16 v10, p2

    :cond_4
    sget-object v13, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->BOTTOM_RIGHT:Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->ordinal()I

    move-result v13

    if-ne v8, v13, :cond_6

    add-int v13, v11, v9

    move/from16 v0, p1

    if-gt v13, v0, :cond_5

    add-int v13, v12, v10

    move/from16 v0, p2

    if-le v13, v0, :cond_9

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mOutSideItems:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    sget-object v13, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->BOTTOM_LEFT:Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->ordinal()I

    move-result v13

    if-ne v8, v13, :cond_a

    if-eqz v11, :cond_7

    add-int v13, v12, v10

    move/from16 v0, p2

    if-le v13, v0, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mOutSideItems:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    add-int/lit8 v11, v11, -0x1

    :cond_9
    :goto_1
    invoke-virtual {v4, v11}, Lcom/sec/daliviews/views/Item;->setCellX(I)V

    invoke-virtual {v4, v12}, Lcom/sec/daliviews/views/Item;->setCellY(I)V

    mul-int v13, v12, p1

    add-int/2addr v13, v11

    invoke-virtual {v4, v13}, Lcom/sec/daliviews/views/Item;->setPos(I)V

    goto/16 :goto_0

    :cond_a
    sget-object v13, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->TOP_RIGHT:Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->ordinal()I

    move-result v13

    if-ne v8, v13, :cond_d

    add-int v13, v11, v9

    move/from16 v0, p1

    if-gt v13, v0, :cond_b

    if-nez v12, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mOutSideItems:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    :cond_d
    sget-object v13, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->TOP_LEFT:Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->ordinal()I

    move-result v13

    if-ne v8, v13, :cond_9

    if-eqz v11, :cond_e

    if-nez v12, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mOutSideItems:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    :cond_10
    sget-object v13, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->BOTTOM_RIGHT:Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->ordinal()I

    move-result v13

    if-ne v8, v13, :cond_12

    move/from16 v0, p1

    if-ge v11, v0, :cond_11

    move/from16 v0, p2

    if-lt v12, v0, :cond_15

    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mOutSideItems:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_12
    sget-object v13, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->BOTTOM_LEFT:Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->ordinal()I

    move-result v13

    if-ne v8, v13, :cond_16

    if-eqz v11, :cond_13

    move/from16 v0, p2

    if-lt v12, v0, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mOutSideItems:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_14
    add-int/lit8 v11, v11, -0x1

    :cond_15
    :goto_2
    invoke-virtual {v4, v11}, Lcom/sec/daliviews/views/Item;->setCellX(I)V

    invoke-virtual {v4, v12}, Lcom/sec/daliviews/views/Item;->setCellY(I)V

    mul-int v13, v12, p1

    add-int/2addr v13, v11

    invoke-virtual {v4, v13}, Lcom/sec/daliviews/views/Item;->setPos(I)V

    goto/16 :goto_0

    :cond_16
    sget-object v13, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->TOP_RIGHT:Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->ordinal()I

    move-result v13

    if-ne v8, v13, :cond_19

    move/from16 v0, p1

    if-ge v11, v0, :cond_17

    if-nez v12, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mOutSideItems:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_18
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_19
    sget-object v13, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->TOP_LEFT:Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->ordinal()I

    move-result v13

    if-ne v8, v13, :cond_15

    if-eqz v11, :cond_1a

    if-nez v12, :cond_1b

    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mOutSideItems:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1b
    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_1c
    sget-object v13, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    const-string v14, "changeGridSize mAdapter is null!!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mOutSideItems:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v13, :cond_1e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mOutSideItems:Ljava/util/List;

    invoke-virtual {v13, v14}, Lcom/sec/daliviews/views/ListAdapter;->detachItems(Ljava/util/List;)Z

    :cond_1e
    const/4 v6, 0x1

    :cond_1f
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->updatePageLayout(II)V

    return v6
.end method

.method public checkEmptyHomeFolder()V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isSafeMode()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v3, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    const-string v4, "PP::checkEmptyHomeFolder "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    instance-of v3, v1, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v3

    check-cast v1, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->checkEmptyFolder(Lcom/sec/android/app/launcher/data/FolderItem;)V

    goto :goto_0
.end method

.method public checkItemLoading(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->options:Landroid/os/Bundle;

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/sec/android/app/launcher/data/DataManager;->checkItemLoading(Lcom/sec/android/app/launcher/data/DataManager$ILoadCompleteListener;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public clearEmptyPageText()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->setEmptyPage(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePage(Lcom/sec/android/app/launcher/data/PageItem;)I

    return-void
.end method

.method protected copyToPendingAddInfo(Lcom/sec/daliviews/views/Item;Lcom/sec/android/app/launcher/data/WidgetListItem;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->get()Lcom/sec/android/app/launcher/activities/ActivityResultHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->getActivityResult()Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;->getPendingAddInfo()Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getWidgetSpanX()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->spanX:I

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getWidgetSpanY()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->spanY:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->cellX:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->cellY:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/PageItem;->getContainerFilter()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->containerType:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->containerId:I

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v2

    sget v3, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->pos:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->emptyPageDbId:I

    :goto_0
    invoke-virtual {p2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getUserId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->userId:J

    return-void

    :cond_0
    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->emptyPageDbId:I

    goto :goto_0
.end method

.method public deleteItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/launcher/data/DataManager;->deleteItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;)V

    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLoadingCancelled:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/launcher/data/DataManager;->unregisterDataListener(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/launcher/data/DataManager;->unregisterLoadCompleteListener(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$ILoadCompleteListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPopulateWorker:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->destroy()V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupItems:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupItems:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupItems:Landroid/util/LongSparseArray;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHomeIconContainer:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHomeIconContainer:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->destroy()V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHomeIconContainer:Lcom/sec/daliviews/views/ContainerView;

    :cond_3
    return-void
.end method

.method public detachItem(Lcom/sec/android/app/launcher/data/HomeItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ListAdapter;->detachItem(Lcom/sec/daliviews/views/Item;)Z

    :cond_0
    return-void
.end method

.method public findAndSetCellPosition(Lcom/sec/daliviews/views/Item;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    instance-of v2, v2, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/LayoutBase;->isValidPeer()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    check-cast v2, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v2, p1}, Lcom/sec/daliviews/layouts/GridLayout;->findFirstAvailablePosition(Lcom/sec/daliviews/views/Item;)Lcom/sec/daliviews/layouts/LayoutPosition;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/LayoutPosition;->getCellX()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sec/daliviews/views/Item;->setCellX(I)V

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/LayoutPosition;->getCellY()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sec/daliviews/views/Item;->setCellY(I)V

    const/4 v2, 0x1

    :goto_1
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getAdapter()Lcom/sec/daliviews/views/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    return-object v0
.end method

.method public getChannelType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mChannel:Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;

    return-object v0
.end method

.method public getDefaultHomeIcon()Lcom/sec/daliviews/views/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHomeIcon:Lcom/sec/daliviews/views/ImageView;

    return-object v0
.end method

.method public getDragListener()Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDragListener:Lcom/sec/android/app/launcher/activities/PagePresenter$DragListener;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemsFromDataManager(ZLcom/sec/android/app/launcher/data/DataManager$SortType;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/sec/android/app/launcher/data/DataManager$SortType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/sec/android/app/launcher/data/DataManager;->getItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;ZLcom/sec/android/app/launcher/data/DataManager$SortType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNeedUpdateForChangeGrid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedUpdateForChangeGrid:Z

    return v0
.end method

.method public getOutSideItems()Ljava/util/List;
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

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mOutSideItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mOutSideItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mOutSideItems:Ljava/util/List;

    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->mItemComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mOutSideItems:Ljava/util/List;

    return-object v0
.end method

.method public getPageItem()Lcom/sec/android/app/launcher/data/PageItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomePageItem;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageView()Lcom/sec/daliviews/views/PageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    return-object v0
.end method

.method public getRootView()Lcom/sec/daliviews/views/ContainerViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    return-object v0
.end method

.method public getSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    return-object v0
.end method

.method public getmNeedtoOpenConfigureLater()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedtoOpenConfigureLater:Z

    return v0
.end method

.method public hasClockWidget()Z
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    const/4 v3, 0x0

    instance-of v5, v1, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v5, :cond_4

    check-cast v1, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    :goto_1
    sget-object v5, Lcom/sec/android/app/launcher/activities/PagePresenter;->WEATHER_SURFACE_WIDGET:Landroid/content/ComponentName;

    invoke-virtual {v5, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/sec/android/app/launcher/activities/PagePresenter;->KWEATHER_SURFACE_WIDGET:Landroid/content/ComponentName;

    invoke-virtual {v5, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/sec/android/app/launcher/activities/PagePresenter;->CMAWEATHER_SURFACE_WIDGET:Landroid/content/ComponentName;

    invoke-virtual {v5, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/sec/android/app/launcher/activities/PagePresenter;->DIGITAL_CLOCK_WIDGET:Landroid/content/ComponentName;

    invoke-virtual {v5, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/sec/android/app/launcher/activities/PagePresenter;->DUAL_CLOCK_WIDGET:Landroid/content/ComponentName;

    invoke-virtual {v5, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_3
    sget-object v4, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "find clock widget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    instance-of v5, v1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v5, :cond_2

    check-cast v1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_1
.end method

.method public hasGoogleSearchWidget()Z
    .locals 6

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-nez v4, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/Item;

    instance-of v4, v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v4, :cond_2

    check-cast v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    sget-object v5, Lcom/sec/android/app/launcher/activities/PagePresenter;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public isAlwaysClickable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAlwaysClickable:Z

    return v0
.end method

.method public isResizableWidget(Lcom/sec/daliviews/views/Item;)Z
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    instance-of v10, p1, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-nez v10, :cond_1

    instance-of v10, p1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return v11

    :cond_1
    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getMinSpanX()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getMinSpanY()I

    move-result v5

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getMaxSpanX()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getMaxSpanY()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getSpanX()I

    move-result v8

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getSpanY()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v10}, Lcom/sec/daliviews/views/PageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    :cond_2
    sget v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    sget v7, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    instance-of v10, v10, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    check-cast v10, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v10}, Lcom/sec/daliviews/layouts/GridLayout;->isVerticalScroll()Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    check-cast v10, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v10}, Lcom/sec/daliviews/layouts/GridLayout;->getColumnCount()I

    move-result v0

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    check-cast v10, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v10}, Lcom/sec/daliviews/layouts/GridLayout;->getRowCount()I

    move-result v7

    :cond_3
    :goto_1
    const/4 v6, 0x0

    const/4 v1, 0x0

    instance-of v10, p1, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v10, :cond_7

    check-cast p1, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v10

    iget v6, v10, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    const/4 v1, 0x1

    :cond_4
    :goto_2
    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    if-lt v4, v8, :cond_5

    if-lt v4, v0, :cond_5

    if-gt v2, v0, :cond_8

    if-le v2, v8, :cond_8

    :cond_5
    move v10, v12

    :goto_3
    move v11, v10

    goto :goto_0

    :cond_6
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    instance-of v10, v10, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    check-cast v10, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v10}, Lcom/sec/daliviews/layouts/GridLayout;->getColumnCount()I

    move-result v0

    goto :goto_1

    :cond_7
    instance-of v10, p1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v10, :cond_4

    check-cast p1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getWidgetInfo()Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v10

    iget v6, v10, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->resizeMode:I

    goto :goto_2

    :cond_8
    move v10, v11

    goto :goto_3

    :pswitch_2
    if-lt v5, v9, :cond_9

    if-lt v5, v7, :cond_9

    if-eqz v1, :cond_a

    :cond_9
    :goto_4
    move v11, v12

    goto/16 :goto_0

    :cond_a
    if-le v3, v9, :cond_0

    goto :goto_4

    :pswitch_3
    if-lt v4, v8, :cond_b

    if-lt v4, v0, :cond_b

    if-gt v2, v8, :cond_b

    if-lt v5, v9, :cond_b

    if-lt v5, v7, :cond_b

    if-le v3, v9, :cond_0

    :cond_b
    move v11, v12

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onItemAdded(Lcom/sec/daliviews/views/Item;)V
    .locals 14

    const-wide/16 v4, -0x1

    const/4 v13, 0x1

    const/4 v6, 0x0

    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PP::onItemAdded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " itemSourceType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p1, Lcom/sec/android/app/launcher/data/LauncherItem;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PP::onItemAdded trying to add another type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/sec/daliviews/views/Item;->setPos(I)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v7

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->isResizing()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDraggedItem()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/sec/daliviews/views/NativeViewBase;->getItemId()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->isInvalidDrop()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    const-string v2, "onItemAdded during resize, ending resize and relocating item"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->resizeEnd()V

    invoke-virtual {v7}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->resizeFinished()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->fitItemToCurrentPage(Lcom/sec/daliviews/views/Item;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    const-string v2, "onItemAdded: Fitted new item added during resize to this page."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/views/ListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v1, v2, v11, v13}, Lcom/sec/android/app/launcher/data/DataManager;->updateItemsPositions(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;Z)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1, p1, v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->fitItemToAnyPage(Lcom/sec/daliviews/views/Item;Z)Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v10

    if-eqz v10, :cond_5

    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    const-string v2, "Fitted new item added during resize to a different page."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10, v11, v6, v6}, Lcom/sec/android/app/launcher/activities/PagePresenter;->addItemsToAdapter(Ljava/util/List;ZZ)V

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    const-string v2, "onItemAdded: Failed to fit new item to any page. Deleting it"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/launcher/data/DataManager;->deleteItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/views/ListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getEmptyPage()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PageView;->deleteEmptyPageMessage()V

    :cond_8
    instance-of v1, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v1, :cond_a

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->animationInstall(Lcom/sec/android/app/launcher/data/HomeItem;)V

    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->pageContentChanged(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PP::onItemAdded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " done"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    instance-of v1, p1, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v1, :cond_b

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1, v13}, Lcom/sec/android/app/launcher/data/FolderItem;->setDragEventInterest(I)V

    goto :goto_1

    :cond_b
    instance-of v1, p1, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v2, "WGAD"

    move-object v3, p1

    check-cast v3, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_c
    :goto_2
    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mResizeNewWidgets:Z

    if-eqz v1, :cond_9

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/WidgetItem;

    if-nez v1, :cond_d

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v1, :cond_9

    :cond_d
    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedtoOpenConfigureLater:Z

    if-eqz v1, :cond_e

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/WidgetItem;

    if-eqz v1, :cond_e

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->isResizableWidget(Lcom/sec/daliviews/views/Item;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    const-string v2, "PagePresenter::onItemAdded() resizable configure widget "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v13, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mResizeNewWidgetOnItemAdded:Z

    :cond_e
    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mResizeNewWidgetOnItemAdded:Z

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v12

    if-eqz v12, :cond_12

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedtoOpenConfigureLater:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/launcher/activities/PagePresenter$4;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/launcher/activities/PagePresenter$4;-><init>(Lcom/sec/android/app/launcher/activities/PagePresenter;Lcom/sec/daliviews/views/Item;)V

    const-wide/16 v4, 0x118

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3
    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mResizeNewWidgetOnItemAdded:Z

    :cond_f
    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedtoOpenConfigureLater:Z

    goto/16 :goto_1

    :cond_10
    instance-of v1, p1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v2, "WGAD"

    move-object v3, p1

    check-cast v3, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_2

    :cond_11
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    const-string v2, "PagePresenter.onItemAdded() resize from onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResizeFrame()Lcom/sec/android/app/launcher/views/HomeResizeFrame;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->setResizeFrame(Lcom/sec/daliviews/views/ResizeFrame;)V

    invoke-virtual {v7, v12, p1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->resizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    goto :goto_3

    :cond_12
    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    const-string v2, "onItemAdded - view null. Will call resizeStart when view linked"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p0}, Lcom/sec/daliviews/views/Item;->setViewLinkedListener(Lcom/sec/daliviews/views/Item$ViewLinkedListener;)V

    goto :goto_3
.end method

.method public onItemBadgeUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onItemBadgeUpdated(Lcom/sec/daliviews/views/Item;)V

    return-void
.end method

.method public onItemClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)Z
    .locals 9

    const-wide/16 v4, -0x1

    const/4 v8, 0x1

    const/4 v6, 0x0

    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PP::onItemClick "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->clickAcceptable()Z

    move-result v1

    if-nez v1, :cond_1

    move v6, v8

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isFocusAttached()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isKeypadFocusAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->genClick(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_3
    instance-of v1, p3, Lcom/sec/android/app/launcher/data/LauncherItem;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDarkenView()Lcom/sec/daliviews/views/ClippedContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p3, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v1, :cond_4

    move-object v1, p3

    check-cast v1, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v1, p3

    check-cast v1, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v1, p3

    check-cast v1, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v2, "GSWS"

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_4
    instance-of v1, p3, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    check-cast p3, Lcom/sec/android/app/launcher/data/FolderItem;

    sget-object v2, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->NORMAL:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    invoke-virtual {v1, p3, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->openFolder(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;)V

    move v6, v8

    goto :goto_0

    :cond_5
    instance-of v1, p3, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isLaunchEffectEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setAppLaunchedWithLaunchEffect()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getLaunchEffect()Lcom/sec/daliviews/effects/LaunchEffect;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/sec/daliviews/effects/LaunchEffect;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    const v2, 0x7f0b008e

    invoke-virtual {v7, v1, v2}, Lcom/sec/daliviews/effects/LaunchEffect;->perform(Lcom/sec/daliviews/views/NativeViewBase;I)V

    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object v1, p3

    check-cast v1, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-static {v2, v1}, Lcom/sec/android/app/launcher/utils/Utils;->launchUri(Landroid/app/Activity;Lcom/sec/android/app/launcher/data/LauncherItem;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Logging;->setWeekLogging(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v2, "HOIS"

    check-cast p3, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {p3}, Lcom/sec/android/app/launcher/data/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    move v6, v8

    goto/16 :goto_0

    :cond_7
    const-string v1, "LaunchEffect"

    const-string v2, "[JAVA] PagePresenter.onItemClick() - State is not correct for this operation."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onItemDeleted(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->deleteItemOnAdapter(Lcom/sec/daliviews/views/Item;)V

    return-void
.end method

.method public onItemLoadCompleted(Landroid/os/Bundle;)V
    .locals 8

    const/4 v4, 0x0

    new-instance v3, Lcom/sec/android/app/launcher/activities/PagePresenter$7;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/launcher/activities/PagePresenter$7;-><init>(Lcom/sec/android/app/launcher/activities/PagePresenter;Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageIndex(Lcom/sec/daliviews/views/PageView;)I

    move-result v2

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz p1, :cond_0

    const-string v5, "tempPage"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    :cond_0
    if-nez v4, :cond_1

    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomescreenMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v5, v6, :cond_3

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->runPopulateViewTask(Landroid/os/Bundle;)V

    sget-object v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->PERFORMANCE_TAG:Ljava/lang/String;

    const-string v6, "Launcher-Load-Done"

    invoke-static {v5, v6}, Lcom/sec/android/app/launcher/utils/CallTimeChecker;->endWithCheck(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPopulateWorker:Landroid/os/Handler;

    const-wide/16 v6, 0x320

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public onItemLongClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z
    .locals 10

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomescreenMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDraggedView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDraggedView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eq v0, p2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->cancelResizeMode()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    if-ne v0, v1, :cond_9

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getMovability()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    instance-of v0, p2, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v0, :cond_6

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getTitle()Ljava/lang/String;

    move-result-object v9

    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v4, 0x7f0d004b

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0, p2, v8}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->announce(Lcom/sec/daliviews/views/NativeViewBase;Ljava/lang/String;)V

    :cond_4
    instance-of v0, p2, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v7}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;FFII)V

    :cond_5
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_7
    instance-of v0, p2, Lcom/sec/android/app/launcher/views/FolderView;

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v7}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;FFII)V

    goto :goto_2

    :cond_8
    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDraggedView:Lcom/sec/daliviews/views/NativeViewBase;

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

    move-object v3, p4

    invoke-virtual/range {v0 .. v7}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;FFII)V

    instance-of v0, p2, Lcom/sec/daliviews/views/TextureView;

    if-eqz v0, :cond_5

    instance-of v0, p2, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getGlowEffect()Lcom/sec/daliviews/effects/GlowEffect;

    move-result-object v0

    invoke-virtual {v0, p2, p2}, Lcom/sec/daliviews/effects/GlowEffect;->apply(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getGlowEffect()Lcom/sec/daliviews/effects/GlowEffect;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/sec/daliviews/effects/GlowEffect;->setVisible(Lcom/sec/daliviews/views/NativeViewBase;Z)V

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onItemTouch(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isFocusAttached()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isKeypadFocusAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    instance-of v1, p2, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v1, :cond_3

    check-cast p2, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {p2, p4, p1}, Lcom/sec/android/app/launcher/views/HomeItemView;->showGlowEffectIfNeeded(Landroid/view/MotionEvent;Lcom/sec/daliviews/views/ContainerViewBase;)V

    goto :goto_0

    :cond_3
    instance-of v1, p2, Lcom/sec/android/app/launcher/views/FolderView;

    if-eqz v1, :cond_0

    check-cast p2, Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual {p2, p4, p1}, Lcom/sec/android/app/launcher/views/HomeFolderView;->showGlowEffectIfNeeded(Landroid/view/MotionEvent;Lcom/sec/daliviews/views/ContainerViewBase;)V

    goto :goto_0
.end method

.method public onItemUpdateCompleted()V
    .locals 0

    return-void
.end method

.method public onItemUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 6

    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PP::onItemUpdated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/sec/daliviews/views/Item;->setPos(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/views/ListAdapter;->updateItem(Lcom/sec/daliviews/views/Item;)V

    :cond_0
    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PP::onItemUpdated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " done"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
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

    if-nez v3, :cond_2

    sget-object v6, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    const-string v7, "PP::onItemsDisplaced - item(%d) not exist on this Page(%d)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v9}, Lcom/sec/daliviews/views/PageView;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/sec/android/app/launcher/data/DataManager;->updateDisplacedItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;)V

    iget-boolean v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHome:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

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

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->onItemUpdated(Lcom/sec/daliviews/views/Item;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onViewLinked(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/sec/daliviews/views/Item;->setViewLinkedListener(Lcom/sec/daliviews/views/Item$ViewLinkedListener;)V

    sget-object v3, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    const-string v4, "onViewLinked, starting resize frame"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    :cond_0
    instance-of v3, p1, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-nez v3, :cond_1

    instance-of v3, p1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v3, :cond_3

    :cond_1
    const/4 v2, 0x0

    instance-of v3, p1, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v3, :cond_4

    move-object v3, p1

    check-cast v3, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    const/4 v3, 0x4

    new-array v1, v3, [I

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSpanCalculator:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    invoke-virtual {v3, v2, v1}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/daliviews/views/Item;->setMinSpanXY(II)V

    aget v3, v1, v6

    if-eq v3, v5, :cond_3

    aget v3, v1, v7

    if-eq v3, v5, :cond_3

    aget v3, v1, v6

    aget v4, v1, v7

    invoke-virtual {p1, v3, v4}, Lcom/sec/daliviews/views/Item;->setMaxSpanXY(II)V

    :cond_3
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResizeFrame()Lcom/sec/android/app/launcher/views/HomeResizeFrame;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->setResizeFrame(Lcom/sec/daliviews/views/ResizeFrame;)V

    invoke-virtual {v0, p2, p1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->resizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    return-void

    :cond_4
    instance-of v3, p1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getWidgetInfo()Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v2

    goto :goto_0
.end method

.method public populated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPopulated:Z

    return v0
.end method

.method public restorePage(Z)V
    .locals 11

    const/4 v10, 0x1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupItems:Landroid/util/LongSparseArray;

    if-eqz v6, :cond_8

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupItems:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/BackupItem;

    if-eqz v0, :cond_0

    instance-of v6, v2, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v6, :cond_1

    iput-boolean v10, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedUpdateForChangeGrid:Z

    move-object v6, v2

    check-cast v6, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->updateForCancelChangeGrid()V

    :cond_1
    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/BackupItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sec/daliviews/views/Item;->setLinkedView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/BackupItem;->getCellX()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/daliviews/views/Item;->setCellX(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/BackupItem;->getCellY()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/daliviews/views/Item;->setCellY(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/BackupItem;->getSpanX()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/daliviews/views/Item;->setSpanX(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/BackupItem;->getSpanY()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/daliviews/views/Item;->setSpanY(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/BackupItem;->getPos()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/daliviews/views/Item;->setPos(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/BackupItem;->getContainerId()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/daliviews/views/Item;->setContainerId(I)V

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupItems:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-le v6, v7, :cond_7

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mOutSideItems:Ljava/util/List;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mOutSideItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mOutSideItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    if-eqz v2, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupItems:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/BackupItem;

    if-eqz v0, :cond_5

    instance-of v6, v2, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v6, :cond_6

    iput-boolean v10, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedUpdateForChangeGrid:Z

    move-object v6, v2

    check-cast v6, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->updateForCancelChangeGrid()V

    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/BackupItem;->getCellX()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/daliviews/views/Item;->setCellX(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/BackupItem;->getCellY()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/daliviews/views/Item;->setCellY(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/BackupItem;->getSpanX()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/daliviews/views/Item;->setSpanX(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/BackupItem;->getSpanY()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/daliviews/views/Item;->setSpanY(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/BackupItem;->getPos()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/daliviews/views/Item;->setPos(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/BackupItem;->getContainerId()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/daliviews/views/Item;->setContainerId(I)V

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v6, v2}, Lcom/sec/daliviews/views/ListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    if-nez p1, :cond_5

    instance-of v6, v2, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-nez v6, :cond_5

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mOutSideItems:Ljava/util/List;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mOutSideItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    :cond_8
    sget v6, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageColumn:I

    if-eqz v6, :cond_a

    sget v6, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageRow:I

    if-eqz v6, :cond_a

    if-eqz p1, :cond_a

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    sget v7, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageColumn:I

    sget v8, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageRow:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/launcher/data/HomePageItem;->setGridSize(II)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/HomePageItem;->getPagePaddings()Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    iget v9, v5, Landroid/graphics/Rect;->right:I

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/daliviews/views/PageView;->setPadding(IIII)V

    :cond_9
    sget v6, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageRow:I

    sget v7, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageColumn:I

    invoke-direct {p0, v6, v7}, Lcom/sec/android/app/launcher/activities/PagePresenter;->updatePageLayout(II)V

    :cond_a
    return-void
.end method

.method runPopulateViewTask(Landroid/os/Bundle;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLoadingCancelled:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const-string v3, "clone"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "getItem"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "tempPage"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :cond_2
    iget-boolean v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLoadingCancelled:Z

    if-nez v3, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->populateView(ZZ)V

    iput-boolean v5, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPopulated:Z

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLoadingCancelled:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->addPrearrangedItemsToAdapter(Z)V

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHome:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setMainHomeScreenshot(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getEmptyPageTextState()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/launcher/activities/PagePresenter;->setEmptyPage(Z)V

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/app/launcher/activities/PagePresenter$8;

    invoke-direct {v4, p0}, Lcom/sec/android/app/launcher/activities/PagePresenter$8;-><init>(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setAccessibilityMode(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/PageView;->setAccessibilityMode(Z)V

    return-void
.end method

.method public setAlwaysClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAlwaysClickable:Z

    return-void
.end method

.method public setAsDefaultHome(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHome:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/PageView;->setIsDefaultPage(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomePageItem;->getPageOrder()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    instance-of v0, v0, Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageIndicatorImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PageView;->setPageIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeIndicatorImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PageView;->setPageIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHomeIcon:Lcom/sec/daliviews/views/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHome:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHomeIcon:Lcom/sec/daliviews/views/ImageView;

    const v1, 0x7f020045

    invoke-static {v1}, Lcom/sec/daliviews/resource/ResourceConnector;->composeResPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setImagePath(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNormalIndicatorImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PageView;->setPageIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHomeIcon:Lcom/sec/daliviews/views/ImageView;

    const v1, 0x7f020044

    invoke-static {v1}, Lcom/sec/daliviews/resource/ResourceConnector;->composeResPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setImagePath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEmptyPage(Z)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/launcher/data/HomePageItem;->setEmptyPage(Z)V

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v2

    const v6, 0x7f03004e

    invoke-virtual {v2, v6}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    const v6, 0x7f0d00d3

    invoke-virtual {v0, v6}, Lcom/sec/daliviews/views/TextView;->setText(I)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->getScreenDimensions(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v3

    iget v6, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v6}, Lcom/sec/daliviews/views/TextView;->calculateRenderedSizeInPixels(I)[I

    move-result-object v4

    aget v6, v4, v8

    aget v7, v4, v9

    invoke-virtual {v0, v6, v7}, Lcom/sec/daliviews/views/TextView;->setSize(II)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "need_dark_font"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_0

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getHomeTextColor()I

    move-result v1

    const v6, 0x1ffffff

    if-eq v1, v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v6, v0, v8, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setTextStyle(Lcom/sec/daliviews/views/TextView;ZI)V

    :cond_0
    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v6, v0, v8}, Lcom/sec/daliviews/views/PageView;->showEmptyPageMessage(Lcom/sec/daliviews/views/TextView;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v0, v7}, Lcom/sec/daliviews/views/PageView;->showEmptyPageMessage(Lcom/sec/daliviews/views/TextView;I)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/PageView;->deleteEmptyPageMessage()V

    goto :goto_0
.end method

.method public setNeedUpdateForChangeGrid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedUpdateForChangeGrid:Z

    return-void
.end method

.method public setPageFlipEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/PageView;->setPageFlipEnable(Z)V

    return-void
.end method

.method public setPrearrangedItemsToAdd(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPrearrangedItemsToAdd:Ljava/util/List;

    return-void
.end method

.method public setVerticalScrollEffect(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrentVerticalEffect:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    check-cast v0, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/GridLayout;->setVerticalScrollEffect(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    check-cast v0, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/layouts/GridLayout;->setScrollEffect(I)V

    iput v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrentVerticalEffect:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrentVerticalEffect:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    check-cast v0, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/GridLayout;->setVerticalScrollEffect(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    check-cast v0, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/GridLayout;->setScrollEffect(I)V

    iput v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrentVerticalEffect:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mLayout:Lcom/sec/daliviews/layouts/LayoutBase;

    check-cast v0, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/layouts/GridLayout;->setVerticalScrollEffect(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mCurrentVerticalEffect:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityNotFoundException while adding shortcut widget - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public switchMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V
    .locals 2

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->dragEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->dragEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageView;->enterDragMode()V

    :cond_0
    :goto_0
    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PageView;->setDragEventInterest(I)V

    sget-object v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    const-string v1, "switchMode to PAGE_EDIT_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->dragEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->dragEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageView;->exitDragMode()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PageView;->setDragEventInterest(I)V

    sget-object v0, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    const-string v1, "switchMode from PAGE_EDIT_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateCellSize(IIII)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/GridLayout;->isVerticalScroll()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v0, p1, p2}, Lcom/sec/daliviews/layouts/GridLayout;->setCellSize(II)V

    invoke-virtual {v0, p3}, Lcom/sec/daliviews/layouts/GridLayout;->setHorizontalSpacing(I)V

    invoke-virtual {v0, p4}, Lcom/sec/daliviews/layouts/GridLayout;->setVerticalSpacing(I)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->setDefaultMode()V

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/GridLayout;->layoutViews()V

    :cond_0
    return-void
.end method

.method public updateDefaultHomeLayout()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHomeIconContainer:Lcom/sec/daliviews/views/ContainerView;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHomeIconContainer:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v0

    const v2, 0x7f0a00b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHomeIconContainer:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/views/ContainerView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHomeIcon:Lcom/sec/daliviews/views/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHomeIcon:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ImageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v0

    const v2, 0x7f0a00b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    const v2, 0x7f0a00b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHomeIcon:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/views/ImageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDefaultHomeIconContainer:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    goto :goto_0
.end method

.method public updateForChangeGrid()V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mNeedUpdateForChangeGrid:Z

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    monitor-enter v2

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

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

    instance-of v3, v1, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->updateForChangeGrid()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    return-void
.end method

.method public updateForRotation()V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    monitor-enter v2

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

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

    instance-of v3, v1, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->updateForRotation()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    return-void
.end method

.method public updateItem(Lcom/sec/daliviews/views/Item;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v2, v3, p1}, Lcom/sec/android/app/launcher/data/DataManager;->updateItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v2, v3, p1}, Lcom/sec/android/app/launcher/data/DataManager;->insertItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/Item;->setDbId(I)V

    :cond_0
    return-void
.end method

.method public updateItems()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/launcher/data/DataManager;->updateItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public updateItems(Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v1, v2, v0, p1}, Lcom/sec/android/app/launcher/data/DataManager;->updateItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public updatePage(IIIILandroid/graphics/Rect;)V
    .locals 6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageView:Lcom/sec/daliviews/views/PageView;

    iget v2, p5, Landroid/graphics/Rect;->left:I

    iget v3, p5, Landroid/graphics/Rect;->top:I

    iget v4, p5, Landroid/graphics/Rect;->right:I

    iget v5, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/daliviews/views/PageView;->setPadding(IIII)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    const v2, 0x7f0a00a9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/data/HomePageItem;->setDefaultCellWidth(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    const v2, 0x7f0a00a5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/data/HomePageItem;->setDefaultCellHeight(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/data/HomePageItem;->setCellSizeWidth(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/launcher/data/HomePageItem;->setCellSizeHeight(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/launcher/data/HomePageItem;->setCellSpacingHorizontal(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/launcher/data/HomePageItem;->setCellSpacingVertical(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v1, p5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setPagePaddings(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateTextViewMode()V
    .locals 9

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v7, Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;

    const-string v8, "PP::updateTextViewMode "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/PagePresenter;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v7}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/Item;

    instance-of v7, v4, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v7, :cond_3

    move-object v2, v4

    check-cast v2, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/HomeItemView;->updateTextParams()V

    :cond_3
    instance-of v7, v4, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v7, :cond_2

    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeFolderView;->updateTextParams()V

    goto :goto_0
.end method
