.class public Lcom/android/systemui/recents/RecentsConfiguration;
.super Ljava/lang/Object;
.source "RecentsConfiguration.java"


# static fields
.field public static final DUAL_LCD:I = 0x2

.field public static final MULTIWINDOWFULLPANEL:I = 0x2

.field public static final MULTIWINDOWHALFPANEL:I = 0x3

.field public static final NOT_FOLDER:I = 0x0

.field public static final RECENTPANEL:I = 0x1

.field public static final SINGLE_LCD:I = 0x1

.field public static final SVELTE_DISABLE_CACHE:I = 0x2

.field public static final SVELTE_DISABLE_LOADING:I = 0x3

.field public static final SVELTE_LIMIT_CACHE:I = 0x1

.field public static final SVELTE_NONE:I

.field private static mFolderTypeFeature:I

.field private static mFolderTypeFeatureChecked:Z

.field static sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

.field protected static final sInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recents/RecentsConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field static sPrevConfigurationHashCode:I

.field static sPrevConfigurationHashCodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public altTabKeyDelay:I

.field public animationPxMovementPerSecond:F

.field public closeAllButtonSpaceHeightPx:I

.field public closeAllButtonVisibility:Z

.field public debugModeEnabled:Z

.field public developerOptionsEnabled:Z

.field public displayRect:Landroid/graphics/Rect;

.field public doNotDrawTaskViewHeader:Z

.field public fakeShadows:Z

.field public fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field public fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public filteringCurrentViewsAnimDuration:I

.field public filteringNewViewsAnimDuration:I

.field hasTransposedNavBar:Z

.field hasTransposedSearchBar:Z

.field isFullScreen:Z

.field public isLandscape:Z

.field public isScreenOff:Z

.field public launchedFromAppWithThumbnail:Z

.field public launchedFromCoupledTask:Z

.field public launchedFromHome:Z

.field public launchedFromMultiWindowRecent:Z

.field public launchedFromSearchHome:Z

.field public launchedHasConfigurationChanged:Z

.field public launchedNumVisibleTasks:I

.field public launchedNumVisibleThumbnails:I

.field public launchedReuseTaskStackViews:Z

.field public launchedToTaskId:I

.field public launchedWithAltTab:Z

.field public launchedWithNoRecentTasks:Z

.field public linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public lockToAppEnabled:Z

.field mCurrentActivity:I

.field mDisplayId:I

.field public mIsCloseProcessingBtnClicked:Z

.field public mIsContainerOnlyMode:Z

.field public mIsMobileKeyboardAttached:Z

.field public mIsMultiWindowEnabled:Z

.field public mIsPrivateModeEnabled:Z

.field public mIsUPSMEnabled:Z

.field public maxNumTasksToLoad:I

.field public navBarScrimEnterDuration:I

.field public quintOutInterpolator:Landroid/view/animation/Interpolator;

.field recentScrollBooster:Landroid/os/DVFSHelper;

.field recentsHiddenCompleted:Z

.field public rotation:I

.field public searchBarAppWidgetId:I

.field public searchBarSpaceHeightPx:I

.field public svelteLevel:I

.field public systemInsets:Landroid/graphics/Rect;

.field public taskBarDismissDozeDelaySeconds:I

.field public taskBarHeight:I

.field public taskBarViewAffiliationColorMinAlpha:F

.field public taskBarViewDarkTextColor:I

.field public taskBarViewDefaultBackgroundColor:I

.field public taskBarViewHighlightColor:I

.field public taskBarViewLightTextColor:I

.field public taskStackMaxDim:I

.field public taskStackOverscrollPct:F

.field public taskStackScrollDuration:I

.field public taskStackTopPaddingPx:I

.field public taskStackWidthPaddingPct:F

.field public taskViewAffiliateGroupEnterOffsetPx:I

.field public taskViewEnterFromAppDuration:I

.field public taskViewEnterFromHomeDuration:I

.field public taskViewEnterFromHomeStaggerDelay:I

.field public taskViewExitToAppDuration:I

.field public taskViewExitToHomeDuration:I

.field public taskViewHighlightPx:I

.field public taskViewRemoveAnimDuration:I

.field public taskViewRemoveAnimTranslationXPx:I

.field public taskViewRoundedCornerRadiusPx:I

.field public taskViewThumbnailAlpha:F

.field public taskViewTranslationZMaxPx:I

.field public taskViewTranslationZMinPx:I

.field public topTaskInitialScrollUpOffset:F

.field public topTaskInitialScrollUpOffsetOnMultiWindow:F

.field public transitionEnterFromAppDelay:I

