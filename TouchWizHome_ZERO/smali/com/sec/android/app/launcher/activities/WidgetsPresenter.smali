.class public Lcom/sec/android/app/launcher/activities/WidgetsPresenter;
.super Lcom/sec/android/app/launcher/activities/PresenterBase;
.source "WidgetsPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;
.implements Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;
.implements Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;
.implements Lcom/sec/android/app/launcher/activities/WidgetSearchBar$Listener;
.implements Lcom/sec/android/app/launcher/views/WidgetFolderView$WidgetFolderViewListener;
.implements Lcom/sec/daliviews/views/AdapterView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/WidgetsPresenter$WidgetsPagedAdapterViewListener;,
        Lcom/sec/android/app/launcher/activities/WidgetsPresenter$WidgetsFilter;,
        Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final REFRESH_IGNORE_INTERVAL:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static mSavedCurrentPage:I


# instance fields
.field private final mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

.field private mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

.field private mAdapterAttached:Z

.field private mAddHandler:Landroid/os/Handler;

.field private mAddWidgetRunnable:Ljava/lang/Runnable;

.field private mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private final mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

.field private mDraggedWidgetView:Lcom/sec/android/app/launcher/views/WidgetListItemView;

.field private mFilteredWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mGlowedView:Lcom/sec/daliviews/views/NativeViewBase;

.field private mHandler:Landroid/os/Handler;

.field private mLanguageName:Ljava/lang/String;

.field private mLastAccessibilityReportedPage:I

.field private mLastOpenFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

.field private mLastUpdatedPackageName:Ljava/lang/String;

.field private mListMode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

.field private mNewItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageTitleList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

.field private mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

.field private mPageIndicatorImage:Landroid/graphics/drawable/Drawable;

.field private mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

.field private mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

.field private mPagedAdapterViewListener:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$WidgetsPagedAdapterViewListener;

.field private mRefreshWidgetRunnable:Ljava/lang/Runnable;

.field private mRemoveWidgetRunnable:Ljava/lang/Runnable;

.field private mRootAttached:Z

.field private mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

.field private mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mSlideDownAnimation:Landroid/view/animation/Animation;

.field private mSlideUpAnimation:Landroid/view/animation/Animation;

.field private mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

.field private mTitleBarUninstall:Landroid/widget/LinearLayout;

.field private mUninstallText:Landroid/widget/TextView;

.field private mUninstallbackButton:Landroid/widget/LinearLayout;

.field private mVisibility:I

.field private mWidgetItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetListColumnCount:I

.field private mWidgetListFolderItemView:Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

.field private mWidgetListRowCount:I

.field private mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

.field private mWidgetSearchHighlight:Ljava/lang/Integer;

.field private mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

.field private mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

.field private mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

.field private mZoomAnimTime:F

.field private mZoomOffsetX:F

.field private mZoomOffsetY:F

.field private mZoomScale:F

