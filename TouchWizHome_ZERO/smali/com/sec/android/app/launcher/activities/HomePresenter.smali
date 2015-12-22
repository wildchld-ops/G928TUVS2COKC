.class public Lcom/sec/android/app/launcher/activities/HomePresenter;
.super Lcom/sec/android/app/launcher/activities/PresenterBase;
.source "HomePresenter.java"

# interfaces
.implements Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;
.implements Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;
.implements Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;
.implements Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;
.implements Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;
.implements Lcom/sec/daliviews/views/AdapterView$OnItemTouchListener;
.implements Lcom/sec/android/app/launcher/data/DataManager$ILoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/HomePresenter$35;,
        Lcom/sec/android/app/launcher/activities/HomePresenter$GridSize;,
        Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;,
        Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;,
        Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;,
        Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;,
        Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;,
        Lcom/sec/android/app/launcher/activities/HomePresenter$PageFilter;,
        Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridState;,
        Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;
    }
.end annotation


# static fields
.field public static final APPS_ENTRY_ANIM_SCALE:I = 0x0

.field public static final APPS_ENTRY_ANIM_SCALE_FADE:I = 0x1

.field private static final CHANGE_GRID_ANIMATE_DURATION:F = 0.0f

.field private static final HOME_GRID_MAX_ROWS:I = 0x5

.field private static final INTENT_ZEROPAGE:Ljava/lang/String; = "com.samsung.app.launcher.HOME_ZEROPAGE"

.field private static final METADATA_ZEROPAGE:Ljava/lang/String; = "com.samsung.launcher.zeropage.metadata"

.field private static final MSG_ACTION:Ljava/lang/String; = "action"

.field public static NEW_HOME_COLUMNS:I = 0x0

.field public static NEW_HOME_ROWS:I = 0x0

.field public static PREVIOUS_HOME_COLUMNS:I = 0x0

.field public static PREVIOUS_HOME_ROWS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HomePresenter"

.field private static final ZERO_IMAGE_PATH:Ljava/lang/String; = "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/briefing.jpg"

.field private static mSetPosition:I

.field private static mZeropageAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/launcher/data/ZeroPageListItem;",
            ">;"
        }
    .end annotation
.end field

.field private static supportLiveViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DND_HEADER:Ljava/lang/String;

.field private final NEXT_INDEX_OF_ZEROPAGE:I

.field private final ZEROPAGE_COUNT:I

.field private blockInterval:I

.field private mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

.field private mAppsEntryAnim2_EntryDelay:F

.field private mAppsEntryAnim2_EntryDuration:F

.field private mAppsEntryAnim2_LeaveDelay:F

.field private mAppsEntryAnim2_LeaveDuration:F

.field private mAppsEntryAnim2_Scale:F

.field private mAppsEntryAnimType:I

.field private mBackButtonPressedWhileDragging:Z

.field private mBlockPageAnnouncement:Z

.field private mCancelChangeGrid:Z

.field private mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

.field private mCancelOnScreenGrid:Z

.field private mCaptureDateTime:Ljava/lang/String;

.field protected mChangeGridHandler:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;

.field protected final mChangeGridThread:Landroid/os/HandlerThread;

.field private mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

.field private mCurrentNumberOfEventPage:I

.field private mCurrentNumberOfWorkspace:I

.field private mCurrentPageIndex:I

.field private mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

.field private mDesktopPageIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDoNotReorderPage:Z

.field private mDoneChangeGrid:Z

.field private mDoneOnScreenGrid:Z

.field private mDownMotionX:F

.field private mDragFromWidgetList:Z

.field private mDragLocationListener:Lcom/sec/daliviews/views/AdapterView$dragLocationListener;

.field private mDragModeDropPage:Lcom/sec/daliviews/views/PageView;

.field private mDragModeNewPage:Lcom/sec/daliviews/views/PageView;

.field private mDragPageId:I

.field private mDragStartPage:I

.field private mDragStartedFromFoderItem:Lcom/sec/android/app/launcher/data/FolderItem;

.field private mDraggedView:Lcom/sec/daliviews/views/NativeViewBase;

.field private mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

.field private mFadeListener:Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;

.field private mFirstPageID:I

.field private mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

.field private final mHandler:Landroid/os/Handler;

.field public mHomeIndicatorImage:Landroid/graphics/drawable/Drawable;

.field mHomePageBottom:Lcom/sec/daliviews/views/ContainerView;

.field private mHomePageBottomRoot:Lcom/sec/daliviews/views/ContainerView;

.field private mHomePageBottomRootAttached:Z

.field private mHomePageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

.field private mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

.field private mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

.field private mHomeRootAttached:Z

.field private mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

.field private mInvalidDropPageFlipDuration:F

.field private mIsChangedPageCountOnGrid:Z

.field private mIsEnableCapture:Z

.field private mIsPageMoving:Z

.field private mIsScrollStart:Z

.field private mLastAccessibilityReportedPage:I

.field private mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

.field public mMockupIndicatorImage:Landroid/graphics/drawable/Drawable;

.field private mMoveToFavorite:Z

.field private mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedToCreateNewPage:Z

.field private mNewPageItem:Lcom/sec/android/app/launcher/data/LauncherItem;

.field private mNewPageMockup:Lcom/sec/daliviews/views/PageView;

.field private mNewPageMockupIcon:Lcom/sec/daliviews/views/ImageView;

.field private mNewScrollEffectMode:I

.field public mNormalIndicatorImage:Landroid/graphics/drawable/Drawable;

.field private mNormalSwitchListener:Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;

.field private mNotZoomablePageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/PageView;",
            ">;"
        }
    .end annotation
.end field

.field private mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

.field private mOnNewPageMockup:Z

.field private mOpenFolderPageChangeOnDragOutEnable:Z

.field private mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

.field private mPageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

.field private mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

.field private mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

.field private mPageIndicatorMarginBottomDrag:I

.field private mPageIndicatorMarginBottomEditPage:I

.field private mPageIndicatorMarginBottomNormal:I

.field private mPageIndicatorMarginBottomScreenGrid:I

.field private mPageItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

.field private mPageLongPressListener:Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;

.field private mPagePresenterNeedToBeUpdated:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/launcher/activities/PagePresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/launcher/activities/PagePresenter;",
            ">;"
        }
    .end annotation
.end field

.field private mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

.field private mPageSwapDuration:F

.field private mPageSwapDurationPerPage:F

.field private mPageToMove:I

.field private mPageToMoveOnInvalidDrop:I

.field private mPageTransitTime:F

.field private mPagingTouchSlop:I

.field private mPauseState:Z

.field private mPendingSwitchToNormalMode:Z

.field private mRearrangementDelay:F

.field private mSavedState:Landroid/os/Bundle;

.field private mScaleFadeListener:Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;

.field private mShowToastMsg:Z

.field private mSpan:F

.field private mTakeScreenshot:Z

.field private mTempPagePresenter:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/launcher/activities/PagePresenter;",
            ">;"
        }
    .end annotation
.end field

.field private mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

.field private mTransitionInProgress:Z

.field private mUpdateEditMode:Z

.field private mViewRecycler:Lcom/sec/daliviews/views/ViewRecycler;

.field private mVisibility:I

.field private mWidgetOpenFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

.field private mWillSwitchFirstTimeAfterResume:Z

.field private mZeroActivityLaunched:Z

.field private mZeroPageBgScaleAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

.field private mZeroPageBgScaleAnimset:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field public mZeroPageIndicatorImage:Landroid/graphics/drawable/Drawable;

.field private mZoomAnimationInProgress:Z

.field private mZoomOutMode:Z

