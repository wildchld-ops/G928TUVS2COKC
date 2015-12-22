.class public Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;
.super Lcom/sec/android/app/launcher/activities/PresenterBase;
.source "ZeroPageListPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$WidgetsPagedAdapterViewListener;,
        Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$WidgetsFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZeroPageListPresenter"

.field private static mSavedCurrentPage:I


# instance fields
.field private final mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

.field private mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

.field private mAdapterAttached:Z

.field private mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mPageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

.field private mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

.field private mPageIndicatorImage:Landroid/graphics/drawable/Drawable;

.field private mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

.field private mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

.field private mPagedAdapterViewListener:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$WidgetsPagedAdapterViewListener;

.field private mRootAttached:Z

.field private mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

.field private mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mVisibility:I

.field private mZeroPageItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

.field private mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

.field private mZeroPageTitleBar:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mSavedCurrentPage:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v1, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$WidgetsFilter;

    invoke-direct {v1, v2}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$WidgetsFilter;-><init>(Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$1;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/PresenterBase;-><init>(Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;)V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageItemList:Ljava/util/List;

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mRootAttached:Z

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapterAttached:Z

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    new-instance v1, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$WidgetsPagedAdapterViewListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$WidgetsPagedAdapterViewListener;-><init>(Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$1;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPagedAdapterViewListener:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$WidgetsPagedAdapterViewListener;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    const/4 v1, 0x4

    iput v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mVisibility:I

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageTitleBar:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$2;-><init>(Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    iput-object p0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAndroidRoot()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0b00d0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageTitleBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageTitleBar:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0126

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$1;-><init>(Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->setupViews()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->updateFromPageChange(I)V

    return-void
.end method

.method static synthetic access$402(I)I
    .locals 0

    sput p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mSavedCurrentPage:I

    return p0
.end method

.method static synthetic access$500(Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;)Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;)Lcom/sec/daliviews/layouts/PageLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageIndicatorImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private attachAdapter()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapterAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedAdapterView;->setAdapter(Lcom/sec/daliviews/views/Adapter;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapterAttached:Z

    :cond_0
    return-void
.end method

.method private attachRootView()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mRootAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->addViewToScene(Lcom/sec/daliviews/views/NativeViewBase;)V

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mRootAttached:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ContainerView;->setSensitive(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mVisibility:I

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mVisibility:I

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedAdapterView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private detachRootViewIfNeeded()V
    .locals 2

    sget v0, Lcom/sec/android/app/launcher/activities/LauncherApp;->mMemoryOptimiseLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mRootAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->removeViewFromScene(Lcom/sec/daliviews/views/NativeViewBase;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mRootAttached:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mVisibility:I

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mVisibility:I

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedAdapterView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private setZeroPage(Lcom/sec/android/app/launcher/data/ZeroPageListItem;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->saveHomeZeroPageName(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomeZeroPagePresenter()Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getPreview()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setZeroPageBg(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setZeroPageIntent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setupPageIndicator(Z)V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    const v4, 0x7f0b013a

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/PageIndicator;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getPageIndicatorDefault()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageIndicatorImage:Landroid/graphics/drawable/Drawable;

    const v3, 0x7f0a00e2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/PageIndicator;->setIndicatorGrowBy(I)V

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const v3, 0x7f0a00eb

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/PageIndicator;->setPageScrollDuration(F)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    sget v4, Lcom/sec/android/app/launcher/activities/LauncherApp;->mMemoryOptimiseLevel:I

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/PageIndicator;->setMemoryOptimiseLevel(I)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/PagedAdapterView;->setPageIndicator(Lcom/sec/daliviews/views/PageIndicator;)V

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    sget v4, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mSavedCurrentPage:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/PageIndicator;->setPageLayout(Lcom/sec/daliviews/layouts/PageLayout;)V

    :cond_2
    return-void
.end method

.method private setupViews()V
    .locals 12

    const/4 v3, -0x1

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v0}, Lcom/sec/daliviews/views/ViewInflater;->instance(Landroid/content/Context;)Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v10

    const v0, 0x7f030061

    invoke-virtual {v10, v0}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    const v4, 0x7f0b0139

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/PagedAdapterView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v0, 0x7f0c0052

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v0, 0x7f0c0053

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    const/4 v5, 0x1

    move v4, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/sec/daliviews/views/PagedAdapterView;->setGridLayoutParams(IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PagedAdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/layouts/PageLayout;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    sget v3, Lcom/sec/android/app/launcher/activities/LauncherApp;->mMemoryOptimiseLevel:I

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/layouts/PageLayout;->setMemoryOptimiseLevel(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    sget v3, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mSavedCurrentPage:I

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/layouts/PageLayout;->setInitialPage(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/layouts/PageLayout;->setOnPageChangeListener(Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    move v4, v11

    move v5, v11

    move v6, v11

    move v7, v11

    move v8, v11

    invoke-virtual/range {v3 .. v8}, Lcom/sec/daliviews/layouts/PageLayout;->setScrollWrap(ZZZZZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->initialiseAdapter()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPagedAdapterViewListener:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$WidgetsPagedAdapterViewListener;

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/PagedAdapterView;->setPagedAdapterViewListener(Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/views/PagedAdapterView;->setOnItemClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;)V

    :cond_0
    invoke-direct {p0, v11}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->setupPageIndicator(Z)V

    return-void
.end method

.method private updateFromPageChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/PageIndicator;->setCurrentPage(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/PageLayout;->setOnPageChangeListener(Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PagedAdapterView;->stopLoadingViews()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedAdapterView;->setOnItemClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mRootAttached:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->destroy()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PagedListAdapter;->destroy()V

    :cond_6
    return-void
.end method

.method public getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    return-object v0
.end method

.method public getPagedAdapterView()Lcom/sec/daliviews/views/PagedAdapterView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPagedAdapterView:Lcom/sec/daliviews/views/PagedAdapterView;

    return-object v0
.end method

.method public getRootView()Lcom/sec/daliviews/views/ContainerViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method public getSelectedItem(I)Lcom/sec/android/app/launcher/data/ZeroPageListItem;
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getId()J

    move-result-wide v2

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/ZeroPageListItem;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
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

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageItemList:Ljava/util/List;

    return-object v0
.end method

.method public getWidgetsPageChangeListener()Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    return-object v0
.end method

.method public getWidgetsPageIndicator()Lcom/sec/daliviews/views/PageIndicator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;

    return-object v0
.end method

.method public initialiseAdapter()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/daliviews/views/PagedListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/daliviews/views/PagedListAdapter;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedListAdapter;->setSortOrder(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageItemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedListAdapter;->addItems(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageTitleBar:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearFocus()V

    const/4 v0, 0x0

    return v0
.end method

.method public onHomePressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->cancelFastScroll()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageTitleBar:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onItemAdded(Lcom/sec/daliviews/views/Item;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/PagedListAdapter;->addItem(Lcom/sec/daliviews/views/Item;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PagedListAdapter;->refresh()V

    :cond_0
    return-void
.end method

.method public onItemBadgeUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)Z
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p2, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v1, 0x7f0d0068

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showToastMsg(II)V

    instance-of v0, p3, Lcom/sec/android/app/launcher/data/ZeroPageListItem;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/sec/android/app/launcher/data/ZeroPageListItem;

    invoke-virtual {p0, p3}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->setZeroItem(Lcom/sec/android/app/launcher/data/ZeroPageListItem;)V

    :cond_0
    return v2
.end method

.method public onItemDeleted(Lcom/sec/daliviews/views/Item;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/PagedListAdapter;->removeItem(Lcom/sec/daliviews/views/Item;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PagedListAdapter;->refresh()V

    :cond_1
    return-void
.end method

.method public onItemUpdateCompleted()V
    .locals 0

    return-void
.end method

.method public onItemUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PagedListAdapter;->refresh()V

    :cond_0
    return-void
.end method

.method public onItemsUpdated(Ljava/util/List;)V
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

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PagedListAdapter;->refresh()V

    :cond_0
    return-void
.end method

.method public onNativeInit()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->setupViews()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->cancelFastScroll()V

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    :cond_0
    return-void
.end method

.method public setAccessibilityMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/layouts/PageLayout;->setAccessibilityMode(Z)V

    return-void
.end method

.method public setVisibilityZeroPageListBarPresenter(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageTitleBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageTitleBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageTitleBar:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->setupViews()V

    :cond_0
    iput p1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mVisibility:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->attachRootView()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->attachAdapter()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->detachRootViewIfNeeded()V

    goto :goto_0
.end method

.method public setVisibleAnimated(IF)V
    .locals 6

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->setupViews()V

    :cond_0
    iput p1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mVisibility:I

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mRootAttached:Z

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v3, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    if-nez p1, :cond_8

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Lcom/sec/daliviews/views/ContainerView;->setSensitive(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a004c

    invoke-virtual {v1, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ContainerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v3, v0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v3}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v3}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v3}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v3}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_5
    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->attachRootView()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->attachAdapter()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageListRoot:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v3, v2}, Lcom/sec/daliviews/views/ContainerView;->setYPosition(F)V

    :cond_6
    new-instance v3, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-direct {v3, p2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;-><init>(F)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mSlideAnimationPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    new-instance v3, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v3}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mSlideAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    new-instance v3, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v3}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mColorAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    :cond_7
    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/daliviews/layouts/PageLayout;->moveToPage(IF)V

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setZeroItem(Lcom/sec/android/app/launcher/data/ZeroPageListItem;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZeroPageListPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldtitle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newtitle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->setZeroPage(Lcom/sec/android/app/launcher/data/ZeroPageListItem;)V

    :cond_0
    return-void
.end method

.method public setupZeroPageApps(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/launcher/data/ZeroPageListItem;",
            ">;)V"
        }
    .end annotation

    const-string v1, "ZeroPageListPresenter"

    const-string v2, "setupZeroPageApps"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageItemList:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/PagedListAdapter;->setSortOrder(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->mZeroPageItemList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/PagedListAdapter;->addItems(Ljava/util/List;)V

    :cond_2
    return-void
.end method