.field private mZoomedOut:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->DEBUGGABLE:Z

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSavedCurrentPage:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v1, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$WidgetsFilter;

    invoke-direct {v1, v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$WidgetsFilter;-><init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter$1;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/PresenterBase;-><init>(Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;)V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    iput v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetListRowCount:I

    iput v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetListColumnCount:I

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_WIDGETS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mNewItemList:Ljava/util/List;

    iput v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLastAccessibilityReportedPage:I

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mRootAttached:Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapterAttached:Z

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAddHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$WidgetsPagedAdapterViewListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$WidgetsPagedAdapterViewListener;-><init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Lcom/sec/android/app/launcher/activities/WidgetsPresenter$1;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterViewListener:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$WidgetsPagedAdapterViewListener;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mGlowedView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLanguageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLastUpdatedPackageName:Ljava/lang/String;

    const/4 v1, 0x4

    iput v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mVisibility:I

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mZoomedOut:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mZoomScale:F

    iput v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mZoomOffsetX:F

    iput v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mZoomOffsetY:F

    iput v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mZoomAnimTime:F

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mFilteredWidgets:Ljava/util/List;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLastOpenFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    sget-object v1, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mTitleBarUninstall:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mUninstallbackButton:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mUninstallText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideDownAnimation:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideUpAnimation:Landroid/view/animation/Animation;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPackageTitleList:Ljava/util/HashMap;

    new-instance v1, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$4;-><init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    new-instance v1, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$7;-><init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAddWidgetRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$8;-><init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mRemoveWidgetRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$9;-><init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mRefreshWidgetRunnable:Ljava/lang/Runnable;

    iput-object p0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDataManager()Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAndroidRoot()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0b00cf

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mTitleBarUninstall:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mTitleBarUninstall:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0126

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mUninstallbackButton:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mTitleBarUninstall:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0127

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mUninstallText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mUninstallbackButton:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$1;-><init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v2, 0x7f040030

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideUpAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v2, 0x7f04002f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideDownAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideUpAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$2;-><init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetListRowCount:I

    const v1, 0x7f0c004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetListColumnCount:I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a02d4

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mZoomAnimTime:F

    const v1, 0x7f0a02d9

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mZoomScale:F

    const v1, 0x7f0a02d6

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mZoomOffsetX:F

    const v1, 0x7f0a02d7

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mZoomOffsetY:F

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAddHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setupViews()V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLanguageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchHighlight:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->updateWidgetList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->detachRootViewIfNeeded()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->sortItems()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/daliviews/views/PagedListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLastUpdatedPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLastUpdatedPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setListMode(Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mUninstallbackButton:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/data/DataManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/activities/WidgetsPresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicatorImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getTitleFromPackageList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/daliviews/layouts/PageLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/activities/WidgetSearchBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->updateFromPageChange(I)V

    return-void
.end method

.method static synthetic access$702(I)I
    .locals 0

    sput p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSavedCurrentPage:I

    return p0
.end method

.method static synthetic access$800(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mFilteredWidgets:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mFilteredWidgets:Ljava/util/List;

    return-object p1
.end method

.method private attachAdapter()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapterAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedAdapterView;->setAdapter(Lcom/sec/daliviews/views/Adapter;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapterAttached:Z

    :cond_0
    return-void
.end method

.method private attachRootView()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mRootAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->addViewToScene(Lcom/sec/daliviews/views/NativeViewBase;)V

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mRootAttached:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ContainerView;->setSensitive(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mVisibility:I

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mVisibility:I

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedAdapterView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private detachRootViewIfNeeded()V
    .locals 2

    sget v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mMemoryOptimiseLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mRootAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->removeViewFromScene(Lcom/sec/daliviews/views/NativeViewBase;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mRootAttached:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mVisibility:I

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mVisibility:I

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedAdapterView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_0
    sget-object v3, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " folderLabel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_0
    move-exception v1

    sget-object v3, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getApplicationLabel will return null : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getTitleFromPackageList(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPackageTitleList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPackageTitleList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_1

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPackageTitleList:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get application Lable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getWidgetItemInList(Ljava/lang/String;)Lcom/sec/android/app/launcher/data/WidgetListItem;
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setListMode(Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$10;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$10;-><init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setupPageIndicator(ZZ)V
    .locals 9

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    const v6, 0x7f0b013a

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/views/PageIndicator;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getPageIndicatorDefault()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicatorImage:Landroid/graphics/drawable/Drawable;

    const v5, 0x7f0a00e2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/PageIndicator;->setIndicatorGrowBy(I)V

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    const v5, 0x7f0a00eb

    invoke-virtual {v3, v5, v4, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/PageIndicator;->setPageScrollDuration(F)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    sget v6, Lcom/sec/android/app/launcher/activities/LauncherApp;->mMemoryOptimiseLevel:I

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/PageIndicator;->setMemoryOptimiseLevel(I)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/PagedAdapterView;->setPageIndicator(Lcom/sec/daliviews/views/PageIndicator;)V

    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    sget v6, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSavedCurrentPage:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/PageIndicator;->setPageLayout(Lcom/sec/daliviews/layouts/PageLayout;)V

    const v5, 0x7f0a0258

    invoke-virtual {v3, v5, v4, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const v5, 0x7f0a0259

    invoke-virtual {v3, v5, v4, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v5, v1, v2}, Lcom/sec/daliviews/views/PageIndicator;->setPageSwapDuration(FF)V

    if-eqz p2, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/PageIndicator;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/PageIndicator;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupViews()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v1}, Lcom/sec/daliviews/views/ViewInflater;->instance(Landroid/content/Context;)Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v16

    const v1, 0x7f03005e

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    const v4, 0x7f0b0139

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/PagedAdapterView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v1, 0x7f0c004e

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v1, 0x7f0c0051

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x1

    const v7, 0x7f0a02b9

    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v17, 0x7f0a02ba

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/sec/daliviews/views/PagedAdapterView;->setGridLayoutParams(IIIIIII)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isRTLLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PagedAdapterView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v12

    const/4 v1, 0x0

    const v4, 0x7f0a02c8

    invoke-virtual {v14, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0a02c6

    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v12, v1, v4, v5, v7}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v1, v12}, Lcom/sec/daliviews/views/PagedAdapterView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    const v4, 0x7f0a0031

    invoke-virtual {v14, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x7f0a0032

    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/daliviews/views/PagedAdapterView;->setLandscapeEffectParams(FF)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PagedAdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    sget v4, Lcom/sec/android/app/launcher/activities/LauncherApp;->mMemoryOptimiseLevel:I

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/layouts/PageLayout;->setMemoryOptimiseLevel(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/layouts/PageLayout;->setBackgroundEffectWindowSize(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getSavedScrollEffect()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/layouts/PageLayout;->setScrollEffect(I)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const v4, 0x7f0a02d5

    invoke-virtual {v14, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/layouts/PageLayout;->setNormalModeMargin(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    sget v4, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSavedCurrentPage:I

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/layouts/PageLayout;->setInitialPage(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/layouts/PageLayout;->setOnPageChangeListener(Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    new-instance v4, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$3;-><init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/layouts/PageLayout;->setOnGestureListener(Lcom/sec/daliviews/layouts/PageLayout$OnGestureListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/sec/daliviews/layouts/PageLayout;->setScrollWrap(ZZZZZ)V

    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    const v1, 0x7f0a02a0

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v6, v1

    const v1, 0x7f0a029f

    const/4 v4, 0x1

    invoke-virtual {v14, v1, v15, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v15}, Landroid/util/TypedValue;->getFloat()F

    move-result v8

    const v1, 0x7f0a029e

    const/4 v4, 0x1

    invoke-virtual {v14, v1, v15, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v15}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    sget-boolean v5, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mIsEdge:Z

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/sec/daliviews/layouts/PageLayout;->setWarpEffectProperties(ZFFFF)V

    const v1, 0x7f0a02b8

    const/4 v4, 0x1

    invoke-virtual {v14, v1, v15, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v15}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/layouts/PageLayout;->setSnapDuration(F)V

    const v1, 0x7f0a02b7

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v14, v1, v4, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1, v10}, Lcom/sec/daliviews/layouts/PageLayout;->setFlickDuration(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    const/4 v5, 0x0

    sget-object v7, Lcom/sec/android/app/launcher/data/DataManager$SortType;->ALL_ITEMS:Lcom/sec/android/app/launcher/data/DataManager$SortType;

    move-object/from16 v0, p0

    invoke-virtual {v1, v4, v0, v5, v7}, Lcom/sec/android/app/launcher/data/DataManager;->getItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;ZLcom/sec/android/app/launcher/data/DataManager$SortType;)Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v4}, Lcom/sec/android/app/launcher/data/DataManager;->registerDataListener(Lcom/sec/android/app/launcher/data/DataManager$IDataListener;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    if-eqz v11, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterViewListener:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$WidgetsPagedAdapterViewListener;

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/PagedAdapterView;->setPagedAdapterViewListener(Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/PagedAdapterView;->setOnItemLongClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/PagedAdapterView;->setOnItemClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;)V

    new-instance v1, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v0, p0

    invoke-direct {v1, v4, v0}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;-><init>(Landroid/app/Activity;Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->refreshPopupMenu()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0d00d1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v1, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v0, p0

    invoke-direct {v1, v4, v13, v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sec/android/app/launcher/activities/WidgetSearchBar$Listener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->sortItems()V

    new-instance v1, Lcom/sec/daliviews/views/PagedListAdapter;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/sec/daliviews/views/PagedListAdapter;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/PagedListAdapter;->setSortOrder(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetListRowCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetListColumnCount:I

    invoke-virtual {v1, v4, v5}, Lcom/sec/daliviews/views/PagedListAdapter;->setGridSize(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/PagedListAdapter;->addItems(Ljava/util/List;)V

    :cond_5
    const/4 v1, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setupPageIndicator(ZZ)V

    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-virtual/range {v1 .. v8}, Lcom/sec/daliviews/views/PagedAdapterView;->setGridLayoutParams(IIIIIII)V

    goto/16 :goto_0

    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/launcher/data/DataManager;->getDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->getWidgetListItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    goto/16 :goto_1
.end method

.method private sortItems()V
    .locals 22

    const/4 v4, 0x0

    sget-boolean v18, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->DEBUGGABLE:Z

    if-eqz v18, :cond_0

    if-eqz v4, :cond_0

    sget-object v18, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->TAG:Ljava/lang/String;

    const-string v19, "Phase 1: Sort with package name and folder type"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/daliviews/views/Item;

    sget-object v19, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v10

    check-cast v18, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " / "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ", "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    check-cast v10, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getUserId()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    move-object/from16 v18, v0

    new-instance v19, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$11;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$11;-><init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V

    invoke-static/range {v18 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-boolean v18, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->DEBUGGABLE:Z

    if-eqz v18, :cond_1

    if-eqz v4, :cond_1

    sget-object v18, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->TAG:Ljava/lang/String;

    const-string v19, "Phase 2: Add Folder and make sibling"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/daliviews/views/Item;

    sget-object v19, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v10

    check-cast v18, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " / "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ", "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    check-cast v10, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getUserId()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v11

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v11, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/WidgetListItem;->isFolderItem()Z

    move-result v18

    if-eqz v18, :cond_6

    const/4 v15, 0x0

    add-int/lit8 v18, v11, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, 0x1

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/data/WidgetListItem;->isFolderItem()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getSiblingCount()I

    move-result v18

    if-nez v18, :cond_2

    const/4 v15, 0x1

    :cond_2
    :goto_3
    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mNewItemList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/WidgetListItem;->destroy()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPackageTitleList:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v18, v11, -0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getSiblingCount()I

    move-result v18

    if-nez v18, :cond_2

    const/4 v15, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v7, v17

    :cond_5
    :goto_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getUserId()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getUserId()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    if-eqz v7, :cond_7

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->addSibling(Lcom/sec/android/app/launcher/data/WidgetListItem;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v18, v11, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, 0x1

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getUserId()J

    move-result-wide v18

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getUserId()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-nez v18, :cond_5

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    :try_start_0
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/WidgetListItem;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/launcher/data/WidgetListItem;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setFolderItem(Z)V

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getTitleFromPackageList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/launcher/data/DataManager;->getDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mNewItemList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :cond_8
    sget-boolean v18, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->DEBUGGABLE:Z

    if-eqz v18, :cond_9

    if-eqz v4, :cond_9

    sget-object v18, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->TAG:Ljava/lang/String;

    const-string v19, "Phase 3: Sort with title"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/daliviews/views/Item;

    sget-object v19, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v10

    check-cast v18, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " / "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ", "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    check-cast v10, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getUserId()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    move-object/from16 v18, v0

    new-instance v19, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$12;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$12;-><init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V

    invoke-static/range {v18 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-boolean v18, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->DEBUGGABLE:Z

    if-eqz v18, :cond_a

    if-eqz v4, :cond_a

    sget-object v18, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->TAG:Ljava/lang/String;

    const-string v19, "Phase 4: Set Widget list position"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/daliviews/views/Item;

    sget-object v18, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Lcom/sec/daliviews/views/Item;->getCustomPos()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    check-cast v10, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getUserId()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setItemsCustomPositions(Ljava/util/List;)V

    sget-boolean v18, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->DEBUGGABLE:Z

    if-eqz v18, :cond_b

    if-eqz v4, :cond_b

    sget-object v18, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->TAG:Ljava/lang/String;

    const-string v19, "Phase 5: Complete"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/daliviews/views/Item;

    sget-object v18, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Lcom/sec/daliviews/views/Item;->getCustomPos()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    check-cast v10, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getUserId()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_b
    return-void
.end method

.method private updateCellSize(Lcom/sec/daliviews/layouts/LayoutBase;IIII)V
    .locals 2

    instance-of v1, p1, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/GridLayout;->isVerticalScroll()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/sec/daliviews/layouts/GridLayout;->setCellSize(II)V

    invoke-virtual {v0, p4}, Lcom/sec/daliviews/layouts/GridLayout;->setVerticalSpacing(I)V

    invoke-virtual {v0, p5}, Lcom/sec/daliviews/layouts/GridLayout;->setHorizontalSpacing(I)V

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/GridLayout;->layoutViews()V

    :cond_0
    return-void
.end method

.method private updateFromPageChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/PageIndicator;->setCurrentPage(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->announce(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLastAccessibilityReportedPage:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLastAccessibilityReportedPage:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setAccessibilityPageChange()V

    :cond_1
    return-void
.end method

.method private updateUninstallButton(Lcom/sec/daliviews/views/NativeViewBase;Z)V
    .locals 5

    const v4, 0x7f0b0092

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    sget-object v3, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;->UNINSTALL:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    if-ne v2, v3, :cond_2

    instance-of v2, p1, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    if-nez v2, :cond_0

    instance-of v2, p1, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    if-eqz v2, :cond_4

    :cond_0
    if-eqz p2, :cond_4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->getUninstallView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    instance-of v2, p1, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->getUninstallView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    instance-of v2, p1, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    if-eqz v2, :cond_6

    check-cast p1, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->getUninstallView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    :cond_5
    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    instance-of v2, p1, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->getUninstallView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    goto :goto_2
.end method

.method private updateWidgetList(Ljava/util/List;)V
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

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setupPageIndicator(ZZ)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, v2, v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setupPageIndicator(ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public ZoomInWidgetList_ForSearch()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PagedAdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/layouts/PageLayout;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const v2, 0x7f0a02d5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setNormalModeMargin(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    return-void
.end method

.method public cancelFastScroll()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageIndicator;->isFastScrollActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageIndicator;->cancelFastScroll()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v2, v3, p0}, Lcom/sec/android/app/launcher/data/DataManager;->unregisterDataListener(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataListener;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/layouts/PageLayout;->setOnPageChangeListener(Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/layouts/PageLayout;->setOnGestureListener(Lcom/sec/daliviews/layouts/PageLayout$OnGestureListener;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PagedAdapterView;->stopLoadingViews()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/views/PagedAdapterView;->setOnItemLongClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mRootAttached:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->destroy()V

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PagedListAdapter;->destroy()V

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->destroy()V

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mNewItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->destroy()V

    goto :goto_0

    :cond_8
    return-void
.end method

.method public getCurrentWidgetPage()Lcom/sec/daliviews/views/PageView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    return-object v0
.end method

.method public getFirstWidgetItemAtCurrentPage()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getItemsAtPage(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    return-object v1
.end method

.method public getItemsAtPage(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getContainerId()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getLastWidgetItemAtCurrentPage()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getItemsAtPage(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    return-object v2
.end method

.method public getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    return-object v0
.end method

.method public getPagedAdapterView()Lcom/sec/daliviews/views/PagedAdapterView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    return-object v0
.end method

.method public getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    return-object v0
.end method

.method public getRootView()Lcom/sec/daliviews/views/ContainerViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method public getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    return-object v0
.end method

.method public getSelectedItem(I)Lcom/sec/android/app/launcher/data/WidgetListItem;
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getId()J

    move-result-wide v2

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/WidgetListItem;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getUninstallBar()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mTitleBarUninstall:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getUninstallText()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mUninstallText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUninstallbackButton()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mUninstallbackButton:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getWidgetItemList()Ljava/util/List;
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

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    return-object v0
.end method

.method public getWidgetListFolderItemView()Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetListFolderItemView:Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    return-object v0
.end method

.method public getWidgetScreenMode()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWidgetsPageChangeListener()Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    return-object v0
.end method

.method public getWidgetsPageIndicator()Lcom/sec/daliviews/views/PageIndicator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    return-object v0
.end method

.method public getZoomAniTime()F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mZoomAnimTime:F

    return v0
.end method

.method public hasUninstallWidgets()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    move-object v3, v2

    check-cast v3, Lcom/sec/android/app/launcher/data/WidgetListItem;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/WidgetListItem;->canUninstall()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public moveToPage(IF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0, p1, p2}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    :cond_0
    return-void
.end method

.method public onBackKeyPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->onBackPressed()Z

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;->UNINSTALL:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    sget-object v2, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;->SLIDE:Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    invoke-virtual {v1, v0, v0, v2}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->setOptionsButtonVisibility(ZZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mTitleBarUninstall:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mTitleBarUninstall:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    sget-object v1, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setListMode(Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getZoomAniTime()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->zoomInPageViews_widgets(F)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClickUnintallWidget(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 3

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/launcher/data/WidgetListItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->canUninstall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->createAndShow(Landroid/content/Context;Lcom/sec/daliviews/views/Item;Landroid/app/FragmentManager;)V

    :cond_0
    return-void
.end method

.method public onDragEnd()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mDraggedWidgetView:Lcom/sec/android/app/launcher/views/WidgetListItemView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mGlowedView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getGlowEffect()Lcom/sec/daliviews/effects/GlowEffect;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mGlowedView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/effects/GlowEffect;->remove(Lcom/sec/daliviews/views/NativeViewBase;)V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mGlowedView:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mDraggedWidgetView:Lcom/sec/android/app/launcher/views/WidgetListItemView;

    :cond_2
    return-void
.end method

.method public onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    return-void
.end method

.method public onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    return-void
.end method

.method public onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/PageLayout;->snapToCurrentPage(F)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    :cond_0
    return-void
.end method

.method public onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onFolderClosed(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setSensitive(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->onFolderClosed(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->setOptionsButtonEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->setOptionsButtonVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLastOpenFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->removeFocus()V

    return-void
.end method

.method public onFolderOpened(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->setOptionsButtonEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->setOptionsButtonVisibility(I)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v2, 0x7f0d004a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->announce(Lcom/sec/daliviews/views/NativeViewBase;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->onFolderOpened(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLastOpenFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    return-void
.end method

.method public onHomePressed()V
    .locals 2

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->cancelFastScroll()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mTitleBarUninstall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->setOptionsButtonVisibility(I)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getZoomAniTime()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->zoomInPageViews_widgets(F)V

    :cond_0
    return-void
.end method

.method public onItemAdded(Lcom/sec/daliviews/views/Item;)V
    .locals 6

    const/4 v2, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLastUpdatedPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getItemsLoading()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAddHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAddWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAddHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAddWidgetRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/views/PagedListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    invoke-direct {p0, v2, v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setupPageIndicator(ZZ)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->refreshPopupMenu()V

    goto :goto_0
.end method

.method public onItemBadgeUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    sget-object v3, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;->UNINSTALL:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->onClickUnintallWidget(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :goto_0
    return v0

    :cond_0
    instance-of v2, p2, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/views/ContainerView;->setSensitive(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLastOpenFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLastOpenFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLastOpenFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->closeOpenFolderDelayed(J)V

    :cond_1
    check-cast p2, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetListFolderItemView:Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetListFolderItemView:Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->openWidgetFolder()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->clearSearchViewFocus()V

    instance-of v2, p2, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->isScrolling()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->isSnapping()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/layouts/PageLayout;->snapToCurrentPage(F)V

    check-cast p2, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->clickAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v3, 0x7f0d00b2

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showToastMsg(II)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v3, 0x7f0d0068

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showToastMsg(II)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public onItemDeleted(Lcom/sec/daliviews/views/Item;)V
    .locals 10

    const/4 v7, 0x1

    move-object v3, p1

    check-cast v3, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLastUpdatedPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAddHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mRemoveWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAddHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mRemoveWidgetRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->removeFocus()V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLastUpdatedPackageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetItemInList(Ljava/lang/String;)Lcom/sec/android/app/launcher/data/WidgetListItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/data/WidgetListItem;->removeSibling(Lcom/sec/android/app/launcher/data/WidgetListItem;)V

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getSiblings()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getSiblings()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getSiblings()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v7, :cond_0

    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getWidgetFolderView()Lcom/sec/android/app/launcher/views/WidgetFolderView;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->destroy()V

    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getSiblings()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v7, :cond_4

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getSiblings()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast v2, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->removeSibling(Lcom/sec/android/app/launcher/data/WidgetListItem;)V

    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPackageTitleList:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v5, v1}, Lcom/sec/daliviews/views/PagedListAdapter;->removeItem(Lcom/sec/daliviews/views/Item;)Z

    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mNewItemList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->destroy()V

    goto :goto_0
.end method

.method public onItemLongClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z
    .locals 18

    sget-object v1, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemLongClick. mListMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;->UNINSTALL:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->setVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->clearQuery()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->clearSearchViewFocus()V

    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/sec/daliviews/views/Item;->getMovability()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lcom/sec/daliviews/views/Item;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setFlagToShowPreviewOnly()V

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/WidgetListItem;->onCreateItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isRTLLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->setLayoutDirection(I)V

    :goto_1
    invoke-virtual {v3, v2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->linkItemView(Lcom/sec/daliviews/views/NativeViewBase;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setDbId(I)V

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getWidgetSpanX()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setSpanX(I)V

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getWidgetSpanY()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setSpanY(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    if-eqz v13, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->calculateImageOffset(Landroid/graphics/Bitmap;)V

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->getImageOffset()[I

    move-result-object v15

    const/4 v1, 0x0

    aget v1, v15, v1

    const/4 v4, 0x1

    aget v4, v15, v4

    invoke-virtual {v2, v1, v4}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->setImageOffset(II)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->setShadowVisible(Z)V

    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v14

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v14, v1, v4, v5, v6}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    invoke-virtual {v2, v14}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/dragAndDrop/DragState;->setUseSetImageForSilhouette(Z)V

    const v1, 0x7f0a0250

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v16

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v1

    const/4 v4, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v0, v4}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->configureShrinkEffect(FF)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/daliviews/views/NativeViewBase;->getWidth()I

    move-result v4

    int-to-float v6, v4

    invoke-virtual/range {p2 .. p2}, Lcom/sec/daliviews/views/NativeViewBase;->getHeight()I

    move-result v4

    int-to-float v7, v4

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getWidgetSpanX()I

    move-result v8

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getWidgetSpanY()I

    move-result v9

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v9}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;Lcom/sec/daliviews/views/NativeViewBase;FFII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setFlagToDragFromWidgetList()V

    const v1, 0x7f0a02da

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    new-instance v4, Lcom/sec/android/app/launcher/utils/FadeDuration;

    invoke-direct {v4, v10}, Lcom/sec/android/app/launcher/utils/FadeDuration;-><init>(F)V

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showHomeFragmentAnimated(Lcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getEditBarPresenter()Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->showEditBar(Lcom/sec/daliviews/views/Item;)V

    :cond_2
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->setLayoutDirection(I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public onItemTouch(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "Check"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WidgetsPresenter::onItemTouch view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mListMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;->UNINSTALL:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    if-ne v0, v1, :cond_1

    instance-of v0, p2, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p2, v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->updateUninstallButton(Lcom/sec/daliviews/views/NativeViewBase;Z)V

    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_3

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_3
    invoke-direct {p0, p2, v3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->updateUninstallButton(Lcom/sec/daliviews/views/NativeViewBase;Z)V

    goto :goto_0
.end method

.method public onItemUpdateCompleted()V
    .locals 0

    return-void
.end method

.method public onItemUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemsUpdated(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mRefreshWidgetRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/data/WidgetListItem;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLastUpdatedPackageName:Ljava/lang/String;

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLastUpdatedPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAddHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mRefreshWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAddHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mRefreshWidgetRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/views/PagedListAdapter;->updateItem(Lcom/sec/daliviews/views/Item;)V

    goto :goto_1
.end method

.method public onNativeInit()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setupViews()V

    return-void
.end method

.method public onOptionSelectedUninstall()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;->UNINSTALL:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setListMode(Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mTitleBarUninstall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mTitleBarUninstall:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;->SLIDE:Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->setOptionsButtonVisibility(ZZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;)V

    return-void
.end method

.method public onPause()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLastOpenFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLastOpenFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->closeOpenFolderDelayed(J)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/PageLayout;->snapToCurrentPage(F)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->cancelFastScroll()V

    return-void
.end method

.method public onQuerySubmit(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->hideKeyboard()V

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized onQueryUpdate(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return v4

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchHighlight:Ljava/lang/Integer;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->WINSET:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchHighlight:Ljava/lang/Integer;

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PagedListAdapter;->getFilter()Lcom/sec/daliviews/views/Filter;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$5;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$5;-><init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/daliviews/views/Filter;->filter(Ljava/lang/CharSequence;Lcom/sec/daliviews/views/Filter$FilterListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getText_highlight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchHighlight:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchHighlight:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x1ffffff

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchHighlight:Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onResizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(ILjava/lang/String;)V
    .locals 3

    sput p1, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSavedCurrentPage:I

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;->valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    :cond_0
    sget-object v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState Widget listMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setListMode(Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLanguageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLanguageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->setSearchViewQueryHint(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mTitleBarUninstall:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mTitleBarUninstall:Landroid/widget/LinearLayout;

    const v3, 0x7f0b0127

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const v2, 0x7f0d0071

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mLanguageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mTitleBarUninstall:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mTitleBarUninstall:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mZoomAnimTime:F

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->zoomInPageViews_widgets(F)V

    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_0

    const-string v0, "launcher.widget_current_screen"

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "launcher.widget_current_mode"

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public refreshContentDescriptions()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PageIndicator;->reloadDescriptions(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public refreshPopupMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->refreshPopupMenu()V

    return-void
.end method

.method public refreshQueryUpdate(Ljava/lang/String;)Z
    .locals 6

    const v5, 0x7f09002c

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    if-nez v2, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchHighlight:Ljava/lang/Integer;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->WINSET:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchHighlight:Ljava/lang/Integer;

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PagedListAdapter;->getFilter()Lcom/sec/daliviews/views/Filter;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$14;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$14;-><init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/daliviews/views/Filter;->filter(Ljava/lang/CharSequence;Lcom/sec/daliviews/views/Filter$FilterListener;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getText_highlight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchHighlight:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchHighlight:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x1ffffff

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchHighlight:Ljava/lang/Integer;

    goto :goto_1
.end method

.method public refreshWidgetList()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedListAdapter;->removeItems(Ljava/util/List;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PagedListAdapter;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicatorImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PageIndicator;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->sortItems()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedListAdapter;->addItems(Ljava/util/List;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->refreshPopupMenu()V

    return-void
.end method

.method public setAccessibilityMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setAccessibilityMode(Z)V

    return-void
.end method

.method public setItemsCustomPositions(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    iget v7, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetListRowCount:I

    iget v8, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetListColumnCount:I

    mul-int v4, v7, v8

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/data/WidgetListItem;

    div-int v7, v2, v4

    invoke-virtual {v3, v7}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setContainerId(I)V

    div-int v7, v2, v4

    invoke-virtual {v3, v7}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setCustomContainerId(I)V

    iget v7, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetListColumnCount:I

    if-ne v0, v7, :cond_0

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    iget v7, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetListRowCount:I

    if-ne v1, v7, :cond_0

    const/4 v1, 0x0

    const/4 v5, 0x0

    :cond_0
    invoke-virtual {v3, v5}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setCustomPos(I)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLandscapeEffect()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    const v2, 0x7f0a0031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f0a0032

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/daliviews/views/PagedAdapterView;->setLandscapeEffectParams(FF)V

    return-void
.end method

.method public setVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setupViews()V

    :cond_0
    iput p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mVisibility:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->attachRootView()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->attachAdapter()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->detachRootViewIfNeeded()V

    goto :goto_0
.end method

.method public setVisibleAnimated(IF)V
    .locals 13

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-nez v9, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setupViews()V

    :cond_0
    iput p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mVisibility:I

    iget-boolean v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mRootAttached:Z

    if-nez v9, :cond_1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_9

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    sget-object v10, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;->UNINSTALL:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    if-ne v9, v10, :cond_8

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mTitleBarUninstall:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->setOptionsButtonVisibility(I)V

    :goto_1
    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v9, :cond_6

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-nez p1, :cond_a

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v10, v9}, Lcom/sec/daliviews/views/ContainerView;->setSensitive(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0a004c

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v6, v9, v10, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v9}, Lcom/sec/daliviews/views/ContainerView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float v7, v9, v0

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v9}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v9}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v9}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_3
    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v9}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_4
    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->attachRootView()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->attachAdapter()V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v9, v7}, Lcom/sec/daliviews/views/ContainerView;->setYPosition(F)V

    :cond_5
    new-instance v9, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-direct {v9, p2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;-><init>(F)V

    iput-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    new-instance v9, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v9}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    new-instance v9, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v9}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-nez p1, :cond_b

    new-instance v5, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v5, v9, v10, v11}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    new-instance v4, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v4, v9, v10, v11, v12}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;-><init>(FFFF)V

    move v2, p2

    const/4 v1, 0x0

    :goto_3
    new-instance v8, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v1, v2, v9}, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    new-instance v3, Lcom/sec/daliviews/uiAnimations/ColourUIAnimation;

    const/4 v9, 0x0

    invoke-direct {v3, v4, v1, v2, v9}, Lcom/sec/daliviews/uiAnimations/ColourUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;FFI)V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v9, v8}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;)V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v9, v3}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/ColourUIAnimation;)V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v9, v10, v11}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v9, v10, v11}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    new-instance v10, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$6;

    invoke-direct {v10, p0, p1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$6;-><init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;I)V

    invoke-virtual {v9, v10}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->connectToUIAnimationSignal(Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;)V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v9}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start()V

    :cond_6
    if-nez p1, :cond_7

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v10}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    :cond_7
    if-nez p1, :cond_c

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->sendIntentForSamsungPay(Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mTitleBarUninstall:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->setOptionsButtonVisibility(I)V

    goto/16 :goto_1

    :cond_9
    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mTitleBarUninstall:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->setOptionsButtonVisibility(I)V

    goto/16 :goto_1

    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_b
    new-instance v5, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v5, v9, v7, v10}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    new-instance v4, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-direct {v4, v9, v10, v11, v12}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;-><init>(FFFF)V

    const v9, 0x3f666666    # 0.9f

    mul-float v2, p2, v9

    const v9, 0x3dcccccd    # 0.1f

    mul-float v1, p2, v9

    goto/16 :goto_3

    :cond_c
    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->sendIntentForSamsungPay(Z)V

    goto/16 :goto_0
.end method

.method public setupWidgetsPopupMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;-><init>(Landroid/app/Activity;Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->setOptionsButtonEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->setButtonVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;->show()V

    goto :goto_0
.end method

.method public surfaceChanged()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v1, 0x7f0c004e

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetListColumnCount:I

    const v1, 0x7f0c0051

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetListRowCount:I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mTitleBarUninstall:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mZoomAnimTime:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->zoomInPageViews_widgets(F)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PagedAdapterView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v12

    const v1, 0x7f0a02b6

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    const v1, 0x7f0a02b5

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    const v1, 0x7f0a02c6

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0a02c8

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12, v1, v2, v3, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mTitleBarUninstall:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/daliviews/views/PagedAdapterView;->setLandscapeEffectParams(FF)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PagedAdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    sget v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->mMemoryOptimiseLevel:I

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setMemoryOptimiseLevel(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setBackgroundEffectWindowSize(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getSavedScrollEffect()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setScrollEffect(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const v2, 0x7f0a02d5

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setNormalModeMargin(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetListRowCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetListColumnCount:I

    const v4, 0x7f0a02dc

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0a02db

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f0a02b9

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f0a02ba

    invoke-virtual {v15, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/sec/daliviews/views/PagedAdapterView;->setGridLayoutParams(IIIIIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    sget v2, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mSavedCurrentPage:I

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setInitialPage(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v1, v12}, Lcom/sec/daliviews/views/PagedAdapterView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->getOptionsButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v14, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a02d3

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v1, 0x7f0a02d1

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v1, 0x800035

    iput v1, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, 0x0

    const v2, 0x7f0a0021

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0a01f1

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v14, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->getOptionsButton()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getSearchQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getZoomAniTime()F

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->zoomInPageViews_widgets(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getSearchQuery()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->refreshQueryUpdate(Ljava/lang/String;)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getWidgetOpenFolderView()Lcom/sec/android/app/launcher/views/WidgetFolderView;

    move-result-object v16

    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->updateOpenWidgetFolderLayout()V

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->updateWidgetFolderPosition()V

    :cond_5
    sget-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD:Z

    if-eqz v1, :cond_7

    if-eqz v16, :cond_7

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v1, v9, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    iget v1, v9, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-nez v1, :cond_7

    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->optionsButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsPopupMenu:Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->optionsButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PageIndicator;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v12

    const v1, 0x7f0a00e8

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x7f0a00e9

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0a02bb

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v12, v1, v2, v3, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v1, v12}, Lcom/sec/daliviews/views/PageIndicator;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mTitleBarUninstall:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mZoomAnimTime:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->zoomOutPageViews_widgets(FZ)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetsRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    :cond_a
    return-void

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetListRowCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetListColumnCount:I

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-virtual/range {v1 .. v8}, Lcom/sec/daliviews/views/PagedAdapterView;->setGridLayoutParams(IIIIIII)V

    goto/16 :goto_0

    :cond_c
    sget-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v1, v9, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    iget v1, v9, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-nez v1, :cond_4

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->refreshWidgetList()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v13

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1, v11}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v10

    check-cast v10, Lcom/sec/daliviews/views/FixedPageView;

    invoke-virtual {v10}, Lcom/sec/daliviews/views/FixedPageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->updatePageView(Lcom/sec/daliviews/views/FixedPageView;)V

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$13;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$13;-><init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Lcom/sec/daliviews/views/FixedPageView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public updatePageView(Lcom/sec/daliviews/views/FixedPageView;)V
    .locals 7

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/daliviews/views/FixedPageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    const v0, 0x7f0a02dc

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v0, 0x7f0a02db

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v0, 0x7f0a02ba

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v0, 0x7f0a02b9

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->updateCellSize(Lcom/sec/daliviews/layouts/LayoutBase;IIII)V

    return-void
.end method

.method public zoomInPageViews_widgets(F)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mZoomedOut:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mZoomedOut:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedAdapterView;->setNormalModeMargin(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setLandscapeEffect()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v0, p1, v3}, Lcom/sec/daliviews/views/PagedAdapterView;->switchToNormalMode(FZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->ZoomInWidgetList_ForSearch()V

    :cond_1
    return-void
.end method

.method public zoomOutPageViews_widgets(FZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->zoomOutPageViews_widgets(FZI)V

    return-void
.end method

.method public zoomOutPageViews_widgets(FZI)V
    .locals 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v0, v1, v1}, Lcom/sec/daliviews/views/PagedAdapterView;->setLandscapeEffectParams(FF)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mZoomedOut:Z

    if-nez v0, :cond_0

    const/4 v9, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v0, 0x7f0a02d8

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mZoomedOut:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mZoomScale:F

    iget v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mZoomOffsetX:F

    iget v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mZoomOffsetY:F

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v4, p1

    move v6, p2

    move v8, p3

    invoke-virtual/range {v0 .. v9}, Lcom/sec/daliviews/views/PagedAdapterView;->switchToZoomedOutPageMode(FFFFLjava/lang/String;ZZII)V

    :cond_0
    return-void
.end method