.field private final mZoomablePageIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mchangeGridFiverow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    sput v3, Lcom/sec/android/app/launcher/activities/HomePresenter;->PREVIOUS_HOME_ROWS:I

    sput v3, Lcom/sec/android/app/launcher/activities/HomePresenter;->PREVIOUS_HOME_COLUMNS:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->supportLiveViews:Ljava/util/HashMap;

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->supportLiveViews:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.clockpackage"

    const v2, 0x7f03003c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeropageAppList:Ljava/util/List;

    sput v3, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSetPosition:I

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    new-instance v6, Lcom/sec/android/app/launcher/activities/HomePresenter$PageFilter;

    invoke-direct {v6, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter$PageFilter;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter$1;)V

    invoke-direct {p0, v6}, Lcom/sec/android/app/launcher/activities/PresenterBase;-><init>(Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;)V

    sget v6, Lcom/sec/android/app/launcher/activities/LauncherApp;->ZERO_PAGENUM:I

    iput v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->ZEROPAGE_COUNT:I

    iget v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->ZEROPAGE_COUNT:I

    iput v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEXT_INDEX_OF_ZEROPAGE:I

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottomRoot:Lcom/sec/daliviews/views/ContainerView;

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    const/4 v6, 0x4

    iput v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mVisibility:I

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    const v6, 0x3e4ccccd    # 0.2f

    iput v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mInvalidDropPageFlipDuration:F

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMoveToFavorite:Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragFromWidgetList:Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mBackButtonPressedWhileDragging:Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mBlockPageAnnouncement:Z

    const/16 v6, 0x1f4

    iput v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->blockInterval:I

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    sget-object v6, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v6, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v6, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeNewPage:Lcom/sec/daliviews/views/PageView;

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeDropPage:Lcom/sec/daliviews/views/PageView;

    iput v9, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMove:I

    iput v9, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMoveOnInvalidDrop:I

    iput v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mLastAccessibilityReportedPage:I

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDraggedView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsChangedPageCountOnGrid:Z

    iput v9, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragPageId:I

    iput v9, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragStartPage:I

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragStartedFromFoderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsScrollStart:Z

    iput v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelChangeGrid:Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDoneChangeGrid:Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelOnScreenGrid:Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDoneOnScreenGrid:Z

    iput v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSpan:F

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNotZoomablePageViews:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDesktopPageIndex:Ljava/util/List;

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockupIcon:Lcom/sec/daliviews/views/ImageView;

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOnNewPageMockup:Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomAnimationInProgress:Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPendingSwitchToNormalMode:Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTransitionInProgress:Z

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroActivityLaunched:Z

    iput v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mRearrangementDelay:F

    iput v9, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewScrollEffectMode:I

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mWidgetOpenFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimset:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTakeScreenshot:Z

    iput-boolean v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsEnableCapture:Z

    const-string v6, "0"

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCaptureDateTime:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomOutMode:Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPauseState:Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mUpdateEditMode:Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDoNotReorderPage:Z

    iput-boolean v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mWillSwitchFirstTimeAfterResume:Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenterNeedToBeUpdated:Ljava/util/List;

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    new-instance v6, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;

    invoke-direct {v6, p0, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/HomePresenter$1;)V

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNormalSwitchListener:Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;

    new-instance v6, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;

    invoke-direct {v6, p0, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/HomePresenter$1;)V

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFadeListener:Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNeedToCreateNewPage:Z

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageItem:Lcom/sec/android/app/launcher/data/LauncherItem;

    iput v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfWorkspace:I

    iput v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfEventPage:I

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSavedState:Landroid/os/Bundle;

    iput v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicatorMarginBottomNormal:I

    iput v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicatorMarginBottomDrag:I

    iput v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicatorMarginBottomEditPage:I

    iput v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicatorMarginBottomScreenGrid:I

    iput v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageSwapDuration:F

    iput v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageSwapDurationPerPage:F

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRootAttached:Z

    iput-boolean v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottomRootAttached:Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOpenFolderPageChangeOnDragOutEnable:Z

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mViewRecycler:Lcom/sec/daliviews/views/ViewRecycler;

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsPageMoving:Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mchangeGridFiverow:Z

    iput v9, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFirstPageID:I

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mShowToastMsg:Z

    iput v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnimType:I

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnim2_Scale:F

    iput v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnim2_EntryDuration:F

    iput v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnim2_LeaveDuration:F

    iput v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnim2_LeaveDelay:F

    iput v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnim2_EntryDelay:F

    new-instance v6, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;

    invoke-direct {v6, p0, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/HomePresenter$1;)V

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mScaleFadeListener:Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;

    new-instance v6, Lcom/sec/android/app/launcher/activities/HomePresenter$8;

    invoke-direct {v6, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter$8;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    new-instance v6, Lcom/sec/android/app/launcher/activities/HomePresenter$10;

    invoke-direct {v6, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter$10;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLongPressListener:Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;

    new-instance v6, Lcom/sec/android/app/launcher/activities/HomePresenter$11;

    invoke-direct {v6, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter$11;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragLocationListener:Lcom/sec/daliviews/views/AdapterView$dragLocationListener;

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottom:Lcom/sec/daliviews/views/ContainerView;

    const-string v6, "DragAndDropBinding"

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->DND_HEADER:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDataManager()Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0c002b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOpenFolderPageChangeOnDragOutEnable:Z

    const v4, 0x7f0a0239

    invoke-virtual {v1, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    iput v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageTransitTime:F

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getPageIndicatorHome()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeIndicatorImage:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getPageIndicatorDefault()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNormalIndicatorImage:Landroid/graphics/drawable/Drawable;

    const v4, 0x7f02005d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMockupIndicatorImage:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getPageIndicatorHeadlines()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageIndicatorImage:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const v4, 0x7f0a00f6

    invoke-virtual {v1, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mRearrangementDelay:F

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroid/os/HandlerThread;

    const-string v6, "changeGridThread"

    invoke-direct {v4, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridThread:Landroid/os/HandlerThread;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridThread:Landroid/os/HandlerThread;

    invoke-virtual {v4, v5}, Landroid/os/HandlerThread;->setPriority(I)V

    new-instance v4, Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    invoke-direct {v4, p0}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagingTouchSlop:I

    const v4, 0x7f0c0014

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnimType:I

    iget v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnimType:I

    if-ne v4, v5, :cond_1

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const v4, 0x7f0a0015

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnim2_Scale:F

    const v4, 0x7f0a0014

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnim2_EntryDuration:F

    const v4, 0x7f0a0017

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnim2_LeaveDuration:F

    const v4, 0x7f0a0016

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnim2_LeaveDelay:F

    const v4, 0x7f0a0013

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnim2_EntryDelay:F

    :cond_1
    return-void
.end method

.method private InitialZeroPage()Lcom/sec/android/app/launcher/views/HomePageView;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v3, 0x0

    new-instance v2, Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-direct {v2}, Lcom/sec/android/app/launcher/data/HomePageItem;-><init>()V

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/data/HomePageItem;->setContainerFilter(I)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/data/HomePageItem;->setPageOrder(I)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    const v4, 0x7f030036

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    invoke-virtual {v1, v11}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->setInterestedInStageEvent(Z)V

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-object v4, p0

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;-><init>(Lcom/sec/daliviews/views/PageView;Lcom/sec/android/app/launcher/data/HomePageItem;ZLcom/sec/android/app/launcher/activities/HomePresenter;ZZ)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->setPagePresenter(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    new-instance v7, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    const/16 v0, 0x11

    invoke-direct {v7, v10, v10, v0}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v7}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v0

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/HomePageItem;->getDbId()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->setContainerTypeAndId(II)V

    invoke-virtual {v1, v11}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->setIsNewPageMockup(Z)V

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomePresenter$29;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter$29;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v8

    invoke-virtual {v8, v9, v9}, Lcom/sec/daliviews/views/NativeViewBase;->setScale(FF)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/sec/daliviews/views/NativeViewBase;->setYPosition(F)V

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomePresenter$30;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter$30;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->setOnAttachedToStageListener(Lcom/sec/android/app/launcher/views/HomeZeroPageView$OnAttachedToStageListener;)V

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->iszerofile:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->checkZeroPageImage()V

    sput-boolean v3, Lcom/sec/android/app/launcher/activities/LauncherActivity;->iszerofile:Z

    :cond_0
    return-object v1
.end method

.method private RestoreScrollEffect()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewScrollEffectMode:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewScrollEffectMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->applyScrollEffect(I)V

    :cond_0
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewScrollEffectMode:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getSavedScrollEffect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/PageLayout;->setScrollEffect(I)V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageIndicator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;)Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/MiniPagePresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNeedToCreateNewPage:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNeedToCreateNewPage:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/data/LauncherItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageItem:Lcom/sec/android/app/launcher/data/LauncherItem;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/data/LauncherItem;)Lcom/sec/android/app/launcher/data/LauncherItem;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageItem:Lcom/sec/android/app/launcher/data/LauncherItem;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/launcher/activities/HomePresenter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMoveOnInvalidDrop:I

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/launcher/activities/HomePresenter;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMoveOnInvalidDrop:I

    return p1
.end method

.method static synthetic access$1708(Lcom/sec/android/app/launcher/activities/HomePresenter;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMoveOnInvalidDrop:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMoveOnInvalidDrop:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/launcher/activities/HomePresenter;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mInvalidDropPageFlipDuration:F

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->RestoreScrollEffect()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomAnimationInProgress:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPendingSwitchToNormalMode:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPendingSwitchToNormalMode:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageViewContainer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/launcher/activities/HomePresenter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfEventPage:I

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchPageIndicatorMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageMargins()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/TopFivePresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomOutMode:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDoNotReorderPage:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDoNotReorderPage:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->reorderPages()V

    return-void
.end method

.method static synthetic access$3400(Lcom/sec/android/app/launcher/activities/HomePresenter;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDownMotionX:F

    return v0
.end method

.method static synthetic access$3402(Lcom/sec/android/app/launcher/activities/HomePresenter;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDownMotionX:F

    return p1
.end method

.method static synthetic access$3500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsPageMoving:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsPageMoving:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/sec/android/app/launcher/activities/HomePresenter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagingTouchSlop:I

    return v0
.end method

.method static synthetic access$3700(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroActivityLaunched:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroActivityLaunched:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/sec/android/app/launcher/activities/HomePresenter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEXT_INDEX_OF_ZEROPAGE:I

    return v0
.end method

.method static synthetic access$3900(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeRealPreview;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mBlockPageAnnouncement:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mBlockPageAnnouncement:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/sec/android/app/launcher/activities/HomePresenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageIndicatorChange(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/daliviews/views/Adapter;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->triggerLiveIconAnimationInAdapter(Lcom/sec/daliviews/views/Adapter;Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsScrollStart:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsScrollStart:Z

    return p1
.end method

.method static synthetic access$4702(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsEnableCapture:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->performHomeMenu()V

    return-void
.end method

.method static synthetic access$4900(Lcom/sec/android/app/launcher/activities/HomePresenter;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getNumberWorkSpace()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMoveToFavorite:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMoveToFavorite:Z

    return p1
.end method

.method static synthetic access$5102(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragFromWidgetList:Z

    return p1
.end method

.method static synthetic access$5202(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTransitionInProgress:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/data/DataManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sec/android/app/launcher/activities/HomePresenter;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSpan:F

    return v0
.end method

.method static synthetic access$5502(Lcom/sec/android/app/launcher/activities/HomePresenter;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSpan:F

    return p1
.end method

.method static synthetic access$5600(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->canStartPageEditMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/sec/android/app/launcher/activities/HomePresenter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mVisibility:I

    return v0
.end method

.method static synthetic access$5800(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/sec/android/app/launcher/activities/HomePresenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->showPageGrid(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;)Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->addNewPageOnChangingGrid()V

    return-void
.end method

.method static synthetic access$6200(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelChangeGrid:Z

    return v0
.end method

.method static synthetic access$6202(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelChangeGrid:Z

    return p1
.end method

.method static synthetic access$6300(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->runScaledModeForScreenGrid(Z)V

    return-void
.end method

.method static synthetic access$6400(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchZeroPageViewAttachedMode(Z)V

    return-void
.end method

.method static synthetic access$6500(Lcom/sec/android/app/launcher/activities/HomePresenter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    return v0
.end method

.method static synthetic access$6502(Lcom/sec/android/app/launcher/activities/HomePresenter;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    return p1
.end method

.method static synthetic access$6600(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTempPagePresenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/sec/android/app/launcher/activities/HomePresenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateShadowEffect(I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->postOnBackPressed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->showPageGrid(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->buildPageReorderingIndices()V

    return-void
.end method

.method static synthetic access$7000(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setHapticFeedBack(Z)V

    return-void
.end method

.method static synthetic access$7100(Lcom/sec/android/app/launcher/activities/HomePresenter;Landroid/content/res/Resources;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->startZeroPageZoomedOutMode(Landroid/content/res/Resources;FF)V

    return-void
.end method

.method static synthetic access$7200(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDoneChangeGrid:Z

    return v0
.end method

.method static synthetic access$7202(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDoneChangeGrid:Z

    return p1
.end method

.method static synthetic access$7302(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTakeScreenshot:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsChangedPageCountOnGrid:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsChangedPageCountOnGrid:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/sec/android/app/launcher/activities/HomePresenter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfWorkspace:I

    return v0
.end method

.method static synthetic access$7700(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/PagePresenter;IIIILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePage(Lcom/sec/android/app/launcher/activities/PagePresenter;IIIILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/launcher/activities/HomePresenter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMove:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/launcher/activities/HomePresenter;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMove:I

    return p1
.end method

.method private addCountWorkSpace(Lcom/sec/android/app/launcher/activities/PagePresenter;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/PageItem;->getContainerFilter()I

    move-result v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfWorkspace:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfWorkspace:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v0, v1, :cond_0

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsChangedPageCountOnGrid:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v2, "HOME"

    const/4 v3, 0x0

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfWorkspace:I

    int-to-long v4, v0

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->addUpdateContentDescription()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/PageItem;->getContainerFilter()I

    move-result v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EVENTTHEME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfEventPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfEventPage:I

    goto :goto_0
.end method

.method private addNewPageOnChangingGrid()V
    .locals 10

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    const/4 v8, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v1, v0, v8

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/launcher/activities/PagePresenter;

    if-eqz v7, :cond_0

    if-le v7, v1, :cond_0

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    :cond_0
    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getOutSideItems()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->AFTER_CURRENT:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->newPage(ILjava/util/List;Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;ZZZ)Lcom/sec/daliviews/views/PageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/launcher/activities/PagePresenter;

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/PageView;->setHapticFeedbackEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTempPagePresenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTempPagePresenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v9, v6}, Lcom/sec/android/app/launcher/activities/PagePresenter;->setNeedUpdateForChangeGrid(Z)V

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_5
    sget v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateShadowEffect(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageBackgrounds()V

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    :cond_6
    return-void
.end method

.method private attachRootView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRootAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRootAttached:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnimType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mVisibility:I

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setIgnoreDrawAppWidget(Z)V

    return-void
.end method

.method private buildPageReorderingIndices()V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNotZoomablePageViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDesktopPageIndex:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getContainerFilter()I

    move-result v3

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v5

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/views/PageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDesktopPageIndex:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNotZoomablePageViews:Ljava/util/List;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private canStartPageEditMode()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getContainerFilter()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EVENTTHEME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/views/PageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/daliviews/layouts/GridLayout;

    if-nez v3, :cond_3

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getContainerFilter()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/views/PageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v3, :cond_1

    :cond_3
    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->isFolderOpened()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsPageMoving:Z

    if-nez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkGridChangeForLiveIcon()V
    .locals 8

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v7}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/sec/daliviews/views/PageView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/sec/daliviews/views/Adapter;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    instance-of v6, v3, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->startAnim()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkOngoingChangeGrid(Landroid/os/Bundle;)V
    .locals 3

    const-string v1, "action"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridState;->DONE:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridState;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridState;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridHandler:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridHandler:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->checkOngoingChangeGrid(Landroid/os/Bundle;)V

    return-void
.end method

.method private checkZeroPageImage()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/briefing.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->saveHomeZeroPageScreenshots()V

    :cond_0
    return-void
.end method

.method private completeSwitchToZoomedOutPageMode()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNotZoomablePageViews:Ljava/util/List;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v2, v4, :cond_a

    const v2, 0x7f0a0251

    const/4 v4, 0x1

    const/4 v9, 0x1

    invoke-virtual {v12, v2, v4, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    :goto_1
    const v2, 0x7f0a0252

    const/4 v4, 0x1

    const/4 v9, 0x1

    invoke-virtual {v12, v2, v4, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v11

    const v2, 0x7f0a0239

    const/4 v4, 0x1

    const/4 v9, 0x1

    invoke-virtual {v12, v2, v4, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v5

    sget-boolean v2, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mStartScreenGrid:Z

    if-eqz v2, :cond_1

    const/4 v5, 0x0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v2, v4, :cond_b

    const v2, 0x7f0a0242

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :goto_2
    const v2, 0x7f0d0030

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v2, 0x7f0d0014

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v2, v4, :cond_c

    const v2, 0x7f0c0010

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v2, v4, :cond_2

    const v2, 0x7f0c0011

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    const v2, 0x7f0d0030

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setFlipTriggerForPages(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setAnimationDuration(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v2, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v2, v4, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentScrollPage()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/layouts/PageLayout;->forceFirstVisibleColumn(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v2, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockupIcon:Lcom/sec/daliviews/views/ImageView;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockupIcon:Lcom/sec/daliviews/views/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/views/PageView;->createDynamicItem(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/views/PageView;->setFocusableInTouchMode(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/views/PageViewContainer;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->addUpdateContentDescription()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateEditModeCheckBoxDescription()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    const v4, 0x7f0d0029

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const v15, 0x7f0d0013

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v9, v10

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/views/PageView;->setContentDescription(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v4, 0x1

    add-int/lit8 v9, v14, 0x1

    invoke-virtual {v2, v4, v9}, Lcom/sec/daliviews/layouts/PageLayout;->setGridSize(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    :cond_6
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2, v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->startZeroPageZoomedOutMode(Landroid/content/res/Resources;FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v10, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v9, v10, :cond_d

    const/4 v9, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v15, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v10, v15, :cond_e

    const/4 v10, 0x1

    :goto_5
    invoke-virtual/range {v2 .. v10}, Lcom/sec/daliviews/views/PageViewContainer;->switchToScaledMode(FZFILjava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    const v4, 0x7f0d0073

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/views/PageView;->updateBackground(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    new-instance v4, Lcom/sec/android/app/launcher/activities/HomePresenter$20;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter$20;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/layouts/PageLayout;->setOnPageChangeListener(Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getOnPageChangeListener()Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMoveToFavorite:Z

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToFavoritesPage()V

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/app/launcher/activities/HomePresenter$21;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter$21;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setAllPagesClickable(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    const v4, 0x7f0d0095

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->announceByTalkback(Ljava/lang/String;)V

    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomOutMode:Z

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_a
    const v2, 0x7f0a0250

    const/4 v4, 0x1

    const/4 v9, 0x1

    invoke-virtual {v12, v2, v4, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    goto/16 :goto_1

    :cond_b
    const v2, 0x7f0a0243

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto/16 :goto_2

    :cond_c
    const v2, 0x7f0c0011

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    goto/16 :goto_3

    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_5
.end method

.method private deleteAppWidget(Lcom/sec/android/app/launcher/data/AppWidgetItem;)V
    .locals 7

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetHost()Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v2, "WGDT"

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    new-instance v1, Lcom/sec/android/app/launcher/activities/HomePresenter$19;

    const-string v2, "deleteAppWidgetId"

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter$19;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Ljava/lang/String;Lcom/sec/android/app/launcher/data/AppWidgetItem;Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;)V

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter$19;->start()V

    :cond_0
    return-void
.end method

.method private deleteDisplacedItem(Lcom/sec/daliviews/views/Item;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->preDeleteSpecialItem(Lcom/sec/daliviews/views/Item;)V

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->unparentAndDestroy()V

    :cond_0
    instance-of v2, p1, Lcom/sec/android/app/launcher/data/DataItemBase;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/sec/android/app/launcher/data/DataItemBase;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/DataItemBase;->getDataConnector()Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->deleteItem(Lcom/sec/daliviews/views/Item;)I

    :cond_1
    return-void
.end method

.method private deleteItemsOnPage(Lcom/sec/android/app/launcher/activities/PagePresenter;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->preDeleteSpecialItem(Lcom/sec/daliviews/views/Item;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/app/launcher/data/DataManager;->deleteItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;)V

    goto :goto_0
.end method

.method private deletePageFromDb(Lcom/sec/android/app/launcher/data/PageItem;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_HOME_PAGES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/launcher/data/DataManager;->deleteItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)V

    return-void
.end method

.method private deletePageWithPrompt(Lcom/sec/android/app/launcher/activities/PagePresenter;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v2

    int-to-long v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->deleteItemsOnPage(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->deletePageFromDb(Lcom/sec/android/app/launcher/data/PageItem;)V

    goto :goto_0
.end method

.method private deleteSurfaceWidget(Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;)V
    .locals 7

    const-string v0, "SurfaceWidgetFlow"

    const-string v1, "destroying surface widget with delete bucket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v2, "WGDT"

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->INST:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->destroyWidget(Landroid/content/Context;Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;Z)V

    return-void
.end method

.method private enablePageGrids(Z)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/views/PageView;->enableGrid(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private enableZoomedOutPageMode()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDimView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/ContainerView;->setBackgroundColor(I)V

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1, v3}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityAnimated(IF)V

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomAnimationInProgress:Z

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->buildPageReorderingIndices()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "HomePresenter"

    const-string v3, "No desktop pages detected!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNotZoomablePageViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->hideNotZoomablePageViews()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->completeSwitchToZoomedOutPageMode()V

    move v1, v2

    goto :goto_0
.end method

.method private endResize()V
    .locals 1

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->resizeEnd()V

    invoke-virtual {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->resizeFinished()V

    return-void
.end method

.method private getBriefingDefaultBg()Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v0, 0x0

    const-string v2, "USA"

    sget-object v3, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f020048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "CHINA"

    sget-object v3, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f020047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v2, 0x7f020046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getNumberWorkSpace()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfWorkspace:I

    return v0
.end method

.method private getPageIndex(I)I
    .locals 4

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v3

    if-ne v3, p1, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getPageItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    sget-object v5, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_HOME_PAGES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/data/DataManager;->getItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    sget-object v5, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_HOME_PAGES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v4, p0, v5}, Lcom/sec/android/app/launcher/data/DataManager;->registerDataListener(Lcom/sec/android/app/launcher/data/DataManager$IDataListener;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3

    :cond_2
    new-instance v4, Lcom/sec/android/app/launcher/activities/HomePresenter$13;

    invoke-direct {v4, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter$13;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->reorderEventThemePage(Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/launcher/data/HomePageItem;->setHomePresenter(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    goto :goto_0
.end method

.method private getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getShadowEffect(I)Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v0

    return-object v0
.end method

.method private getZeroAppDefaultBg(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 13

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/16 v10, 0x80

    :try_start_0
    invoke-virtual {v5, p1, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    const-string v10, "com.samsung.launcher.zeropage.metadata"

    invoke-virtual {v0, v5, v10}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v10, "HomePresenter"

    const-string v11, "resParser is null"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    :goto_1
    const/4 v10, 0x0

    const-string v11, "apptitle"

    const/4 v12, 0x0

    invoke-interface {v8, v10, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    const/4 v10, 0x0

    const-string v11, "preview"

    const/4 v12, 0x0

    invoke-interface {v8, v10, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :cond_1
    :goto_2
    move-object v2, v1

    goto :goto_0

    :cond_2
    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getZeroPageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/launcher/data/ZeroPageListItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeropageAppList:Ljava/util/List;

    return-object v0
.end method

.method public static getZeroPosition()I
    .locals 1

    sget v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSetPosition:I

    return v0
.end method

.method private hideNotZoomablePageViews()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNotZoomablePageViews:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNotZoomablePageViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/PageView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/views/PageViewContainer;->detachView(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initialiseCancelDoneBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    :cond_0
    return-void
.end method

.method private initialiseOptionTray()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->setOptionTray()V

    :cond_0
    return-void
.end method

.method private initialiseZoomedOutPageMode()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomePresenter$3;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleListener;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/HomePresenter$1;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter$3;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/PageViewContainer;->setScaleDetector(Landroid/view/ScaleGestureDetector;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNormalSwitchListener:Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/PageViewContainer;->setNormalModeListener(Lcom/sec/daliviews/views/PageViewContainer$OnNormalModeSwitchListener;)V

    return-void
.end method

.method private isTopFiveItem(Lcom/sec/daliviews/views/Item;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v1

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private needToTakeScreenShot(Lcom/sec/daliviews/dragAndDrop/DisplacedItem;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerType:I

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget v2, p1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldContainerType:I

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldContainerType:I

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_4

    iget v2, p1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldContainerDbId:I

    if-ne v2, p2, :cond_4

    iget v2, p1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerType:I

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerDbId:I

    if-ne v2, p2, :cond_3

    iget v2, p1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldCellX:I

    iget v3, p1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewCellX:I

    if-ne v2, v3, :cond_3

    iget v2, p1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldCellY:I

    iget v3, p1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewCellY:I

    if-eq v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerType:I

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget v2, p1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerDbId:I

    if-ne v2, p2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private pauseScreen(I)V
    .locals 8

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setEnableHotWord(Z)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v6, p1}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sec/daliviews/views/PageView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/Adapter;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    instance-of v6, v2, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    instance-of v6, v5, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    if-eqz v6, :cond_3

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    :cond_3
    check-cast v2, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->onPause()V

    goto :goto_0

    :cond_4
    instance-of v6, v2, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    instance-of v6, v5, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    if-eqz v6, :cond_2

    check-cast v5, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->onPause()V

    goto :goto_0
.end method

.method private performHomeMenu()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomAnimationInProgress:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    :cond_0
    return-void
.end method

.method private postOnBackPressed()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomAnimationInProgress:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomOutMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->onBackPressed()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->onBackPressed()Z

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->cancelPinchMode()Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->isResizing()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->endResize()V

    or-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method private preDeleteSpecialItem(Lcom/sec/daliviews/views/Item;)V
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->deleteAppWidget(Lcom/sec/android/app/launcher/data/AppWidgetItem;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->deleteSurfaceWidget(Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;)V

    goto :goto_0
.end method

.method private removeCountWorkSpace(Lcom/sec/android/app/launcher/activities/PagePresenter;)V
    .locals 7

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/PageItem;->getContainerFilter()I

    move-result v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfWorkspace:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfWorkspace:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsChangedPageCountOnGrid:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v2, "HOME"

    const/4 v3, 0x0

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfWorkspace:I

    int-to-long v4, v0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->addUpdateContentDescription()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/PageItem;->getContainerFilter()I

    move-result v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EVENTTHEME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfEventPage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfEventPage:I

    goto :goto_0
.end method

.method private reorderEventThemePage(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    move-object v3, v2

    check-cast v3, Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->isEventThemePage(Lcom/sec/android/app/launcher/data/PageItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-void
.end method

.method private reorderPages()V
    .locals 13

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v11

    :try_start_0
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v6

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v10, v6}, Lcom/sec/daliviews/views/PageViewContainer;->getPageOrder(Lcom/sec/daliviews/views/PageView;)I

    move-result v3

    if-gez v3, :cond_2

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    :cond_2
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    invoke-interface {v9}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v7

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10, v5, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    invoke-interface {v10, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v7, v5}, Lcom/sec/android/app/launcher/data/PageItem;->setPageOrder(I)V

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/sec/android/app/launcher/activities/HomePresenter$1;

    invoke-direct {v12, p0, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter$1;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/data/PageItem;)V

    invoke-virtual {v10, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->addUpdateContentDescription()V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_6

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v7

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10, v5, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    invoke-interface {v10, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v7, v5}, Lcom/sec/android/app/launcher/data/PageItem;->setPageOrder(I)V

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/sec/android/app/launcher/activities/HomePresenter$2;

    invoke-direct {v12, p0, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter$2;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/data/PageItem;)V

    invoke-virtual {v10, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v10}, Lcom/sec/daliviews/views/PageViewContainer;->getDefaultPageIndex()I

    move-result v0

    if-gez v0, :cond_7

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    if-eqz v10, :cond_8

    const/4 v0, 0x1

    :cond_7
    :goto_4
    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setDefaultHome(I)V

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->layoutMiniPages()V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private resumeScreen(I)V
    .locals 10

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v8, p1}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/sec/daliviews/views/PageView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/sec/daliviews/views/Adapter;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    instance-of v8, v3, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v8, :cond_4

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v7

    instance-of v8, v7, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    :cond_3
    check-cast v3, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->onResume()V

    goto :goto_1

    :cond_4
    instance-of v8, v3, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v8, :cond_5

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v7

    instance-of v8, v7, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    if-eqz v8, :cond_2

    check-cast v7, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->onResume()V

    goto :goto_1

    :cond_5
    sget-boolean v8, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLiveIconEnabled:Z

    if-eqz v8, :cond_2

    instance-of v8, v3, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v8, :cond_2

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->startAnim()V

    goto :goto_1

    :cond_6
    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    if-ge p1, v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/launcher/activities/PagePresenter;

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/PagePresenter;->hasGoogleSearchWidget()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setEnableHotWord(Z)V

    goto :goto_0
.end method

.method private runScaledModeForScreenGrid(Z)V
    .locals 14

    const v13, 0x7f0a00b8

    const/4 v11, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v7, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v0, v7, :cond_3

    const v0, 0x7f0a0251

    invoke-virtual {v10, v0, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    :goto_0
    const v0, 0x7f0a0239

    invoke-virtual {v10, v0, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    if-eqz p1, :cond_5

    const v0, 0x7f0a0242

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_1
    const v0, 0x7f0d0030

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f0d0014

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v8, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v7, v8, :cond_6

    move v7, v2

    :goto_2
    if-eqz p1, :cond_8

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v12, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v8, v12, :cond_7

    move v8, v2

    :goto_3
    invoke-virtual/range {v0 .. v8}, Lcom/sec/daliviews/views/PageViewContainer;->switchToScaledMode(FZFILjava/lang/String;Ljava/lang/String;ZZ)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageViewContainer;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v9

    invoke-virtual {v9, v11, v11, v11, v11}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v0, v9}, Lcom/sec/daliviews/views/PageViewContainer;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageViewContainer;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageViewContainer;->getWidth()I

    move-result v8

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageViewContainer;->getHeight()I

    move-result v0

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v0, v12

    :goto_4
    invoke-virtual {v7, v11, v11, v8, v0}, Lcom/sec/daliviews/views/PageViewContainer;->setPosAndSize(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    if-nez p1, :cond_a

    :goto_5
    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->changeVisibilityScreenGridView(Z)V

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    return-void

    :cond_3
    const v0, 0x7f0a0250

    invoke-virtual {v10, v0, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    goto/16 :goto_0

    :cond_4
    const v0, 0x7f0a0253

    invoke-virtual {v10, v0, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    goto/16 :goto_0

    :cond_5
    const v0, 0x7f0a0244

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto/16 :goto_1

    :cond_6
    move v7, v11

    goto :goto_2

    :cond_7
    move v8, v11

    goto :goto_3

    :cond_8
    move v8, v11

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageViewContainer;->getHeight()I

    move-result v0

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    sub-int/2addr v0, v12

    goto :goto_4

    :cond_a
    move v2, v11

    goto :goto_5
.end method

.method private setAllPagesClickable(Z)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->isAlwaysClickable()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/PageView;->setClickable(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    return-void
.end method

.method private setAnimationDuration(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimationDuration(F)V

    :cond_0
    return-void
.end method

.method private setHapticFeedBack(Z)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/daliviews/views/PageView;->setHapticFeedbackEnabled(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setPagesFocusable(Z)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/views/PageView;->setFocusableInTouchMode(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setZeroPosition(I)V
    .locals 0

    sput p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSetPosition:I

    return-void
.end method

.method private setupDragItem(Landroid/content/Intent;)Lcom/sec/android/app/launcher/data/WidgetListItem;
    .locals 12

    const/4 v5, 0x0

    const/4 v11, -0x1

    const/4 v2, 0x1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/sec/android/app/launcher/utils/Utils;->getWidgetInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/sec/android/app/launcher/data/WidgetListItem;

    const/4 v1, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/data/WidgetListItem;-><init>(ZIILjava/lang/String;Ljava/lang/String;)V

    const-string v10, ""

    if-eqz v6, :cond_0

    iget-object v10, v6, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    :cond_0
    const v1, 0x7f0d00cf

    invoke-virtual {v8, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setSpanTextFormat(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setAppWidgetInfo(Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setPos(I)V

    invoke-virtual {v0, v11}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setCellX(I)V

    invoke-virtual {v0, v11}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setCellY(I)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setSpanX(I)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setSpanY(I)V

    invoke-virtual {v0, v10}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setTitle(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_WIDGETS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setDataSourceType(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setContainerType(I)V

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setItemType(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->onCreateItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/sec/android/app/launcher/data/WidgetListItem;->linkItemView(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-object v0
.end method

.method private setupEditBar()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;-><init>(Landroid/content/Context;Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setVisibility(I)V

    return-void
.end method

.method private setupFolderPresenter()V
    .locals 2

    sget-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportFolderItemMove:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/launcher/activities/HomeFolderPanelPresenter;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->registerFolderOpenListener(Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;-><init>(Lcom/sec/android/app/launcher/activities/PresenterBase;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    goto :goto_0
.end method

.method private setupMenuPresenter()V
    .locals 7

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v6}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int v0, v5, v6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    new-instance v3, Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-direct {v3}, Lcom/sec/android/app/launcher/data/HomePageItem;-><init>()V

    invoke-virtual {v3, p0}, Lcom/sec/android/app/launcher/data/HomePageItem;->setHomePresenter(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    const-string v5, " "

    invoke-virtual {v3, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setName(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    move-object v4, v3

    check-cast v4, Lcom/sec/android/app/launcher/data/PageItem;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_4
    const-string v5, " "

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/data/PageItem;->setName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setupPage(Lcom/sec/android/app/launcher/data/HomePageItem;ZZZ)Lcom/sec/android/app/launcher/views/HomePageView;
    .locals 11

    const/4 v10, 0x0

    const/4 v3, -0x1

    new-instance v1, Lcom/sec/android/app/launcher/views/HomePageView;

    invoke-direct {v1}, Lcom/sec/android/app/launcher/views/HomePageView;-><init>()V

    new-instance v8, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v8, v3, v3, v2}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;-><init>(III)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getViewRecycler()Lcom/sec/daliviews/views/ViewRecycler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/HomePageView;->setViewRecycler(Lcom/sec/daliviews/views/ViewRecycler;)V

    invoke-virtual {v1, v8}, Lcom/sec/android/app/launcher/views/HomePageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    invoke-static {p1}, Lcom/sec/android/app/launcher/data/HomePageItem;->createLayout(Lcom/sec/android/app/launcher/data/PageItem;)Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/HomePageView;->setLayout(Lcom/sec/daliviews/layouts/LayoutBase;)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getRearrangement()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/HomePageView;->setRearrangementAlgorithm(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomePageItem;->canDragAndDrop()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/HomePageView;->setCanAcceptDrop(Z)V

    iget v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mRearrangementDelay:F

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/HomePageView;->setRearrangementDragDelay(F)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v2, 0x7f0a00f5

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/sec/android/app/launcher/data/HomePageItem;->setPageLayoutHeight(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getContainerFilter()I

    move-result v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_5

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getDbId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/views/HomePageView;->setContainerTypeAndId(II)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLongPressListener:Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/HomePageView;->setOnLongPressListener(Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;)V

    invoke-virtual {v1, p0}, Lcom/sec/android/app/launcher/views/HomePageView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    invoke-virtual {v1, v10}, Lcom/sec/android/app/launcher/views/HomePageView;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragLocationListener:Lcom/sec/daliviews/views/AdapterView$dragLocationListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/HomePageView;->setDragLocationListener(Lcom/sec/daliviews/views/AdapterView$dragLocationListener;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/HomePageView;->createDynamicItem(I)V

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getPageOrder()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->ZEROPAGE_COUNT:I

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/sec/android/app/launcher/data/HomePageItem;->setPageOrder(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/launcher/activities/HomePresenter$12;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter$12;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/data/HomePageItem;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->isEventThemePage(Lcom/sec/android/app/launcher/data/PageItem;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lcom/sec/android/app/launcher/activities/EventPagePresenter;

    move-object v2, p1

    move-object v3, p0

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/activities/EventPagePresenter;-><init>(Lcom/sec/daliviews/views/PageView;Lcom/sec/android/app/launcher/data/HomePageItem;Lcom/sec/android/app/launcher/activities/HomePresenter;ZZ)V

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getPagePaddings()Landroid/graphics/Rect;

    move-result-object v6

    iget v2, v6, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->top:I

    iget v4, v6, Landroid/graphics/Rect;->right:I

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/launcher/views/HomePageView;->setPadding(IIII)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/views/HomePageView;->setPagePresenter(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getEmptyPageTextState()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getEmptyPage()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->setEmptyPage(Z)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v2, v3, :cond_4

    invoke-virtual {v1, v10}, Lcom/sec/android/app/launcher/views/HomePageView;->setHeaderVisible(I)V

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getPageOrder()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getPageOrder()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    :goto_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->addCountWorkSpace(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    return-object v1

    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getContainerFilter()I

    move-result v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EVENTTHEME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_6

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EVENTTHEME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getDbId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/views/HomePageView;->setContainerTypeAndId(II)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getContainerFilter()I

    move-result v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getDbId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/views/HomePageView;->setContainerTypeAndId(II)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLongPressListener:Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/HomePageView;->setOnLongPressListener(Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;)V

    invoke-virtual {v1, p0}, Lcom/sec/android/app/launcher/views/HomePageView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    new-instance v0, Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object v2, p1

    move-object v3, p0

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/activities/PagePresenter;-><init>(Lcom/sec/daliviews/views/PageView;Lcom/sec/android/app/launcher/data/HomePageItem;Lcom/sec/android/app/launcher/activities/HomePresenter;ZZ)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getEventThemeManager()Lcom/sec/android/app/launcher/theme/EventThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->isEventThemeEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfEventPage:I

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getPageOrder()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfEventPage:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/sec/android/app/launcher/data/HomePageItem;->setPageOrder(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private setupPageIndicator()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    const v6, 0x7f0b0074

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/views/PageIndicator;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/PageIndicator;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a00e6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicatorMarginBottomNormal:I

    const v5, 0x7f0a00e4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicatorMarginBottomDrag:I

    const v5, 0x7f0a00e5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicatorMarginBottomEditPage:I

    const v5, 0x7f0a00e7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicatorMarginBottomScreenGrid:I

    iget v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicatorMarginBottomNormal:I

    invoke-virtual {v2, v7, v7, v7, v5}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v5, v2}, Lcom/sec/daliviews/views/PageIndicator;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/PageIndicator;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    const/4 v1, 0x0

    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v5

    if-eq v5, v1, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v6}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/PageIndicator;->setIndicatorInitPosition(I)V

    :goto_1
    const v5, 0x7f0a00e2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/PageIndicator;->setIndicatorGrowBy(I)V

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    const v5, 0x7f0a00eb

    invoke-virtual {v3, v5, v4, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/PageIndicator;->setPageScrollDuration(F)V

    const v5, 0x7f0a0258

    invoke-virtual {v3, v5, v4, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageSwapDuration:F

    const v5, 0x7f0a0259

    invoke-virtual {v3, v5, v4, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageSwapDurationPerPage:F

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    iget v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageSwapDuration:F

    iget v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageSwapDurationPerPage:F

    invoke-virtual {v5, v6, v7}, Lcom/sec/daliviews/views/PageIndicator;->setPageSwapDuration(FF)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    sget v6, Lcom/sec/android/app/launcher/activities/LauncherApp;->mHomeMemoryOptimiseLevel:I

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/PageIndicator;->setMemoryOptimiseLevel(I)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLongPressListener:Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/PageIndicator;->setOnLongPressListener(Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/PageViewContainer;->setPageIndicator(Lcom/sec/daliviews/views/PageIndicator;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/PageIndicator;->setPageLayout(Lcom/sec/daliviews/layouts/PageLayout;)V

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v5, v1}, Lcom/sec/daliviews/views/PageIndicator;->setIndicatorInitPosition(I)V

    goto :goto_1
.end method

.method private setupPageLayout()V
    .locals 41

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    const v10, 0x7f0b0073

    invoke-virtual {v4, v10}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/PageViewContainer;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/PageViewContainer;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    sget v10, Lcom/sec/android/app/launcher/activities/LauncherApp;->mHomeMemoryOptimiseLevel:I

    invoke-virtual {v4, v10}, Lcom/sec/daliviews/layouts/PageLayout;->setMemoryOptimiseLevel(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lcom/sec/daliviews/layouts/PageLayout;->setBackgroundEffectWindowSize(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getSavedFragmentTransitionEffectState()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->enableFragmentTransitionEffect(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00ed

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/sec/daliviews/views/PageViewContainer;->setNormalModeMargin(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    const-wide/32 v10, 0x7f0c0025

    invoke-virtual {v4, v10, v11}, Lcom/sec/daliviews/views/PageViewContainer;->setPinchOverridesScrollInterval(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/PageViewContainer;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLongPressListener:Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;

    invoke-virtual {v4, v10}, Lcom/sec/daliviews/views/ContainerViewBase;->setOnLongPressListener(Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/PageViewContainer;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v4

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/sec/daliviews/views/ContainerViewBase;->setHapticFeedbackEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setLandscapeEffect(Z)V

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageItems()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getHomeScreenIndex()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSavedState:Landroid/os/Bundle;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSavedState:Landroid/os/Bundle;

    const-string v10, "launcher.current_screen"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSavedState:Landroid/os/Bundle;

    const-string v10, "launcher.current_screen"

    move/from16 v0, v29

    invoke-virtual {v4, v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSavedState:Landroid/os/Bundle;

    const-string v10, "homescreen_mode"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v33

    if-lez v29, :cond_1

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, v33

    if-ne v0, v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v29, v29, -0x1

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v38

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, v33

    if-ne v0, v4, :cond_3

    :cond_2
    add-int/lit8 v38, v38, 0x1

    :cond_3
    move/from16 v0, v38

    move/from16 v1, v29

    if-gt v0, v1, :cond_4

    add-int/lit8 v29, v38, -0x1

    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/sec/daliviews/layouts/PageLayout;->setInitialPage(I)V

    const v4, 0x7f0a009c

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v10, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/sec/daliviews/layouts/PageLayout;->setDynamicSnapDurationThreshold(F)V

    const v4, 0x7f0a00ba

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v10, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/sec/daliviews/layouts/PageLayout;->setFlickDuration(F)V

    new-instance v39, Landroid/util/TypedValue;

    invoke-direct/range {v39 .. v39}, Landroid/util/TypedValue;-><init>()V

    const v4, 0x7f0a00c1

    const/4 v10, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual/range {v39 .. v39}, Landroid/util/TypedValue;->getFloat()F

    move-result v10

    invoke-virtual {v4, v10}, Lcom/sec/daliviews/layouts/PageLayout;->setSnapDuration(F)V

    const v4, 0x7f0a00c0

    const/4 v10, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual/range {v39 .. v39}, Landroid/util/TypedValue;->getFloat()F

    move-result v10

    invoke-virtual {v4, v10}, Lcom/sec/daliviews/layouts/PageLayout;->setFrictionCoefficient(F)V

    const v4, 0x7f0a00bb

    const/4 v10, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual/range {v39 .. v39}, Landroid/util/TypedValue;->getFloat()F

    move-result v10

    invoke-virtual {v4, v10}, Lcom/sec/daliviews/layouts/PageLayout;->setFlickSpeedCoefficient(F)V

    const v4, 0x7f0a00e0

    const/4 v10, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual/range {v39 .. v39}, Landroid/util/TypedValue;->getFloat()F

    move-result v10

    invoke-virtual {v4, v10}, Lcom/sec/daliviews/layouts/PageLayout;->setMinimumDistanceForFlick(F)V

    const v4, 0x7f0a00e1

    const/4 v10, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual/range {v39 .. v39}, Landroid/util/TypedValue;->getFloat()F

    move-result v10

    invoke-virtual {v4, v10}, Lcom/sec/daliviews/layouts/PageLayout;->setMinimumSpeedForFlick(F)V

    const v4, 0x7f0a00df

    const/4 v10, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual/range {v39 .. v39}, Landroid/util/TypedValue;->getFloat()F

    move-result v10

    invoke-virtual {v4, v10}, Lcom/sec/daliviews/layouts/PageLayout;->setMaxFlickSpeed(F)V

    const/high16 v4, 0x7f080000

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/sec/daliviews/layouts/PageLayout;->setZaxisEffectDisable(Z)V

    const v4, 0x7f08000c

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v40

    if-eqz v40, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lcom/sec/daliviews/layouts/PageLayout;->setHorizontalScrollingPreCheckEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f0a005f

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f0a0295

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v6, v4

    const v4, 0x7f0a014e

    const/4 v10, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v39 .. v39}, Landroid/util/TypedValue;->getFloat()F

    move-result v27

    const v4, 0x3c8efa35

    mul-float v7, v4, v27

    const v4, 0x7f0a0288

    const/4 v10, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v39 .. v39}, Landroid/util/TypedValue;->getFloat()F

    move-result v35

    const v4, 0x3c8efa35

    mul-float v8, v4, v35

    const v4, 0x7f0a0294

    const/4 v10, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v39 .. v39}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual/range {v4 .. v9}, Lcom/sec/daliviews/layouts/PageLayout;->setHorizontalPanPreCheckValues(FFFFF)V

    :cond_5
    const v4, 0x7f08000d

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const v4, 0x7f0a0255

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v0, v4

    move/from16 v34, v0

    const v4, 0x7f0a0257

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v0, v4

    move/from16 v37, v0

    const v4, 0x7f0a0254

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v0, v4

    move/from16 v22, v0

    const v4, 0x7f0a0256

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v0, v4

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move/from16 v0, v34

    move/from16 v1, v37

    move/from16 v2, v22

    move/from16 v3, v36

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sec/daliviews/layouts/PageLayout;->enablePageShadow(FFFF)V

    :cond_6
    const v4, 0x7f0a02a0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v12, v4

    const v4, 0x7f0a029f

    const/4 v10, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v39 .. v39}, Landroid/util/TypedValue;->getFloat()F

    move-result v14

    const v4, 0x7f0a029e

    const/4 v10, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v39 .. v39}, Landroid/util/TypedValue;->getFloat()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    sget-boolean v11, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mIsEdge:Z

    const/4 v13, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/sec/daliviews/layouts/PageLayout;->setWarpEffectProperties(ZFFFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const v10, 0x7f0d0058

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/sec/daliviews/layouts/PageLayout;->setGridGuideImagePath(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    invoke-virtual {v4, v10}, Lcom/sec/daliviews/layouts/PageLayout;->setOnPageChangeListener(Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    new-instance v10, Lcom/sec/android/app/launcher/activities/HomePresenter$7;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter$7;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    invoke-virtual {v4, v10}, Lcom/sec/daliviews/layouts/PageLayout;->setOnGestureListener(Lcom/sec/daliviews/layouts/PageLayout$OnGestureListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->getOnPageChangeListener()Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f0c0024

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/sec/daliviews/layouts/PageLayout;->setAnimLayerHeight(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getSavedScrollEffect()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/sec/daliviews/layouts/PageLayout;->setScrollEffect(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Lcom/sec/daliviews/layouts/PageLayout;->setGridSize(II)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v31

    const-string v4, "my_magazine"

    const/4 v10, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v4, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setEnableHeadlines(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v21}, Lcom/sec/daliviews/layouts/PageLayout;->setScrollWrap(ZZZZZ)V

    return-void

    :cond_7
    if-lez v29, :cond_4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 v29, v29, -0x1

    goto/16 :goto_0
.end method

.method private setupPageWithInitialize(Lcom/sec/android/app/launcher/data/HomePageItem;Z)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/launcher/data/HomePageItem;->setHomePresenter(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v3

    invoke-direct {p0, p1, p2, v3, v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setupPage(Lcom/sec/android/app/launcher/data/HomePageItem;ZZZ)Lcom/sec/android/app/launcher/views/HomePageView;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getEventThemeManager()Lcom/sec/android/app/launcher/theme/EventThemeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->isEventThemeEnable()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->isEventThemePage(Lcom/sec/android/app/launcher/data/PageItem;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNotZoomablePageViews:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPauseState:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/sec/android/app/launcher/views/HomePageView;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/views/HomePageView;->getPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenterNeedToBeUpdated:Ljava/util/List;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/sec/android/app/launcher/activities/EventPagePresenter;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenterNeedToBeUpdated:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lcom/sec/daliviews/layouts/PageLayout;->setGridSize(II)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePage(Lcom/sec/android/app/launcher/data/PageItem;)I

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->reorderPages()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->buildPageReorderingIndices()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->addUpdateContentDescription()V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->isEventThemePage(Lcom/sec/android/app/launcher/data/PageItem;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageIndicator()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageBackgrounds()V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomePageItem;->getPageOrder()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/sec/daliviews/views/PageViewContainer;->insertView(ILcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/sec/daliviews/views/PageViewContainer;->insertView(ILcom/sec/daliviews/views/NativeViewBase;)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v5, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->addMiniPage(Lcom/sec/daliviews/views/PageView;Z)V

    goto :goto_1
.end method

.method private setupPages()V
    .locals 15

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v12, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getHomeScreenIndex()I

    move-result v2

    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->InitialZeroPage()Lcom/sec/android/app/launcher/views/HomePageView;

    move-result-object v11

    iget v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->ZEROPAGE_COUNT:I

    iget-object v12, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomePageItem;->getPageOrder()I

    move-result v12

    if-nez v12, :cond_2

    const/4 v0, 0x1

    :cond_2
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v12, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    iget-object v12, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-direct {p0, v12}, Lcom/sec/android/app/launcher/activities/HomePresenter;->addCountWorkSpace(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setupShadow()V

    iget-object v12, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/daliviews/views/Item;

    move-object v7, v6

    check-cast v7, Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/data/HomePageItem;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_4

    if-ne v5, v2, :cond_5

    const/4 v12, 0x1

    :goto_2
    const/4 v13, 0x0

    invoke-direct {p0, v7, v12, v0, v13}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setupPage(Lcom/sec/android/app/launcher/data/HomePageItem;ZZZ)Lcom/sec/android/app/launcher/views/HomePageView;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    :cond_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v13, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    new-array v12, v1, [Lcom/sec/daliviews/views/PageView;

    invoke-interface {v8, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v13, v12}, Lcom/sec/daliviews/views/PageViewContainer;->addViews([Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_7
    const/4 v5, 0x0

    iget-object v12, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/launcher/activities/PagePresenter;

    if-ne v5, v2, :cond_8

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/sec/android/app/launcher/activities/PagePresenter;->checkItemLoading(Z)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/sec/android/app/launcher/activities/PagePresenter;->checkItemLoading(Z)V

    goto :goto_4

    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageIndicator()V

    goto/16 :goto_0
.end method

.method private setupRootView()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/daliviews/views/ViewInflater;->instance(Landroid/content/Context;)Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    const v1, 0x7f030021

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->attachRootView()V

    iget v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnimType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mScaleFadeListener:Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterScaleFadeListener;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setScaleFadeAnimationListener(Lcom/sec/daliviews/views/NativeViewBase$ScaleFadeAnimationListener;)V

    :cond_0
    return-void
.end method

.method private setupShadow()V
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v1

    if-eqz v1, :cond_1

    sget v3, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    const v3, 0x7f0a0113

    invoke-virtual {v0, v3, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/daliviews/effects/ShadowEffect;->setOffset(FF)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/views/PageViewContainer;->setShadowEffect(Lcom/sec/daliviews/effects/ShadowEffect;)V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/layouts/PageLayout;->setShadowEffect(Lcom/sec/daliviews/effects/ShadowEffect;)V

    :cond_1
    return-void

    :cond_2
    const v3, 0x7f0a0114

    invoke-virtual {v0, v3, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto :goto_0
.end method

.method private setupTopFive()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b009e

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottomRoot:Lcom/sec/daliviews/views/ContainerView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b00a1

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    new-instance v1, Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-direct {v1, v0, v2, p0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;-><init>(Lcom/sec/android/app/launcher/views/TopFiveAdapterView;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    return-void
.end method

.method private setupViews()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setupRootView()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_HOME_PAGES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/sec/android/app/launcher/data/DataManager;->checkItemLoading(Lcom/sec/android/app/launcher/data/DataManager$ILoadCompleteListener;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Landroid/os/Bundle;Z)V

    return-void
.end method

.method private setupViewsExtra()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setupEditBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setupDarkenView()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setupMenuPresenter()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->initialiseZoomedOutPageMode()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->initialiseNewPageMockup()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->initialiseOptionTray()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->initialiseCancelDoneBar()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    new-instance v3, Lcom/sec/android/app/launcher/activities/HomePresenter$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter$6;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/layouts/PageLayout;->setOnMiniPageShouldUpdateListener(Lcom/sec/daliviews/layouts/PageLayout$OnMiniPageShouldUpdateListener;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFadeListener:Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/PageViewContainer;->setFadeCompleteListener(Lcom/sec/daliviews/views/PageViewContainer$OnFadeCompleteListener;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->setupTopFiveAnimation()V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSavedState:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSavedState:Landroid/os/Bundle;

    const-string v3, "homescreen_mode"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSavedState:Landroid/os/Bundle;

    const-string v3, "launcher.current_screen"

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getHomeScreenIndex()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v2

    if-le v2, v1, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v2

    if-eq v2, v1, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    :cond_3
    sget-boolean v2, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mStartScreenGrid:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getOptionTrayPresenter()Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->setScreenGridView()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->screenGrid()V

    :cond_4
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mStartScreenGrid:Z

    :cond_5
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->setThemeTransitionEffect(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getEventThemeManager()Lcom/sec/android/app/launcher/theme/EventThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->isEventThemeChanged()V

    return-void
.end method

.method private setupViewsMain()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setupPageLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setupFolderPresenter()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setupPages()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setupTopFive()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setupPageIndicator()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setHomePageScrollAnimation()V

    return-void
.end method

.method private showNotZoomablePageViews()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNotZoomablePageViews:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNotZoomablePageViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/PageView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/views/PageViewContainer;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showPageGrid(I)V
    .locals 3

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PageView;->showGrid()V

    :cond_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PageView;->showGrid()V

    :cond_1
    return-void
.end method

.method private showPageGrid(Z)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PageView;->showGrid()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PageView;->hideGrid()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private startPageAddAnim(Lcom/sec/android/app/launcher/views/HomePageView;)V
    .locals 5

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/PageView;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/PageViewContainer;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v4, 0x7f04002c

    invoke-static {v3, v4}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startZeroPageZoomedOutMode(Landroid/content/res/Resources;FF)V
    .locals 12

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v6, 0x7f0a02e3

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {p1, v6, v7, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v5

    const v6, 0x7f0a02e1

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {p1, v6, v7, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    const v6, 0x7f0a02e2

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v7, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v6, v7, :cond_3

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchZeroPageViewAttachedMode(Z)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v7, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v6, v7, :cond_0

    if-nez v0, :cond_6

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchZeroPageViewAttachedMode(Z)V

    :cond_4
    :goto_1
    new-instance v6, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-direct {v6, p3}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;-><init>(F)V

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimset:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimset:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_5
    new-instance v6, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimset:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    new-instance v2, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;

    new-instance v6, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    float-to-double v8, p2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    double-to-float v7, v8

    float-to-double v8, p2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    double-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v2, v6, v7, p3, v8}, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    new-instance v1, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;

    new-instance v6, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    const/4 v7, 0x0

    int-to-float v8, v3

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v1, v6, v7, p3, v8}, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimset:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v6, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimset:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v6, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimset:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v6, v7, v8}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    new-instance v7, Lcom/sec/android/app/launcher/activities/HomePresenter$9;

    invoke-direct {v7, p0, v0, v5, v4}, Lcom/sec/android/app/launcher/activities/HomePresenter$9;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;ZFF)V

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->connectToUIAnimationSignal(Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start()V

    goto/16 :goto_0

    :cond_6
    if-eqz v0, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageCheckBox()Lcom/sec/daliviews/views/CheckBox;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/CheckBox;->setVisibility(I)V

    sget-boolean v6, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isZeropageDual:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private stopLiveIconAnimationAllPage()V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->populated()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->triggerLiveIconAnimationInAdapter(Lcom/sec/daliviews/views/Adapter;Z)V

    goto :goto_0
.end method

.method private stopZeroPageZoomedOutMode(Landroid/content/res/Resources;FF)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v5, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v5, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v4, v5, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->reorderPages()V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageView()Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    move-result-object v0

    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchZeroPageViewAttachedMode(Z)V

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v4}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v4}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    new-instance v4, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-direct {v4, p3}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;-><init>(F)V

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimset:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimset:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v4}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_4
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ImageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    const/16 v4, 0x35

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutGravity(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomeZeroPagePresenter()Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/daliviews/views/ImageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_5
    new-instance v4, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v4}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimset:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    new-instance v3, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;

    new-instance v4, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, p2, p2, v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    invoke-direct {v3, v4, v6, p3, v7}, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    new-instance v2, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;

    new-instance v4, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    invoke-direct {v4, v6, v6, v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    invoke-direct {v2, v4, v6, p3, v7}, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimset:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v4, v3}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimset:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v4, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimset:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v4, v5, v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroPageBgScaleAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v4}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start()V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageCheckBox()Lcom/sec/daliviews/views/CheckBox;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/CheckBox;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->isAttached()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchZeroPageViewAttachedMode(Z)V

    goto/16 :goto_1
.end method

.method private stopZoomedOutPageMode()V
    .locals 12

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v1, 0x7f0a0239

    invoke-virtual {v10, v1, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v8

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDimView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    const/4 v1, 0x4

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityAnimated(IF)V

    invoke-direct {p0, v11}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setAllPagesClickable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeNewPage:Lcom/sec/daliviews/views/PageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeNewPage:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v1, v11}, Lcom/sec/daliviews/views/PageView;->setIsDragModeNewPage(Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeNewPage:Lcom/sec/daliviews/views/PageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeNewPage:Lcom/sec/daliviews/views/PageView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeDropPage:Lcom/sec/daliviews/views/PageView;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v2, "HOME"

    iget v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfWorkspace:I

    int-to-long v4, v4

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->showNotZoomablePageViews()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNotZoomablePageViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeNewPage:Lcom/sec/daliviews/views/PageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeNewPage:Lcom/sec/daliviews/views/PageView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeDropPage:Lcom/sec/daliviews/views/PageView;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeNewPage:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenter(Lcom/sec/daliviews/views/PageView;)Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, v9}, Lcom/sec/android/app/launcher/activities/HomePresenter;->removeCountWorkSpace(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeNewPage:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->deleteMiniPage(Lcom/sec/daliviews/views/PageView;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeNewPage:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/PageViewContainer;->detachView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->deletePageFromDb(Lcom/sec/android/app/launcher/data/PageItem;)V

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/PagePresenter;->destroy()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Lcom/sec/daliviews/layouts/PageLayout;->setGridSize(II)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeNewPage:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PageView;->destroy()V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v1, v2, :cond_5

    :cond_4
    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v10, v1, v8}, Lcom/sec/android/app/launcher/activities/HomePresenter;->stopZeroPageZoomedOutMode(Landroid/content/res/Resources;FF)V

    :cond_5
    const/4 v7, -0x1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeDropPage:Lcom/sec/daliviews/views/PageView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeDropPage:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->getPageNumber(Lcom/sec/daliviews/views/PageView;)I

    move-result v7

    :cond_6
    if-ltz v7, :cond_7

    iput v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMove:I

    :cond_7
    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeNewPage:Lcom/sec/daliviews/views/PageView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeDropPage:Lcom/sec/daliviews/views/PageView;

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomAnimationInProgress:Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v1, v6, v8}, Lcom/sec/daliviews/views/PageViewContainer;->switchToNormalMode(ZF)V

    iput-boolean v11, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMoveToFavorite:Z

    iput-boolean v11, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragFromWidgetList:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private switchHotWordMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V
    .locals 4

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->hasGoogleSearchWidget()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setEnableHotWord(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setEnableHotWord(Z)V

    goto :goto_0
.end method

.method private switchPageIndicatorMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchPageIndicatorMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;ZZ)V

    return-void
.end method

.method private switchPageIndicatorMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;ZZ)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/views/PageIndicator;->setVisibility(I)V

    :goto_1
    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v2, v3, :cond_3

    iget v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicatorMarginBottomScreenGrid:I

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PageIndicator;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PageIndicator;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->getMarginBottom()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {v0, v4, v4, v4, v1}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/views/PageIndicator;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    if-eqz p3, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PageIndicator;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimatePositioning(Z)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PageIndicator;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PageIndicator;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimatePositioning(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/PageIndicator;->setVisibility(I)V

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne p1, v2, :cond_4

    iget v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicatorMarginBottomEditPage:I

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq p1, v2, :cond_5

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne p1, v2, :cond_6

    :cond_5
    iget v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicatorMarginBottomDrag:I

    goto :goto_2

    :cond_6
    iget v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicatorMarginBottomNormal:I

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PageIndicator;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    goto/16 :goto_0
.end method

.method private switchZeroPageViewAttachedMode(Z)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageView()Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    move-result-object v3

    if-eqz p1, :cond_4

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->isAttached()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v4, v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v4, v6, v3, v7}, Lcom/sec/daliviews/views/PageViewContainer;->insertPage(ILcom/sec/daliviews/views/NativeViewBase;Z)V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageCheckBox()Lcom/sec/daliviews/views/CheckBox;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v1, v4, :cond_3

    invoke-virtual {v0, v6}, Lcom/sec/daliviews/views/CheckBox;->setVisibility(I)V

    sget-boolean v4, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isZeropageDual:Z

    if-eqz v4, :cond_2

    invoke-virtual {v2, v8}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->buildPageReorderingIndices()V

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v1, v4, :cond_2

    invoke-virtual {v0, v8}, Lcom/sec/daliviews/views/CheckBox;->setVisibility(I)V

    sget-boolean v4, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isZeropageDual:Z

    if-eqz v4, :cond_2

    invoke-virtual {v2, v6}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v4, v3, v7}, Lcom/sec/daliviews/views/PageViewContainer;->detachPage(Lcom/sec/daliviews/views/NativeViewBase;Z)V

    goto :goto_1
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

.method private updateCancelDoneBtn()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->updateLayoutView()V

    :cond_0
    return-void
.end method

.method private updateDefaultHomeFromDeletion(I)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getHomeScreenIndex()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->ZEROPAGE_COUNT:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setDefaultHome(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageBackgrounds()V

    :cond_0
    return-void
.end method

.method private updateEditMode()V
    .locals 15

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v0, v2, :cond_3

    const v0, 0x7f0a0253

    const/4 v2, 0x1

    const/4 v7, 0x1

    invoke-virtual {v11, v0, v2, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    :goto_0
    const v0, 0x7f0a0239

    const/4 v2, 0x1

    const/4 v7, 0x1

    invoke-virtual {v11, v0, v2, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v0, v2, :cond_4

    const v0, 0x7f0a0244

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_1
    const v0, 0x7f0d0030

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f0d0014

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    const/4 v2, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v14, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-eq v8, v14, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual/range {v0 .. v8}, Lcom/sec/daliviews/views/PageViewContainer;->switchToScaledMode(FZFILjava/lang/String;Ljava/lang/String;ZZ)V

    const v0, 0x7f0a023c

    const/4 v2, 0x1

    const/4 v7, 0x1

    invoke-virtual {v11, v0, v2, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    const v0, 0x7f0a023b

    const/4 v2, 0x1

    const/4 v7, 0x1

    invoke-virtual {v11, v0, v2, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->configureShrinkEffect(FF)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/launcher/activities/HomePresenter$33;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter$33;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b0072

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v9

    check-cast v9, Lcom/sec/daliviews/views/ContainerView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    if-eqz v9, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottomRootAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottomRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v9, v0}, Lcom/sec/daliviews/views/ContainerView;->detachView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {v9}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottomRootAttached:Z

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomeZeroPagePresenter()Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomeZeroPagePresenter()Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageView()Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v10

    const v0, 0x7f0a02e3

    const/4 v2, 0x1

    const/4 v7, 0x1

    invoke-virtual {v11, v0, v2, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v13

    const v0, 0x7f0a02e1

    const/4 v2, 0x1

    const/4 v7, 0x1

    invoke-virtual {v11, v0, v2, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v12

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateZeroPageDefaultBg()V

    if-eqz v10, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomeZeroPagePresenter()Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageView()Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0d0030

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->updateBackground(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomeZeroPagePresenter()Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/sec/daliviews/views/ImageView;->setOpacity(F)V

    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/launcher/activities/HomePresenter$34;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter$34;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->hideTopFive()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageMargins()V

    return-void

    :cond_3
    const v0, 0x7f0a0251

    const/4 v2, 0x1

    const/4 v7, 0x1

    invoke-virtual {v11, v0, v2, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    goto/16 :goto_0

    :cond_4
    const v0, 0x7f0a0242

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto/16 :goto_1

    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomeZeroPagePresenter()Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageView()Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0d00d5

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->updateBackground(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomeZeroPagePresenter()Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/sec/daliviews/views/ImageView;->setOpacity(F)V

    goto :goto_3
.end method

.method private updateHomeEditBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->updateLayoutView()V

    :cond_0
    return-void
.end method

.method private updateLayoutByMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchPageIndicatorMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;ZZ)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageMargins()V

    return-void
.end method

.method private updateOpenFolder()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->updateOpenFolder(Z)V

    :cond_0
    return-void
.end method

.method private updateOptionTray()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->updateLayoutView()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getCurrentTrayView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getCurrentTrayView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/daliviews/utils/LayerManager;->instance()Lcom/sec/daliviews/utils/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/utils/LayerManager;->updateLayers()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateHomeEditBar()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateCancelDoneBtn()V

    return-void
.end method

.method private updatePage(Lcom/sec/android/app/launcher/activities/PagePresenter;IIIILandroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PageView;->setCurrentOrientation(I)V

    sget v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateShadowEffect(I)V

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/sec/android/app/launcher/activities/PagePresenter;->updateCellSize(IIII)V

    invoke-virtual/range {p1 .. p6}, Lcom/sec/android/app/launcher/activities/PagePresenter;->updatePage(IIIILandroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->updateDefaultHomeLayout()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mIsRotating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->updateForRotation()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageView;->showGrid()V

    :cond_2
    return-void
.end method

.method private updatePageIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getSavedScrollEffect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/PageLayout;->setScrollEffect(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageIndicator;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    :cond_1
    return-void
.end method

.method private updatePageIndicatorChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/PageIndicator;->setCurrentPage(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mLastAccessibilityReportedPage:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mLastAccessibilityReportedPage:I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setAccessibilityPageChange()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->announce(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_2
    return-void
.end method

.method private updatePageMargins()V
    .locals 8

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v7, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v7, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v6, v7, :cond_2

    const v6, 0x7f0a024f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0a024a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1
    const v6, 0x7f0a024b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move v2, v4

    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/PageViewContainer;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-virtual {v1, v2, v5, v4, v0}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v6, v1}, Lcom/sec/daliviews/views/PageViewContainer;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/PageViewContainer;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    goto :goto_0

    :cond_2
    const v6, 0x7f0a024d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0a0248

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v7, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v7, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v7, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v7, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v6, v7, :cond_5

    :cond_4
    const v6, 0x7f0a024c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0a0247

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v7, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v7, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v6, v7, :cond_0

    const v6, 0x7f0a024e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0a0249

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2
.end method

.method private updatePageRootView()V
    .locals 14

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v10}, Lcom/sec/daliviews/views/PageViewContainer;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v2

    const/4 v10, 0x0

    const v11, 0x7f0a024e

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v12, 0x0

    const v13, 0x7f0a0249

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual {v2, v10, v11, v12, v13}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v10, v2}, Lcom/sec/daliviews/views/PageViewContainer;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_0
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    const v11, 0x7f0b0072

    invoke-virtual {v10, v11}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/layouts/LinearLayout;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_a

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/sec/daliviews/layouts/LinearLayout;->setOrientation(I)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isTabletLayoutEnabled()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    const v11, 0x7f0b00a0

    invoke-virtual {v10, v11}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v8

    check-cast v8, Lcom/sec/daliviews/views/ImageView;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/sec/daliviews/views/ImageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v2

    const v10, 0x7f0a0289

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    invoke-virtual {v8, v2}, Lcom/sec/daliviews/views/ImageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_2
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    const v11, 0x7f0b00a1

    invoke-virtual {v10, v11}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v2

    const v10, 0x7f0a028d

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    const v10, 0x7f0a028f

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const/4 v11, 0x0

    const v12, 0x7f0a0290

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v13, 0x7f0a028e

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual {v2, v10, v11, v12, v13}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    invoke-virtual {v7, v2}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_3
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    const v11, 0x7f0b00a2

    invoke-virtual {v10, v11}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v9

    check-cast v9, Lcom/sec/daliviews/views/TextView;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/sec/daliviews/views/TextView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v2

    const v10, 0x7f0a028b

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    invoke-virtual {v9, v2}, Lcom/sec/daliviews/views/TextView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    :cond_5
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v10}, Lcom/sec/daliviews/views/PageIndicator;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v2

    const v10, 0x7f0a00e6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicatorMarginBottomNormal:I

    const v10, 0x7f0a00e4

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicatorMarginBottomDrag:I

    const v10, 0x7f0a00e5

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicatorMarginBottomEditPage:I

    const v10, 0x7f0a00e7

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicatorMarginBottomScreenGrid:I

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v11, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v10, v11, :cond_15

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v11, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v10, v11, :cond_15

    iget v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicatorMarginBottomScreenGrid:I

    :goto_2
    const v10, 0x7f0a00e3

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v2, v10, v11, v12, v3}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v10, v2}, Lcom/sec/daliviews/views/PageIndicator;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_6
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/ImageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v2

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v11, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v10, v11, :cond_19

    const/16 v10, 0x35

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutGravity(I)V

    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomeZeroPagePresenter()Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/sec/daliviews/views/ImageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_7
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v11, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v10, v11, :cond_8

    iget-boolean v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPauseState:Z

    if-nez v10, :cond_1a

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateEditMode()V

    :cond_8
    :goto_4
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v10}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    :cond_9
    return-void

    :cond_a
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/sec/daliviews/layouts/LinearLayout;->setOrientation(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    const v11, 0x7f0b009e

    invoke-virtual {v10, v11}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/views/ContainerView;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/sec/daliviews/views/ContainerView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_10

    const/4 v10, -0x2

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    const/4 v10, 0x0

    const v11, 0x7f0a023a

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v2, v10, v11, v12, v13}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    :goto_5
    invoke-virtual {v5, v2}, Lcom/sec/daliviews/views/ContainerView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_c
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    const v11, 0x7f0b009f

    invoke-virtual {v10, v11}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/ClippedContainerView;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ClippedContainerView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_11

    const/4 v10, -0x2

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    :goto_6
    invoke-virtual {v4, v2}, Lcom/sec/daliviews/views/ClippedContainerView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_d
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    const v11, 0x7f0b00a0

    invoke-virtual {v10, v11}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v8

    check-cast v8, Lcom/sec/daliviews/views/ImageView;

    if-eqz v8, :cond_e

    const v10, 0x7f020006

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/sec/daliviews/views/ImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8}, Lcom/sec/daliviews/views/ImageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_12

    const v10, 0x7f0a0289

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    const/4 v10, 0x5

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutGravity(I)V

    :goto_7
    invoke-virtual {v8, v2}, Lcom/sec/daliviews/views/ImageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_e
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    const v11, 0x7f0b00a1

    invoke-virtual {v10, v11}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_13

    const v10, 0x7f0a028d

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    :goto_8
    invoke-virtual {v7}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v10

    check-cast v10, Lcom/sec/daliviews/layouts/GridLayout;

    const v11, 0x7f0c0047

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    const v12, 0x7f0c0046

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/daliviews/layouts/GridLayout;->setGridSize(II)V

    const v10, 0x7f0a028f

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f0a0291

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v12, 0x7f0a0290

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v13, 0x7f0a028e

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual {v2, v10, v11, v12, v13}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    invoke-virtual {v7, v2}, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_f
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    const v11, 0x7f0b00a2

    invoke-virtual {v10, v11}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v9

    check-cast v9, Lcom/sec/daliviews/views/TextView;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/sec/daliviews/views/TextView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_14

    const v10, 0x7f0a028b

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    const/4 v10, 0x5

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutGravity(I)V

    :goto_9
    invoke-virtual {v9, v2}, Lcom/sec/daliviews/views/TextView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    goto/16 :goto_1

    :cond_10
    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    const/4 v10, -0x2

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v2, v10, v11, v12, v13}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    goto/16 :goto_5

    :cond_11
    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    const/4 v10, -0x2

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    goto/16 :goto_6

    :cond_12
    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    const v10, 0x7f0a0289

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    const/16 v10, 0x50

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutGravity(I)V

    goto/16 :goto_7

    :cond_13
    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    const v10, 0x7f0a028d

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    goto/16 :goto_8

    :cond_14
    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    const v10, 0x7f0a028b

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    const/16 v10, 0x50

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutGravity(I)V

    goto :goto_9

    :cond_15
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v11, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v10, v11, :cond_16

    iget v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicatorMarginBottomEditPage:I

    goto/16 :goto_2

    :cond_16
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v11, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v10, v11, :cond_17

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v11, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v10, v11, :cond_18

    :cond_17
    iget v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicatorMarginBottomDrag:I

    goto/16 :goto_2

    :cond_18
    iget v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicatorMarginBottomNormal:I

    goto/16 :goto_2

    :cond_19
    const/16 v10, 0x31

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutGravity(I)V

    goto/16 :goto_3

    :cond_1a
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mUpdateEditMode:Z

    goto/16 :goto_4
.end method

.method private updateShadowEffect(I)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0113

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/daliviews/effects/ShadowEffect;->setOffset(FF)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0114

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto :goto_0
.end method

.method private updateTopFive()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimatePositioning(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerViewBase;->setCurrentOrientation(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    const v1, 0x7f0b00df

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->setDefaultMode(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->updateAnimateOffsetY()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->updateShadowEffect()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottom:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    const v1, 0x7f0b00dd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->setDefaultMode(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    const v1, 0x7f0b00de

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->setDefaultMode(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    const v1, 0x7f0b00dc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->setDefaultMode(I)V

    goto :goto_0
.end method

.method private updateZeroAppDualBg()V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getZeroPageList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/ZeroPageListItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const-string v3, "flipboard.boxer.app"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getBriefingDefaultBg()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->setPreview(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getZeroAppDefaultBg(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->setPreview(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateZeroPageDefaultBg()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->HOME_ZEROPAGE_INTENT:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "flipboard.boxer.app"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getBriefingDefaultBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setZeroPageBg(Landroid/graphics/Bitmap;)V

    :goto_0
    sget-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isZeropageDual:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateZeroAppDualBg()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setupHomeZeroPageDual()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeropageAppList:Ljava/util/List;

    sget v3, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSetPosition:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/ZeroPageListItem;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setZeroItem(Lcom/sec/android/app/launcher/data/ZeroPageListItem;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->updateZeroPageCheckBox()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->checkZeroPageImage()V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getZeroAppDefaultBg(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setZeroPageBg(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public IsEnableCapture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsEnableCapture:Z

    return v0
.end method

.method public SetIsEnableCapture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsEnableCapture:Z

    return-void
.end method

.method public actionMemoPinToHome(Landroid/view/DragEvent;Ljava/lang/String;)V
    .locals 21

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v14

    const-string v2, "HomePresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchDragEvent action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const-string v2, "DragAndDropBinding"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    packed-switch v14, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v2, "HomePresenter"

    const-string v3, "dispatchDragEvent ACTION_DRAG_STARTED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :try_start_0
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v19

    if-eqz v19, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mIsDragAndDrop:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setupDragItem(Landroid/content/Intent;)Lcom/sec/android/app/launcher/data/WidgetListItem;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    const/16 v16, 0x0

    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/WidgetListItem;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/launcher/data/WidgetListItem;

    move-object/from16 v16, v0
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setFlagToShowPreviewOnly()V

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/launcher/data/WidgetListItem;->onCreateItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/sec/android/app/launcher/data/WidgetListItem;->linkItemView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/SurfaceView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/dragAndDrop/DragState;->setUseSetImageForSilhouette(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0250

    const/4 v4, 0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v20

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->enableSilhouette()V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->makeSilhouetteVisible(Z)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->configureShrinkEffect(FF)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    const/high16 v7, 0x428c0000    # 70.0f

    const/high16 v8, 0x428c0000    # 70.0f

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v4, v17

    move-object v6, v15

    invoke-virtual/range {v2 .. v10}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;Lcom/sec/daliviews/views/NativeViewBase;FFII)V

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getEditBarPresenter()Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->showEditBar(Lcom/sec/daliviews/views/Item;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v18

    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :pswitch_2
    const-string v2, "HomePresenter"

    const-string v3, "dispatchDragEvent ACTION_DRAG_LOCATION"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v12

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/SurfaceView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    :pswitch_3
    const-string v2, "HomePresenter"

    const-string v3, "dispatchDragEvent ACTION_DROP"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v12

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/SurfaceView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mIsDragAndDrop:Z

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public addItemsToCurrentPage(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;Z)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->addItemsToAdapter(Ljava/util/List;ZZ)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->hasGoogleSearchWidget()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setEnableHotWord(Z)V

    return-void
.end method

.method public addItemsinNewPage(ILjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageColumns()I

    move-result v8

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageRows()I

    move-result v9

    mul-int v13, v8, v9

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int v15, v1, p1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfEventPage:I

    sub-int v2, v1, v4

    div-int v14, v15, v13

    rem-int v12, v15, v13

    if-eqz v12, :cond_0

    add-int/lit8 v14, v14, 0x1

    :cond_0
    const/4 v11, 0x0

    :goto_0
    if-ge v11, v14, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    mul-int v1, v13, v11

    add-int v10, p1, v1

    add-int v1, v10, v13

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    add-int v1, v10, v13

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    :goto_1
    sget-object v4, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->LAST:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->newPage(ILjava/util/List;Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;ZZZ)Lcom/sec/daliviews/views/PageView;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/PageViewContainer;->invalidatePageIndicator(Z)V

    :cond_3
    return-void
.end method

.method public addUpdateContentDescription()V
    .locals 8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->ZEROPAGE_COUNT:I

    add-int/lit8 v1, v3, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/activities/PagePresenter;

    instance-of v3, v2, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    const v5, 0x7f0d00bf

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/PageView;->setContentDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    const v5, 0x7f0d0033

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/data/PageItem;->getPageOrder()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfWorkspace:I

    add-int/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/PageView;->setContentDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public canCapture()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v2, :cond_0

    const-string v2, "capture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canCapture isScrolling() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->isScrolling()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurrentMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mVisibility : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mVisibility:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->isScrolling()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mVisibility:I

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTransitionInProgress:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomAnimationInProgress:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->isFolderOpened()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/PagePresenter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->IsDefaultHome()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->cancel(ZZ)V

    return-void
.end method

.method public cancel(ZZ)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDoneOnScreenGrid:Z

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelOnScreenGrid:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridState;->CANCEL:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridState;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridState;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "changeMode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "backPressed"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "homePressed"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->checkOngoingChangeGrid(Landroid/os/Bundle;)V

    const-string v1, "HomePresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen Grid :: Cancel - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public cancelChangeGrid()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v8, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v7, v8, :cond_8

    invoke-direct {p0, v9}, Lcom/sec/android/app/launcher/activities/HomePresenter;->runScaledModeForScreenGrid(Z)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v7, v8}, Lcom/sec/daliviews/views/PageViewContainer;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    if-eqz v7, :cond_0

    invoke-direct {p0, v9}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchZeroPageViewAttachedMode(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0252

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    const v7, 0x7f0a0239

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v4

    invoke-direct {p0, v6, v7, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->startZeroPageZoomedOutMode(Landroid/content/res/Resources;FF)V

    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v9, v8}, Lcom/sec/daliviews/layouts/PageLayout;->setGridSize(II)V

    sget v7, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageRow:I

    sput v7, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    sget v7, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageColumn:I

    sput v7, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v7}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTempPagePresenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v7, :cond_3

    iput-boolean v9, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDoNotReorderPage:Z

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTempPagePresenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageIndex(Lcom/sec/daliviews/views/PageView;)I

    move-result v1

    if-eqz v0, :cond_1

    if-le v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    :cond_1
    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/daliviews/views/ListAdapter;->detachAllItems()V

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v7

    invoke-virtual {p0, v5, v7, v10, v9}, Lcom/sec/android/app/launcher/activities/HomePresenter;->deletePage(Lcom/sec/android/app/launcher/activities/PagePresenter;Lcom/sec/daliviews/views/PageView;ZZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->clearTempPagePresenters()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->reorderPages()V

    iput-boolean v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDoNotReorderPage:Z

    :cond_3
    sget v7, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_5

    invoke-virtual {p0, v9}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setchangeGridForLiveicon(Z)V

    :goto_1
    sget v7, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_COLUMNS:I

    if-eqz v7, :cond_6

    sget v7, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_ROWS:I

    if-eqz v7, :cond_6

    sget v7, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_COLUMNS:I

    sget v8, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageColumn:I

    if-ne v7, v8, :cond_4

    sget v7, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_ROWS:I

    sget v8, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageRow:I

    if-eq v7, v8, :cond_6

    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/launcher/activities/PagePresenter;->restorePage(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setchangeGridForLiveicon(Z)V

    goto :goto_1

    :cond_6
    sput v10, Lcom/sec/android/app/launcher/activities/HomePresenter;->PREVIOUS_HOME_COLUMNS:I

    sput v10, Lcom/sec/android/app/launcher/activities/HomePresenter;->PREVIOUS_HOME_ROWS:I

    sput v10, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_COLUMNS:I

    sput v10, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_ROWS:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageBackgrounds()V

    sget v7, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    invoke-direct {p0, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateShadowEffect(I)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->clearSelectionArea()V

    sget-object v7, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-direct {p0, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchPageIndicatorMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageMargins()V

    invoke-direct {p0, v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->showPageGrid(Z)V

    invoke-direct {p0, v9}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setHapticFeedBack(Z)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridHandler:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->mIsGridChanging:Z
    invoke-static {v7, v10}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->access$5402(Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;Z)Z

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v7

    if-nez v7, :cond_7

    iget v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    :cond_7
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v7, v10}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->sendIntentForSamsungPay(Z)V

    :cond_8
    return-void
.end method

.method public cancelChangeGrid(ZZZ)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v1, v2, :cond_1

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-class v2, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/launcher/activities/HomePresenter$26;

    invoke-direct {v2, p0, p3, p2}, Lcom/sec/android/app/launcher/activities/HomePresenter$26;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;ZZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public cancelFastScroll()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageIndicator;->isFastScrollActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageIndicator;->cancelFastScroll()V

    :cond_0
    return-void
.end method

.method public cancelPinchMode()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomAnimationInProgress:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDragState()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mBackButtonPressedWhileDragging:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPendingSwitchToNormalMode:Z

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public cancelResizeMode()V
    .locals 1

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->isResizing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->endResize()V

    :cond_0
    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    return-void
.end method

.method public changeGridSize(II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "HomePresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen Grid :: changeGridSize to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setchangeGridForLiveicon(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->checkGridChangeForLiveIcon()V

    sget v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageColumn:I

    if-ne p1, v1, :cond_1

    sget v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageRow:I

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->setDoneButtonEnabled(Z)V

    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridState;->RUN:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridState;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridState;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "column"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "row"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->checkOngoingChangeGrid(Landroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual {p0, v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setchangeGridForLiveicon(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->setDoneButtonEnabled(Z)V

    goto :goto_1
.end method

.method public changeTextColor(I)V
    .locals 8

    const v2, 0x1ffffff

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    const/4 v5, 0x0

    move v1, p1

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setTextStyleForModedView(IIIILandroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/PagePresenter;->updateTextViewMode()V

    invoke-virtual {v7, p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->changeEmptyTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->updateTextViewMode()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    const/16 v1, 0x4b0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->setMainHomeScreenshot(I)V

    :cond_2
    return-void
.end method

.method public checkAvailableChangeGrid()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelOnScreenGrid:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDoneOnScreenGrid:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public clearEmptyPageTexts()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->clearEmptyPageText()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method clearTempPagePresenters()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTempPagePresenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTempPagePresenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTempPagePresenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    return-void
.end method

.method public clickAcceptable()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public correctPos(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->isTopFiveItem(Lcom/sec/daliviews/views/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->correctPos(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)V

    :cond_0
    return-void
.end method

.method public createNewFolder(Lcom/sec/daliviews/views/Item;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderBoundingBox()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v1, p1, p2, v0}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->createFolder(Lcom/sec/daliviews/views/Item;ZLandroid/graphics/Rect;)V

    return-void
.end method

.method public deletePage(Lcom/sec/android/app/launcher/activities/PagePresenter;Lcom/sec/daliviews/views/PageView;ZZ)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->removeCountWorkSpace(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v1, p1, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->deleteMiniPage(Lcom/sec/daliviews/views/PageView;)V

    :cond_0
    invoke-virtual {p2}, Lcom/sec/daliviews/views/PageView;->unparentAndDestroy()V

    if-eqz p4, :cond_4

    iget v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->deletePageFromDb(Lcom/sec/android/app/launcher/data/PageItem;)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->destroy()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->buildPageReorderingIndices()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/daliviews/layouts/PageLayout;->setGridSize(II)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PageViewContainer;->onPageDeleted()V

    if-nez p4, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/PageViewContainer;->invalidatePageIndicator(Z)V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    if-eqz p3, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->IsDefaultHome()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/PageItem;->getPageOrder()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateDefaultHomeFromDeletion(I)V

    goto :goto_0
.end method

.method public deletePageInZoomedOutPageMode(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 7

    const/4 v6, 0x1

    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_1
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->ZEROPAGE_COUNT:I

    if-le v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->removeCountWorkSpace(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getPageOrder()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateDefaultHomeFromDeletion(I)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    check-cast p1, Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->deleteMiniPage(Lcom/sec/daliviews/views/PageView;)V

    :cond_3
    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->deletePageWithPrompt(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v3, v6}, Lcom/sec/daliviews/layouts/PageLayout;->setAnimatePositioning(Z)V

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->destroy()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->buildPageReorderingIndices()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/sec/daliviews/layouts/PageLayout;->setGridSize(II)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/PageViewContainer;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/PageViewContainer;->onPageDeleted()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/layouts/PageLayout;->setAnimatePositioning(Z)V

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->isPageDeletionPossible()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->hideEditBar()V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageBackgrounds()V

    return-void

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public destroy()V
    .locals 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridHandler:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quitSafely()Z

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/layouts/PageLayout;->setOnPageChangeListener(Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;)V

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/layouts/PageLayout;->setOnGestureListener(Lcom/sec/daliviews/layouts/PageLayout$OnGestureListener;)V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    sget-object v4, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_HOME_PAGES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v3, v4, p0}, Lcom/sec/android/app/launcher/data/DataManager;->unregisterDataListener(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataListener;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    sget-object v4, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_HOME_PAGES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v3, v4, p0}, Lcom/sec/android/app/launcher/data/DataManager;->unregisterLoadCompleteListener(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$ILoadCompleteListener;)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->destroy()V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->destroy()V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->destroy()V

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->destroy()V

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->destroy()V

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->destroy()V

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->destroy()V

    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->destroy()V

    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/activities/PresenterBase;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PresenterBase;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_a
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNotZoomablePageViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNotZoomablePageViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PageView;->unparentAndDestroy()V

    goto :goto_1

    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRootAttached:Z

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ContainerView;->destroy()V

    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/PageView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/PageView;->destroy()V

    :cond_d
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottomRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottomRootAttached:Z

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottomRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ContainerView;->destroy()V

    :cond_e
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mViewRecycler:Lcom/sec/daliviews/views/ViewRecycler;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mViewRecycler:Lcom/sec/daliviews/views/ViewRecycler;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ViewRecycler;->destroy()V

    :cond_f
    return-void
.end method

.method public detachItem(Lcom/sec/android/app/launcher/data/HomeItem;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-static {v2, v3}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerType()I

    move-result v0

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EVENTTHEME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenter(I)Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->detachItem(Lcom/sec/android/app/launcher/data/HomeItem;)V

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->detachItem(Lcom/sec/android/app/launcher/data/HomeItem;)V

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->detachItemFromFolder(Lcom/sec/daliviews/views/Item;)V

    goto :goto_0
.end method

.method public detachRootViewIfNeeded()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setIgnoreDrawAppWidget(Z)V

    sget v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mHomeMemoryOptimiseLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRootAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->removeViewFromScene(Lcom/sec/daliviews/views/NativeViewBase;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRootAttached:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mVisibility:I

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public done()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelOnScreenGrid:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDoneOnScreenGrid:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridState;->DONE:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridState;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridState;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->checkOngoingChangeGrid(Landroid/os/Bundle;)V

    const-string v1, "HomePresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen Grid :: Done - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchPageIndicatorMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    goto :goto_0
.end method

.method public doneChangeGrid()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/HomePresenter$27;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter$27;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setMainHomeScreenshot(Z)V

    return-void
.end method

.method public doneforThemeGrid()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/HomePresenter$28;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter$28;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public enableFragmentTransitionEffect(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/PageViewContainer;->enableTransitionEffect(Z)V

    :cond_0
    return-void
.end method

.method public findAvailablePosition(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/daliviews/views/Item;Z)Z
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p2}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v0

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_4

    :cond_2
    invoke-virtual {p2}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->setContainerId(I)V

    invoke-virtual {p2}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->setCellX(I)V

    invoke-virtual {p2}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->setCellY(I)V

    invoke-virtual {p2}, Lcom/sec/daliviews/views/Item;->getPos()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->setPos(I)V

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->fitItemToCurrentPage(Lcom/sec/daliviews/views/Item;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->fitItemToAnyPage(Lcom/sec/daliviews/views/Item;Z)Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0
.end method

.method public fitItemToAnyPage(Lcom/sec/daliviews/views/Item;Z)Lcom/sec/android/app/launcher/activities/PagePresenter;
    .locals 6

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    rem-int v4, v5, v2

    move v1, v4

    :goto_0
    if-eq v1, v0, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->findAndSetCellPosition(Lcom/sec/daliviews/views/Item;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/sec/daliviews/views/Item;->setContainerId(I)V

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeDropPage:Lcom/sec/daliviews/views/PageView;

    if-eqz p2, :cond_0

    iget v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mInvalidDropPageFlipDuration:F

    invoke-virtual {p0, v1, v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    :cond_0
    :goto_1
    return-object v3

    :cond_1
    add-int/lit8 v5, v1, 0x1

    rem-int v1, v5, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public fitItemToCurrentPage(Lcom/sec/daliviews/views/Item;)Z
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->findAndSetCellPosition(Lcom/sec/daliviews/views/Item;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sec/daliviews/views/Item;->setContainerId(I)V

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeDropPage:Lcom/sec/daliviews/views/PageView;

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public fitItemToCurrentorNextPage(ILcom/sec/daliviews/views/Item;)Lcom/sec/android/app/launcher/activities/PagePresenter;
    .locals 5

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->ZEROPAGE_COUNT:I

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    sub-int v1, v4, v3

    add-int v0, p1, v3

    :goto_0
    add-int v4, v1, v3

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/activities/PagePresenter;

    instance-of v4, v2, Lcom/sec/android/app/launcher/activities/EventPagePresenter;

    if-nez v4, :cond_1

    invoke-virtual {v2, p2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->findAndSetCellPosition(Lcom/sec/daliviews/views/Item;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/sec/daliviews/views/Item;->setContainerId(I)V

    :goto_1
    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getAppsIconViewPos()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAppsIconViewPos()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBottomView()Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottom:Lcom/sec/daliviews/views/ContainerView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setHomePageScrollAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottom:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method public getCancelDonePresenter()Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    return-object v0
.end method

.method public getCurrentMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    return-object v0
.end method

.method public getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    goto :goto_0
.end method

.method public getCurrentPageView()Lcom/sec/daliviews/views/PageView;
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PagePresenter"

    const-string v3, "No page presenters found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    rem-int v0, v2, v3

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    :goto_1
    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    goto :goto_1
.end method

.method getDarkenView()Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDarkenView()Lcom/sec/daliviews/views/ClippedContainerView;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->IsDefaultHome()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEditBarPresenter()Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    return-object v0
.end method

.method public getFolderBoundingBox()Landroid/graphics/Rect;
    .locals 11

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v7}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-lt v2, v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/AdapterView;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v0

    const v7, 0x7f0a0205

    invoke-virtual {p0, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->readDimension(I)I

    move-result v6

    const v7, 0x7f0a020f

    invoke-virtual {p0, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->readDimension(I)I

    move-result v4

    const v7, 0x7f0a0204

    invoke-virtual {p0, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->readDimension(I)I

    move-result v5

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v4

    add-int/2addr v10, v5

    invoke-direct {v7, v8, v6, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v7
.end method

.method public getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    return-object v0
.end method

.method public getHomePageChangeListener()Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    return-object v0
.end method

.method public getHomePageLayout()Lcom/sec/daliviews/layouts/PageLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    return-object v0
.end method

.method public getHomeZeroPagePresenter()Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    return-object v0
.end method

.method public getHomescreenMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getNewScrollEffectMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewScrollEffectMode:I

    return v0
.end method

.method public getOptionTrayPresenter()Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    return-object v0
.end method

.method public getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    return-object v0
.end method

.method getPageIndex(Lcom/sec/daliviews/views/PageView;)I
    .locals 5

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-object v3, v2

    check-cast v3, Lcom/sec/android/app/launcher/activities/PagePresenter;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getPageIndicator()Lcom/sec/daliviews/views/PageIndicator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    return-object v0
.end method

.method public getPageIndicatorVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageIndicator;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    return-object v0
.end method

.method public getPagePresenter(I)Lcom/sec/android/app/launcher/activities/PagePresenter;
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v2

    if-ne v2, p1, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getPagePresenter(Lcom/sec/daliviews/views/PageView;)Lcom/sec/android/app/launcher/activities/PagePresenter;
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getPagePresenters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/launcher/activities/PagePresenter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getPageRootView()Lcom/sec/daliviews/views/PageViewContainer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    return-object v0
.end method

.method public getRootView()Lcom/sec/daliviews/views/ContainerViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method public getSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    return-object v0
.end method

.method public getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    return-object v0
.end method

.method public getViewRecycler()Lcom/sec/daliviews/views/ViewRecycler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mViewRecycler:Lcom/sec/daliviews/views/ViewRecycler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/views/ItemViewRecycler;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/views/ItemViewRecycler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mViewRecycler:Lcom/sec/daliviews/views/ViewRecycler;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mViewRecycler:Lcom/sec/daliviews/views/ViewRecycler;

    return-object v0
.end method

.method public getWidgetOpenFolderView()Lcom/sec/android/app/launcher/views/WidgetFolderView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mWidgetOpenFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    return-object v0
.end method

.method public getZeroPageCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->ZEROPAGE_COUNT:I

    return v0
.end method

.method public getchangeGridForLiveicon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mchangeGridFiverow:Z

    return v0
.end method

.method public handleWidgetsListHomePress()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->cancelFastScroll()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onBackPressed()Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDragState()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialiseNewPageMockup()V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v2

    const v3, 0x7f030033

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/PageView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v2, p0}, Lcom/sec/daliviews/views/PageView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/views/PageView;->setIsNewPageMockup(Z)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMockupIndicatorImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/PageView;->setPageIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    const v3, 0x7f0b00a4

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/PageView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockupIcon:Lcom/sec/daliviews/views/ImageView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0251

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockupIcon:Lcom/sec/daliviews/views/ImageView;

    div-float v3, v5, v0

    div-float v4, v5, v0

    invoke-virtual {v2, v3, v4}, Lcom/sec/daliviews/views/ImageView;->setScale(FF)V

    return-void
.end method

.method public insertPage(Lcom/sec/android/app/launcher/data/PageItem;)J
    .locals 5

    const-wide/16 v2, -0x1

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/PageItem;->getDataConnector()Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4}, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->insertItem(Lcom/sec/daliviews/views/Item;Z)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z
    .locals 10

    instance-of v7, p1, Lcom/sec/daliviews/views/TextureView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getGlowEffect()Lcom/sec/daliviews/effects/GlowEffect;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sec/daliviews/effects/GlowEffect;->remove(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    if-eqz p2, :cond_1

    instance-of v7, p2, Lcom/sec/android/app/launcher/views/FolderAdapterView;

    if-nez v7, :cond_1

    instance-of v7, p2, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    if-nez v7, :cond_1

    instance-of v7, p2, Lcom/sec/android/app/launcher/views/HomePageView;

    if-nez v7, :cond_1

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v7, :cond_2

    instance-of v7, p4, Lcom/sec/android/app/launcher/views/TopFiveAdapterView;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getDragListener()Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    move-result-object v7

    invoke-interface {v7, p1, p2, p3, p4}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;->invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    instance-of v7, p4, Lcom/sec/daliviews/views/PageView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/sec/android/app/launcher/activities/HomePresenter$15;

    invoke-direct {v8, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter$15;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setShowToast(Z)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v7}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v2

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v7}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    rem-int v5, v7, v2

    move v1, v5

    :goto_1
    if-eq v1, v0, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getDragListener()Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    move-result-object v7

    invoke-interface {v7, p1, p2, p3, p4}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;->invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z

    move-result v7

    if-eqz v7, :cond_4

    iput v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMoveOnInvalidDrop:I

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeDropPage:Lcom/sec/daliviews/views/PageView;

    const-string v7, "HomePresenter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalidDrop: placed item on page "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setShowToast(Z)V

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v7, v1, 0x1

    rem-int v1, v7, v2

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setShowToast(Z)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v7, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v7, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    invoke-virtual {v7, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v8, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v7, v8, :cond_9

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_9

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x0

    invoke-virtual {p0, v1, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    iput v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMoveOnInvalidDrop:I

    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public isCurrentDefaultPage()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getHomeScreenIndex()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageView()Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->isAttached()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->ZEROPAGE_COUNT:I

    sub-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    if-eq v1, v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method isEventThemePage(Lcom/sec/android/app/launcher/data/PageItem;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/PageItem;->getContainerFilter()I

    move-result v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EVENTTHEME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

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

.method public isInvalidDrop()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMoveOnInvalidDrop:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPageDeletionPossible()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-le v0, v3, :cond_3

    :goto_1
    return v3

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    if-ne v5, v6, :cond_1

    instance-of v5, v2, Lcom/sec/android/app/launcher/activities/EventPagePresenter;

    if-nez v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isTransitionReady()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageViewContainer;->getFadeCompleteListener()Lcom/sec/daliviews/views/PageViewContainer$OnFadeCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTransitionInProgress:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadZeropageAppItem()V
    .locals 30

    const/16 v26, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->getCscFeatureZeroPagePackagename()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->getCscFeatureZeroPagePackagename()Ljava/lang/String;

    move-result-object v27

    const-string v28, "\\s*,\\s*"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    :cond_0
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    sput-object v27, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeropageAppList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    new-instance v15, Landroid/content/Intent;

    const-string v27, "com.samsung.app.launcher.HOME_ZEROPAGE"

    move-object/from16 v0, v27

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v27, 0x80

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    const/16 v22, 0x0

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageListEnabled()Z

    move-result v27

    if-nez v27, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->getCscFeatureZeroPagePackagename()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_2

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    :cond_2
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    const-string v28, "com.samsung.launcher.zeropage.metadata"

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v22

    if-nez v22, :cond_4

    const-string v27, "HomePresenter"

    const-string v28, "resParser is null"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void

    :cond_4
    :try_start_0
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v24

    const/16 v27, 0x2

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    :goto_2
    const/16 v27, 0x0

    const-string v28, "apptitle"

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    const/16 v27, 0x0

    const-string v28, "preview"

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v20

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v7, :cond_6

    if-eqz v20, :cond_6

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const-string v27, "HomePresenter"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "activityName: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " apptitle: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " appPreview: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    new-instance v16, Lcom/sec/android/app/launcher/data/ZeroPageListItem;

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2, v6}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    const/16 v27, 0x9c

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->setDbId(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->setTitle(Ljava/lang/String;)V

    const/16 v27, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->setSpanX(I)V

    const/16 v27, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->setSpanY(I)V

    sget-object v27, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeropageAppList:Ljava/util/List;

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    const/16 v27, 0x1

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    goto/16 :goto_2

    :cond_6
    :try_start_1
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v27, "HomePresenter"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ": appName or appPreview was not loaded"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v27, "HomePresenter"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "appnameStrId: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " previewResId: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_3

    :catch_1
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v9

    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    sget-object v27, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeropageAppList:Ljava/util/List;

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageListEnabled()Z

    move-result v27

    if-nez v27, :cond_8

    if-eqz v26, :cond_9

    const-string v27, "flipboard.boxer.app"

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    :cond_8
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v27

    const-string v28, "flipboard.boxer.app"

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isZeroAppExist(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_9

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v27, 0x7f020046

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v17, Lcom/sec/android/app/launcher/data/ZeroPageListItem;

    const-string v27, "flipboard.boxer.app"

    const-string v28, "flipboard.boxer.gui.LaunchActivity"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2, v13}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    const-string v27, "Flipboard"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->setTitle(Ljava/lang/String;)V

    const/16 v27, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->setSpanX(I)V

    const/16 v27, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->setSpanY(I)V

    sget-object v27, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeropageAppList:Ljava/util/List;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_9
    if-eqz v26, :cond_b

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    sget-object v27, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeropageAppList:Ljava/util/List;

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    sget-object v27, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeropageAppList:Ljava/util/List;

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/sec/android/app/launcher/data/ZeroPageListItem;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_a

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->saveHomeZeroPageName(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setZeroPageDummyBg()V

    :cond_a
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v27

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setZeroPageIntent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomeZeroPagePresenter()Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v27

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getPreview()Landroid/graphics/Bitmap;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setZeroPageBg(Landroid/graphics/Bitmap;)V

    :cond_b
    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageName()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    :goto_4
    sget-object v27, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeropageAppList:Ljava/util/List;

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_c

    sget-object v27, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeropageAppList:Ljava/util/List;

    move-object/from16 v0, v27

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/sec/android/app/launcher/data/ZeroPageListItem;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f

    sput v11, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSetPosition:I

    :cond_c
    const-string v27, "HomePresenter"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "mZeropageAppList.size() = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeropageAppList:Ljava/util/List;

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v27, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isZeropageDual:Z

    if-eqz v27, :cond_e

    const-string v27, "first"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    const/16 v27, 0x1

    sput v27, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSetPosition:I

    :cond_d
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomeZeroPagePresenter()Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setupHomeZeroPageDual()V

    :cond_e
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomeZeroPagePresenter()Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v28

    sget-object v27, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeropageAppList:Ljava/util/List;

    sget v29, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSetPosition:I

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/sec/android/app/launcher/data/ZeroPageListItem;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setZeroPage(Lcom/sec/android/app/launcher/data/ZeroPageListItem;)V

    sget-object v27, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeropageAppList:Ljava/util/List;

    sget v28, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSetPosition:I

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/sec/android/app/launcher/data/ZeroPageListItem;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->checkZeroPageImage()V

    goto/16 :goto_1

    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    :cond_10
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setZeroPageDummyBg()V

    goto/16 :goto_1
.end method

.method public moveToFavoritesPage()V
    .locals 7

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    if-ne v5, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    if-ne v5, v6, :cond_2

    sub-int v5, v0, v2

    int-to-float v5, v5

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public moveToPage(IF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0, p1, p2}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    :cond_0
    return-void
.end method

.method public moveToWidgetsFragment()Z
    .locals 5

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTransitionInProgress:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a02da

    invoke-virtual {v1, v3, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/launcher/utils/FadeDuration;

    invoke-direct {v4, v0}, Lcom/sec/android/app/launcher/utils/FadeDuration;-><init>(F)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showWidgetsFragmentAnimated(Lcom/sec/android/app/launcher/utils/FadeDuration;)V

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public moveToZeroPageListFragment()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showZeroPageListFragment()V

    return-void
.end method

.method public newPage(ILjava/util/List;Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;ZZZ)Lcom/sec/daliviews/views/PageView;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;",
            "Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;",
            "ZZZ)",
            "Lcom/sec/daliviews/views/PageView;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/launcher/activities/PagePresenter;

    instance-of v5, v12, Lcom/sec/android/app/launcher/activities/EventPagePresenter;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfEventPage:I

    sub-int v5, p1, v5

    if-ltz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfEventPage:I

    sub-int v6, p1, v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/launcher/activities/PagePresenter;

    :cond_2
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v12}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/PageItem;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/sec/android/app/launcher/data/HomePageItem;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v4, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v13

    invoke-virtual {v13}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomePageItem;->getSource()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->fromInt(I)Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v21

    new-instance v3, Lcom/sec/android/app/launcher/views/HomePageView;

    invoke-direct {v3}, Lcom/sec/android/app/launcher/views/HomePageView;-><init>()V

    new-instance v19, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0x11

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v6, v7}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;-><init>(III)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getViewRecycler()Lcom/sec/daliviews/views/ViewRecycler;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/launcher/views/HomePageView;->setViewRecycler(Lcom/sec/daliviews/views/ViewRecycler;)V

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomePageItem;->getPagePaddings()Landroid/graphics/Rect;

    move-result-object v18

    if-eqz v18, :cond_4

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/sec/android/app/launcher/views/HomePageView;->setPadding(IIII)V

    :cond_4
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/sec/android/app/launcher/views/HomePageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    invoke-static {v4}, Lcom/sec/android/app/launcher/data/HomePageItem;->createLayout(Lcom/sec/android/app/launcher/data/PageItem;)Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/launcher/views/HomePageView;->setLayout(Lcom/sec/daliviews/layouts/LayoutBase;)V

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomePageItem;->getRearrangement()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/launcher/views/HomePageView;->setRearrangementAlgorithm(I)V

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomePageItem;->canDragAndDrop()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/launcher/views/HomePageView;->setCanAcceptDrop(Z)V

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/sec/android/app/launcher/views/HomePageView;->setIsDragModeNewPage(Z)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mRearrangementDelay:F

    invoke-virtual {v3, v5}, Lcom/sec/android/app/launcher/views/HomePageView;->setRearrangementDragDelay(F)V

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomePageItem;->getContainerFilter()I

    move-result v5

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_8

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v5

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomePageItem;->getDbId()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/sec/android/app/launcher/views/HomePageView;->setContainerTypeAndId(II)V

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLongPressListener:Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/launcher/views/HomePageView;->setOnLongPressListener(Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragLocationListener:Lcom/sec/daliviews/views/AdapterView$dragLocationListener;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/launcher/views/HomePageView;->setDragLocationListener(Lcom/sec/daliviews/views/AdapterView$dragLocationListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/app/launcher/views/HomePageView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    const/4 v14, -0x1

    const/16 v17, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v22, v0

    monitor-enter v22

    const/4 v11, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    move-object/from16 v0, v21

    if-ne v5, v0, :cond_a

    const/4 v5, -0x1

    if-ne v14, v5, :cond_6

    move v14, v11

    :cond_6
    move/from16 v17, v11

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomePageItem;->getContainerFilter()I

    move-result v5

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EVENTTHEME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_9

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EVENTTHEME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v5

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomePageItem;->getDbId()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/sec/android/app/launcher/views/HomePageView;->setContainerTypeAndId(II)V

    goto :goto_2

    :cond_9
    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomePageItem;->getContainerFilter()I

    move-result v5

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_5

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v5

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomePageItem;->getDbId()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/sec/android/app/launcher/views/HomePageView;->setContainerTypeAndId(II)V

    goto :goto_2

    :cond_a
    const/4 v5, -0x1

    if-eq v14, v5, :cond_7

    :cond_b
    const/16 v16, -0x1

    :try_start_2
    sget-object v5, Lcom/sec/android/app/launcher/activities/HomePresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$HomePresenter$PageInsertPosition:[I

    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/launcher/views/HomePageView;->createDynamicItem(I)V

    new-instance v2, Lcom/sec/android/app/launcher/activities/PagePresenter;

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object/from16 v6, p0

    move/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/launcher/activities/PagePresenter;-><init>(Lcom/sec/daliviews/views/PageView;Lcom/sec/android/app/launcher/data/HomePageItem;ZLcom/sec/android/app/launcher/activities/HomePresenter;ZZZZ)V

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->updateDefaultHomeLayout()V

    invoke-virtual {v3, v2}, Lcom/sec/android/app/launcher/views/HomePageView;->setPagePresenter(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v6, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v5, v6, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMockupIndicatorImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/launcher/views/HomePageView;->setPageIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move/from16 v0, v16

    invoke-virtual {v5, v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    move/from16 v0, v16

    invoke-virtual {v5, v0, v3}, Lcom/sec/daliviews/views/PageViewContainer;->insertView(ILcom/sec/daliviews/views/NativeViewBase;)V

    if-eqz p6, :cond_12

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_e

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    :cond_e
    :goto_5
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/sec/android/app/launcher/data/HomePageItem;->setPageOrder(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getEmptyPageTextState()Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/sec/android/app/launcher/activities/PagePresenter;->setEmptyPage(Z)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v7, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v3, v6}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->addMiniPage(Lcom/sec/daliviews/views/PageView;Z)V

    :cond_10
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->setPrearrangedItemsToAdd(Ljava/util/List;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->addCountWorkSpace(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    sget v5, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    sget v6, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/launcher/data/HomePageItem;->setGridSize(II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->insertPage(Lcom/sec/android/app/launcher/data/PageItem;)J

    move-result-wide v6

    long-to-int v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragPageId:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/daliviews/layouts/PageLayout;->setGridSize(II)V

    if-eqz p4, :cond_11

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    :cond_11
    monitor-exit v22

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :pswitch_0
    move/from16 v16, v14

    goto/16 :goto_4

    :pswitch_1
    move/from16 v16, p1

    goto/16 :goto_4

    :pswitch_2
    add-int/lit8 v16, p1, 0x1

    goto/16 :goto_4

    :pswitch_3
    add-int/lit8 v16, v17, 0x1

    :try_start_3
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getEventThemeManager()Lcom/sec/android/app/launcher/theme/EventThemeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->isEventThemeEnable()Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfEventPage:I

    sub-int v16, v16, v5

    goto/16 :goto_4

    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->startPageAddAnim(Lcom/sec/android/app/launcher/views/HomePageView;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public newPage(Ljava/util/List;Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;)Lcom/sec/daliviews/views/PageView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;",
            "Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;",
            ")",
            "Lcom/sec/daliviews/views/PageView;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->newPage(Ljava/util/List;Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;ZZ)Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    return-object v0
.end method

.method public newPage(Ljava/util/List;Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;ZZ)Lcom/sec/daliviews/views/PageView;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;",
            "Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;",
            "ZZ)",
            "Lcom/sec/daliviews/views/PageView;"
        }
    .end annotation

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOnNewPageMockup:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDesktopPageIndex:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v2, v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDesktopPageIndex:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->newPage(ILjava/util/List;Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;ZZZ)Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    goto :goto_0
.end method

.method public newPageInZoomedOutPageMode(Lcom/sec/android/app/launcher/data/LauncherItem;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNeedToCreateNewPage:Z

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageItem:Lcom/sec/android/app/launcher/data/LauncherItem;

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->cancel(ZZ)V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->postOnBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v9, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v6, v9, :cond_0

    move v6, v7

    :goto_0
    return v6

    :cond_0
    iget-boolean v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomAnimationInProgress:Z

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v9, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v6, v9, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v6}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v9, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v6, v9, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v0, v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iput-boolean v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOnNewPageMockup:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDesktopPageIndex:Ljava/util/List;

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDesktopPageIndex:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDesktopPageIndex:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->LAST:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    invoke-virtual {p0, v3, v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->newPage(Ljava/util/List;Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;)Lcom/sec/daliviews/views/PageView;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v7}, Lcom/sec/daliviews/views/PageView;->setClickable(Z)V

    :cond_1
    iput-boolean v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOnNewPageMockup:Z

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateEditModeCheckBoxDescription()V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v6, v8}, Lcom/sec/daliviews/views/PageViewContainer;->finishAddingPageinZoomedOutPageMode(Z)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    sget-object v8, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v9, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {v6, v8, v9}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->switchMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    if-eqz v4, :cond_2

    const v6, 0x7f0d0030

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/daliviews/views/PageView;->updateBackground(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move v6, v7

    goto/16 :goto_0

    :cond_3
    instance-of v6, p1, Lcom/sec/daliviews/views/PageView;

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v6, v8}, Lcom/sec/daliviews/layouts/PageLayout;->getPageNumber(Lcom/sec/daliviews/views/PageView;)I

    move-result v6

    const/high16 v8, 0x3e800000    # 0.25f

    invoke-virtual {p0, v6, v8}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    move v6, v7

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    check-cast p1, Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v6, p1}, Lcom/sec/daliviews/layouts/PageLayout;->getPageNumber(Lcom/sec/daliviews/views/PageView;)I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v0, :cond_5

    move v6, v8

    goto/16 :goto_0

    :cond_5
    if-ltz v1, :cond_6

    iput v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMove:I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v8}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v6

    if-nez v6, :cond_6

    iget v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->ZEROPAGE_COUNT:I

    sub-int v6, v1, v6

    iput v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMove:I

    :cond_6
    sget-object v6, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    goto :goto_1

    :cond_7
    move v6, v8

    goto/16 :goto_0
.end method

.method public onCreate()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridHandler:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;

    :cond_0
    return-void
.end method

.method public onDragEnd()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDraggedView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDraggedView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDraggedView:Lcom/sec/daliviews/views/NativeViewBase;

    instance-of v0, v0, Lcom/sec/daliviews/views/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDraggedView:Lcom/sec/daliviews/views/NativeViewBase;

    instance-of v0, v0, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getGlowEffect()Lcom/sec/daliviews/effects/GlowEffect;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDraggedView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/effects/GlowEffect;->remove(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDraggedView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getDragListener()Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;->onDragEnd()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getDragListener()Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;->onDragEnd()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->onDragEnd()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->onDragEnd()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->onDragEnd()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v0, v2, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mBackButtonPressedWhileDragging:Z

    if-eqz v0, :cond_7

    :cond_6
    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    :cond_8
    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mBackButtonPressedWhileDragging:Z

    return-void

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method public onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    instance-of v6, p1, Lcom/sec/android/app/launcher/views/IconDropContainer;

    if-eqz v6, :cond_1

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v6

    sget-object v7, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v7

    if-eq v6, v7, :cond_1

    instance-of v6, p2, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v6, p2

    check-cast v6, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/views/HomeItemView;->getTitle()Lcom/sec/daliviews/views/TextView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    instance-of v6, v1, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v6, :cond_3

    move-object v6, v1

    check-cast v6, Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v6, "%s %s"

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v2, v7, v10

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v9, 0x7f0d004b

    invoke-virtual {v8, v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d00b6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v0, v7, v10

    aput-object v2, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    instance-of v6, v1, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v7, 0x7f0d001b

    invoke-virtual {v6, v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v8, 0x7f0d00ba

    invoke-virtual {v7, v8}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v6, p2, v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->announce(Lcom/sec/daliviews/views/NativeViewBase;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->enableSilhouette()V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getDragListener()Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getDragListener()Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_1

    :cond_3
    move-object v6, v1

    check-cast v6, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/views/HomeItemView;->getTitle()Lcom/sec/daliviews/views/TextView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v6, p1, p2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v6, p1, p2}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    invoke-virtual {v6, p1, p2}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_7
    return-void
.end method

.method public onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v2, v3, :cond_0

    instance-of v2, p1, Lcom/sec/daliviews/views/PageView;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->disableSilhouette()V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->makeSilhouetteVisible(Z)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getDragListener()Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getDragListener()Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_5
    return-void
.end method

.method public onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDraggedView:Lcom/sec/daliviews/views/NativeViewBase;

    instance-of v3, p1, Lcom/sec/daliviews/views/PageView;

    if-nez v3, :cond_2

    instance-of v3, p2, Lcom/sec/android/app/launcher/data/DataItemBase;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v3, p2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->checkOpenFolderPanel(Lcom/sec/daliviews/views/Item;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->setFolderItemDragMode(Z)V

    :cond_1
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->setFadeOutItem(Z)V

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    instance-of v3, p1, Lcom/sec/daliviews/views/PageView;

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/PageView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/PageView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->showEditBarForEmptyPage()V

    :cond_3
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragStartPage:I

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->isFolderOpened()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->getActiveFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragStartedFromFoderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getDragListener()Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;->onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getDragListener()Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;->onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragStartedFromFoderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :cond_b
    return-void
.end method

.method public onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 10

    const v6, 0x7f0d00b9

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v5, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v4, v5, :cond_1

    instance-of v4, p2, Lcom/sec/daliviews/views/PageView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, p1, Lcom/sec/android/app/launcher/views/HomePageView;

    if-eqz v4, :cond_2

    instance-of v4, p3, Lcom/sec/android/app/launcher/data/LauncherItem;

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    const/4 v0, 0x0

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

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "%s %s"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v7, 0x7f0d00b7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v0, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v4, p2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->announce(Lcom/sec/daliviews/views/NativeViewBase;Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getDragListener()Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    move-result-object v4

    invoke-interface {v4, p1, p2, p3}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;->onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getDragListener()Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    move-result-object v4

    invoke-interface {v4, p1, p2, p3}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;->onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "%s %s"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v7, 0x7f0d0063

    invoke-virtual {v6, v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v0, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v4, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v4, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    invoke-virtual {v4, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    goto/16 :goto_0
.end method

.method public onFolderCloseCompleted(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 2

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLiveIconEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/HomePresenter$24;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter$24;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/data/FolderItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onFolderClosed(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ContainerView;->setOnInterceptTouchListener(Lcom/sec/daliviews/views/ContainerViewBase$OnInterceptTouchListener;)V

    invoke-virtual {p1, v5}, Lcom/sec/android/app/launcher/data/FolderItem;->setDragEventInterest(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/launcher/activities/PagePresenter;->setPageFlipEnable(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHostContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getFolderColorIndex()I

    move-result v4

    invoke-virtual {v2, v3, v4, v6}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->setFolderColor(Lcom/sec/android/app/launcher/activities/PagePresenter;IZ)V

    :cond_1
    sget-boolean v2, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportFolderItemMove:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, v6, v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setFolderItemDragMode(ZZ)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->closeFolderPanel()V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v2

    if-ne v2, v7, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->checkVisible()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setRightMargin(Z)V

    :cond_3
    return-void
.end method

.method public onFolderClosing(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/AdapterView;->setOnItemClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/AdapterView;->setOnItemLongClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->blurWallpaper(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/effects/ShadowEffect;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method public onFolderCreated(Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageIndex(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-eq v1, v0, :cond_0

    iget v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageTransitTime:F

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    :cond_0
    return-void
.end method

.method public onFolderOpened(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/sec/android/app/launcher/data/FolderItem;->setDragEventInterest(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/views/AdapterView;->setOnItemClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/views/AdapterView;->setOnItemLongClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/views/AdapterView;->setOnItemTouchListener(Lcom/sec/daliviews/views/AdapterView$OnItemTouchListener;)V

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLiveIconEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/HomePresenter$23;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter$23;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/data/FolderItem;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHostContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getFolderColorIndex()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->setFolderColor(Lcom/sec/android/app/launcher/activities/PagePresenter;IZ)V

    :cond_1
    return-void
.end method

.method public onFolderOpening(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    new-instance v3, Lcom/sec/android/app/launcher/activities/HomePresenter$22;

    invoke-direct {v3, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter$22;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ContainerView;->setOnInterceptTouchListener(Lcom/sec/daliviews/views/ContainerViewBase$OnInterceptTouchListener;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOpenFolderPageChangeOnDragOutEnable:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->setPageFlipEnable(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->blurWallpaper(Z)V

    return-void
.end method

.method public onHomePressed()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->cancel(ZZ)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "HomePresenter"

    const-string v1, "HomePresenter onHomePressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->postOnHomePressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onItemAdded(Lcom/sec/daliviews/views/Item;)V
    .locals 8

    const/4 v7, 0x1

    instance-of v5, p1, Lcom/sec/android/app/launcher/data/PageItem;

    if-eqz v5, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v5

    if-ne v5, v2, :cond_0

    const/4 v0, 0x0

    :cond_1
    iget v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragPageId:I

    if-ne v5, v2, :cond_2

    const/4 v0, 0x0

    const/4 v5, -0x1

    iput v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragPageId:I

    :cond_2
    if-ne v0, v7, :cond_4

    check-cast p1, Lcom/sec/android/app/launcher/data/HomePageItem;

    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setupPageWithInitialize(Lcom/sec/android/app/launcher/data/HomePageItem;Z)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v6, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v5, v6, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0239

    invoke-virtual {v5, v6, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v5, v7, v3}, Lcom/sec/daliviews/views/PageViewContainer;->switchToNormalMode(ZF)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v5, "HomePresenter"

    const-string v6, "already have page presenter"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onItemBadgeUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isFingeSwipeFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageIndex(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEXT_INDEX_OF_ZEROPAGE:I

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTakeScreenshot:Z

    :cond_1
    return-void
.end method

.method public onItemClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)Z
    .locals 7

    const/4 v6, 0x0

    instance-of v1, p2, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->isFolderOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->hideGlowEffect()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->closeOpenFolder(Z)Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isLaunchEffectEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setAppLaunchedWithLaunchEffect()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getLaunchEffect()Lcom/sec/daliviews/effects/LaunchEffect;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/daliviews/effects/LaunchEffect;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    const v2, 0x7f0b008e

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/effects/LaunchEffect;->perform(Lcom/sec/daliviews/views/NativeViewBase;I)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->genClick(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object v1, p3

    check-cast v1, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-static {v2, v1}, Lcom/sec/android/app/launcher/utils/Utils;->launchUri(Landroid/app/Activity;Lcom/sec/android/app/launcher/data/LauncherItem;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v2, "HOIS"

    check-cast p3, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {p3}, Lcom/sec/android/app/launcher/data/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    const/4 v6, 0x1

    :cond_3
    return v6

    :cond_4
    const-string v1, "LaunchEffect"

    const-string v2, "[JAVA] HomePresenter.onItemClick() - State is not correct for this operation."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onItemDeleted(Lcom/sec/daliviews/views/Item;)V
    .locals 6

    instance-of v3, p1, Lcom/sec/android/app/launcher/data/PageItem;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->deletePage(Lcom/sec/android/app/launcher/activities/PagePresenter;Lcom/sec/daliviews/views/PageView;ZZ)V

    :cond_1
    return-void
.end method

.method public onItemLoadCompleted(Landroid/os/Bundle;)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setupViewsMain()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setupViewsExtra()V

    const-string v1, "HomePresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemLoadCompleted(), options: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    move-object v0, p1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/launcher/activities/HomePresenter$31;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter$31;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageListEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->getCscFeatureZeroPagePackagename()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->loadZeropageAppItem()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageListEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getZeroPageListFragment()Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->getZeroPageListPresenter()Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getZeroPageListFragment()Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->setVisible(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getZeroPageListFragment()Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->getZeroPageListPresenter()Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeropageAppList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->setupZeroPageApps(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onItemLongClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v6, 0x1

    instance-of v0, p3, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->genLongClick(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getMovability()I

    move-result v0

    if-ne v0, v6, :cond_2

    instance-of v0, p2, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;FFII)V

    invoke-virtual {p3}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/daliviews/views/ContainerViewBase;->useOwnColor(Z)V

    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onItemTouch(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isFocusAttached()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isKeypadFocusAttached()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v0, p2, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {p2, p4, p1}, Lcom/sec/android/app/launcher/views/HomeItemView;->showGlowEffectIfNeeded(Landroid/view/MotionEvent;Lcom/sec/daliviews/views/ContainerViewBase;)V

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

.method public onItemsDisplaced([Lcom/sec/daliviews/dragAndDrop/DisplacedItem;)V
    .locals 31

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v28, Landroid/util/SparseArray;

    invoke-direct/range {v28 .. v28}, Landroid/util/SparseArray;-><init>()V

    new-instance v19, Landroid/util/SparseArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v15

    move-object/from16 v14, p1

    array-length v0, v14

    move/from16 v25, v0

    const/16 v21, 0x0

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_17

    aget-object v17, v14, v21

    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mItem:Lcom/sec/daliviews/views/Item;

    if-nez v2, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mItem:Lcom/sec/daliviews/views/Item;

    move-object/from16 v23, v0

    const-string v3, "HomePresenter"

    const-string v4, "HP::onItemsDisplaced item(%d:%s) %d:%d %d,%d-> %d:%d %d,%d"

    const/16 v2, 0xa

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/daliviews/views/Item;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x1

    move-object/from16 v0, v23

    instance-of v2, v0, Lcom/sec/android/app/launcher/data/LauncherItem;

    if-eqz v2, :cond_7

    invoke-virtual/range {v23 .. v23}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v2

    :goto_2
    aput-object v2, v7, v8

    const/4 v2, 0x2

    move-object/from16 v0, v17

    iget v8, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldContainerType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v2, 0x3

    move-object/from16 v0, v17

    iget v8, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldContainerDbId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v2, 0x4

    move-object/from16 v0, v17

    iget v8, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldCellX:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v2, 0x5

    move-object/from16 v0, v17

    iget v8, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldCellY:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v2, 0x6

    move-object/from16 v0, v17

    iget v8, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v2, 0x7

    move-object/from16 v0, v17

    iget v8, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerDbId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/16 v2, 0x8

    move-object/from16 v0, v17

    iget v8, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewCellX:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/16 v2, 0x9

    move-object/from16 v0, v17

    iget v8, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewCellY:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v30, :cond_4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isFingeSwipeFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTakeScreenshot:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15}, Lcom/sec/android/app/launcher/activities/HomePresenter;->needToTakeScreenShot(Lcom/sec/daliviews/dragAndDrop/DisplacedItem;I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTakeScreenshot:Z

    :cond_4
    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerDbId:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_a

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    const-string v4, "DTHF"

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, v23

    instance-of v2, v0, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v2, :cond_8

    move-object/from16 v5, v23

    check-cast v5, Lcom/sec/android/app/launcher/data/FolderItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v6

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragStartPage:I

    sget v3, Lcom/sec/android/app/launcher/activities/LauncherApp;->ZERO_PAGENUM:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragStartPage:I

    :cond_5
    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldContainerDbId:I

    invoke-virtual {v5, v2}, Lcom/sec/android/app/launcher/data/FolderItem;->setContainerId(I)V

    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldContainerType:I

    invoke-virtual {v5, v2}, Lcom/sec/android/app/launcher/data/FolderItem;->setContainerType(I)V

    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldPos:I

    invoke-virtual {v5, v2}, Lcom/sec/android/app/launcher/data/FolderItem;->setPos(I)V

    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldCellX:I

    invoke-virtual {v5, v2}, Lcom/sec/android/app/launcher/data/FolderItem;->setCellX(I)V

    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldCellY:I

    invoke-virtual {v5, v2}, Lcom/sec/android/app/launcher/data/FolderItem;->setCellY(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragStartPage:I

    move-object/from16 v4, p0

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/data/FolderItem;II)Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;

    :cond_6
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getDefaultPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v16

    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v2

    move-object/from16 v0, v17

    iget v3, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldContainerDbId:I

    if-ne v2, v3, :cond_2

    const-string v2, "capture"

    const-string v3, "----onItemsDisplaced"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setMainHomeScreenshot(Z)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "N/A"

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->deleteDisplacedItem(Lcom/sec/daliviews/views/Item;)V

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->deleteDisplacedItem(Lcom/sec/daliviews/views/Item;)V

    goto :goto_3

    :cond_a
    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerDbId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, v23

    instance-of v2, v0, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v2, :cond_e

    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldContainerDbId:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/Item;->setContainerId(I)V

    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldContainerType:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/Item;->setContainerType(I)V

    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldCellX:I

    move-object/from16 v0, v17

    iget v3, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldCellY:I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldPos:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/daliviews/views/Item;->setPosition(III)V

    move-object/from16 v2, v23

    check-cast v2, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/HomeItem;->canUninstallOrDisable()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v2, v23

    check-cast v2, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v8, v23

    check-cast v8, Lcom/sec/android/app/launcher/data/HomeItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragStartedFromFoderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragStartPage:I

    const/4 v13, 0x0

    move-object/from16 v10, p0

    invoke-static/range {v7 .. v13}, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->createAndShow(Landroid/content/Context;Lcom/sec/android/app/launcher/data/HomeItem;Landroid/app/FragmentManager;Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/data/FolderItem;IZ)V

    goto/16 :goto_3

    :cond_b
    const-string v2, "HomePresenter"

    const-string v3, "Make UninstallConfirmDialogFragment"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v8, v23

    check-cast v8, Lcom/sec/android/app/launcher/data/HomeItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragStartedFromFoderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragStartPage:I

    move-object/from16 v10, p0

    invoke-static/range {v7 .. v12}, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->createAndShow(Landroid/content/Context;Lcom/sec/android/app/launcher/data/HomeItem;Landroid/app/FragmentManager;Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/data/FolderItem;I)V

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragStartedFromFoderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-nez v2, :cond_d

    check-cast v23, Lcom/sec/android/app/launcher/data/HomeItem;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragStartPage:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->restoreHomeIcon(Lcom/sec/android/app/launcher/data/HomeItem;IZ)V

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragStartedFromFoderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    check-cast v23, Lcom/sec/android/app/launcher/data/HomeItem;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragStartPage:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->restoreHomeIconToFolder(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/data/HomeItem;IZ)V

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->deleteDisplacedItem(Lcom/sec/daliviews/views/Item;)V

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerType:I

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_10

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerType:I

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_11

    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerType:I

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EVENTTHEME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_13

    :cond_11
    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerDbId:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/List;

    if-nez v24, :cond_12

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerDbId:I

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_12
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerType:I

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_15

    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerDbId:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/List;

    if-nez v24, :cond_14

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerDbId:I

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_15
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldContainerDbId:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/List;

    if-nez v24, :cond_16

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldContainerDbId:I

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_16
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_17
    const/16 v22, 0x0

    :goto_4
    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_19

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v26

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/List;

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageIndex(I)I

    move-result v27

    const/4 v2, -0x1

    move/from16 v0, v27

    if-eq v0, v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->onItemsDisplaced(Ljava/util/List;)V

    :cond_18
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    :cond_19
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->onItemsDisplaced(Ljava/util/List;)V

    :cond_1a
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v22, 0x0

    :goto_5
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    move/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->onItemsDisplaced(ILjava/util/List;)V

    add-int/lit8 v22, v22, 0x1

    goto :goto_5
.end method

.method public onItemsUpdated(Ljava/util/List;)V
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

    return-void
.end method

.method public onNativeInit()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setupViews()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setupDnDEffects()V

    return-void
.end method

.method public onNativeInit(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setupRootView()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mode"

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_HOME_PAGES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/sec/android/app/launcher/data/DataManager;->checkItemLoading(Lcom/sec/android/app/launcher/data/DataManager$ILoadCompleteListener;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public onPause()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->pause()V

    :cond_0
    sget-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLiveIconEnabled:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->stopLiveIconAnimationAllPage()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->triggerLiveIconAnimationInAdapter(Lcom/sec/daliviews/views/Adapter;Z)V

    :cond_1
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->isResizing()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->endResize()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->snapToCurrentPage(F)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->cancelFastScroll()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->isFolderOpened()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->closeOpenFolder(Z)Z

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->closeOpenFolder(Z)Z

    :cond_5
    invoke-virtual {p0, v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setIgnoreDrawAppWidget(Z)V

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPauseState:Z

    return-void

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->closeOpenFolder(Z)Z

    goto :goto_0
.end method

.method public onReplaceFolderToItems(Lcom/sec/android/app/launcher/data/FolderItem;I)V
    .locals 12

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/sec/android/app/launcher/data/FolderItem;->detachAllItems(Z)V

    invoke-virtual {p1, v4}, Lcom/sec/android/app/launcher/data/FolderItem;->removeItems(Ljava/util/List;)V

    const/4 v0, 0x0

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerType()I

    move-result v7

    sget-object v8, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v8

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v7, v2}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->addTopFiveItem(Lcom/sec/daliviews/views/Item;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_4

    sget-object v7, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/sec/daliviews/views/Item;->setContainerType(I)V

    invoke-virtual {p0, p2, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->fitItemToCurrentorNextPage(ILcom/sec/daliviews/views/Item;)Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->addItemsinNewPage(ILjava/util/List;)V

    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sec/daliviews/views/ListAdapter;->removeItem(Lcom/sec/daliviews/views/Item;)Z

    if-nez p2, :cond_2

    sget-boolean v7, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLiveIconEnabled:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/sec/android/app/launcher/activities/HomePresenter$17;

    invoke-direct {v8, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter$17;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    const-wide/16 v10, 0xa

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    move-object v1, p1

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/sec/android/app/launcher/activities/HomePresenter$18;

    invoke-direct {v8, p0, v4, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter$18;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Ljava/util/List;Lcom/sec/android/app/launcher/data/FolderItem;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/sec/daliviews/views/Item;->setContainerId(I)V

    const/4 v6, 0x0

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v6

    if-eqz v6, :cond_4

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v7}, Lcom/sec/daliviews/views/ListAdapter;->addItem(Lcom/sec/daliviews/views/Item;Z)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onResizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 4

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getDragListener()Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;->onResizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getDragListener()Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;->onResizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->onResizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->onResizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->onResizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :cond_4
    iget v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMoveOnInvalidDrop:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_5

    iget v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMoveOnInvalidDrop:I

    iget v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mInvalidDropPageFlipDuration:F

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/launcher/activities/HomePresenter$14;

    invoke-direct {v3, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter$14;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSavedState:Landroid/os/Bundle;

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->supportHomeModeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mIsRestartModeChange:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mSavedState:Landroid/os/Bundle;

    const-string v1, "homescreen_mode"

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mIsRestartModeChange:Z

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 14

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/sec/android/app/launcher/activities/HomePresenter$4;

    invoke-direct {v11, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter$4;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v11, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v0, v11, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomOutMode:Z

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->RestoreScrollEffect()V

    :cond_1
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "GATE"

    const-string v11, "<GATE-M>SCREEN_LOADED_HOME</GATE-M>"

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLiveIconEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v7

    const/4 v0, 0x1

    invoke-direct {p0, v7, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->triggerLiveIconAnimationInAdapter(Lcom/sec/daliviews/views/Adapter;Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->resumeScreen(I)V

    :cond_4
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isFingeSwipeFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCheckTheme()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTakeScreenshot:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setCheckTheme(Z)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->checkFileExist()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->getMainHomeScreenshot()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v11, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v11}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setMainHomeScreenshot(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->setWallpaperButtonVisible()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->updateLayoutView()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v11, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v0, v11, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v8

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v0

    const/4 v11, 0x2

    if-ne v0, v11, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    if-eqz v8, :cond_9

    instance-of v0, v8, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v11, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-eq v0, v11, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/sec/android/app/launcher/activities/HomePresenter$5;

    invoke-direct {v11, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter$5;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mUpdateEditMode:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v11, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v0, v11, :cond_a

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lcom/sec/daliviews/views/PageView;->enableGrid(Z)V

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageView;->showGrid()V

    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateEditMode()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mUpdateEditMode:Z

    :cond_b
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenterNeedToBeUpdated:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenterNeedToBeUpdated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    const/4 v11, 0x4

    if-ne v0, v11, :cond_c

    const v0, 0x7f0a00a9

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v0, 0x7f0a009d

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_0
    sget v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    const/4 v11, 0x4

    if-ne v0, v11, :cond_d

    const v0, 0x7f0a00a5

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v0, 0x7f0a00a1

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_1
    sget v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    const/4 v11, 0x5

    if-ne v0, v11, :cond_e

    new-instance v6, Landroid/graphics/Rect;

    const v0, 0x7f0a00f0

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v11, 0x7f0a00f3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v12, 0x7f0a00f2

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v13, 0x7f0a00ee

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-direct {v6, v0, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenterNeedToBeUpdated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePage(Lcom/sec/android/app/launcher/activities/PagePresenter;IIIILandroid/graphics/Rect;)V

    goto :goto_3

    :cond_c
    const v0, 0x7f0a00aa

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v0, 0x7f0a009e

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_0

    :cond_d
    const v0, 0x7f0a00a6

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v0, 0x7f0a00a2

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_1

    :cond_e
    new-instance v6, Landroid/graphics/Rect;

    const v0, 0x7f0a00ef

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v11, 0x7f0a00f3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v12, 0x7f0a00f1

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v13, 0x7f0a00ee

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-direct {v6, v0, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenterNeedToBeUpdated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setIgnoreDrawAppWidget(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPauseState:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mWillSwitchFirstTimeAfterResume:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroActivityLaunched:Z

    if-eqz v0, :cond_2

    const-string v0, "launcher.current_screen"

    iget v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEXT_INDEX_OF_ZEROPAGE:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v0, v1, :cond_3

    :cond_1
    const-string v0, "homescreen_mode"

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    const-string v0, "launcher.current_screen"

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string v0, "homescreen_mode"

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->pauseScreen(I)V

    :cond_0
    return-void
.end method

.method public openFolder(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderBoundingBox()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->openFolder(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;Landroid/graphics/Rect;)V

    return-void
.end method

.method public openFolder(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->openFolder(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;ZLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public pageContentChanged(Lcom/sec/android/app/launcher/activities/PagePresenter;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isFingeSwipeFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->hasGoogleSearchWidget()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setEnableHotWord(Z)V

    iget v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->ZEROPAGE_COUNT:I

    if-ne v0, v2, :cond_0

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTakeScreenshot:Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->IsDefaultHome()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setMainHomeScreenshot(Z)V

    :cond_1
    return-void
.end method

.method public pageContetUpdate(Lcom/sec/android/app/launcher/activities/PagePresenter;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isFingeSwipeFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->ZEROPAGE_COUNT:I

    if-ne v0, v2, :cond_0

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTakeScreenshot:Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->IsDefaultHome()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setMainHomeScreenshot(Z)V

    :cond_1
    return-void
.end method

.method public pageLoadItems(Lcom/sec/android/app/launcher/activities/PagePresenter;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->hasGoogleSearchWidget()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setEnableHotWord(Z)V

    :cond_0
    return-void
.end method

.method public postOnHomePressed()Z
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->cancelFastScroll()V

    const-string v2, "HomePresenter"

    const-string v3, "HomePresenter postOnHomePressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PageViewContainer;->getDefaultPageIndex()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v3

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->onBackPressed()Z

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->onHomePressed()Z

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->onBackPressed()Z

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->cancelPinchMode()Z

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->isResizing()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->endResize()V

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomAnimationInProgress:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->isFolderOpened()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getHomeScreenIndex()I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageView()Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->isAttached()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->ZEROPAGE_COUNT:I

    sub-int/2addr v1, v2

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v2

    if-eq v2, v1, :cond_5

    iget v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageSwapDuration:F

    iget v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageSwapDurationPerPage:F

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v5

    sub-int v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    :cond_5
    const/4 v2, 0x1

    return v2

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->getActiveFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->getActiveFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerType()I

    move-result v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->onBackPressed()Z

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->isFolderOpened()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->onBackPressed()Z

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->onHomePressed()V

    goto/16 :goto_0
.end method

.method public readDimension(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public refreshContentDescriptions()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->refreshContentDescriptions()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->refreshContentDescriptions()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->refreshContentDescriptions()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PageIndicator;->reloadDescriptions(Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method public removePage(Lcom/sec/daliviews/views/PageView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/PageViewContainer;->deleteView(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method

.method public resetOptionTray()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ContainerViewBase;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->restoreOffsetPosition()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->isPageDeletionPossible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setVisibilityAnimated(I)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageMargins()V

    :cond_2
    return-void
.end method

.method public restoreFolderItem(Lcom/sec/android/app/launcher/data/FolderItem;IZ)V
    .locals 3

    const-string v1, "HomePresenter"

    const-string v2, "restoreFolderItem : Try to restore item"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerType()I

    move-result v1

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/views/ListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    add-int/lit8 p2, v1, -0x1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/views/ListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    :cond_3
    if-eqz p3, :cond_0

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {p0, p2, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    goto :goto_0
.end method

.method public restoreHomeIcon(Lcom/sec/android/app/launcher/data/HomeItem;IZ)V
    .locals 3

    const-string v1, "HomePresenter"

    const-string v2, "restoreHomeIcon : Try to restore item"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerType()I

    move-result v1

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/views/ListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    add-int/lit8 p2, v1, -0x1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/views/ListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    :cond_3
    if-eqz p3, :cond_0

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {p0, p2, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    goto :goto_0
.end method

.method public restoreHomeIconToFolder(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/data/HomeItem;IZ)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/launcher/data/FolderItem;->addItem(Lcom/sec/daliviews/views/Item;)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->refresh()V

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-gt v0, p3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    add-int/lit8 p3, v0, -0x1

    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {p0, p3, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    :cond_1
    return-void
.end method

.method public runChangeGrid(II)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v4, "HomePresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Screen Grid :: runChangeGrid - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "HomePresenter"

    const-string v5, "Screen Grid :: runChangeGrid - No page presenters found."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridHandler:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->mIsGridChanging:Z
    invoke-static {v4, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->access$5402(Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;Z)Z

    :goto_0
    return-void

    :cond_1
    sget v4, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_COLUMNS:I

    if-eqz v4, :cond_2

    sget v4, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_ROWS:I

    if-nez v4, :cond_3

    :cond_2
    sget v4, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    sput v4, Lcom/sec/android/app/launcher/activities/HomePresenter;->PREVIOUS_HOME_COLUMNS:I

    sget v4, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    sput v4, Lcom/sec/android/app/launcher/activities/HomePresenter;->PREVIOUS_HOME_ROWS:I

    :goto_1
    sget v4, Lcom/sec/android/app/launcher/activities/HomePresenter;->PREVIOUS_HOME_COLUMNS:I

    if-ne p1, v4, :cond_4

    sget v4, Lcom/sec/android/app/launcher/activities/HomePresenter;->PREVIOUS_HOME_ROWS:I

    if-ne p2, v4, :cond_4

    sput p1, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_COLUMNS:I

    sput p2, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_ROWS:I

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridHandler:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->mIsGridChanging:Z
    invoke-static {v4, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->access$5402(Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;Z)Z

    const-string v4, "HomePresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Screen Grid :: runChangeGrid - same as previous grid size - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget v4, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_COLUMNS:I

    sput v4, Lcom/sec/android/app/launcher/activities/HomePresenter;->PREVIOUS_HOME_COLUMNS:I

    sget v4, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_ROWS:I

    sput v4, Lcom/sec/android/app/launcher/activities/HomePresenter;->PREVIOUS_HOME_ROWS:I

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTempPagePresenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v4, :cond_9

    const-string v4, "HomePresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Screen Grid :: runChangeGrid - remove temp page size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTempPagePresenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mPagePresenters : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDoNotReorderPage:Z

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTempPagePresenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageIndex(Lcom/sec/daliviews/views/PageView;)I

    move-result v1

    if-eqz v0, :cond_6

    if-gt v0, v1, :cond_5

    iget v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_6

    iget v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    if-ne v4, v1, :cond_6

    :cond_5
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    :cond_6
    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ListAdapter;->detachAllItems()V

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v7, v8}, Lcom/sec/android/app/launcher/activities/HomePresenter;->deletePage(Lcom/sec/android/app/launcher/activities/PagePresenter;Lcom/sec/daliviews/views/PageView;ZZ)V

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTempPagePresenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->reorderPages()V

    iput-boolean v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDoNotReorderPage:Z

    :goto_3
    sget v4, Lcom/sec/android/app/launcher/activities/HomePresenter;->PREVIOUS_HOME_COLUMNS:I

    sget v5, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageColumn:I

    if-ne v4, v5, :cond_8

    sget v4, Lcom/sec/android/app/launcher/activities/HomePresenter;->PREVIOUS_HOME_ROWS:I

    sget v5, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageRow:I

    if-eq v4, v5, :cond_b

    :cond_8
    sget v4, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageColumn:I

    sput v4, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    sget v4, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageRow:I

    sput v4, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/activities/PagePresenter;

    sget v4, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageColumn:I

    if-ne p1, v4, :cond_a

    sget v4, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageRow:I

    if-ne p2, v4, :cond_a

    invoke-virtual {v3, v8}, Lcom/sec/android/app/launcher/activities/PagePresenter;->restorePage(Z)V

    goto :goto_4

    :cond_9
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTempPagePresenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_3

    :cond_a
    invoke-virtual {v3, v7}, Lcom/sec/android/app/launcher/activities/PagePresenter;->restorePage(Z)V

    goto :goto_4

    :cond_b
    sput p1, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_COLUMNS:I

    sput p1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    sput p2, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_ROWS:I

    sput p2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    sget v4, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_COLUMNS:I

    sget v5, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageColumn:I

    if-ne v4, v5, :cond_e

    sget v4, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_ROWS:I

    sget v5, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageRow:I

    if-ne v4, v5, :cond_e

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_c
    invoke-direct {p0, p2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateShadowEffect(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageBackgrounds()V

    iget v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_d

    iget v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    :cond_d
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridHandler:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->mIsGridChanging:Z
    invoke-static {v4, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->access$5402(Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;Z)Z

    const-string v4, "HomePresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Screen Grid :: runChangeGrid - same as backup grid size - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/activities/PagePresenter;

    if-eqz v3, :cond_f

    instance-of v4, v3, Lcom/sec/android/app/launcher/activities/EventPagePresenter;

    if-nez v4, :cond_f

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->changeGridSize(II)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/sec/android/app/launcher/activities/HomePresenter$25;

    invoke-direct {v5, p0}, Lcom/sec/android/app/launcher/activities/HomePresenter$25;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public saveHomeZeroPageScreenshots()V
    .locals 9

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    const/4 v7, 0x1

    const/high16 v8, 0x41c80000    # 25.0f

    invoke-static {v7, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v0, v6

    :try_start_0
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/briefing.jpg"

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v6, v0, :cond_0

    const-string v6, "HomePresenter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ZeroImg Size error : zeroImage height = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", disHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v6, v3}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->SetZeroPageBg(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v4, v5

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_1
    const-string v6, "HomePresenter"

    const-string v7, "fail to create zeroImage BitmapDrawable"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v4, v5

    goto :goto_1
.end method

.method public screenGrid()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomAnimationInProgress:Z

    if-nez v2, :cond_4

    const-string v2, "HomePresenter"

    const-string v3, "Screen Grid :: screenGrid entered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->sendIntentForSamsungPay(Z)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->clearSelectionArea()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridHandler:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->mIsGridChanging:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->access$5402(Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;Z)Z

    iput-boolean v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelChangeGrid:Z

    iput-boolean v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDoneChangeGrid:Z

    iput-boolean v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelOnScreenGrid:Z

    iput-boolean v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDoneOnScreenGrid:Z

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->switchMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setVisibilityAnimated(I)V

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTempPagePresenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/daliviews/views/PageView;->enableGrid(Z)V

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PageView;->showGrid()V

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/daliviews/views/PageView;->setHapticFeedbackEnabled(Z)V

    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->backupPage()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/PageViewContainer;->detachView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    if-eqz v2, :cond_3

    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchZeroPageViewAttachedMode(Z)V

    :cond_3
    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->runScaledModeForScreenGrid(Z)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-direct {p0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchPageIndicatorMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageMargins()V

    :cond_4
    return-void
.end method

.method public screenGridforThemeGrid()V
    .locals 3

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTempPagePresenter:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->backupPage()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAccessibilityMode(Z)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setAccessibilityMode(Z)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->setAccessibilityMode(Z)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setAccessibilityMode(Z)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->setAccessibilityMode(Z)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->setAccessibilityMode(Z)V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->setAccessibilityMode(Z)V

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PresenterBase;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/activities/PresenterBase;->setAccessibilityMode(Z)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public setDefaultHome(I)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getDefaultPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v3

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v5, p1}, Lcom/sec/android/app/launcher/activities/LauncherApp;->setHomeScreenIndex(Landroid/content/Context;I)V

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge p1, v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/activities/PagePresenter;

    :cond_0
    if-eq v3, v2, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/launcher/activities/PagePresenter;

    if-ne p1, v1, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/activities/PagePresenter;->setAsDefaultHome(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setMainHomeScreenshot(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateEditModeCheckBoxDescription()V

    return-void
.end method

.method public setDnDEffect(I)V
    .locals 1

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->setDnDEffect(I)V

    return-void
.end method

.method public setDropPage(Lcom/sec/daliviews/views/PageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeDropPage:Lcom/sec/daliviews/views/PageView;

    return-void
.end method

.method public setFlagToDragFromWidgetList()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragFromWidgetList:Z

    return-void
.end method

.method public setFlagToMoveToFavoritePage()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMoveToFavorite:Z

    return-void
.end method

.method setFlipTriggerForPages(I)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/daliviews/views/PageView;->setPageFlipTrigger(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFolderItemDragMode(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->setFolderItemDragMode(ZZ)Z

    :cond_0
    return-void
.end method

.method setHomePageScrollAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    const v1, 0x7f0b009f

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottom:Lcom/sec/daliviews/views/ContainerView;

    return-void
.end method

.method public setIgnoreDrawAppWidget(Z)V
    .locals 11

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-nez v8, :cond_1

    const-string v8, "HomePresenter"

    const-string v9, "setIgnoreDrawAppWidget,  mPageLayout is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridHandler:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridHandler:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->mIsGridChanging:Z
    invoke-static {v8}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->access$5400(Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "HomePresenter"

    const-string v9, "setIgnoreDrawAppWidget,  IsGridChanging"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v8, "HomePresenter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setIgnoreDrawAppWidget() ignore:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v8}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v8, v1}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/sec/daliviews/views/PageView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/daliviews/views/Adapter;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    instance-of v8, v2, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v8, :cond_3

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v7

    instance-of v8, v7, Lcom/sec/android/app/launcher/views/AppWidgetView;

    if-eqz v8, :cond_3

    check-cast v7, Lcom/sec/android/app/launcher/views/AppWidgetView;

    invoke-virtual {v7, p1}, Lcom/sec/android/app/launcher/views/AppWidgetView;->setIgnoreDraw(Z)V

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setLandscapeEffect(Z)V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v1, v2, v2}, Lcom/sec/daliviews/views/PageViewContainer;->setLandscapeEffectParams(FF)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    const v2, 0x7f0a00dd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f0a00de

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/daliviews/views/PageViewContainer;->setLandscapeEffectParams(FF)V

    goto :goto_0
.end method

.method public setMainHomeScreenshot()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->setMainHomeScreenshot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->setDirect(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->captureMainHomeScreen(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    :cond_0
    return-void
.end method

.method public setMainHomeScreenshot(Lcom/sec/android/app/launcher/activities/PagePresenter;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsDefaultTheme()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->setMainHomeScreenshot(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->captureMainHomeScreen(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    const/16 v1, 0x4b0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->setMainHomeScreenshot(I)V

    goto :goto_0
.end method

.method public setMainHomeScreenshot(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->setMainHomeScreenshot(Z)V

    :cond_0
    return-void
.end method

.method public setPageFlipDirection()V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/activities/PagePresenter;

    instance-of v3, v2, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/sec/daliviews/views/PageView;->setPageFlipDirection(ZZ)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPageIndicatorVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/PageIndicator;->setVisibility(I)V

    return-void
.end method

.method public setScrollEffect(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v0, v1, :cond_1

    iput p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewScrollEffectMode:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setScrollEffect(I)V

    goto :goto_0
.end method

.method public setScrolling(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    return-void
.end method

.method public setShowToast(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mShowToastMsg:Z

    return-void
.end method

.method public setTakescreenshot()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTakeScreenshot:Z

    return-void
.end method

.method public setThemeTransitionEffect(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->applyScrollEffect(I)V

    return-void
.end method

.method public setVerticalScrollEffect(I)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->setVerticalScrollEffect(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    const-string v0, "HomePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HomePresenter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mVisibility:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->attachRootView()V

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/sec/daliviews/utils/LayerManager;->instance()Lcom/sec/daliviews/utils/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/utils/LayerManager;->updateLayers()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->detachRootViewIfNeeded()V

    goto :goto_0
.end method

.method public setVisibilityAnimated(ILcom/sec/android/app/launcher/utils/FadeDuration;Z)V
    .locals 23

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->mVisibility:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v3, :cond_d

    if-nez p1, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnimType:I

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFadeListener:Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterFadeListener;

    monitor-enter v4

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->attachRootView()V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnimType:I

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTransitionInProgress:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/launcher/utils/FadeDuration;->getInDuration()F

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMoveToFavorite:Z

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragFromWidgetList:Z

    if-nez v4, :cond_6

    const/4 v4, 0x1

    :goto_1
    move/from16 v0, p3

    invoke-virtual {v5, v6, v3, v4, v0}, Lcom/sec/daliviews/views/PageViewContainer;->fadeIn(FZZZ)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->fadeInNoScaleAnimateTopFive()V

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragFromWidgetList:Z

    sget-boolean v3, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLiveIconEnabled:Z

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/PagePresenter;->populated()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/daliviews/views/ListAdapter;->getItems()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/daliviews/views/Item;

    instance-of v3, v13, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v3, :cond_4

    invoke-virtual {v13}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/launcher/views/HomeItemView;

    check-cast v13, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/data/HomeItem;->hasLiveIcon()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/HomeItemView;->startAnim()V

    goto :goto_2

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnimType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTransitionInProgress:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnim2_Scale:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnim2_EntryDelay:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnim2_EntryDuration:F

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mWillSwitchFirstTimeAfterResume:Z

    invoke-virtual/range {v3 .. v8}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityScaleAnimated(IFFFZ)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mWillSwitchFirstTimeAfterResume:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mWillSwitchFirstTimeAfterResume:Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v3, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v18

    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/sec/daliviews/views/PageView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/sec/daliviews/views/Adapter;->getItems()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v13}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v16

    if-eqz v16, :cond_9

    move-object/from16 v0, v16

    instance-of v3, v0, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v3, :cond_a

    if-eqz v21, :cond_9

    move-object/from16 v3, v16

    check-cast v3, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/views/HomeItemView;->getImageView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnim2_LeaveDelay:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnim2_EntryDuration:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnim2_EntryDuration:F

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/sec/daliviews/effects/ShadowEffect;->applyWithAnimation(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;FF)V

    goto :goto_3

    :cond_a
    move-object/from16 v0, v16

    instance-of v3, v0, Lcom/sec/android/app/launcher/views/FolderView;

    if-eqz v3, :cond_9

    if-eqz v21, :cond_9

    move-object/from16 v3, v16

    check-cast v3, Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getBackgroundView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnim2_LeaveDelay:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnim2_EntryDuration:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnim2_EntryDuration:F

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/sec/daliviews/effects/ShadowEffect;->applyWithAnimation(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;FF)V

    goto :goto_3

    :cond_b
    sget-boolean v3, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLiveIconEnabled:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v9

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->triggerLiveIconAnimationInAdapter(Lcom/sec/daliviews/views/Adapter;Z)V

    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    if-nez p1, :cond_14

    const/4 v3, 0x1

    :goto_5
    invoke-virtual {v4, v3}, Lcom/sec/daliviews/views/ContainerView;->setSensitive(Z)V

    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnimType:I

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-eqz v3, :cond_e

    if-eqz p1, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/PageIndicator;->setVisibility(I)V

    :cond_e
    if-nez p1, :cond_f

    invoke-static {}, Lcom/sec/daliviews/utils/LayerManager;->instance()Lcom/sec/daliviews/utils/LayerManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/utils/LayerManager;->updateLayers()V

    :cond_f
    return-void

    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnimType:I

    if-nez v3, :cond_12

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v3, 0x7f0d0030

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const v3, 0x7f0a004b

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTransitionInProgress:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/launcher/utils/FadeDuration;->getOutDuration()F

    move-result v4

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, p3

    invoke-virtual {v3, v0, v1, v4, v2}, Lcom/sec/daliviews/views/PageViewContainer;->fadeOut(Ljava/lang/String;FFZ)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->fadeOutNoScaleAnimateTopFive()V

    goto :goto_4

    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnimType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTransitionInProgress:Z

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v3, v4, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnim2_Scale:F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mAppsEntryAnim2_LeaveDuration:F

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mWillSwitchFirstTimeAfterResume:Z

    invoke-virtual/range {v3 .. v8}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityScaleAnimated(IFFFZ)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mWillSwitchFirstTimeAfterResume:Z

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mWillSwitchFirstTimeAfterResume:Z

    goto/16 :goto_4

    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_5
.end method

.method public setVisibilityEditBarPresenter(I)V
    .locals 4

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->hideEditBar()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PageView;->getDynamicItem()Lcom/sec/daliviews/views/PageView$DynamicPageItem;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentFragmentId()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->isPageDeletionPossible()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v1, v0, p1}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setupEditBar(Lcom/sec/daliviews/views/Item;I)V

    goto :goto_0

    :cond_2
    move p1, v1

    goto :goto_1
.end method

.method public setWidgetOpenFolderView(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mWidgetOpenFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    return-void
.end method

.method public setchangeGridForLiveicon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mchangeGridFiverow:Z

    return-void
.end method

.method setupDarkenView()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getDarkenView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    new-instance v0, Lcom/sec/daliviews/views/ImageView;

    invoke-direct {v0}, Lcom/sec/daliviews/views/ImageView;-><init>()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerView;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/daliviews/views/ImageView;->setSize(II)V

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/ContainerView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {v0, v4, v4, v4, v5}, Lcom/sec/daliviews/views/ImageView;->setPosition(FFFZ)V

    invoke-virtual {v0, v5}, Lcom/sec/daliviews/views/ImageView;->setSensitive(Z)V

    return-void
.end method

.method public setupDnDEffects()V
    .locals 32

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getSavedDnDEffectState()I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->setDnDEffect(I)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v3, 0x7f0a006a

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const v3, 0x7f0a0062

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const v3, 0x7f0a0060

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    new-instance v30, Landroid/util/TypedValue;

    invoke-direct/range {v30 .. v30}, Landroid/util/TypedValue;-><init>()V

    const v3, 0x7f0a0074

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    const v3, 0x7f0a0075

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    const v3, 0x7f0a0061

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    const v3, 0x7f0a0072

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v10

    const v3, 0x7f0a0069

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v11

    const v3, 0x7f0a0073

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v12

    const v3, 0x7f0a006b

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v13

    const v3, 0x7f0a006c

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v14

    const v3, 0x7f0a0063

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v15

    const v3, 0x7f0a0070

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v16

    const v3, 0x7f0a0071

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v17

    const v3, 0x7f0a0067

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v18

    const v3, 0x7f0a0068

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v19

    const v3, 0x7f0a006e

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v20

    const v3, 0x7f0a0065

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v21

    const v3, 0x7f0a006e

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v22

    const v3, 0x7f0a0065

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v23

    const v3, 0x7f0a006f

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v24

    const v3, 0x7f0a0066

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v25

    const v3, 0x7f0a006d

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v26

    const v3, 0x7f0a0064

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v27

    const v3, 0x7f0d0040

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v3

    invoke-virtual/range {v3 .. v28}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->initEmitterProperties(FFFIIIFFFFFFFFFFFFFFFFFFLjava/lang/String;)V

    const v3, 0x7f0a0286

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v3

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->setSilhouetteQuality(F)V

    const v3, 0x7f0a0285

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v3

    invoke-virtual/range {v30 .. v30}, Landroid/util/TypedValue;->getFloat()F

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->setSilhouetteOpacity(F)V

    return-void
.end method

.method public showingToast()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mShowToastMsg:Z

    return v0
.end method

.method public surfaceChanged()V
    .locals 23

    const-string v1, "HomePresenter"

    const-string v8, "surfaceChanged()"

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v8, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v1, v8, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v8, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v1, v8, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v8, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v1, v8, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->endResize()V

    :cond_1
    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottomRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottomRootAttached:Z

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    const v8, 0x7f0b0072

    invoke-virtual {v1, v8}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v18

    check-cast v18, Lcom/sec/daliviews/views/ContainerView;

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottomRoot:Lcom/sec/daliviews/views/ContainerView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual/range {v18 .. v18}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottomRootAttached:Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_4
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/daliviews/views/Item;

    move-object/from16 v9, v21

    check-cast v9, Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/data/HomePageItem;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0a00f5

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/sec/android/app/launcher/data/HomePageItem;->setPageLayoutHeight(I)V

    goto :goto_0

    :cond_5
    sget v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    const/4 v8, 0x4

    if-ne v1, v8, :cond_9

    const v1, 0x7f0a00a9

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v1, 0x7f0a009d

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_1
    sget v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    const/4 v8, 0x4

    if-ne v1, v8, :cond_a

    const v1, 0x7f0a00a5

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v1, 0x7f0a00a1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :goto_2
    sget v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    const/4 v8, 0x5

    if-ne v1, v8, :cond_b

    new-instance v7, Landroid/graphics/Rect;

    const v1, 0x7f0a00f0

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v8, 0x7f0a00f3

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v10, 0x7f0a00f2

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f0a00ee

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-direct {v7, v1, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v2

    const/16 v20, 0x0

    if-eqz v2, :cond_6

    instance-of v1, v2, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    if-nez v1, :cond_6

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePage(Lcom/sec/android/app/launcher/activities/PagePresenter;IIIILandroid/graphics/Rect;)V

    const/16 v20, 0x1

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_7
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/launcher/activities/PagePresenter;

    instance-of v1, v9, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    if-nez v1, :cond_7

    if-eqz v20, :cond_8

    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_8
    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    move-object/from16 v8, p0

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePage(Lcom/sec/android/app/launcher/activities/PagePresenter;IIIILandroid/graphics/Rect;)V

    goto :goto_4

    :cond_9
    const v1, 0x7f0a00aa

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v1, 0x7f0a009e

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto/16 :goto_1

    :cond_a
    const v1, 0x7f0a00a6

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v1, 0x7f0a00a2

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto/16 :goto_2

    :cond_b
    new-instance v7, Landroid/graphics/Rect;

    const v1, 0x7f0a00ef

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v8, 0x7f0a00f3

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v10, 0x7f0a00f1

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f0a00ee

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-direct {v7, v1, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_3

    :cond_c
    move-object v12, v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/sec/android/app/launcher/activities/HomePresenter$32;

    move-object/from16 v11, p0

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move-object/from16 v17, v7

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/app/launcher/activities/HomePresenter$32;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/PagePresenter;IIIILandroid/graphics/Rect;)V

    invoke-virtual {v1, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageRootView()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateTopFive()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateZeroPageDefaultBg()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateOptionTray()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateOpenFolder()V

    return-void
.end method

.method public switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V
    .locals 22

    const-string v17, "HomePresenter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "switchToHomescreenMode to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isStarted()Z

    move-result v17

    if-nez v17, :cond_1

    sget-object v17, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1

    const-string v17, "HomePresenter"

    const-string v18, "LauncherActivity is not started"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomOutMode:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_0

    :cond_2
    const/16 v16, 0x1

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->mBlockPageAnnouncement:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    new-instance v18, Lcom/sec/android/app/launcher/activities/HomePresenter$16;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter$16;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->blockInterval:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v17, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_3

    sget-object v17, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_4

    :cond_3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setIgnoreDrawAppWidget(Z)V

    :cond_4
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/daliviews/views/ImageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v7

    sget-object v17, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->blurWallpaper(Z)V

    const/16 v17, 0x35

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutGravity(I)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomeZeroPagePresenter()Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/sec/daliviews/views/ImageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->removeFocus()V

    :cond_6
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setPageFlipDirection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    sget-object v17, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    :cond_7
    :goto_2
    sget-object v17, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_d

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setPagesFocusable(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v17

    if-eqz v17, :cond_a

    sget-object v17, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_e

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setLandscapeEffect(Z)V

    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    move-object/from16 v17, v0

    const v18, 0x7f0b0072

    invoke-virtual/range {v17 .. v18}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/ContainerView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    if-eqz v4, :cond_a

    sget-object v17, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottomRootAttached:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottomRoot:Lcom/sec/daliviews/views/ContainerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/daliviews/views/ContainerView;->detachView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottomRootAttached:Z

    :cond_a
    :goto_5
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchHotWordMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v14, v0, v1}, Lcom/sec/android/app/launcher/activities/PresenterBase;->switchMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    goto :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->blurWallpaper(Z)V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setIgnoreDrawAppWidget(Z)V

    const/16 v17, 0x31

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutGravity(I)V

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    goto/16 :goto_2

    :cond_d
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setPagesFocusable(Z)V

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setLandscapeEffect(Z)V

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottomRootAttached:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottomRoot:Lcom/sec/daliviews/views/ContainerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/daliviews/views/ContainerView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageBottomRootAttached:Z

    goto/16 :goto_5

    :cond_10
    sget-object v17, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1f

    const v17, 0x7f0a0250

    const/16 v18, 0x1

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v12

    const v17, 0x7f0a0239

    const/16 v18, 0x1

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v10

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v10}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->configureShrinkEffect(FF)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockupIcon:Lcom/sec/daliviews/views/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockupIcon:Lcom/sec/daliviews/views/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    :cond_11
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v17

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v17

    if-nez v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEXT_INDEX_OF_ZEROPAGE:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageMargins()V

    :cond_13
    :goto_7
    if-nez v16, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchPageIndicatorMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;ZZ)V

    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->stopZoomedOutPageMode()V

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isFingeSwipeFeatureEnabled()Z

    move-result v17

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFirstPageID:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/sec/daliviews/views/PageViewContainer;->getPageOrder(Lcom/sec/daliviews/views/PageView;)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->ZEROPAGE_COUNT:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFirstPageID:I

    move/from16 v17, v0

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_16

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTakeScreenshot:Z

    :cond_16
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFirstPageID:I

    :cond_17
    :goto_8
    if-eqz v16, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateLayoutByMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;ZZ)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->switchMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->switchMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->switchMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->switchMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->switchMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->switchMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    :cond_1e
    sget-object v17, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2e

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHostContainer()Landroid/view/ViewGroup;

    move-result-object v17

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/daliviews/views/PageIndicator;->setHapticFeedbackEnabled(Z)V

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_13

    :cond_20
    const/16 v16, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageMargins()V

    goto/16 :goto_7

    :cond_21
    sget-object v17, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_24

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object v17, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->LAST:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->newPage(Ljava/util/List;Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;ZZ)Lcom/sec/daliviews/views/PageView;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeNewPage:Lcom/sec/daliviews/views/PageView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v17

    if-eqz v17, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeNewPage:Lcom/sec/daliviews/views/PageView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/daliviews/views/PageView;->setAccessibilityMode(Z)V

    :cond_22
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v17

    if-eqz v17, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v17

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateLayoutByMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;ZZ)V

    const/16 v16, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->enableZoomedOutPageMode()Z

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->enablePageGrids(Z)V

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->showPageGrid(Z)V

    goto/16 :goto_8

    :cond_24
    sget-object v17, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_28

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_26

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isFingeSwipeFeatureEnabled()Z

    move-result v17

    if-eqz v17, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_26

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/sec/daliviews/views/PageViewContainer;->getPageOrder(Lcom/sec/daliviews/views/PageView;)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->ZEROPAGE_COUNT:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_25

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFirstPageID:I

    :cond_26
    const v17, 0x7f0a023c

    const/16 v18, 0x1

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v12

    const v17, 0x7f0a023b

    const/16 v18, 0x1

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v10

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v10}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->configureShrinkEffect(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateLayoutByMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;ZZ)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->enableZoomedOutPageMode()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    move-object/from16 v17, v0

    if-eqz v17, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->setMainHomeDbId()V

    :cond_27
    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_28
    sget-object v17, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2d

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v17

    if-eqz v17, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v17

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/daliviews/views/PageViewContainer;->detachView(Lcom/sec/daliviews/views/NativeViewBase;)V

    const v17, 0x7f0a0243

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v6, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOnNewPageMockup:Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDesktopPageIndex:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-gtz v17, :cond_2a

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->buildPageReorderingIndices()V

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDesktopPageIndex:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDesktopPageIndex:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDesktopPageIndex:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v17, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->LAST:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->newPage(Ljava/util/List;Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;ZZ)Lcom/sec/daliviews/views/PageView;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeNewPage:Lcom/sec/daliviews/views/PageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeNewPage:Lcom/sec/daliviews/views/PageView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/daliviews/views/PageView;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/sec/daliviews/layouts/PageLayout;->setGridSize(II)V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->mOnNewPageMockup:Z

    const v17, 0x7f0c0011

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setFlipTriggerForPages(I)V

    const/4 v11, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/sec/daliviews/views/PageViewContainer;->disableScrollEffect(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDragModeNewPage:Lcom/sec/daliviews/views/PageView;

    move-object/from16 v17, v0

    const v18, 0x7f0d0030

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/sec/daliviews/views/PageView;->updateBackground(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageBackgrounds()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2b

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchZeroPageViewAttachedMode(Z)V

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/daliviews/views/PageViewContainer;->finishAddingPageinZoomedOutPageMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/daliviews/views/PageIndicator;->setVisibility(I)V

    :cond_2c
    const v17, 0x7f0a0250

    const/16 v18, 0x1

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/sec/daliviews/views/PageViewContainer;->setContainerScale(F)V

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->enablePageGrids(Z)V

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->showPageGrid(Z)V

    goto/16 :goto_8

    :cond_2d
    sget-object v17, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    goto/16 :goto_8

    :cond_2e
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHostContainer()Landroid/view/ViewGroup;

    move-result-object v17

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/daliviews/views/PageIndicator;->setHapticFeedbackEnabled(Z)V

    goto/16 :goto_0
.end method

.method takeScreenShot(Lcom/sec/android/app/launcher/activities/PagePresenter;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->isScrolling()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "HomePresenter"

    const-string v5, "takeScreenShot - return by scrolling"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v5, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v4, v5, :cond_2

    const-string v4, "HomePresenter"

    const-string v5, "takeScreenShot - return by not normal_mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mFolderPresenter:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->isFolderOpened()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "HomePresenter"

    const-string v5, "takeScreenShot - return by folder opening"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentFragmentId()I

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTransitionInProgress:Z

    if-eqz v4, :cond_5

    :cond_4
    const-string v4, "HomePresenter"

    const-string v5, "takeScreenShot - return by AppsPresent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTakeScreenshot:Z

    if-nez v4, :cond_6

    const-string v4, "0"

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCaptureDateTime:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCaptureDateTime:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_6
    const-string v4, "HomePresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "takeScreenShot mTakeScreenshot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTakeScreenshot:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCaptureDateTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCaptureDateTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCaptureDateTime:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mTakeScreenshot:Z

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v4, v8}, Lcom/sec/daliviews/views/ContainerView;->setDrawingCacheEnabled(Z)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lez v4, :cond_7

    const-string v4, "HomePresenter"

    const-string v5, "takeScreenShot - success"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setScreenBitmap(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v4, v8}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setCapureFlag(Z)V

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v4, v7}, Lcom/sec/daliviews/views/ContainerView;->setDrawingCacheEnabled(Z)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->IsDefaultHome()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->populated()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v8, v6, v7}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->setMainHomeZeroPage(ZJ)V

    goto/16 :goto_0

    :cond_7
    const-string v4, "HomePresenter"

    const-string v5, "ZeroPage Capture image size error!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public theme()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomAnimationInProgress:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->THEME_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->switchMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;)V

    :cond_0
    return-void
.end method

.method updateDBForPresenters()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->updateItems(Z)V

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePage(Lcom/sec/android/app/launcher/data/PageItem;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->reorderPages()V

    :cond_1
    return-void
.end method

.method public updateEditModeCheckBoxDescription()V
    .locals 12

    const v11, 0x7f0d0059

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->IsDefaultHome()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getDefaultHomeIcon()Lcom/sec/daliviews/views/ImageView;

    move-result-object v2

    const-string v3, "%s %s %s"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v5, v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v6, 0x7f0d00c1

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v6, 0x7f0d00c2

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ImageView;->setContentDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getDefaultHomeIcon()Lcom/sec/daliviews/views/ImageView;

    move-result-object v2

    const-string v3, "%s %s %s"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v5, v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v6, 0x7f0d00c1

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v6, 0x7f0d00c3

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ImageView;->setContentDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updatePage(Lcom/sec/android/app/launcher/data/PageItem;)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_HOME_PAGES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/launcher/data/DataManager;->updateItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)I

    move-result v0

    return v0
.end method

.method public updatePageBackgrounds()V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0030

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d0014

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v3, v2, v0}, Lcom/sec/daliviews/views/PageViewContainer;->updatePageBackgrounds(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    sget-object v4, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;

    invoke-virtual {v3, v2, v2}, Lcom/sec/daliviews/views/PageViewContainer;->updatePageBackgrounds(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