.field public transitionEnterFromHomeDelay:I

.field public useHardwareLayers:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/RecentsConfiguration;->sInstances:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/RecentsConfiguration;->sPrevConfigurationHashCodes:Landroid/util/SparseArray;

    sput v1, Lcom/android/systemui/recents/RecentsConfiguration;->mFolderTypeFeature:I

    sput-boolean v1, Lcom/android/systemui/recents/RecentsConfiguration;->mFolderTypeFeatureChecked:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isScreenOff:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    iput v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->rotation:I

    iput v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mDisplayId:I

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsCloseProcessingBtnClicked:Z

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMobileKeyboardAttached:Z

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsUPSMEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsPrivateModeEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsContainerOnlyMode:Z

    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x10c0005

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    const-string v0, "RECENT_SCROLL"

    invoke-static {p1, v0}, Landroid/os/DVFSHelper;->createHintNotifier(Landroid/content/Context;Ljava/lang/String;)Landroid/os/DVFSHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->recentScrollBooster:Landroid/os/DVFSHelper;

    return-void
.end method

.method public static folderTypeFeature(Landroid/content/Context;)I
    .locals 3

    :try_start_0
    sget-boolean v1, Lcom/android/systemui/recents/RecentsConfiguration;->mFolderTypeFeatureChecked:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.folder_type"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.dual_lcd"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    sput v1, Lcom/android/systemui/recents/RecentsConfiguration;->mFolderTypeFeature:I

    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/systemui/recents/RecentsConfiguration;->mFolderTypeFeatureChecked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    sget v1, Lcom/android/systemui/recents/RecentsConfiguration;->mFolderTypeFeature:I

    return v1

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    sput v1, Lcom/android/systemui/recents/RecentsConfiguration;->mFolderTypeFeature:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :try_start_2
    sput v1, Lcom/android/systemui/recents/RecentsConfiguration;->mFolderTypeFeature:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    return-object v0
.end method

.method public static getInstance(I)Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 2

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    sget-object v0, Lcom/android/systemui/recents/RecentsConfiguration;->sInstances:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/RecentsConfiguration;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/recents/RecentsConfiguration;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/RecentsConfiguration;

    goto :goto_0
.end method

.method public static isFolderOpened(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-nez v1, :cond_1

    goto :goto_1
.end method

.method public static reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;I)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;I)Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 2

    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsConfiguration;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    sget v1, Lcom/android/systemui/recents/RecentsConfiguration;->sPrevConfigurationHashCode:I

    if-eq v1, v0, :cond_1

    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/RecentsConfiguration;->update(Landroid/content/Context;)V

    sput v0, Lcom/android/systemui/recents/RecentsConfiguration;->sPrevConfigurationHashCode:I

    :cond_1
    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/recents/RecentsConfiguration;->updateOnReinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    return-object v1
.end method


