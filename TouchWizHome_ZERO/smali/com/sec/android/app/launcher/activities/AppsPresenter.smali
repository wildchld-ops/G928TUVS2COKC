.class public Lcom/sec/android/app/launcher/activities/AppsPresenter;
.super Lcom/sec/android/app/launcher/activities/PresenterBase;
.source "AppsPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;
.implements Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;
.implements Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;
.implements Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;
.implements Lcom/sec/daliviews/views/AdapterView$OnItemTouchListener;
.implements Lcom/sec/android/app/launcher/data/DataManager$ILoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/AppsPresenter$35;,
        Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;,
        Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;,
        Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterFadeListener;,
        Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;,
        Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsFilter;,
        Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsAlphabeticalComparator;,
        Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;,
        Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;,
        Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;,
        Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;,
        Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;
    }
.end annotation


# static fields
.field public static final APPS_COMPARATOR:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsAlphabeticalComparator;

.field private static final APPS_CURRENT_PAGE:Ljava/lang/String; = "apps_page_number"

.field public static final APPS_LIST_MODE:Ljava/lang/String; = "apps_list_mode"

.field public static final APPS_LIST_TYPE:Ljava/lang/String; = "apps_list_type"

.field private static final DEBUG:Z

.field private static final DISABLE_APP_DEBUG:Z = true

.field static final PREFERENCES_APPS_GRID_SIZE:Ljava/lang/String; = "apps_grid_size"

.field private static final PREFERENCES_APPS_LIST_ORDER_TYPE:Ljava/lang/String; = "apps_list_order_type"

.field private static final TAG:Ljava/lang/String;

.field private static final USE_NATIVE_MODE:Z = true


# instance fields
.field private EditButtonAnimation:Z

.field private final mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

.field private mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

.field private mAdapterAttached:Z

.field private mAnimatePageChange:Z

.field mAppItemsListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/daliviews/dragAndDrop/DisplacedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsContentRoot:Lcom/sec/daliviews/views/ContainerView;

.field private mAppsDragListener:Lcom/sec/daliviews/views/AdapterView$dragLocationListener;

.field private mAppsEntryAnim2_EntryDelay:F

.field private mAppsEntryAnim2_EntryDuration:F

.field private mAppsEntryAnim2_LeaveDuration:F

.field private mAppsEntryAnim2_Scale:F

.field private mAppsEntryAnimType:I

.field private mAppsIconPos:Landroid/graphics/Rect;

.field private mAppsListCellHeight:I

.field private mAppsListCellWidth:I

.field private mAppsListColumnCount:I

.field private mAppsListRowCount:I

.field private mAppsPageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

.field private mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

.field private mAppsRootAttached:Z

.field private mClosedFromLongPress:Z

.field private mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mCurrentMode:I

.field private mCurrentPageAlphabetical:I

.field private mCurrentPageCustom:I

.field private mCurrentPageDisabled:I

.field private mCurrentPageDownloaded:I

.field private mCurrentPageHidden:I

.field private final mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

.field private mDisabledItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabledSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

.field private mDownloadedItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mEditBarPresenter:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

.field private mEnteredPageView:Lcom/sec/daliviews/views/PageView;

.field private mFadeListener:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterFadeListener;

.field private mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

.field private mHandler:Landroid/os/Handler;

.field private mHiddenItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mIsModeChangeEditToNormal:Z

.field private mItemList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mLastAccessibilityReportedPage:I

.field private mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

.field private mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

.field private mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

.field private mLocaleChanging:Z

.field private mMoveToPageAfterZoom:I

.field private mNeedReorder:Z

.field private mNewlySelectedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalModeMargin:I

.field private mNumberOfAdditionalPagesInEditMode:I

.field private mOldPageCount:I

.field private mOrigSelectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

.field private mPageIndicatorImage:Landroid/graphics/drawable/Drawable;

.field private mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

.field private mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

.field private mPagedAdapterViewListener:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;

.field private mPreSelectedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mPreSelectionListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

.field private mPreSelectionListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

.field private mPulseDuration:F

.field private mPulseFadeInDuration:F

.field private mPulseFadeOutDuration:F

.field private mPulseInnerColor:I

.field private mPulseOuterColor:I

.field private mRearrangementDelay:F

.field private mSavedState:Landroid/os/Bundle;

.field private mScaleFadeListener:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;

.field private mSelectionListener:Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;

.field private mSelectionTargetFolder:Lcom/sec/android/app/launcher/data/FolderItem;

.field private mSetVisibleRunnable:Ljava/lang/Runnable;

.field private mShadowOffsetY:F

.field private mSkipReorder:Z

.field private mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

.field private mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

.field private mTitleBar:Lcom/sec/daliviews/views/ContainerView;

.field private mTitleBarAnimDuration:F

.field private mTitleBarAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

.field private mTitleBarAnimSetSlideIn:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mTitleBarAnimSetSlideOut:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

.field private mTopEditButton:Lcom/sec/daliviews/views/TextView;

.field private mTopEditCancel:Lcom/sec/daliviews/views/TextView;

.field private mTopEditDone:Lcom/sec/daliviews/views/TextView;

.field private mTopTitleMarginTop:I

.field private mTouchEffectIcon:Lcom/sec/daliviews/views/IconView;

.field private mTouchedItemDestroyedListener:Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;

.field private mTransitionInProgress:Z

.field private mUSAFolderDialog:Landroid/app/AlertDialog;

.field private mUpdateEditButton:Z

.field private final mUseAlphabeticalOrder:Z

.field private mVisibility:I

.field private mWillSwitchFirstTimeAfterResume:Z

.field private mZoomAnimInProgress:Z

.field private mZoomAnimTime:F

.field private mZoomModeListener:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;

.field private mZoomOffsetX:F

.field private mZoomOffsetY:F

.field private mZoomScale:F

.field private mZoomedOut:Z

.field private mZoomedOutBackgroundImageFileName:Ljava/lang/String;

.field private mkeepBackground:Z