# virtual methods
.method public getCloseAllButtonBounds(IIILandroid/graphics/Rect;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonSpaceHeightPx:I

    const/4 v1, 0x0

    sub-int v2, p2, v0

    invoke-virtual {p4, v1, v2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getCurrentActivity()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    return v0
.end method

.method public getDisplayId()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mDisplayId:I

    return v0
.end method

.method public getSearchBarBounds(IIILandroid/graphics/Rect;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarSpaceHeightPx:I

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    if-eqz v1, :cond_0

    invoke-virtual {p4, v2, p3, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    :cond_0
    add-int v1, p3, v0

    invoke-virtual {p4, v2, p3, p1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getTaskStackBounds(IIIILandroid/graphics/Rect;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getCloseAllButtonBounds(IIILandroid/graphics/Rect;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    if-eqz v2, :cond_0

    sub-int v2, p1, p4

    invoke-virtual {p5, v4, p3, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p5, v4, v2, p1, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public hasHorizontalLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNavBarScrim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSearchBarAppWidget()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatusBarScrim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performanceAcquire()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->recentScrollBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->recentScrollBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :cond_0
    return-void
.end method

.method public performanceRelease()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->recentScrollBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->recentScrollBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_0
    return-void
.end method

.method public setCurrentActivity(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    if-eq p2, v3, :cond_0

    const v2, 0x7f0c036a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    const v2, 0x7f0c0366

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    :goto_0
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackWidthPaddingPct:F

    iput p2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    return-void

    :cond_0
    const v2, 0x7f0c0368

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    const v2, 0x7f0c0364

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto :goto_0
.end method

.method public setDisplayId(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mDisplayId:I

    return-void
.end method

.method public shouldAnimateNavBarScrim()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldAnimateStatusBarScrim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    return v0
.end method

.method public showCloseAllButton()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDimBg()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showOnlySplitTask()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showRecentOnMultiwindow()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showTaskViewHeaderIcon()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method update(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/RecentsConfiguration;->update(Landroid/content/Context;I)V

    return-void
.end method

.method update(Landroid/content/Context;I)V
    .locals 14

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    sget-object v9, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    iget-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/systemui/recents/misc/Console;->Enabled:Z

    :cond_0
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    const v9, 0x7f0b002b

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    const v9, 0x7f0b002c

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    const v9, 0x7f0b0035

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isFullScreen:Z

    iget-object v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v13, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    const v9, 0x7f0c036b

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->animationPxMovementPerSecond:F

    const v9, 0x7f0f0021

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->filteringCurrentViewsAnimDuration:I

    const v9, 0x7f0f0022

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->filteringNewViewsAnimDuration:I

    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->maxNumTasksToLoad:I

    const v9, 0x7f0c0363

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarSpaceHeightPx:I

    sget-object v9, Lcom/android/systemui/recents/Constants$Values$App;->Key_SearchAppWidgetId:Ljava/lang/String;

    const/4 v10, -0x1

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    const v9, 0x7f0c0369

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonSpaceHeightPx:I

    const v9, 0x7f0f0035

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackScrollDuration:I

    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsConfiguration;->getCurrentActivity()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    const v9, 0x7f0c0366

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v8, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    :goto_1
    invoke-virtual {v8}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackWidthPaddingPct:F

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    const v9, 0x7f0c0367

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v4, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackOverscrollPct:F

    const v9, 0x7f0f0036

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackMaxDim:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsConfiguration;->getCurrentActivity()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    const v9, 0x7f0c036a

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    :goto_2
    const v9, 0x7f0f0023

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromAppDelay:I

    const v9, 0x7f0f0026

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromHomeDelay:I

    const v9, 0x7f0f0024

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromAppDuration:I

    const v9, 0x7f0f0027

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    const v9, 0x7f0f0028

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    const v9, 0x7f0f0025

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    const v9, 0x7f0f0029

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToHomeDuration:I

    const v9, 0x7f0f0034

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimDuration:I

    const v9, 0x7f0c035d

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimTranslationXPx:I

    const v9, 0x7f0c035a

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    const v9, 0x7f0c035e

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewHighlightPx:I

    const v9, 0x7f0c035b

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewTranslationZMinPx:I

    const v9, 0x7f0c035c

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewTranslationZMaxPx:I

    const v9, 0x7f0c0360

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewAffiliateGroupEnterOffsetPx:I

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    const v9, 0x7f0c0361

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v5, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    const v9, 0x7f0a005f

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    const v9, 0x7f0a0060

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewLightTextColor:I

    const v9, 0x7f0a0061

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewDarkTextColor:I

    const v9, 0x7f0a0064

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewHighlightColor:I

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const v9, 0x7f0c036c

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v0, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewAffiliationColorMinAlpha:F

    const v9, 0x7f0c0362

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    const v9, 0x7f0f0020

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarDismissDozeDelaySeconds:I

    const v9, 0x7f0f0033

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->navBarScrimEnterDuration:I

    const v9, 0x7f0b001b

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->useHardwareLayers:Z

    const v9, 0x7f0f0037

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->altTabKeyDelay:I

    const v9, 0x7f0b001c

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    const v9, 0x7f0f0038

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    const v9, 0x7f0c045b

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v6, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v6}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->topTaskInitialScrollUpOffset:F

    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    const v9, 0x7f0c045c

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v7, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v7}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->topTaskInitialScrollUpOffsetOnMultiWindow:F

    return-void

    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_2
    const v9, 0x7f0c0364

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v8, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto/16 :goto_1

    :cond_3
    const v9, 0x7f0c0368

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    goto/16 :goto_2
.end method

.method public updateOnConfigurationChange()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedReuseTaskStackViews:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    return-void
.end method

.method updateOnReinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "development_settings_enabled"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getGlobalSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    const-string v0, "lock_to_app_enabled"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->lockToAppEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "ultra_powersaving_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsUPSMEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "personal_mode_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsPrivateModeEnabled:Z

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsCloseProcessingBtnClicked:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "multi_window_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mobile_keyboard"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    :goto_5
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMobileKeyboardAttached:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method

.method public updateSearchBarAppWidgetId(Landroid/content/Context;I)V
    .locals 3

    iput p2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->Key_SearchAppWidgetId:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateSystemInsets(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public useRemoveTaskActionBySwipe()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mCurrentActivity:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