.field private pageAdded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->DEBUG:Z

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsAlphabeticalComparator;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsAlphabeticalComparator;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->APPS_COMPARATOR:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsAlphabeticalComparator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/activities/PresenterBase;-><init>(Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;)V

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchEffectIcon:Lcom/sec/daliviews/views/IconView;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchedItemDestroyedListener:Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSelectionListener:Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSelectionTargetFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mOrigSelectedItems:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPreSelectedApps:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    sget-object v3, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    sget-object v3, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_DISABLED_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDisabledSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDisabledItemList:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDownloadedItemList:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHiddenItemList:Ljava/util/List;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsContentRoot:Lcom/sec/daliviews/views/ContainerView;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEnteredPageView:Lcom/sec/daliviews/views/PageView;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsDragListener:Lcom/sec/daliviews/views/AdapterView$dragLocationListener;

    iput v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mOldPageCount:I

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mIsModeChangeEditToNormal:Z

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsPageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    const v3, 0x7f0b00e4

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentMode:I

    iput v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mRearrangementDelay:F

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->EditButtonAnimation:Z

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->pageAdded:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mMoveToPageAfterZoom:I

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAnimatePageChange:Z

    const/4 v3, 0x4

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mVisibility:I

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mkeepBackground:Z

    iput v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mShadowOffsetY:F

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSavedState:Landroid/os/Bundle;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    const/4 v3, 0x5

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListRowCount:I

    const/4 v3, 0x4

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListColumnCount:I

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mLocaleChanging:Z

    iput v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomScale:F

    iput v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomOffsetX:F

    iput v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomOffsetY:F

    iput v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomAnimTime:F

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomedOutBackgroundImageFileName:Ljava/lang/String;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iput v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopTitleMarginTop:I

    iput v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mLastAccessibilityReportedPage:I

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppItemsListMap:Ljava/util/HashMap;

    const/high16 v3, 0x3e800000    # 0.25f

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBarAnimDuration:F

    iput v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnim2_Scale:F

    iput v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnim2_EntryDuration:F

    iput v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnim2_LeaveDuration:F

    iput v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnim2_EntryDelay:F

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRootAttached:Z

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapterAttached:Z

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mUpdateEditButton:Z

    new-instance v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;

    invoke-direct {v3, p0, v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/activities/AppsPresenter$1;)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomModeListener:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;

    new-instance v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;

    invoke-direct {v3, p0, v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/activities/AppsPresenter$1;)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterViewListener:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;

    new-instance v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterFadeListener;

    invoke-direct {v3, p0, v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterFadeListener;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/activities/AppsPresenter$1;)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFadeListener:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterFadeListener;

    new-instance v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;

    invoke-direct {v3, p0, v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/activities/AppsPresenter$1;)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mScaleFadeListener:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomedOut:Z

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomAnimInProgress:Z

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTransitionInProgress:Z

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mClosedFromLongPress:Z

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditCancel:Lcom/sec/daliviews/views/TextView;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSkipReorder:Z

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mUSAFolderDialog:Landroid/app/AlertDialog;

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNeedReorder:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Launcher_EnableViewByAlphabetAsDefault"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mUseAlphabeticalOrder:Z

    iput v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNumberOfAdditionalPagesInEditMode:I

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->CUSTOMISABLE:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPreSelectionListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPreSelectionListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    iput v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentPageCustom:I

    iput v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentPageAlphabetical:I

    iput v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentPageDownloaded:I

    iput v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentPageDisabled:I

    iput v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentPageHidden:I

    iput v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListCellWidth:I

    iput v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListCellHeight:I

    new-instance v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$15;

    invoke-direct {v3, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$15;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSetVisibleRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDataManager()Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    new-instance v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsFilter;

    invoke-direct {v3, v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsFilter;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter$1;)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFilter:Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->restoreAppsListOrder()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListRowCount:I

    const v3, 0x7f0c0006

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListColumnCount:I

    const v3, 0x7f0c0014

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnimType:I

    iget v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnimType:I

    if-ne v3, v7, :cond_0

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const v3, 0x7f0a0015

    invoke-virtual {v0, v3, v2, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnim2_Scale:F

    const v3, 0x7f0a0014

    invoke-virtual {v0, v3, v2, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnim2_EntryDuration:F

    const v3, 0x7f0a0017

    invoke-virtual {v0, v3, v2, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnim2_LeaveDuration:F

    const v3, 0x7f0a0013

    invoke-virtual {v0, v3, v2, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnim2_EntryDelay:F

    :cond_0
    const v3, 0x7f0a0037

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListCellWidth:I

    const v3, 0x7f0a0033

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListCellHeight:I

    const v3, 0x7f0a0048

    invoke-virtual {v0, v3, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomScale:F

    const v3, 0x7f0a0045

    invoke-virtual {v0, v3, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomOffsetX:F

    const v3, 0x7f0a0046

    invoke-virtual {v0, v3, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomOffsetY:F

    const v3, 0x7f0a0042

    invoke-virtual {v0, v3, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomAnimTime:F

    const v3, 0x7f0d0030

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomedOutBackgroundImageFileName:Ljava/lang/String;

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const v3, 0x7f0a026c

    invoke-virtual {v0, v3, v2, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPulseFadeInDuration:F

    const v3, 0x7f0a026d

    invoke-virtual {v0, v3, v2, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPulseFadeOutDuration:F

    const v3, 0x7f0a026e

    invoke-virtual {v0, v3, v2, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPulseDuration:F

    const v3, 0x7f09001f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPulseInnerColor:I

    const v3, 0x7f090020

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPulseOuterColor:I

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->keepBackground()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mkeepBackground:Z

    const v3, 0x7f0a029d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopTitleMarginTop:I

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const v3, 0x7f0a0049

    invoke-virtual {v0, v3, v1, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mRearrangementDelay:F

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getShadowOffset()F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mShadowOffsetY:F

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    const v3, 0x7f0a0044

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNormalModeMargin:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPulseInnerColor:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPulseOuterColor:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/launcher/activities/AppsPresenter;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPulseFadeInDuration:F

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/launcher/activities/AppsPresenter;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPulseFadeOutDuration:F

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/launcher/activities/AppsPresenter;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPulseDuration:F

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/PagedListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/layouts/PageLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/PageIndicator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->pageAdded:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/launcher/activities/AppsPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->pageAdded:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/launcher/activities/AppsPresenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateFromPageChange(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/app/launcher/activities/AppsPresenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->showPageGrid(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$2500()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/IconView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchEffectIcon:Lcom/sec/daliviews/views/IconView;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/daliviews/views/IconView;)Lcom/sec/daliviews/views/IconView;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchEffectIcon:Lcom/sec/daliviews/views/IconView;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/data/DataManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/PagedAdapterView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapterAttached:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/sec/android/app/launcher/activities/AppsPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapterAttached:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mLocaleChanging:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/sec/android/app/launcher/activities/AppsPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTransitionInProgress:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsContentRoot:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->detachRootViewIfNeeded()V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getOpenFolderMode()Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getFolderBoundingBox()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mUSAFolderDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mMoveToPageAfterZoom:I

    return v0
.end method

.method static synthetic access$4202(Lcom/sec/android/app/launcher/activities/AppsPresenter;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mMoveToPageAfterZoom:I

    return p1
.end method

.method static synthetic access$4300(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAnimatePageChange:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/sec/android/app/launcher/activities/AppsPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAnimatePageChange:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/sec/android/app/launcher/activities/AppsPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomAnimInProgress:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mkeepBackground:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/daliviews/views/AdapterView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListeners(Lcom/sec/daliviews/views/AdapterView;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/sec/android/app/launcher/activities/AppsPresenter;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mRearrangementDelay:F

    return v0
.end method

.method static synthetic access$4800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/AdapterView$dragLocationListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsDragListener:Lcom/sec/daliviews/views/AdapterView$dragLocationListener;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicatorImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mOldPageCount:I

    return v0
.end method

.method static synthetic access$5002(Lcom/sec/android/app/launcher/activities/AppsPresenter;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mOldPageCount:I

    return p1
.end method

.method static synthetic access$5100(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mIsModeChangeEditToNormal:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/sec/android/app/launcher/activities/AppsPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mIsModeChangeEditToNormal:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/android/app/launcher/activities/AppsPresenter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->sortItemsInCustomOrder(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/sec/android/app/launcher/activities/AppsPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setCustomPositionsforFlexibleGrid(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/daliviews/views/FixedPageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updatePageLayout(Lcom/sec/daliviews/views/FixedPageView;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListRowCount:I

    return v0
.end method

.method static synthetic access$5700(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListColumnCount:I

    return v0
.end method

.method static synthetic access$5800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListCellWidth:I

    return v0
.end method

.method static synthetic access$5900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListCellHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateTopBar()V

    return-void
.end method

.method static synthetic access$6000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->changeGridSizeUsingDefaultMode()V

    return-void
.end method

.method static synthetic access$6100(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setupTitle()V

    return-void
.end method

.method static synthetic access$6200(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setupEditBar()V

    return-void
.end method

.method static synthetic access$6300(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setupAdapterView()V

    return-void
.end method

.method static synthetic access$6400(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setupPageLayout()V

    return-void
.end method

.method static synthetic access$6500(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setupPageIndicator()V

    return-void
.end method

.method static synthetic access$6600(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setupAdapter()V

    return-void
.end method

.method static synthetic access$6700(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->zoomOutPageViewsIfNeeded()V

    return-void
.end method

.method static synthetic access$6800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mUseAlphabeticalOrder:Z

    return v0
.end method

.method static synthetic access$6900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->attachRootView()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->doSetAppSelectionMode(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->attachAdapterIfNeeded()V

    return-void
.end method

.method static synthetic access$7100(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setupShadow()V

    return-void
.end method

.method static synthetic access$7200(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/daliviews/views/FixedPageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updatePageView(Lcom/sec/daliviews/views/FixedPageView;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    return-object v0
.end method

.method private attachAdapterIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$14;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$14;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private attachRootView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRootAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->addViewToScene(Lcom/sec/daliviews/views/NativeViewBase;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRootAttached:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mVisibility:I

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedAdapterView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private buildItems(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->clear()V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDownloadedItemList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    invoke-direct {p0, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->isInAppsList(Lcom/sec/daliviews/views/Item;)Z

    move-result v7

    if-eqz v7, :cond_5

    instance-of v7, v2, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getCustomContainerId()I

    move-result v3

    if-ge v4, v3, :cond_4

    move v4, v3

    :cond_4
    if-gez v3, :cond_6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    instance-of v7, v2, Lcom/sec/android/app/launcher/data/FolderItem;

    if-nez v7, :cond_2

    move-object v7, v2

    check-cast v7, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemApp()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDownloadedItemList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    if-nez v5, :cond_7

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    :cond_7
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    invoke-direct {p0, v0, v6, v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->checkItemOrderValidation(Ljava/util/Map;Ljava/util/List;I)V

    goto :goto_0
.end method

.method private changeGridSizeUsingDefaultMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedAdapterView;->setDefaultMode(I)V

    return-void
.end method

.method private changeListOrder(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;)V
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$AppsPresenter$ListOrder:[I

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->displayItemsInAlphabeticalOrder()V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/PagedAdapterView;->setListOrder(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/views/PagedListAdapter;->setSortOrder(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-direct {p0, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getSavedPageNumber(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->displayItemsInCustomOrder()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkItemOrderValidation(Ljava/util/Map;Ljava/util/List;I)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c0006

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    const v21, 0x7f0c0008

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v21

    mul-int v12, v20, v21

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, p3

    if-gt v0, v1, :cond_8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashSet;

    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_1

    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v18}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->sortItemsInCustomOrder(Ljava/util/List;)V

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-gt v0, v12, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v10, v20, -0x1

    :goto_1
    const/4 v14, 0x0

    const/4 v6, 0x0

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_0

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/daliviews/views/Item;

    if-ge v6, v12, :cond_2

    invoke-virtual {v15}, Lcom/sec/daliviews/views/Item;->getCustomPos()I

    move-result v20

    move/from16 v0, v20

    if-lt v0, v12, :cond_5

    :cond_2
    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lcom/sec/daliviews/views/Item;->setCustomPosition(II)V

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, -0x1

    :cond_3
    :goto_3
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v10, v12, -0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v15}, Lcom/sec/daliviews/views/Item;->getCustomPos()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    if-gez v10, :cond_6

    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lcom/sec/daliviews/views/Item;->setCustomPosition(II)V

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v14, v14, -0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v11, v10, -0x1

    invoke-virtual {v15, v10}, Lcom/sec/daliviews/views/Item;->setCustomPos(I)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v10, v11

    goto :goto_4

    :cond_7
    invoke-virtual {v15}, Lcom/sec/daliviews/views/Item;->getCustomPos()I

    move-result v20

    move/from16 v0, v20

    if-eq v0, v14, :cond_3

    invoke-virtual {v15, v14}, Lcom/sec/daliviews/views/Item;->setCustomPos(I)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashSet;

    const/4 v7, 0x0

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v7

    :cond_9
    :goto_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_b

    move v8, v7

    :goto_6
    if-ge v8, v12, :cond_e

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/views/Item;

    add-int/lit8 v7, v8, 0x1

    move/from16 v0, p3

    invoke-virtual {v5, v8, v0}, Lcom/sec/daliviews/views/Item;->setCustomPosition(II)V

    sget-object v20, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "unDecidedContainerItem set new pos:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_a

    :goto_7
    const/4 v7, 0x0

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_a
    move v8, v7

    goto :goto_6

    :cond_b
    if-eqz v13, :cond_d

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_d

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    sget-object v20, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "needToUpdateItems, item name : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " item containerId : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getCustomContainerId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " item position : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getCustomPos()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v13, v2}, Lcom/sec/android/app/launcher/data/DataManager;->updateItemsPositions(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;Z)V

    :cond_d
    return-void

    :cond_e
    move v7, v8

    goto :goto_7
.end method

.method private clearSelection()V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPreSelectedApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/launcher/data/HomeItem;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/launcher/data/HomeItem;->setChecked(Z)V

    goto :goto_1

    :cond_3
    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSelectionTargetFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mOrigSelectedItems:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPreSelectedApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    return-void
.end method

.method private detachRootViewIfNeeded()V
    .locals 2

    sget v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mMemoryOptimiseLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRootAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->removeViewFromScene(Lcom/sec/daliviews/views/NativeViewBase;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRootAttached:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mVisibility:I

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private doSetAppSelectionMode(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->storeCurrentPage()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPreSelectionListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPreSelectionListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->SELECT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSelectionListener:Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->preSelecteItems(Lcom/sec/android/app/launcher/data/FolderItem;)V

    const v0, 0x7f0b00da

    iput v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentMode:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->changeGridSize(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PagedListAdapter;->refresh()V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->zoomOutPageViewsIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$4;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->loadItems(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;)V

    goto :goto_0
.end method

.method private enableSelectedApps(Z)V
    .locals 9

    const/4 v8, 0x0

    if-nez p1, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/launcher/data/HomeItem;->setChecked(Z)V

    :try_start_0
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v5, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v6, "Problem enabling package. This should only happen when enabled outside of /system/app."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v6, "Not installed with permissions needed for enabling"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v5, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v6, "Problem enabling package. This should only happen when either Activity or PackageManager is NULL."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v6, "Unable to enable, please try again !"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    check-cast v3, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v3, v8}, Lcom/sec/android/app/launcher/data/HomeItem;->setChecked(Z)V

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    return-void
.end method

.method private findCustomPosForItems(Ljava/util/List;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    sget-object v5, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v6, "no input for findCustomPosForItems"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->findLastFolderInCustomMode()Lcom/sec/android/app/launcher/data/LauncherItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->findLastAppInCustomMode()Lcom/sec/android/app/launcher/data/LauncherItem;

    move-result-object v0

    if-nez v1, :cond_2

    move-object v2, v0

    :goto_1
    if-nez v2, :cond_7

    invoke-direct {p0, p1, v7, v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setCustomPositionsFrom(Ljava/util/List;II)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    move-object v2, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->getCustomContainerId()I

    move-result v5

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->getCustomContainerId()I

    move-result v6

    if-le v5, v6, :cond_4

    move-object v2, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->getCustomContainerId()I

    move-result v5

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->getCustomContainerId()I

    move-result v6

    if-ge v5, v6, :cond_5

    move-object v2, v1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->getCustomPos()I

    move-result v5

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->getCustomPos()I

    move-result v6

    if-le v5, v6, :cond_6

    move-object v2, v0

    goto :goto_1

    :cond_6
    move-object v2, v1

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/LauncherItem;->getCustomContainerId()I

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/LauncherItem;->getCustomPos()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, p1, v3, v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setCustomPositionsFrom(Ljava/util/List;II)Ljava/util/List;

    move-result-object v4

    goto :goto_0
.end method

.method private findLastAppInCustomMode()Lcom/sec/android/app/launcher/data/LauncherItem;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->findLastItemInCustomMode(Ljava/util/List;)Lcom/sec/android/app/launcher/data/LauncherItem;

    move-result-object v1

    return-object v1
.end method

.method private findLastFolderInCustomMode()Lcom/sec/android/app/launcher/data/LauncherItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getFolderItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->findLastItemInCustomMode(Ljava/util/List;)Lcom/sec/android/app/launcher/data/LauncherItem;

    move-result-object v0

    return-object v0
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

.method public static getCellXY(ILandroid/content/res/Resources;)[I
    .locals 2

    const v1, 0x7f0c0006

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/android/app/launcher/utils/Utils;->getCellXY(II)[I

    move-result-object v1

    return-object v1
.end method

.method private getFolderBoundingBox()Landroid/graphics/Rect;
    .locals 7

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/PagedAdapterView;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v3, 0x7f0a0000

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0a00b0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int v2, v3, v4

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private getNumberOfItems(I)I
    .locals 10

    sget-object v7, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v8, "getNumberOfItems [["

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getFolderItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->sortItemsInCustomOrder(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    move-object v5, v1

    check-cast v5, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/LauncherItem;->getContainerId()I

    move-result v7

    if-ne v7, p1, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-direct {p0, v6}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->sortItemsInCustomOrder(Ljava/util/List;)V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    move-object v5, v2

    check-cast v5, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/LauncherItem;->getContainerId()I

    move-result v7

    if-ne v7, p1, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    sget-object v7, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNumberOfItems ]] count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private getNumberOfPages()I
    .locals 11

    sget-object v8, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v9, "getNumberOfPages"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getFolderItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->sortItemsInCustomOrder(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    move-object v4, v1

    check-cast v4, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/LauncherItem;->getCustomContainerId()I

    move-result v5

    if-ge v7, v5, :cond_0

    move v7, v5

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-direct {p0, v6}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->sortItemsInCustomOrder(Ljava/util/List;)V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    move-object v4, v2

    check-cast v4, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/LauncherItem;->getCustomContainerId()I

    move-result v5

    if-ge v7, v5, :cond_2

    move v7, v5

    :cond_2
    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    sget-object v8, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getNumberOfPages ]] page="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method private getOpenFolderMode()Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;
    .locals 2

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$AppsPresenter$ListMode:[I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->NORMAL:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->EDIT:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->SELECT:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->UNINSTALL:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getSavedPageNumber(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;)I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$AppsPresenter$ListType:[I

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->SELECT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ALPHABETICAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentPageAlphabetical:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentPageCustom:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentPageDisabled:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentPageDownloaded:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentPageHidden:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getShadowEffect(I)Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v0

    return-object v0
.end method

.method private getShadowOffset()F
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getSavedAppsGridSize()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->fromInt(I)Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$AppsPresenter$GridSize:[I

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0029

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    :goto_0
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mShadowOffsetY:F

    iget v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mShadowOffsetY:F

    return v2

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a002a

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private initUIAnimation()V
    .locals 2

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBarAnimDuration:F

    invoke-direct {v0, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;-><init>(F)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBarAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBarAnimSetSlideIn:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBarAnimSetSlideOut:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    return-void
.end method

.method private insertLoggingAppsFolderCount()V
    .locals 7

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getFolderItemsCount()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v2, "APFO"

    const/4 v3, 0x0

    int-to-long v4, v0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method private isInAppsList(Lcom/sec/daliviews/views/Item;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepBackground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private loadItems()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mLocaleChanging:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    sget-object v4, Lcom/sec/android/app/launcher/data/DataManager$SortType;->ITEMS_TO_SHOW_ONLY:Lcom/sec/android/app/launcher/data/DataManager$SortType;

    invoke-virtual {v2, v3, p0, v5, v4}, Lcom/sec/android/app/launcher/data/DataManager;->getItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;ZLcom/sec/android/app/launcher/data/DataManager$SortType;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->buildItems(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    sget-object v4, Lcom/sec/android/app/launcher/data/DataManager$SortType;->ITEMS_NOT_TO_SHOW_ONLY:Lcom/sec/android/app/launcher/data/DataManager$SortType;

    invoke-virtual {v2, v3, p0, v5, v4}, Lcom/sec/android/app/launcher/data/DataManager;->getItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;ZLcom/sec/android/app/launcher/data/DataManager$SortType;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHiddenItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHiddenItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v2, p0, v3}, Lcom/sec/android/app/launcher/data/DataManager;->registerDataListener(Lcom/sec/android/app/launcher/data/DataManager$IDataListener;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    :cond_1
    return-void
.end method

.method private loadListForAlphabetical()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ALPHABETICAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/PagedAdapterView;->setListOrder(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getFolderItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->sortLocale(Ljava/util/List;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/sec/daliviews/views/PagedListAdapter;->resetItemsAndSortOrder(Ljava/util/List;I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->displayItemsInAlphabeticalOrder()V

    :cond_0
    return-void
.end method

.method private loadListForCustomisable()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->CUSTOMISABLE:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/PagedAdapterView;->setListOrder(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getFolderItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->displayItemsInCustomOrder()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Lcom/sec/daliviews/views/PagedListAdapter;->resetItemsAndSortOrder(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method private loadListForDisabled()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ALPHABETICAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedAdapterView;->setListOrder(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDisabledItemList:Ljava/util/List;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/views/PagedListAdapter;->resetItemsAndSortOrder(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method private loadListForDownloaded()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ALPHABETICAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedAdapterView;->setListOrder(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDownloadedItemList:Ljava/util/List;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/views/PagedListAdapter;->resetItemsAndSortOrder(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method private loadListForHidden()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ALPHABETICAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedAdapterView;->setListOrder(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHiddenItemList:Ljava/util/List;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/views/PagedListAdapter;->resetItemsAndSortOrder(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method private notifySelection(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSelectionListener:Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSelectionListener:Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;

    invoke-interface {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;->onAppSelectionCancelled()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSelectionListener:Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mOrigSelectedItems:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;->onAppsSelected(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method private onAppsListModeChanged()V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getFolderItems()Ljava/util/List;

    move-result-object v2

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

    if-eqz v1, :cond_0

    check-cast v1, Lcom/sec/android/app/launcher/data/FolderItem;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setFolderDragEventInterest(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onHomeItemClicked(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/data/HomeItem;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/Accessibility;->getFocusedView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    if-eq v7, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    if-eq v7, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    if-eq v7, v1, :cond_0

    :cond_2
    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$AppsPresenter$ListMode:[I

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->toggleItemSelection(Lcom/sec/android/app/launcher/data/HomeItem;)V

    move v6, v8

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DOWNLOADED:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListType(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isLaunchEffectEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setAppLaunchedWithLaunchEffect()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getLaunchEffect()Lcom/sec/daliviews/effects/LaunchEffect;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/sec/daliviews/effects/LaunchEffect;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    const v2, 0x7f0b008e

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/effects/LaunchEffect;->perform(Lcom/sec/daliviews/views/NativeViewBase;I)V

    :cond_4
    :goto_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->genClick(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v1, p2}, Lcom/sec/android/app/launcher/utils/Utils;->launchUri(Landroid/app/Activity;Lcom/sec/android/app/launcher/data/LauncherItem;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v2, "APIS"

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/data/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->closeOpenFolder(Z)Z

    move v6, v8

    goto/16 :goto_0

    :cond_6
    const-string v1, "LaunchEffect"

    const-string v2, "[JAVA] PagePresenter.onItemClick() - State is not correct for this operation."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->uninstallAndDisableApp(Lcom/sec/daliviews/views/Item;)V

    move v6, v8

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->uninstallAndDisableApp(Lcom/sec/daliviews/views/Item;)V

    move v6, v8

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onHomeItemDeleted(Lcom/sec/android/app/launcher/data/HomeItem;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->isInAppsList(Lcom/sec/daliviews/views/Item;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapterAttached:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    const/4 v6, 0x0

    sget-object v7, Lcom/sec/android/app/launcher/data/DataManager$SortType;->ITEMS_TO_SHOW_ONLY:Lcom/sec/android/app/launcher/data/DataManager$SortType;

    invoke-virtual {v4, v5, p0, v6, v7}, Lcom/sec/android/app/launcher/data/DataManager;->getItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;ZLcom/sec/android/app/launcher/data/DataManager$SortType;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->buildItems(Ljava/util/Collection;)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHiddenItemList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDownloadedItemList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v5, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DOWNLOADED:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDownloadedItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v5, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListTypeAndMode(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onHomeItemDeleted buildItems skip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapterAttached:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v5, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->HIDDEN:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHiddenItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v5, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListTypeAndMode(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v5, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DISABLED:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v4, p1}, Lcom/sec/daliviews/views/PagedListAdapter;->removeItem(Lcom/sec/daliviews/views/Item;)Z

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/PagedListAdapter;->reorderItems()V

    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v5, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-static {v4, v5}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v2, :cond_6

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inDefaultList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  itemInAppsList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v5, "mListType!=ListType.DISABLED && mAdapter!=null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setScrollEffect()V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/sec/android/app/launcher/activities/AppsPresenter$18;

    invoke-direct {v5, p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$18;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method

.method private onItemSelected(Lcom/sec/daliviews/views/Item;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private preSelectItemsFromList(Ljava/util/List;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getIntent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/launcher/data/HomeItem;->setChecked(Z)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPreSelectedApps:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getIntent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/launcher/data/HomeItem;->setEnabled(Z)V

    goto :goto_0
.end method

.method private preSelecteItems(Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 9

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->clearSelection()V

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSelectionTargetFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mOrigSelectedItems:Ljava/util/List;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mOrigSelectedItems:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mOrigSelectedItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mOrigSelectedItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->isClone()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getOriginalItem()Lcom/sec/android/app/launcher/data/LauncherItem;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/launcher/data/HomeItem;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/launcher/data/HomeItem;->setChecked(Z)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPreSelectedApps:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/launcher/data/HomeItem;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/HashSet;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mOrigSelectedItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/HashSet;-><init>(I)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mOrigSelectedItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    check-cast v3, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->getIntent()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v4, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->preSelectItemsFromList(Ljava/util/List;Ljava/util/Set;)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getFolderItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    check-cast v3, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->preSelectItemsFromList(Ljava/util/List;Ljava/util/Set;)V

    goto :goto_2
.end method

.method private static readDimension(I)I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1
.end method

.method private restoreAppsListOrder()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "apps_list_order_type"

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->CUSTOMISABLE:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    return-void
.end method

.method private saveListOrder()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "apps_list_order_type"

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setAnimStartPos()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsIconViewPos()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsIconPos:Landroid/graphics/Rect;

    return-void
.end method

.method private setCurrentPage(I)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$AppsPresenter$ListType:[I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->SELECT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ALPHABETICAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    if-ne v0, v1, :cond_1

    iput p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentPageAlphabetical:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentPageCustom:I

    goto :goto_0

    :pswitch_1
    iput p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentPageDownloaded:I

    goto :goto_0

    :pswitch_2
    iput p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentPageDisabled:I

    goto :goto_0

    :pswitch_3
    iput p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentPageHidden:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private setCustomPositionsFrom(Ljava/util/List;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListColumnCount:I

    iget v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListRowCount:I

    mul-int v3, v5, v6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    if-lt p3, v3, :cond_0

    add-int/lit8 p2, p2, 0x1

    const/4 p3, 0x0

    :cond_0
    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v2, p2, p3}, Lcom/sec/android/app/launcher/data/LauncherItem;->isCustomPositionAt(II)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, p3, p2}, Lcom/sec/android/app/launcher/data/LauncherItem;->setCustomPosition(II)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method private setCustomPositionsforFlexibleGrid(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListColumnCount:I

    iget v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListRowCount:I

    mul-int v3, v7, v8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->sortItemsInCustomOrder(Ljava/util/List;)V

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getPos()I

    move-result v7

    if-lt v7, v3, :cond_1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v7

    if-eq v4, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v4

    sget-object v7, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setCustomPositionsforFlexibleGrid() splitedCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-lez v5, :cond_0

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getPos()I

    move-result v7

    rem-int/2addr v7, v3

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v1, v7, v8}, Lcom/sec/daliviews/views/Item;->setCustomPosition(II)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v6
.end method

.method private setItemChecked(Lcom/sec/daliviews/views/Item;Z)V
    .locals 7

    instance-of v6, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v6, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v2, p2}, Lcom/sec/android/app/launcher/data/HomeItem;->setChecked(Z)V

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v4, :cond_0

    invoke-virtual {v4, p2}, Lcom/sec/android/app/launcher/views/HomeItemView;->setChecked(Z)V

    :cond_0
    if-eqz p2, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v6, p1, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v6, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/FolderItem;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSelectionTargetFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-direct {p0, v1, p2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setItemChecked(Lcom/sec/daliviews/views/Item;Z)V

    goto :goto_1
.end method

.method private setListeners(Lcom/sec/daliviews/views/AdapterView;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sec/daliviews/views/AdapterView;->setOnItemClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1, p0}, Lcom/sec/daliviews/views/AdapterView;->setOnItemLongClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p1, p0}, Lcom/sec/daliviews/views/AdapterView;->setOnItemTouchListener(Lcom/sec/daliviews/views/AdapterView$OnItemTouchListener;)V

    return-void
.end method

.method private setUpAppsDragListener()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$5;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsDragListener:Lcom/sec/daliviews/views/AdapterView$dragLocationListener;

    return-void
.end method

.method private setupAdapter()V
    .locals 2

    new-instance v0, Lcom/sec/daliviews/views/PagedListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/daliviews/views/PagedListAdapter;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRootAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOptimizationMode()I

    move-result v0

    sget v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->OPTIMIZATION_MODE_PERFORMANCE:I

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->attachAdapterIfNeeded()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$13;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$13;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedListAdapter;->setOnItemsReorderedListener(Lcom/sec/daliviews/views/PagedListAdapter$OnItemsReorderedListener;)V

    return-void
.end method

.method private setupAdapterView()V
    .locals 10

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    const v4, 0x7f0b004e

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/PagedAdapterView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-direct {p0, v9}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateDefaultViewMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v0, 0x7f0c0006

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v0, 0x7f0c0008

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    move v4, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/sec/daliviews/views/PagedAdapterView;->setGridLayoutParams(IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v0, v5}, Lcom/sec/daliviews/views/PagedAdapterView;->setPageFlipEnable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomModeListener:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterZoomModeListener;

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/PagedAdapterView;->setZoomModeListener(Lcom/sec/daliviews/views/PagedAdapterView$ZoomModeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v0, v5}, Lcom/sec/daliviews/views/PagedAdapterView;->setSuppressOutlinesOnItems(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterViewListener:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/PagedAdapterView;->setPagedAdapterViewListener(Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFadeListener:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterFadeListener;

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/PagedAdapterView;->setFadeListener(Lcom/sec/daliviews/views/PagedAdapterView$AppsFadeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/PagedAdapterView;->setNormalModeMargin(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/PagedAdapterView;->setContainerType(I)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setLandscapeEffect()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getSavedFragmentTransitionEffectState()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->enableFragmentTransitionEffect(Z)V

    invoke-virtual {p0, v9}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->changeGridSize(Z)V

    return-void
.end method

.method private setupEditBar()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;-><init>(Landroid/content/Context;Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->setVisibility(I)V

    return-void
.end method

.method private setupFolderPresenter()V
    .locals 2

    sget-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportFolderItemMove:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/launcher/activities/AppsFolderPanelPresenter;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->registerFolderOpenListener(Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;-><init>(Lcom/sec/android/app/launcher/activities/PresenterBase;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    goto :goto_0
.end method

.method private setupPageIndicator()V
    .locals 9

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    const v7, 0x7f0b004f

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v6

    check-cast v6, Lcom/sec/daliviews/views/PageIndicator;

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getPageIndicatorDefault()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicatorImage:Landroid/graphics/drawable/Drawable;

    const v6, 0x7f0a00e2

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/PageIndicator;->setIndicatorGrowBy(I)V

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    const v6, 0x7f0a00eb

    invoke-virtual {v4, v6, v5, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/PageIndicator;->setPageScrollDuration(F)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    sget v7, Lcom/sec/android/app/launcher/activities/LauncherApp;->mMemoryOptimiseLevel:I

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/PageIndicator;->setMemoryOptimiseLevel(I)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/PagedAdapterView;->setPageIndicator(Lcom/sec/daliviews/views/PageIndicator;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/PageIndicator;->setPageLayout(Lcom/sec/daliviews/layouts/PageLayout;)V

    const v6, 0x7f0a0258

    invoke-virtual {v4, v6, v5, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const v6, 0x7f0a0259

    invoke-virtual {v4, v6, v5, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v6, v2, v3}, Lcom/sec/daliviews/views/PageIndicator;->setPageSwapDuration(FF)V

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-direct {p0, v6}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getSavedPageNumber(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;)I

    move-result v1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    return-void
.end method

.method private setupPageLayout()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PagedAdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    sget v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->mAppsMemoryOptimiseLevel:I

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setMemoryOptimiseLevel(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setBackgroundEffectWindowSize(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getSavedScrollEffect()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setScrollEffect(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getSavedPageNumber(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setInitialPage(I)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v1, 0x7f0a0012

    const/4 v2, 0x1

    const/4 v4, 0x1

    invoke-virtual {v15, v1, v2, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1, v13}, Lcom/sec/daliviews/layouts/PageLayout;->setDynamicSnapDurationThreshold(F)V

    const v1, 0x7f0a0025

    const/4 v2, 0x1

    const/4 v4, 0x1

    invoke-virtual {v15, v1, v2, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1, v14}, Lcom/sec/daliviews/layouts/PageLayout;->setFlickDuration(F)V

    new-instance v16, Landroid/util/TypedValue;

    invoke-direct/range {v16 .. v16}, Landroid/util/TypedValue;-><init>()V

    const v1, 0x7f0a0028

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v15, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual/range {v16 .. v16}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setSnapDuration(F)V

    const v1, 0x7f0a0027

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v15, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual/range {v16 .. v16}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setFrictionCoefficient(F)V

    const v1, 0x7f0a0026

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v15, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual/range {v16 .. v16}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setFlickSpeedCoefficient(F)V

    const v1, 0x7f0a0040

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v15, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual/range {v16 .. v16}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setMinimumDistanceForFlick(F)V

    const v1, 0x7f0a0041

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v15, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual/range {v16 .. v16}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setMinimumSpeedForFlick(F)V

    const v1, 0x7f0a003f

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v15, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual/range {v16 .. v16}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setMaxFlickSpeed(F)V

    const v1, 0x7f0a02a0

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v3, v1

    const v1, 0x7f0a029f

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v15, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v16 .. v16}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    const v1, 0x7f0a029e

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v15, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v16 .. v16}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    sget-boolean v2, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mIsEdge:Z

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/daliviews/layouts/PageLayout;->setWarpEffectProperties(ZFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const v2, 0x7f0d001c

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setGridGuideImagePath(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNormalModeMargin:I

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setNormalModeMargin(I)V

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsPageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsPageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setOnPageChangeListener(Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    new-instance v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$12;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$12;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setOnGestureListener(Lcom/sec/daliviews/layouts/PageLayout$OnGestureListener;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/sec/daliviews/layouts/PageLayout;->setScrollWrap(ZZZZZ)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setupShadow()V

    return-void
.end method

.method private setupRootView()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    const v1, 0x7f030006

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimatePositioning(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b0048

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsContentRoot:Lcom/sec/daliviews/views/ContainerView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnimType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mScaleFadeListener:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setScaleFadeAnimationListener(Lcom/sec/daliviews/views/NativeViewBase$ScaleFadeAnimationListener;)V

    :cond_0
    return-void
.end method

.method private setupShadow()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getShadowOffset()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/effects/ShadowEffect;->setOffset(FF)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/ContainerView;->setShadowEffect(Lcom/sec/daliviews/effects/ShadowEffect;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/layouts/PageLayout;->setShadowEffect(Lcom/sec/daliviews/effects/ShadowEffect;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/effects/ShadowEffect;->setVisible(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/effects/ShadowEffect;->setVisible(Z)V

    goto :goto_0
.end method

.method private setupTitle()V
    .locals 11

    const v10, 0x7f0d003c

    const v9, 0x7f0d0002

    const v8, 0x7f0d0029

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    const v3, 0x7f0b004b

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/ContainerView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimatePositioning(Z)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimateAddingView(Z)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimateResizing(Z)V

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mUpdateEditButton:Z

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    const v3, 0x7f0b0049

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/TextView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v4, 0x7f0d008e

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v6}, Lcom/sec/daliviews/views/TextView;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v5, 0x7f0d008e

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/views/TextView;->setContentDescription(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    new-instance v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$6;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/TextView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    const v3, 0x7f0b004a

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/TextView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateAtoZButtonLayout()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v6}, Lcom/sec/daliviews/views/TextView;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v4, v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/views/TextView;->setContentDescription(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsContentRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    sget-boolean v2, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseAtoZButton:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v7}, Lcom/sec/daliviews/views/TextView;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3, v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    new-instance v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$7;

    invoke-direct {v3, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$7;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/TextView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    const v3, 0x7f0b004c

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/TextView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditCancel:Lcom/sec/daliviews/views/TextView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditCancel:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->setDefaultBlendMode()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditCancel:Lcom/sec/daliviews/views/TextView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v4, 0x7f0d002a

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditCancel:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditCancel:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v6}, Lcom/sec/daliviews/views/TextView;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditCancel:Lcom/sec/daliviews/views/TextView;

    new-instance v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$8;

    invoke-direct {v3, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$8;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/TextView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditCancel:Lcom/sec/daliviews/views/TextView;

    new-instance v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$9;

    invoke-direct {v3, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$9;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/TextView;->setPulseCompleteListener(Lcom/sec/daliviews/views/NativeViewBase$PulseCompleteListener;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    const v3, 0x7f0b004d

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/TextView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3, v10}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v4, v10}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/views/TextView;->setContentDescription(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v6}, Lcom/sec/daliviews/views/TextView;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    new-instance v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$10;

    invoke-direct {v3, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$10;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/TextView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setupTitleBarAnim()V

    return-void
.end method

.method private setupTitleBarAnim()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;

    new-instance v2, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopTitleMarginTop:I

    int-to-float v3, v3

    invoke-direct {v2, v4, v3, v4}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    iget v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBarAnimDuration:F

    invoke-direct {v0, v2, v4, v3, v5}, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBarAnimSetSlideIn:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;)V

    new-instance v1, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;

    new-instance v2, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ContainerView;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v2, v4, v3, v4}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    iget v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBarAnimDuration:F

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBarAnimSetSlideOut:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;)V

    return-void
.end method

.method private setupViews()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setupRootView()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setUpAppsDragListener()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/sec/android/app/launcher/data/DataManager;->checkItemLoading(Lcom/sec/android/app/launcher/data/DataManager$ILoadCompleteListener;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Landroid/os/Bundle;Z)V

    :cond_0
    return-void
.end method

.method private showFolderPopupMenu(Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "VZW"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    const v4, 0x7f0d0080

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    aput-object v4, v2, v5

    if-eqz v1, :cond_1

    const v4, 0x7f0d00a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, v2, v6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/sec/android/app/launcher/activities/AppsPresenter$20;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$20;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/data/FolderItem;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mUSAFolderDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mUSAFolderDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mUSAFolderDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const v4, 0x7f0d007f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const v4, 0x7f0d00a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private showPageGrid(I)V
    .locals 3

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/FixedPageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/FixedPageView;->showGrid()V

    :cond_0
    add-int/lit8 v1, p1, -0x1

    if-ltz v1, :cond_1

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/FixedPageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/FixedPageView;->showGrid()V

    :cond_1
    return-void
.end method

.method private showTitleBar(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    return-void
.end method

.method private sortItemsInCustomOrder(Ljava/util/List;)V
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

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$16;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$16;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private sortItemsInDbIdOrder(Ljava/util/List;)V
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

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$17;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$17;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private toggleItemSelection(Lcom/sec/android/app/launcher/data/HomeItem;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->toggleChecked()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onItemSelected(Lcom/sec/daliviews/views/Item;Z)V

    return-void
.end method

.method private triggerLiveIconAnimationInAdapter(Lcom/sec/daliviews/views/Adapter;Z)V
    .locals 5

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Adapter;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    instance-of v4, v2, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->startAnim()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->stopAnim()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private unhideSelectedApps(Z)V
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->sortItemsInDbIdOrder(Ljava/util/List;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/launcher/data/HomeItem;->setHidden(Z)V

    invoke-virtual {v0, v6}, Lcom/sec/android/app/launcher/data/HomeItem;->setChecked(Z)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDownloadedItemList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHiddenItemList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/PagedListAdapter;->reorderItems()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/app/launcher/data/DataManager;->updateItemsPositions(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;Z)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    check-cast v2, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/launcher/data/HomeItem;->setChecked(Z)V

    goto :goto_1
.end method

.method private unsetListeners(Lcom/sec/daliviews/views/AdapterView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/AdapterView;->setOnItemClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/AdapterView;->setOnItemLongClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/AdapterView;->setOnItemTouchListener(Lcom/sec/daliviews/views/AdapterView$OnItemTouchListener;)V

    return-void
.end method

.method private updateAtoZButtonLayout()V
    .locals 10

    const v9, 0x7f0a001e

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/TextView;->getWidth()I

    move-result v0

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/TextView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f0a0011

    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->readDimension(I)I

    move-result v4

    const v6, 0x7f0a0020

    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->readDimension(I)I

    move-result v3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    invoke-static {v9}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->readDimension(I)I

    move-result v6

    add-int v2, v0, v6

    :goto_0
    const v6, 0x7f0a001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    invoke-virtual {v1, v8, v4, v2, v8}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    const/16 v6, 0x35

    invoke-virtual {v1, v6}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutGravity(I)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v6, v1}, Lcom/sec/daliviews/views/TextView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    const v6, 0x7f0a0021

    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->readDimension(I)I

    move-result v4

    invoke-static {v9}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->readDimension(I)I

    move-result v6

    add-int v2, v0, v6

    goto :goto_0
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

    invoke-virtual {v0, p2, p3}, Lcom/sec/daliviews/layouts/GridLayout;->setCellSize(II)V

    invoke-virtual {v0, p4}, Lcom/sec/daliviews/layouts/GridLayout;->setVerticalSpacing(I)V

    invoke-virtual {v0, p5}, Lcom/sec/daliviews/layouts/GridLayout;->setHorizontalSpacing(I)V

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/GridLayout;->layoutViews()V

    :cond_0
    return-void
.end method

.method private updateDefaultViewMode(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDefaultViewMode change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/PagedAdapterView;->setEditMode(Z)V

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$AppsPresenter$ListMode:[I

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0b00e5

    iput v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentMode:I

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/PagedAdapterView;->setDefaultMode(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ALPHABETICAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v1, v5}, Lcom/sec/daliviews/views/PagedAdapterView;->setPagesDragEventInterest(I)V

    :goto_2
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setUninstallBadge(ZZ)V

    :cond_1
    return-void

    :pswitch_1
    const v1, 0x7f0b00da

    iput v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentMode:I

    goto :goto_1

    :pswitch_2
    const v1, 0x7f0b00d9

    iput v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentMode:I

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v1, v5}, Lcom/sec/daliviews/views/PagedAdapterView;->setEditMode(Z)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0b00e4

    iput v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentMode:I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/PagedAdapterView;->setPagesDragEventInterest(I)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/PagedAdapterView;->setPagesDragEventInterest(I)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDoneButtonLayout()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/TextView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v0

    const v4, 0x7f0a0020

    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->readDimension(I)I

    move-result v1

    const v4, 0x7f0a0021

    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->readDimension(I)I

    move-result v2

    const v4, 0x7f0a001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    invoke-virtual {v0, v5, v2, v1, v5}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    const/16 v4, 0x35

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutGravity(I)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v4, v0}, Lcom/sec/daliviews/views/TextView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/TextView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/TextView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    :cond_0
    return-void
.end method

.method private updateEditButtonLayout()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/TextView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v0

    const v4, 0x7f0a0020

    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->readDimension(I)I

    move-result v1

    const v4, 0x7f0a0021

    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->readDimension(I)I

    move-result v2

    const v4, 0x7f0a001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    invoke-virtual {v0, v5, v2, v1, v5}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    const/16 v4, 0x35

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutGravity(I)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v4, v0}, Lcom/sec/daliviews/views/TextView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updateFromPageChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/PageIndicator;->setCurrentPage(I)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->announce(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mLastAccessibilityReportedPage:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mLastAccessibilityReportedPage:I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setAccessibilityPageChange()V

    :cond_0
    return-void
.end method

.method private updatePageLayout(Lcom/sec/daliviews/views/FixedPageView;)V
    .locals 5

    const v3, 0x7f0a003d

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/FixedPageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v3, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/FixedPageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    return-void
.end method

.method private updatePageView(Lcom/sec/daliviews/views/FixedPageView;)V
    .locals 10

    const v9, 0x7f0a0037

    const v8, 0x7f0a0033

    const/4 v2, 0x0

    const v4, 0x7f0a0036

    const v5, 0x7f0a0035

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/daliviews/views/FixedPageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v6

    const v0, 0x7f0a003d

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0a003e

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v6, v0, v2, v1, v2}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    invoke-virtual {p1, v6}, Lcom/sec/daliviews/views/FixedPageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    const v0, 0x7f0a003a

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0a003c

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0a003b

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0a0039

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sec/daliviews/views/FixedPageView;->setPadding(IIII)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isAppsDynamicGridChangeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getSavedAppsGridSize()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->fromInt(I)Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->GRIDSIZE_5x5:Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/FixedPageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    const v0, 0x7f0a0038

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v0, 0x7f0a0034

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateCellSize(Lcom/sec/daliviews/layouts/LayoutBase;IIII)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/FixedPageView;->showGrid()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/daliviews/views/FixedPageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateCellSize(Lcom/sec/daliviews/layouts/LayoutBase;IIII)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/daliviews/views/FixedPageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateCellSize(Lcom/sec/daliviews/layouts/LayoutBase;IIII)V

    goto :goto_0
.end method

.method private updateTopBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBarAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->removeFocus()V

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$AppsPresenter$ListMode:[I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateTopBarToEdit()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateTopBarToNormal()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateTopBarToEdit()V
    .locals 4

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNumberOfAdditionalPagesInEditMode:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mOldPageCount:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/views/TextView;->setVisibilityAnimated(IF)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/TextView;->setVisibility(I)V

    sget-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseAtoZButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/TextView;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateDoneButtonLayout()V

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->showTitleBar(Z)V

    return-void
.end method

.method private updateTopBarToNormal()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    const v3, 0x3e99999a    # 0.3f

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->hideTitleBar()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v5}, Lcom/sec/daliviews/views/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v4, v3}, Lcom/sec/daliviews/views/TextView;->setVisibilityAnimated(IF)V

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mOldPageCount:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mOldPageCount:I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mOldPageCount:I

    :cond_0
    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LauncherFeature.mUseAtoZButton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseAtoZButton:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseAtoZButton:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v4, v3}, Lcom/sec/daliviews/views/TextView;->setVisibilityAnimated(IF)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v5}, Lcom/sec/daliviews/views/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateUninstallButton(Lcom/sec/daliviews/views/NativeViewBase;Z)V
    .locals 5

    const v4, 0x7f0b0092

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v2, v3, :cond_0

    instance-of v2, p1, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    check-cast p1, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/views/HomeItemView;->getUninstallView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    instance-of v2, p1, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/views/HomeItemView;->getUninstallView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    instance-of v2, p1, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getUninstallView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    goto :goto_1
.end method

.method private zoomInPageViews(F)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomedOut:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomedOut:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomAnimInProgress:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mkeepBackground:Z

    invoke-virtual {v0, p1, v1}, Lcom/sec/daliviews/views/PagedAdapterView;->switchToNormalMode(FZ)V

    :cond_0
    return-void
.end method

.method private zoomOutPageViews(FZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->zoomOutPageViews(FZI)V

    return-void
.end method

.method private zoomOutPageViews(FZI)V
    .locals 11

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomedOut:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mVisibility:I

    if-nez v0, :cond_2

    const/4 v9, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomScale:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    const v0, 0x7f0a0047

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    :goto_0
    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomedOut:Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomAnimInProgress:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ALPHABETICAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    if-ne v0, v1, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a0045

    invoke-virtual {v10, v0, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomOffsetX:F

    const v0, 0x7f0a0046

    invoke-virtual {v10, v0, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomOffsetY:F

    :cond_1
    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v1, "Enter EDIT mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomScale:F

    iget v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomOffsetX:F

    iget v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomOffsetY:F

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomedOutBackgroundImageFileName:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mkeepBackground:Z

    move v4, p1

    move v6, p2

    move v8, p3

    invoke-virtual/range {v0 .. v9}, Lcom/sec/daliviews/views/PagedAdapterView;->switchToZoomedOutPageMode(FFFFLjava/lang/String;ZZII)V

    :cond_2
    return-void

    :cond_3
    const v0, 0x7f0a0242

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    goto :goto_0
.end method

.method private zoomOutPageViewsIfNeeded()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$AppsPresenter$ListMode:[I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomAnimTime:F

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->zoomInPageViews(F)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->HIDDEN:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomAnimTime:F

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->zoomInPageViews(F)V

    goto :goto_0

    :cond_0
    :pswitch_1
    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->pageAdded:Z

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomAnimTime:F

    iget v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNumberOfAdditionalPagesInEditMode:I

    invoke-direct {p0, v0, v2, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->zoomOutPageViews(FZI)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomAnimTime:F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->zoomOutPageViews(FZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public UnSelectAll()V
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    instance-of v4, v2, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v4, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomeItem;->setChecked(Z)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v5}, Lcom/sec/android/app/launcher/views/HomeItemView;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    return-void
.end method

.method public addItem(Lcom/sec/daliviews/views/Item;)V
    .locals 2

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateDefaultViewMode(Z)V

    :cond_0
    return-void
.end method

.method public addUpdateContentDescription()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v2, 0x7f0d0033

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedAdapterView;->setContentDescription(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cancelFastScroll()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageIndicator;->isFastScrollActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageIndicator;->cancelFastScroll()V

    :cond_0
    return-void
.end method

.method public cancelPageChangeTimer()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PagedAdapterView;->exitDragMode()V

    :cond_0
    return-void
.end method

.method public changeGridSize(Z)V
    .locals 6

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeGridSize() AppsDynamicGridEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isAppsDynamicGridChangeEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  isOptionChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isAppsDynamicGridChangeEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->GRIDSIZE_4X5:Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isAppsDynamicGridChangeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageColumns()I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageRows()I

    move-result v2

    mul-int v3, v1, v2

    const/16 v4, 0x14

    if-gt v3, v4, :cond_2

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->GRIDSIZE_4X5:Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    :goto_1
    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeGridSize() not option change "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->saveAppsGridSize(Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;)V

    :cond_1
    :goto_2
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->changeGridSizeOfPages(Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;Z)Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->GRIDSIZE_5x5:Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getSavedAppsGridSize()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->fromInt(I)Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeGridSize() gridSize changed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public changeGridSizeOfPages(Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;Z)Z
    .locals 10

    const/4 v3, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x1

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v1, "AppsPresenter::changeGridSizeOfPages()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isAppsDynamicGridChangeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v9, v3, [I

    invoke-static {p1, v9}, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->getGridRowColumnCount(Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;[I)[I

    move-result-object v9

    const/4 v0, 0x0

    aget v0, v9, v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListColumnCount:I

    aget v0, v9, v5

    iput v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListRowCount:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->GRIDSIZE_5x5:Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    if-ne p1, v0, :cond_3

    const v0, 0x7f0a0038

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListCellWidth:I

    const v0, 0x7f0a0034

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListCellHeight:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListRowCount:I

    iget v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListColumnCount:I

    iget v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListCellWidth:I

    iget v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListCellHeight:I

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/daliviews/views/PagedAdapterView;->setGridLayoutParams(IIIIIII)V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateAppsPosAndSaveDB(Z)V

    :cond_2
    return v5

    :cond_3
    const v0, 0x7f0a0037

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListCellWidth:I

    const v0, 0x7f0a0033

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListCellHeight:I

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppsPresenter::changeGridSizeOfPages() orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->GRIDSIZE_4X5:Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListColumnCount:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListRowCount:I

    goto :goto_0
.end method

.method public cleanupTouchEffect()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchEffectIcon:Lcom/sec/daliviews/views/IconView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/IconView;->lighten()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchEffectIcon:Lcom/sec/daliviews/views/IconView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchedItemDestroyedListener:Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/IconView;->unregisterDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchedItemDestroyedListener:Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchEffectIcon:Lcom/sec/daliviews/views/IconView;

    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/launcher/data/DataManager;->unregisterDataListener(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDisabledSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/launcher/data/DataManager;->unregisterDataListener(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PagedAdapterView;->stopLoadingViews()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PagedListAdapter;->destroy()V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setOnPageChangeListener(Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;)V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsPageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setOnGestureListener(Lcom/sec/daliviews/layouts/PageLayout$OnGestureListener;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRootAttached:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->destroy()V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBarAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBarAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBarAnimSetSlideIn:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBarAnimSetSlideIn:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBarAnimSetSlideOut:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBarAnimSetSlideOut:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->destroy()V

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/TextView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/TextView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditCancel:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditCancel:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/TextView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/TextView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mUSAFolderDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mUSAFolderDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->destroy()V

    :cond_11
    return-void
.end method

.method public detachItems(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/daliviews/views/PagedListAdapter;->detachItems(Ljava/util/List;Z)Z

    goto :goto_0
.end method

.method public enableFragmentTransitionEffect(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/PagedAdapterView;->enableTransitionEffect(Z)V

    :cond_0
    return-void
.end method

.method public findCustomPosForItem(Lcom/sec/daliviews/views/Item;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/daliviews/views/Item;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->findCustomPosForItems(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getAdapter()Lcom/sec/daliviews/views/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    return-object v0
.end method

.method public getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    return-object v0
.end method

.method public getAppsListColumnCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListColumnCount:I

    return v0
.end method

.method public getAppsListRowCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListRowCount:I

    return v0
.end method

.method public getAppsPageChangeListener()Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsPageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    return-object v0
.end method

.method public getAppsPageIndicator()Lcom/sec/daliviews/views/PageIndicator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    return-object v0
.end method

.method public getAppsTitleBar()Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method public getCurrentAppsPage()Lcom/sec/daliviews/views/PageView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v1, "Cannot get PageLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTopButton()Lcom/sec/daliviews/views/TextView;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "LAUNCHER_HOME"

    const-string v2, "AppsPresenter getCurrentTopButton"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBarAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$AppsPresenter$ListMode:[I

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getCurrentTopButtonForAtoZ()Lcom/sec/daliviews/views/TextView;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "LAUNCHER_HOME"

    const-string v2, "AppsPresenter getCurrentTopButtonForAtoZ"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBarAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$AppsPresenter$ListMode:[I

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public getFirstItemAtCurrentPage()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getItemsAtPage(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    goto :goto_0
.end method

.method public getItemsAtCurrentPage()Ljava/util/List;
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

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getItemsAtPage(I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getItemsAtPage(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getFolderItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->sortItemsInCustomOrder(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    move-object v5, v1

    check-cast v5, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/LauncherItem;->getContainerId()I

    move-result v7

    if-ne v7, p1, :cond_0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-direct {p0, v6}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->sortItemsInCustomOrder(Ljava/util/List;)V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    move-object v5, v2

    check-cast v5, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/LauncherItem;->getContainerId()I

    move-result v7

    if-ne v7, p1, :cond_2

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->sortItemsInCustomOrder(Ljava/util/List;)V

    return-object v3
.end method

.method public getLastItemAtCurrentPage()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getItemsAtPage(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    goto :goto_0
.end method

.method public getListMode()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    return-object v0
.end method

.method public getListOrder()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    return-object v0
.end method

.method public getListType()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    return-object v0
.end method

.method public getMenuManager()Lcom/sec/android/app/launcher/activities/AppsPopupMenu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageIndex(Lcom/sec/daliviews/views/PageView;)I
    .locals 4

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEnteredPageView:Lcom/sec/daliviews/views/PageView;

    if-nez v3, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v3, v0}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    return-object v0
.end method

.method public getPagedAdapterView()Lcom/sec/daliviews/views/PagedAdapterView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    return-object v0
.end method

.method public getRootView()Lcom/sec/daliviews/views/ContainerViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsContentRoot:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method public getSavedAppsGridSize()I
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "apps_grid_size"

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->GRIDSIZE_4X5:Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    return-object v0
.end method

.method public hideTitleBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    return-void
.end method

.method public invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateUninstallButton(Lcom/sec/daliviews/views/NativeViewBase;Z)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isAppListAvailable()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getFolderItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisabledAppsAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDisabledItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloadedAppsAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDownloadedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirstCreateFolder(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/data/FolderItem;)Z
    .locals 9

    const/4 v4, -0x1

    const/4 v8, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSelectionTargetFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-static {p2, v1}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/views/HomeFolderView;->isUninstallTouched()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v7, v0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->setUninstallStatus(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/data/FolderItem;II)Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;

    move v0, v8

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->CREATE:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    if-eqz v6, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getFolderBoundingBox()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p2, v6, v8, v1}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->openFolder(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;ZLandroid/graphics/Rect;)V

    move v0, v8

    goto :goto_0
.end method

.method public isHiddenAppsAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHiddenItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isListMode()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransitionReady()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnimType:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PagedAdapterView;->getFadeListener()Lcom/sec/daliviews/views/PagedAdapterView$AppsFadeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnimType:I

    if-ne v2, v0, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTransitionInProgress:Z

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public isZoomAnimInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomAnimInProgress:Z

    return v0
.end method

.method loadItems(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->changeGridSize(Z)V

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$AppsPresenter$ListType:[I

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getSavedPageNumber(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->moveToPage(IF)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ALPHABETICAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->loadListForAlphabetical()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->loadListForCustomisable()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->loadListForDownloaded()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->loadListForDisabled()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->loadListForHidden()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public moveToPage(IF)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomAnimInProgress:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mMoveToPageAfterZoom:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAnimatePageChange:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$22;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;IF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 5

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v2, "onBackPressed skipped (FP)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->EditButtonAnimation:Z

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->EditButtonAnimation:Z

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    :cond_1
    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$AppsPresenter$ListType:[I

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mListType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mListMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->SELECT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onDismissAppSelection(Z)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v2, v3, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/TextView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/TextView;->setVisibility(I)V

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PagedListAdapter;->reorderItems()V

    :cond_6
    :goto_2
    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListMode(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->HIDE:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v1, v2, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->clearSelection()V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->enableSelectedApps(Z)V

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListTypeAndMode(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->unhideSelectedApps(Z)V

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListTypeAndMode(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->SELECT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onDismissAppSelection(Z)V

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v1, v2, :cond_9

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListType(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;)V

    goto/16 :goto_1

    :cond_9
    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListMode(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method onDismissAppSelection(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPreSelectedApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    check-cast v1, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/launcher/data/HomeItem;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    check-cast v1, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/launcher/data/HomeItem;->setChecked(Z)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->notifySelection(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->clearSelection()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPreSelectionListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPreSelectionListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListTypeAndMode(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->UNINSTALL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    invoke-direct {p0, v2, v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->zoomOutPageViews(FZ)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateTopBar()V

    return-void
.end method

.method public onDragEnd()V
    .locals 7

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->onDragEnd()V

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->onDragEnd()V

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/PagedListAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v5

    if-ne v5, v4, :cond_2

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sec/daliviews/views/NativeViewBase;->onDragEnd()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    instance-of v4, p1, Lcom/sec/daliviews/views/PageView;

    if-eqz v4, :cond_0

    move-object v4, p1

    check-cast v4, Lcom/sec/daliviews/views/PageView;

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEnteredPageView:Lcom/sec/daliviews/views/PageView;

    :cond_0
    instance-of v4, p2, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-nez v4, :cond_1

    instance-of v4, p2, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v4, :cond_2

    :cond_1
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->setFadeOutItem(Z)V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    instance-of v4, p1, Lcom/sec/android/app/launcher/views/IconDropContainer;

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v4

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v5

    if-eq v4, v5, :cond_4

    instance-of v4, p2, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v4, :cond_4

    move-object v4, p2

    check-cast v4, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/HomeItemView;->getTitle()Lcom/sec/daliviews/views/TextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    instance-of v4, v1, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v4, :cond_7

    move-object v4, v1

    check-cast v4, Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v4, "%s %s"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v9

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v7, 0x7f0d004b

    invoke-virtual {v6, v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v0, v5, v9

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    instance-of v4, v1, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v6, 0x7f0d00ba

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v4, p2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->announce(Lcom/sec/daliviews/views/NativeViewBase;Ljava/lang/String;)V

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_6
    return-void

    :cond_7
    move-object v4, v1

    check-cast v4, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/HomeItemView;->getTitle()Lcom/sec/daliviews/views/TextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_1
    return-void
.end method

.method public onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedAdapterView;->enterDragMode(I)V

    return-void
.end method

.method public onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 10

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v7}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/daliviews/views/PageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimateAddingView(Z)V

    instance-of v6, p1, Lcom/sec/daliviews/views/FixedPageView;

    if-eqz v6, :cond_c

    invoke-virtual {p1, p2}, Lcom/sec/daliviews/views/NativeViewBase;->canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v6}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v6, v3}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getNumberOfItems(I)I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_0

    sget-object v6, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v7, "First item added in last new page, so we add one additional page"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    sget-object v7, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ALPHABETICAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/PagedAdapterView;->createAdditionalPages(I)V

    :cond_0
    instance-of v6, p2, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v6, p2

    check-cast v6, Lcom/sec/android/app/launcher/views/HomeItemView;

    const v7, 0x7f0b00e5

    invoke-virtual {v6, v7}, Lcom/sec/android/app/launcher/views/HomeItemView;->changeMode(I)V

    :goto_0
    move-object v6, p2

    check-cast v6, Lcom/sec/android/app/launcher/views/HomeItemView;

    sget-object v7, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/launcher/views/HomeItemView;->setTitleAttribute(II)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v7, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v6, v7, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v5

    if-eqz v5, :cond_1

    move-object v6, p2

    check-cast v6, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/views/HomeItemView;->getImageView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Lcom/sec/daliviews/effects/ShadowEffect;->apply(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_1
    move-object v6, p2

    check-cast v6, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/views/HomeItemView;->updateMode()V

    move-object v6, p2

    check-cast v6, Lcom/sec/android/app/launcher/views/HomeItemView;

    move-object v7, p3

    check-cast v7, Lcom/sec/android/app/launcher/data/HomeItem;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/app/launcher/views/HomeItemView;->setUninstallView(Lcom/sec/android/app/launcher/data/HomeItem;ZZ)V

    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEnteredPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageIndex(Lcom/sec/daliviews/views/PageView;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_a

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v6}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v6}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v6

    if-eq v1, v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEnteredPageView:Lcom/sec/daliviews/views/PageView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEnteredPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageIndex(Lcom/sec/daliviews/views/PageView;)I

    move-result v6

    const/high16 v7, 0x3e800000    # 0.25f

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->moveToPage(IF)V

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v7, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v6, v7, :cond_b

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v6

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v7

    iget v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListColumnCount:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-virtual {p3, v6, v1}, Lcom/sec/daliviews/views/Item;->setCustomPosition(II)V

    :goto_3
    invoke-virtual {p0, p3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->addItem(Lcom/sec/daliviews/views/Item;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v6, p3}, Lcom/sec/daliviews/views/PagedListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    :cond_4
    :goto_4
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v7}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/daliviews/views/PageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimateAddingView(Z)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    invoke-virtual {v6, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v6, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v7, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v6, v7, :cond_6

    instance-of v6, p2, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v6, :cond_6

    move-object v6, p2

    check-cast v6, Lcom/sec/android/app/launcher/views/HomeItemView;

    check-cast p3, Lcom/sec/android/app/launcher/data/HomeItem;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, p3, v7, v8}, Lcom/sec/android/app/launcher/views/HomeItemView;->setUninstallView(Lcom/sec/android/app/launcher/data/HomeItem;ZZ)V

    if-eqz p2, :cond_6

    move-object v6, p2

    check-cast v6, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/views/HomeItemView;->startAnim()V

    :cond_6
    const/4 v6, 0x0

    invoke-direct {p0, p2, v6}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateUninstallButton(Lcom/sec/daliviews/views/NativeViewBase;Z)V

    return-void

    :cond_7
    move-object v6, p2

    check-cast v6, Lcom/sec/android/app/launcher/views/HomeItemView;

    const v7, 0x7f0b00e4

    invoke-virtual {v6, v7}, Lcom/sec/android/app/launcher/views/HomeItemView;->changeMode(I)V

    goto/16 :goto_0

    :cond_8
    instance-of v6, p2, Lcom/sec/android/app/launcher/views/FolderView;

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v6, p2

    check-cast v6, Lcom/sec/android/app/launcher/views/FolderView;

    const v7, 0x7f0b00e5

    invoke-virtual {v6, v7}, Lcom/sec/android/app/launcher/views/FolderView;->changeMode(I)V

    :goto_5
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v7, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v6, v7, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v6, p2

    check-cast v6, Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getBackgroundView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Lcom/sec/daliviews/effects/ShadowEffect;->apply(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    goto/16 :goto_1

    :cond_9
    move-object v6, p2

    check-cast v6, Lcom/sec/android/app/launcher/views/FolderView;

    const v7, 0x7f0b00e4

    invoke-virtual {v6, v7}, Lcom/sec/android/app/launcher/views/FolderView;->changeMode(I)V

    goto :goto_5

    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEnteredPageView:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageIndex(Lcom/sec/daliviews/views/PageView;)I

    move-result v1

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v6

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v7

    iget v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListColumnCount:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Lcom/sec/daliviews/views/Item;->setCustomPosition(II)V

    goto/16 :goto_3

    :cond_c
    instance-of v6, p1, Lcom/sec/android/app/launcher/views/IconDropContainer;

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v6

    instance-of v6, v6, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v6, :cond_4

    invoke-virtual {p1, p2}, Lcom/sec/daliviews/views/NativeViewBase;->canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v6

    if-eqz v6, :cond_4

    instance-of v6, p2, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;

    invoke-interface {v6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;

    invoke-interface {v6, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_d
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v6, p3}, Lcom/sec/daliviews/views/PagedListAdapter;->removeItem(Lcom/sec/daliviews/views/Item;)Z

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v7, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v6, v7, :cond_f

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v7}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/PagedListAdapter;->reorderItems(I)V

    :goto_6
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v6, :cond_e

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/views/HomeFolderView;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v7

    invoke-virtual {v6, v7, p3}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->updatePositionOnDrop(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/daliviews/views/Item;)V

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerId()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v7}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v7

    if-eq v6, v7, :cond_e

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/FolderItem;->isClone()Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerId()I

    move-result v7

    const/high16 v8, 0x3e800000    # 0.25f

    invoke-virtual {v6, v7, v8}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v7, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v6, v7, :cond_e

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/PagedListAdapter;->reorderItems(I)V

    :cond_e
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    goto/16 :goto_4

    :cond_f
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/PagedListAdapter;->reorderItems()V

    goto :goto_6
.end method

.method public onFolderCloseCompleted(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 0

    return-void
.end method

.method public onFolderClosed(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ALPHABETICAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->loadItems(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;)V

    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setFolderDragEventInterest(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    sget-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportFolderItemMove:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setFolderItemDragMode(ZZ)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->closeFolderPanel()V

    :cond_1
    return-void
.end method

.method public onFolderClosing(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->unsetListeners(Lcom/sec/daliviews/views/AdapterView;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/effects/ShadowEffect;->setVisible(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/effects/ShadowEffect;->setVisible(Z)V

    goto :goto_0
.end method

.method public onFolderCreated(Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->detachItems(Ljava/util/List;Z)V

    return-void
.end method

.method public onFolderItemAdded(Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->CUSTOMISABLE:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x7

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/ListAdapter;->setSortOrder(I)V

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapterAttached:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/views/PagedListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSkipReorder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSkipReorder:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSkipReorder:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getCustomContainerId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/PagedListAdapter;->reorderItems(I)V

    :cond_0
    :goto_1
    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSkipReorder:Z

    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setFolderDragEventInterest(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerId()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerId()I

    move-result v1

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->moveToPage(IF)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PagedListAdapter;->reorderItems()V

    goto :goto_1

    :cond_4
    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSkipReorder:Z

    goto :goto_1
.end method

.method public onFolderItemClicked(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/data/FolderItem;)Z
    .locals 9

    const/4 v4, -0x1

    const/4 v8, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSelectionTargetFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-static {p2, v1}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseFolderPopup:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v1, v2, :cond_2

    invoke-direct {p0, p2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->showFolderPopupMenu(Lcom/sec/android/app/launcher/data/FolderItem;)V

    move v0, v8

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/views/HomeFolderView;->isUninstallTouched()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v7, v0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->setUninstallStatus(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/data/FolderItem;II)Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;

    move v0, v8

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getOpenFolderMode()Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getFolderBoundingBox()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p2, v6, v8, v1}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->openFolder(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;ZLandroid/graphics/Rect;)V

    move v0, v8

    goto :goto_0
.end method

.method public onFolderItemDeleted(Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 13

    const/4 v12, 0x0

    const/high16 v11, 0x3e800000    # 0.25f

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1, v10}, Lcom/sec/android/app/launcher/data/FolderItem;->detachAllItems(Z)V

    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;

    invoke-interface {v8, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v8, p1}, Lcom/sec/daliviews/views/PagedListAdapter;->removeItem(Lcom/sec/daliviews/views/Item;)Z

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/Item;

    sget-object v8, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/sec/daliviews/views/Item;->setContainerType(I)V

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v8, v4}, Lcom/sec/daliviews/views/PagedListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    sget-object v9, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ALPHABETICAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    if-ne v8, v9, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->storeCurrentPage()V

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {p0, v8}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->loadItems(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;)V

    :goto_1
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/HomeItem;

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v8}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerId()I

    move-result v8

    if-eq v0, v8, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerId()I

    move-result v8

    invoke-virtual {p0, v8, v11}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->moveToPage(IF)V

    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v9, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v8, v9, :cond_8

    sget-boolean v8, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLiveIconEnabled:Z

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/views/Item;

    instance-of v8, v5, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/HomeItemView;->startAnim()V

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v8}, Lcom/sec/daliviews/views/PagedListAdapter;->reorderItems()V

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/views/Item;

    instance-of v8, v5, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v8, :cond_5

    invoke-virtual {v5}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v7, :cond_5

    check-cast v5, Lcom/sec/android/app/launcher/data/HomeItem;

    const/4 v8, 0x1

    invoke-virtual {v7, v5, v8, v10}, Lcom/sec/android/app/launcher/views/HomeItemView;->setUninstallView(Lcom/sec/android/app/launcher/data/HomeItem;ZZ)V

    goto :goto_3

    :cond_6
    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v8, p1}, Lcom/sec/daliviews/views/PagedListAdapter;->removeItem(Lcom/sec/daliviews/views/Item;)Z

    :cond_7
    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-nez v8, :cond_9

    :cond_8
    :goto_4
    return-void

    :cond_9
    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v8}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v9, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-eq v8, v9, :cond_a

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v8}, Lcom/sec/daliviews/views/PagedListAdapter;->reorderItems()V

    :cond_a
    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v8}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v8

    if-lt v0, v8, :cond_b

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v8}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8, v11}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->moveToPage(IF)V

    :cond_b
    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchEffectIcon:Lcom/sec/daliviews/views/IconView;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchEffectIcon:Lcom/sec/daliviews/views/IconView;

    invoke-virtual {v8}, Lcom/sec/daliviews/views/IconView;->lighten()V

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchEffectIcon:Lcom/sec/daliviews/views/IconView;

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchedItemDestroyedListener:Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;

    invoke-virtual {v8, v9}, Lcom/sec/daliviews/views/IconView;->unregisterDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    iput-object v12, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchedItemDestroyedListener:Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;

    iput-object v12, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchEffectIcon:Lcom/sec/daliviews/views/IconView;

    goto :goto_4
.end method

.method public onFolderOpened(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListeners(Lcom/sec/daliviews/views/AdapterView;)V

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setFolderDragEventInterest(Lcom/sec/android/app/launcher/data/FolderItem;Z)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/layouts/GridLayout;

    const v2, 0x7f0d001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/layouts/GridLayout;->setGridGuideImagePath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/AdapterView;->showGrid()V

    :cond_0
    return-void
.end method

.method public onFolderOpening(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/effects/ShadowEffect;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onHomePressed()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->dismissPopups()V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->cancelFastScroll()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->SELECT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onDismissAppSelection(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->onBackPressed()Z

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mUSAFolderDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mUSAFolderDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomScale:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_7

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListMode(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;)V

    :cond_7
    return v4
.end method

.method public onItemAdded(Lcom/sec/daliviews/views/Item;)V
    .locals 4

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemAdded item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->isInAppsList(Lcom/sec/daliviews/views/Item;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v2, "onItemAdded fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemType()I

    move-result v1

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_DISABLED_APP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDisabledItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DISABLED:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/PagedListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setScrollEffect()V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v2, "disabled fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemType()I

    move-result v1

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHiddenItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->HIDDEN:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/PagedListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v2, "hidden fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getCustomPos()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateItemCustomPosition(Lcom/sec/daliviews/views/Item;)V

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update invalid pos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item view is null. create view again."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->createItemView()Lcom/sec/daliviews/views/NativeViewBase;

    :cond_8
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemApp()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDownloadedItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DOWNLOADED:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/PagedListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/PagedListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ALPHABETICAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->loadItems(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;)V

    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateDefaultViewMode(Z)V

    goto/16 :goto_1

    :cond_b
    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v2, "downloaded fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_c
    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v2, "default fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onItemBadgeUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v2, v3, :cond_0

    instance-of v2, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/launcher/views/HomeItemView;->setUninstallView(Lcom/sec/android/app/launcher/data/HomeItem;ZZ)V

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v2, "AppsPresenter::onItemClick()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isFocusAttached()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isKeypadFocusAttached()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v2, "can not perform onItemClick()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTransitionInProgress:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v2, "Transition InProgress"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    instance-of v1, p3, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v1, :cond_5

    check-cast p3, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onFolderItemClicked(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/data/FolderItem;)Z

    move-result v0

    goto :goto_0

    :cond_5
    instance-of v1, p3, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v1, :cond_2

    check-cast p3, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onHomeItemClicked(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/data/HomeItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onItemDeleted(Lcom/sec/daliviews/views/Item;)V
    .locals 4

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemDeleted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v2, "onItemDeleted fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setSensitive(Z)V

    :cond_2
    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getItemType()I

    move-result v1

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_DISABLED_APP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disabled app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " removed from disabled list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDisabledItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DISABLED:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/views/PagedListAdapter;->removeItem(Lcom/sec/daliviews/views/Item;)Z

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ALPHABETICAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->storeCurrentPage()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->loadItems(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v2, "DISABLED fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    sget-boolean v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->DEBUG:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removed app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " removed from list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    check-cast p1, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onHomeItemDeleted(Lcom/sec/android/app/launcher/data/HomeItem;)V

    goto :goto_1
.end method

.method public onItemLoadCompleted(Landroid/os/Bundle;)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setupFolderPresenter()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->loadItems()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$25;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$25;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$26;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$26;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$27;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$27;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$28;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$28;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$29;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$29;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$30;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$30;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$31;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$31;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->insertLoggingAppsFolderCount()V

    return-void
.end method

.method public onItemLongClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->UNINSTALL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-eq v1, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->SELECT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-eq v1, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->HIDE:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-eq v1, v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemLongClick no action mListMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v1, v4, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/sec/daliviews/views/Item;->getMovability()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0d0069

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v1, :cond_4

    move-object/from16 v1, p2

    check-cast v1, Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getTitle()Ljava/lang/String;

    move-result-object v16

    const-string v1, "%s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v7, 0x7f0d004b

    invoke-virtual {v6, v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    :goto_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v16, v1, v4

    invoke-static {v15, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v15}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->announce(Lcom/sec/daliviews/views/NativeViewBase;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->genLongClick(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_3
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/daliviews/views/NativeViewBase;->getWidth()I

    move-result v4

    int-to-float v5, v4

    invoke-virtual/range {p2 .. p2}, Lcom/sec/daliviews/views/NativeViewBase;->getHeight()I

    move-result v4

    int-to-float v6, v4

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v1 .. v8}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;FFII)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    :cond_5
    move-object/from16 v0, p3

    instance-of v1, v0, Lcom/sec/android/app/launcher/data/HomeItem;

    if-nez v1, :cond_6

    move-object/from16 v0, p3

    instance-of v1, v0, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v1, :cond_c

    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getActiveFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/ContainerView;->setSensitive(Z)V

    invoke-virtual/range {p3 .. p3}, Lcom/sec/daliviews/views/Item;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/data/DataItemBase;

    const/4 v1, -0x1

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4}, Lcom/sec/android/app/launcher/data/DataItemBase;->setPosition(II)V

    const/4 v1, -0x1

    invoke-virtual {v3, v1}, Lcom/sec/android/app/launcher/data/DataItemBase;->setDbId(I)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/sec/android/app/launcher/data/DataItemBase;->setDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    move-object/from16 v0, p3

    check-cast v0, Lcom/sec/android/app/launcher/data/DataItemBase;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/DataItemBase;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sec/android/app/launcher/data/DataItemBase;->setDataSourceType(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    instance-of v1, v3, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v1, :cond_7

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    move-object v13, v0

    move-object/from16 v0, p3

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    move-object v1, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/launcher/data/HomeItem;->loadIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/sec/android/app/launcher/data/HomeItem;->setIconImage(Landroid/graphics/Bitmap;)V

    :cond_7
    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/DataItemBase;->onCreateItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/IconView;

    instance-of v1, v3, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v1, :cond_a

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->getCurrentMode()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/views/IconView;->changeMode(I)V

    :cond_8
    :goto_2
    invoke-virtual {v3, v2}, Lcom/sec/android/app/launcher/data/DataItemBase;->linkItemView(Lcom/sec/daliviews/views/NativeViewBase;)V

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->closeOpenFolder()Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PagedAdapterView;->isTransitionEffectEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setFlagToMoveToFavoritePage()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v1, 0x7f0a004a

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v14, v1, v4, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v10

    :goto_3
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mClosedFromLongPress:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/launcher/utils/FadeDuration;

    invoke-direct {v4, v10}, Lcom/sec/android/app/launcher/utils/FadeDuration;-><init>(F)V

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showHomeFragmentAnimated(Lcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/daliviews/views/NativeViewBase;->getWidth()I

    move-result v4

    int-to-float v6, v4

    invoke-virtual/range {p2 .. p2}, Lcom/sec/daliviews/views/NativeViewBase;->getHeight()I

    move-result v4

    int-to-float v7, v4

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v9}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;Lcom/sec/daliviews/views/NativeViewBase;FFII)V

    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_a
    instance-of v1, v3, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v1, :cond_8

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/launcher/data/FolderItem;

    move-object v1, v0

    const-string v4, ""

    invoke-virtual {v1, v4}, Lcom/sec/android/app/launcher/data/FolderItem;->setIntent(Ljava/lang/String;)V

    const v1, 0x7f0b00db

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/views/IconView;->changeMode(I)V

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/launcher/views/FolderView;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/FolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getHomeTextColor()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/TextView;->setDefaultTextColor(I)V

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/launcher/data/FolderItem;

    move-object v1, v0

    check-cast p3, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/app/launcher/data/FolderItem;->getFolderColorIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/android/app/launcher/data/FolderItem;->setFolderColor(I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_4

    :cond_b
    const/4 v10, 0x0

    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public onItemTouch(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isFocusAttached()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isKeypadFocusAttached()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/Accessibility;->getFocusedView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-virtual {v0, p4}, Lcom/sec/daliviews/views/NativeViewBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v1, v2, :cond_4

    instance-of v1, p2, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v1, :cond_7

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0, p2, v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateUninstallButton(Lcom/sec/daliviews/views/NativeViewBase;Z)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v1, v2, :cond_0

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_9

    instance-of v1, p2, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-nez v1, :cond_5

    instance-of v1, p2, Lcom/sec/android/app/launcher/views/FolderView;

    if-eqz v1, :cond_9

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchEffectIcon:Lcom/sec/daliviews/views/IconView;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->cleanupTouchEffect()V

    :cond_6
    check-cast p2, Lcom/sec/daliviews/views/IconView;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchEffectIcon:Lcom/sec/daliviews/views/IconView;

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$24;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$24;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchedItemDestroyedListener:Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchEffectIcon:Lcom/sec/daliviews/views/IconView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchedItemDestroyedListener:Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/IconView;->registerDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v1

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchEffectIcon:Lcom/sec/daliviews/views/IconView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/IconView;->darken()V

    goto :goto_0

    :cond_7
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v4, :cond_8

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_4

    :cond_8
    invoke-direct {p0, p2, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateUninstallButton(Lcom/sec/daliviews/views/NativeViewBase;Z)V

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchEffectIcon:Lcom/sec/daliviews/views/IconView;

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v4, :cond_a

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_0

    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->cleanupTouchEffect()V

    goto/16 :goto_0
.end method

.method public onItemUpdateCompleted()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemUpdateCompleted mListOrder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ALPHABETICAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->loadItems(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;)V

    :cond_0
    return-void
.end method

.method public onItemUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 4

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemUpdated:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->HIDDEN:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v2, "onItemUpdated fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->isInAppsList(Lcom/sec/daliviews/views/Item;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inDefaultList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mLocaleChanging:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PagedListAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PagedListAdapter;->reorderItems()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setScrollEffect()V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v2, "no reorderItems"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onItemsDisplaced([Lcom/sec/daliviews/dragAndDrop/DisplacedItem;)V
    .locals 18

    sget-object v15, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v16, "onItemsDisplaced AppsListener"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    array-length v15, v0

    if-nez v15, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v1, p1

    array-length v11, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v11, :cond_9

    aget-object v3, v1, v6

    iget-object v8, v3, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mItem:Lcom/sec/daliviews/views/Item;

    check-cast v8, Lcom/sec/android/app/launcher/data/LauncherItem;

    iget v15, v3, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerDbId:I

    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    iget-object v2, v3, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mItem:Lcom/sec/daliviews/views/Item;

    check-cast v2, Lcom/sec/android/app/launcher/data/DataItemBase;

    iget v15, v3, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldContainerType:I

    invoke-virtual {v2, v15}, Lcom/sec/android/app/launcher/data/DataItemBase;->setContainerType(I)V

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/DataItemBase;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/sec/daliviews/views/NativeViewBase;->unparentAndDestroy()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/DataItemBase;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Lcom/sec/android/app/launcher/data/DataManager;->deleteItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)V

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    iget v15, v3, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerType:I

    sget-object v16, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    iget v15, v3, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewCellX:I

    iget v0, v3, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewCellY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListColumnCount:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    add-int v15, v15, v16

    iget v0, v3, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerDbId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->setCustomPosition(II)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget v15, v3, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerType:I

    sget-object v16, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget v15, v3, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewCellX:I

    iget v0, v3, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewCellY:I

    move/from16 v16, v0

    const v17, 0x7f0c0027

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    mul-int v16, v16, v17

    add-int v15, v15, v16

    iget v0, v3, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerDbId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->setCustomPosition(II)V

    iget v15, v3, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldContainerDbId:I

    iget v0, v3, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerDbId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    sget-object v16, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->ALPHABETICAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_3

    :cond_6
    iget v15, v3, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerDbId:I

    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    if-nez v12, :cond_7

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget v15, v3, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerDbId:I

    invoke-virtual {v5, v15, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    sget-object v15, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "NewContainerType:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v3, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerType:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Lcom/sec/android/app/launcher/data/DataManager;->updateDisplacedItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;)V

    :cond_a
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v7, v15, :cond_0

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v15, v4, v10}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->onItemsDisplaced(ILjava/util/List;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public onItemsUpdated(Ljava/util/List;)V
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

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onItemsUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mLocaleChanging:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PagedListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->loadItems(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setScrollEffect()V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNeedReorder:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->reorderItemsOnRequest()V

    :cond_2
    return-void
.end method

.method public onLocaleChangeCompleted()V
    .locals 8

    const/4 v7, 0x0

    const-string v4, "Locale"

    const-string v5, "onLocaleChangeCompleted"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    sget-object v6, Lcom/sec/android/app/launcher/data/DataManager$SortType;->ITEMS_TO_SHOW_ONLY:Lcom/sec/android/app/launcher/data/DataManager$SortType;

    invoke-virtual {v4, v5, p0, v7, v6}, Lcom/sec/android/app/launcher/data/DataManager;->getItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;ZLcom/sec/android/app/launcher/data/DataManager$SortType;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->buildItems(Ljava/util/Collection;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    sget-object v6, Lcom/sec/android/app/launcher/data/DataManager$SortType;->ITEMS_NOT_TO_SHOW_ONLY:Lcom/sec/android/app/launcher/data/DataManager$SortType;

    invoke-virtual {v4, v5, p0, v7, v6}, Lcom/sec/android/app/launcher/data/DataManager;->getItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;ZLcom/sec/android/app/launcher/data/DataManager$SortType;)Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHiddenItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHiddenItemList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDisabledSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    sget-object v6, Lcom/sec/android/app/launcher/data/DataManager$SortType;->ALL_ITEMS:Lcom/sec/android/app/launcher/data/DataManager$SortType;

    invoke-virtual {v4, v5, p0, v7, v6}, Lcom/sec/android/app/launcher/data/DataManager;->getItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;ZLcom/sec/android/app/launcher/data/DataManager$SortType;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDisabledItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDisabledItemList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->loadItems(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setupPageIndicator()V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-direct {p0, v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getSavedPageNumber(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    :cond_0
    iput-boolean v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mLocaleChanging:Z

    return-void
.end method

.method public onNativeInit()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->initUIAnimation()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setupViews()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->cancelFastScroll()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->closeOpenFolder(Z)Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mClosedFromLongPress:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragCancel()V

    :cond_1
    return-void
.end method

.method public onResizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSavedState:Landroid/os/Bundle;

    const/4 v1, 0x0

    const-string v3, "apps_list_type"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "apps_list_mode"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setCurrentPage(I)V

    :cond_2
    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRestoreInstanceState listMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListTypeAndMode(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;)V

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchEffectIcon:Lcom/sec/daliviews/views/IconView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->cleanupTouchEffect()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->snapToCurrentPage(F)V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mClosedFromLongPress:Z

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mWillSwitchFirstTimeAfterResume:Z

    sget-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLiveIconEnabled:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->triggerLiveIconAnimationInAdapter(Lcom/sec/daliviews/views/Adapter;Z)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->SELECT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "apps_list_type"

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "apps_list_mode"

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_2

    const-string v0, "apps_page_number"

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public refreshContentDescriptions()V
    .locals 8

    const v7, 0x7f0d0029

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v4, 0x7f0d008e

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/TextView;->setContentDescription(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v4, 0x7f0d003c

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/TextView;->setContentDescription(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/PageIndicator;->reloadDescriptions(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public reorderItemsOnRequest()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PagedListAdapter;->refresh()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PagedListAdapter;->reorderItems()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setNeedReorder(Z)V

    return-void
.end method

.method public requestMoveToPageAfterZoom(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mMoveToPageAfterZoom:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAnimatePageChange:Z

    return-void
.end method

.method public saveAppsGridSize(Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;)V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "apps_grid_size"

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->ordinal()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public selectAllInFolder()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getActiveFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSelectionTargetFolder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPreSelectedApps:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setItemChecked(Lcom/sec/daliviews/views/Item;Z)V

    goto :goto_0
.end method

.method public selectAllInPage()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/PagedListAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPreSelectedApps:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setItemChecked(Lcom/sec/daliviews/views/Item;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public selectAllItems()V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNewlySelectedApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/PagedListAdapter;->getItems()Ljava/util/List;

    move-result-object v2

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

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPreSelectedApps:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setItemChecked(Lcom/sec/daliviews/views/Item;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAccessibilityMode(Z)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setAccessibilityMode(Z)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/FixedPageView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/FixedPageView;->setAccessibilityMode(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setAppSelectionMode(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$3;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setFolderDragEventInterest(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->CUSTOMISABLE:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Lcom/sec/android/app/launcher/data/FolderItem;->setDragEventInterest(I)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFolderItemDragMode(ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->setFolderItemDragMode(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$1;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setLandscapeEffect()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    const v2, 0x7f0a0031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f0a0032

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/daliviews/views/PagedAdapterView;->setLandscapeEffectParams(FF)V

    :cond_0
    return-void
.end method

.method public setListMode(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListTypeAndMode(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;)V

    return-void
.end method

.method public setListOrder(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    invoke-static {v0, p1}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->storeCurrentPage()V

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListOrder:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->saveListOrder()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->changeListOrder(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListOrder;)V

    goto :goto_0
.end method

.method public setListType(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListTypeAndMode(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;)V

    return-void
.end method

.method public setListTypeAndMode(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    iget-boolean v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomAnimInProgress:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-static {p1, v4}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-static {p2, v4}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    move v0, v2

    :goto_2
    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {p2, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mIsModeChangeEditToNormal:Z

    :cond_2
    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->storeCurrentPage()V

    :cond_4
    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {p2, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v2, v5, v5}, Lcom/sec/daliviews/views/PagedAdapterView;->setLandscapeEffectParams(FF)V

    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateDefaultViewMode(Z)V

    :cond_6
    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListType:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->loadItems(Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;)V

    :goto_4
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setupShadow()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$2;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_7
    move v1, v3

    goto :goto_1

    :cond_8
    move v0, v3

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNormalModeMargin:I

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/PagedAdapterView;->setNormalModeMargin(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setLandscapeEffect()V

    goto :goto_3

    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onAppsListModeChanged()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->zoomOutPageViewsIfNeeded()V

    goto :goto_4
.end method

.method public setLocaleChangeStarted()V
    .locals 2

    const-string v0, "Locale"

    const-string v1, "setLocaleChangeStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mLocaleChanging:Z

    return-void
.end method

.method public setNeedReorder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNeedReorder:Z

    return-void
.end method

.method public setRootViewSensitivity(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ContainerView;->setSensitive(Z)V

    :cond_0
    return-void
.end method

.method public setScrollEffect()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public setScrollEffect(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setScrollEffect(I)V

    :cond_0
    return-void
.end method

.method public setSkipReorder(Lcom/sec/daliviews/views/Item;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCustomContainerId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getNumberOfItems(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSkipReorder:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSkipReorder:Z

    goto :goto_0
.end method

.method public setUninstallBadge(ZZ)V
    .locals 6

    iget-boolean v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapterAttached:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getActiveFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getActiveFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v5, "no activeFolder items"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v3, v0, p1, v4}, Lcom/sec/android/app/launcher/views/HomeItemView;->setUninstallView(Lcom/sec/android/app/launcher/data/HomeItem;ZZ)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/sec/android/app/launcher/activities/AppsPresenter$21;

    invoke-direct {v5, p0, p2, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$21;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;ZZ)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AP.setVis("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    const-string v1, "INV"

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mVisibility:I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v1, :cond_2

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->attachRootView()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->attachAdapterIfNeeded()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateTopBar()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->UNINSTALL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v1, v4, :cond_1

    :cond_0
    iget v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomAnimTime:F

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v5, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v1, v5, :cond_4

    move v1, v2

    :goto_1
    iget v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNumberOfAdditionalPagesInEditMode:I

    invoke-direct {p0, v4, v1, v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->zoomOutPageViews(FZI)V

    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-nez p1, :cond_6

    :goto_3
    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setSensitive(Z)V

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    :cond_2
    return-void

    :cond_3
    const-string v1, "VIS"

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->storeCurrentPage()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->detachRootViewIfNeeded()V

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_3
.end method

.method public setVisibilityAnimated(ILcom/sec/android/app/launcher/utils/FadeDuration;Z)V
    .locals 13

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRootAttached:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return setVisibilityAnimated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRootAttached:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vis:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AP.setVisAnim("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const-string v0, "INV"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AP:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AV:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Adapter:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapterAttached:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mVisibility:I

    if-ne v0, p1, :cond_5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v1, "Already invisible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "VIS"

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    iput p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mVisibility:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_8
    if-nez p1, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->attachRootView()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->attachAdapterIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSetVisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_4
    if-nez p1, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnimType:I

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/views/PageIndicator;->setVisibilityAnimated(IF)V

    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setAnimStartPos()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsIconPos:Landroid/graphics/Rect;

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v12

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsIconPos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const v1, 0x7f0a0002

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsIconPos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const v1, 0x7f0a0002

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTransitionInProgress:Z

    const/4 v0, 0x1

    if-ne v12, v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/utils/FadeDuration;->getInDuration()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsIconPos:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsIconPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    const v4, 0x3e19999a    # 0.15f

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/daliviews/views/PagedAdapterView;->fadeIn(FFFFZ)V

    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getSavedScrollEffect()I

    move-result v10

    const/4 v8, 0x0

    sget-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_NORMAL:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->ordinal()I

    move-result v0

    if-eq v10, v0, :cond_c

    sget-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_NORMAL_NOWRAP:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->ordinal()I

    move-result v0

    if-eq v10, v0, :cond_c

    sget-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_FADE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->ordinal()I

    move-result v0

    if-eq v10, v0, :cond_c

    sget-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_ZOOMOUT:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->ordinal()I

    move-result v0

    if-ne v10, v0, :cond_d

    :cond_c
    iget v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNormalModeMargin:I

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v0, v8}, Lcom/sec/daliviews/views/PagedAdapterView;->setNormalModeMargin(I)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v11

    if-eqz v11, :cond_e

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getShadowOffset()F

    move-result v1

    invoke-virtual {v11, v0, v1}, Lcom/sec/daliviews/effects/ShadowEffect;->setOffset(FF)V

    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz v11, :cond_f

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Lcom/sec/daliviews/effects/ShadowEffect;->setVisible(Z)V

    :cond_f
    :goto_6
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mUpdateEditButton:Z

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mUpdateEditButton:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopAtoZButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditButton:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTopEditDone:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_12
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNeedReorder:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->reorderItemsOnRequest()V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSetVisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/utils/FadeDuration;->getInDuration()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsIconPos:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v7

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsIconPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    const v4, 0x3e19999a    # 0.15f

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/daliviews/views/PagedAdapterView;->fadeIn(FFFFZ)V

    goto/16 :goto_5

    :cond_15
    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnimType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapterAttached:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTransitionInProgress:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnim2_Scale:F

    iget v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnim2_EntryDelay:F

    iget v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnim2_EntryDuration:F

    iget-boolean v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mWillSwitchFirstTimeAfterResume:Z

    invoke-virtual/range {v0 .. v5}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityScaleAnimated(IFFFZ)V

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mWillSwitchFirstTimeAfterResume:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mWillSwitchFirstTimeAfterResume:Z

    goto/16 :goto_5

    :cond_16
    if-eqz v11, :cond_f

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/sec/daliviews/effects/ShadowEffect;->setVisible(Z)V

    goto :goto_6

    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnimType:I

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PageIndicator;->setVisibility(I)V

    :cond_18
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setAnimStartPos()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsIconPos:Landroid/graphics/Rect;

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v12

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsIconPos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const v1, 0x7f0a0002

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsIconPos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const v1, 0x7f0a0002

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTransitionInProgress:Z

    const/4 v0, 0x1

    if-ne v12, v0, :cond_1a

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/utils/FadeDuration;->getOutDuration()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsIconPos:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsIconPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    const/4 v4, 0x0

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/daliviews/views/PagedAdapterView;->fadeOut(FFFFZ)V

    :cond_19
    :goto_7
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTransitionInProgress:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->detachRootViewIfNeeded()V

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v1, "AP.setVisibilityAnimated(INVISIBLE), views not ready yet***"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/utils/FadeDuration;->getOutDuration()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsIconPos:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v7

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsIconPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    const/4 v4, 0x0

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/daliviews/views/PagedAdapterView;->fadeOut(FFFFZ)V

    goto :goto_7

    :cond_1b
    iget v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnimType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTransitionInProgress:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnim2_Scale:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsEntryAnim2_LeaveDuration:F

    iget-boolean v5, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mWillSwitchFirstTimeAfterResume:Z

    invoke-virtual/range {v0 .. v5}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityScaleAnimated(IFFFZ)V

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mWillSwitchFirstTimeAfterResume:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mWillSwitchFirstTimeAfterResume:Z

    goto :goto_7
.end method

.method public sortAlphabeticalAndSaveDB()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$33;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$33;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sortAlphabeticalIntegratedAndSaveDB()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$34;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$34;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sortLocale(Ljava/util/List;)V
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

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->APPS_COMPARATOR:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsAlphabeticalComparator;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsAlphabeticalComparator;->updateCollator()V

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->APPS_COMPARATOR:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsAlphabeticalComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public startDeleteItemAnimation(Lcom/sec/android/app/launcher/data/HomeItem;)V
    .locals 7

    const/high16 v1, 0x3f000000    # 0.5f

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v3, "startDeleteItemAnimation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v2

    const v3, 0x7f040023

    invoke-static {v2, v3}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v0

    const/4 v4, 0x7

    const/4 v5, 0x1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/daliviews/animation/NativeAnimation;->setPivot(FFFIZ)V

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$19;

    invoke-direct {v1, p0, p1, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$19;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/data/HomeItem;Lcom/sec/daliviews/animation/NativeAnimation;)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->addListener(Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/views/HomeItemView;->isValidPeer()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->isValidPeer()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v2, "mDeleteItemAnimation.start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->setRecyclable(Z)V

    invoke-virtual {v0, v6}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v2, "animation is not started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/views/PagedListAdapter;->removeItem(Lcom/sec/daliviews/views/Item;)Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PagedListAdapter;->reorderItems()V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->destroy()V

    goto :goto_0
.end method

.method public storeCurrentPage()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setCurrentPage(I)V

    goto :goto_0
.end method

.method public surfaceChanged()V
    .locals 15

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0b00e5

    iput v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentMode:I

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentMode:I

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/PagedAdapterView;->setDefaultMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PagedAdapterView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v11

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0a001d

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    const v0, 0x7f0a0018

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    const v0, 0x7f0a001a

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v3, 0x7f0a001c

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0a001b

    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v11, v0, v3, v4, v5}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mNormalModeMargin:I

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/layouts/PageLayout;->setNormalModeMargin(I)V

    const v0, 0x7f0a0048

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v13, v0, v3, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomScale:F

    const v0, 0x7f0a0045

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v13, v0, v3, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomOffsetX:F

    const v0, 0x7f0a0046

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v13, v0, v3, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomOffsetY:F

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomedOut:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomOffsetX:F

    iget v4, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mZoomOffsetY:F

    invoke-virtual {v0, v3, v4}, Lcom/sec/daliviews/views/PagedAdapterView;->setZoomOutPageOffset(FF)V

    :cond_1
    iget v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListColumnCount:I

    iget v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsListRowCount:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual/range {v0 .. v7}, Lcom/sec/daliviews/views/PagedAdapterView;->setGridLayoutParams(IIIIIII)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->changeGridSize(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v14

    if-eqz v14, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getShadowOffset()F

    move-result v3

    invoke-virtual {v14, v0, v3}, Lcom/sec/daliviews/effects/ShadowEffect;->setOffset(FF)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v0, v11}, Lcom/sec/daliviews/views/PagedAdapterView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateAtoZButtonLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateEditButtonLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateDoneButtonLayout()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsContentRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v12

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v12, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0, v10}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v9

    check-cast v9, Lcom/sec/daliviews/views/FixedPageView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/sec/daliviews/views/FixedPageView;->setCurrentOrientation(I)V

    invoke-virtual {v9}, Lcom/sec/daliviews/views/FixedPageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, v9}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updatePageView(Lcom/sec/daliviews/views/FixedPageView;)V

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    const v0, 0x7f0b00e4

    iput v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mCurrentMode:I

    goto/16 :goto_1

    :cond_4
    const v0, 0x7f0a001d

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    const v0, 0x7f0a0018

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    const/4 v0, 0x0

    const v3, 0x7f0a001c

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    const v5, 0x7f0a0019

    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v11, v0, v3, v4, v5}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v14

    if-eqz v14, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getShadowOffset()F

    move-result v3

    invoke-virtual {v14, v0, v3}, Lcom/sec/daliviews/effects/ShadowEffect;->setOffset(FF)V

    goto/16 :goto_2

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Lcom/sec/daliviews/effects/ShadowEffect;->setVisible(Z)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$32;

    invoke-direct {v3, p0, v9}, Lcom/sec/android/app/launcher/activities/AppsPresenter$32;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/daliviews/views/FixedPageView;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageIndicator;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v11

    const v0, 0x7f0a00e8

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v3, 0x0

    const v4, 0x7f0a00e9

    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0a0043

    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v11, v0, v3, v4, v5}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0, v11}, Lcom/sec/daliviews/views/PageIndicator;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v3, v0}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->updateOpenFolder(Z)V

    :cond_8
    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v0, v8, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_9

    iget v0, v8, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-nez v0, :cond_a

    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateAtoZButtonLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateEditButtonLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateDoneButtonLayout()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsContentRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->changeGridSizeUsingDefaultMode()V

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public updateAppsPosAndSaveDB(Z)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$23;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$23;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public updateItemCustomPosition(Lcom/sec/daliviews/views/Item;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->findCustomPosForItem(Lcom/sec/daliviews/views/Item;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter;->mSrcType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/app/launcher/data/DataManager;->updateItemsPositions(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;

    const-string v2, "no update pos list"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
