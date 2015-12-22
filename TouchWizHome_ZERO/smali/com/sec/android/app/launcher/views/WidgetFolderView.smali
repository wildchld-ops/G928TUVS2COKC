.class public Lcom/sec/android/app/launcher/views/WidgetFolderView;
.super Lcom/sec/daliviews/views/IconView;
.source "WidgetFolderView.java"

# interfaces
.implements Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;
.implements Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/views/WidgetFolderView$WidgetFolderViewListener;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final FOLDER_ICON_ANIMATION_DURATION:F = 0.25f

.field private static final FOLDER_TRANSITION_TIME:F = 0.25f

.field private static final TAG:Ljava/lang/String;

.field private static mOpenCellHeight:I


# instance fields
.field mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

.field private mAdapter:Lcom/sec/daliviews/views/ListAdapter;

.field private mAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

.field private mCloseAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mFolderActionListener:Lcom/sec/android/app/launcher/views/WidgetFolderView$WidgetFolderViewListener;

.field private final mHandler:Landroid/os/Handler;

.field private mIsOpened:Z

.field private mOpenAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mOpenFolderBackgroundAlpha:F

.field private mOpenFolderHeight:I

.field private mOpenFolderRows:I

.field private mOpenFolderView:Lcom/sec/android/app/launcher/views/OpenFolderView;

.field private mOpenFolderWidth:I

.field private mOriginalBufferSize:I

.field private mRootView:Lcom/sec/daliviews/views/NativeViewBase;

.field private mWidgetListItem:Lcom/sec/android/app/launcher/data/WidgetListItem;

.field private final openFolderY_resId:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->DEBUGGABLE:Z

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenCellHeight:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/IconView;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderView:Lcom/sec/android/app/launcher/views/OpenFolderView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mIsOpened:Z

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mCloseAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iput v4, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderRows:I

    iput v2, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderWidth:I

    iput v2, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderHeight:I

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->openFolderY_resId:[I

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderBackgroundAlpha:F

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mRootView:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOriginalBufferSize:I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mRootView:Lcom/sec/daliviews/views/NativeViewBase;

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a01f8

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderBackgroundAlpha:F

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a02ca
        0x7f0a02cb
        0x7f0a02cc
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/views/WidgetFolderView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOriginalBufferSize:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/views/WidgetFolderView;)Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->folderExtra()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/views/WidgetFolderView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mIsOpened:Z

    return v0
.end method

.method private cleanupJavaSide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderView:Lcom/sec/android/app/launcher/views/OpenFolderView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderView:Lcom/sec/android/app/launcher/views/OpenFolderView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/views/OpenFolderView;->unregisterDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderView:Lcom/sec/android/app/launcher/views/OpenFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/OpenFolderView;->unparentAndDestroy()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mCloseAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mCloseAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_4
    return-void
.end method

.method private folderExtra()Lcom/sec/daliviews/views/ContainerView;
    .locals 6

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerViewBase;->setSensitive(Z)V

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/layouts/PageLayout;->setScrolling(Z)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDarkenView()Lcom/sec/daliviews/views/ClippedContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/layouts/AbsoluteLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getOpenFolderView()Lcom/sec/android/app/launcher/views/OpenFolderView;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/layouts/AbsoluteLayout;->clearViewPosition(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getOpenFolderView()Lcom/sec/android/app/launcher/views/OpenFolderView;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/views/OpenFolderView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAnimPlayer()Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    :cond_0
    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {v0, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;-><init>(F)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    return-object v0
.end method

.method public static getCellHeight()I
    .locals 2

    sget v1, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenCellHeight:I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenCellHeight:I

    :cond_0
    sget v1, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenCellHeight:I

    return v1
.end method

.method private getCloseAnimSet()Lcom/sec/daliviews/uiAnimations/UIAnimationSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mCloseAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mCloseAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mCloseAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    return-object v0
.end method

.method private getFolderHeight(II)I
    .locals 6

    iget-object v4, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v4, 0x2

    if-gt p1, v4, :cond_0

    mul-int v0, p1, p2

    :goto_0
    const v4, 0x7f0a02ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int v2, p1, v4

    add-int v4, v1, v0

    add-int/2addr v4, v2

    return v4

    :cond_0
    mul-int/lit8 v4, p2, 0x2

    const v5, 0x7f0a02b1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int v0, v4, v5

    goto :goto_0
.end method

.method private getOpenAnimSet()Lcom/sec/daliviews/uiAnimations/UIAnimationSet;
    .locals 5

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mCloseAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mCloseAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    new-instance v0, Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;-><init>(FFFI)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mCloseAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mCloseAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    return-object v1
.end method

.method private getOpenLayout()Lcom/sec/daliviews/layouts/GridLayout;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/daliviews/layouts/LayoutInflater;->instance(Landroid/content/Context;)Lcom/sec/daliviews/layouts/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004b

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/LayoutInflater;->inflate(I)Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/layouts/GridLayout;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mWidgetListItem:Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/layouts/GridLayout;->registerDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/GridLayout;->getBufferSize()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOriginalBufferSize:I

    return-object v0
.end method

.method private setOpenFolderTitle(Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;)V
    .locals 7

    iget-object v5, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mWidgetListItem:Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->setTitle(Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    const v6, 0x7f0d00ce

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->setTitle(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public closeOpenFolderDelayed(J)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/views/WidgetFolderView$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView$6;-><init>(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/sec/daliviews/views/IconView;->destroy()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->cleanupJavaSide()V

    return-void
.end method

.method public getAdapter()Lcom/sec/daliviews/views/ListAdapter;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/daliviews/views/ListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/daliviews/views/ListAdapter;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mAdapter:Lcom/sec/daliviews/views/ListAdapter;

    return-object v0
.end method

.method public getModedViewType()I
    .locals 1

    const v0, 0x7f0b0006

    return v0
.end method

.method public getOpenFolderView()Lcom/sec/android/app/launcher/views/OpenFolderView;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderView:Lcom/sec/android/app/launcher/views/OpenFolderView;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    const v1, 0x7f03004a

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/views/OpenFolderView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderView:Lcom/sec/android/app/launcher/views/OpenFolderView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderView:Lcom/sec/android/app/launcher/views/OpenFolderView;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/launcher/views/OpenFolderView;->registerDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderView:Lcom/sec/android/app/launcher/views/OpenFolderView;

    return-object v1
.end method

.method public getWidgetListItem()Lcom/sec/android/app/launcher/data/WidgetListItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mWidgetListItem:Lcom/sec/android/app/launcher/data/WidgetListItem;

    return-object v0
.end method

.method public isOpened()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mIsOpened:Z

    return v0
.end method

.method public isWidgetFolderOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mIsOpened:Z

    return v0
.end method

.method public onItemLongClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPeerDestroyed(Lcom/sec/daliviews/views/PeerBase;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderView:Lcom/sec/android/app/launcher/views/OpenFolderView;

    return-void
.end method

.method protected resetPeer()V
    .locals 0

    invoke-super {p0}, Lcom/sec/daliviews/views/IconView;->resetPeer()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->cleanupJavaSide()V

    return-void
.end method

.method public setWidgetListItem(Lcom/sec/android/app/launcher/data/WidgetListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mWidgetListItem:Lcom/sec/android/app/launcher/data/WidgetListItem;

    return-void
.end method

.method public showClosedFolder(Z)V
    .locals 14

    const/4 v13, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mIsOpened:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getOpenFolderView()Lcom/sec/android/app/launcher/views/OpenFolderView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    invoke-virtual {v8}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimationDuration(F)V

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/sec/android/app/launcher/views/OpenFolderView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDarkenView()Lcom/sec/daliviews/views/ClippedContainerView;

    move-result-object v6

    const/4 v1, 0x4

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {v6, v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityAnimated(IF)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mRootView:Lcom/sec/daliviews/views/NativeViewBase;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-virtual {v1, v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->setOpacityAnimated(FF)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAnimPlayer()Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    move-result-object v11

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getCloseAnimSet()Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    move-result-object v12

    new-instance v0, Lcom/sec/daliviews/uiAnimations/SizeUIAnimation;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x3e800000    # 0.25f

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sec/daliviews/uiAnimations/SizeUIAnimation;-><init>(FFFFI)V

    invoke-virtual {v12, v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/SizeUIAnimation;)V

    invoke-virtual {v11, v9, v12}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    new-instance v1, Lcom/sec/android/app/launcher/views/WidgetFolderView$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView$5;-><init>(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V

    invoke-virtual {v11, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->connectToUIAnimationSignal(Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;)V

    invoke-virtual {v11}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start()V

    :goto_0
    invoke-virtual {v8}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v10

    check-cast v10, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v10, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/sec/daliviews/layouts/GridLayout;->setScrollBarVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isKeypadFocusAttached()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mWidgetListItem:Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->selectArea(Lcom/sec/daliviews/views/NativeViewBase;Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->setOpenedWidgetFolderView(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setWidgetOpenFolderView(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mFolderActionListener:Lcom/sec/android/app/launcher/views/WidgetFolderView$WidgetFolderViewListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mFolderActionListener:Lcom/sec/android/app/launcher/views/WidgetFolderView$WidgetFolderViewListener;

    invoke-interface {v1, p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView$WidgetFolderViewListener;->onFolderClosed(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->folderExtra()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v6

    if-eqz v6, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v6, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mRootView:Lcom/sec/daliviews/views/NativeViewBase;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/NativeViewBase;->setOpacity(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public showOpenWidgetFolder()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mFolderActionListener:Lcom/sec/android/app/launcher/views/WidgetFolderView$WidgetFolderViewListener;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mFolderActionListener:Lcom/sec/android/app/launcher/views/WidgetFolderView$WidgetFolderViewListener;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mIsOpened:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v3

    const v18, 0x7f0c004f

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v3}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_2

    invoke-virtual {v3, v7}, Lcom/sec/daliviews/views/ListAdapter;->getItem(I)Lcom/sec/daliviews/views/Item;

    move-result-object v8

    rem-int v18, v7, v4

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/sec/daliviews/views/Item;->setCellX(I)V

    div-int v18, v7, v4

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/sec/daliviews/views/Item;->setCellY(I)V

    invoke-virtual {v8, v7}, Lcom/sec/daliviews/views/Item;->setPos(I)V

    sget-boolean v18, Lcom/sec/android/app/launcher/views/WidgetFolderView;->DEBUGGABLE:Z

    if-eqz v18, :cond_1

    sget-object v18, Lcom/sec/android/app/launcher/views/WidgetFolderView;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " count =  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " item =  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3, v7}, Lcom/sec/daliviews/views/ListAdapter;->getItem(I)Lcom/sec/daliviews/views/Item;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getOpenFolderView()Lcom/sec/android/app/launcher/views/OpenFolderView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v13

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimatePositioning(Z)V

    move-object/from16 v18, v10

    check-cast v18, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->setOpenFolderTitle(Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDarkenView()Lcom/sec/daliviews/views/ClippedContainerView;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/daliviews/views/ContainerView;->getWidth()I

    move-result v18

    invoke-virtual/range {v16 .. v16}, Lcom/sec/daliviews/views/ContainerView;->getHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setSize(II)V

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v18

    if-nez v18, :cond_3

    invoke-virtual {v5, v10}, Lcom/sec/daliviews/views/ContainerView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_3
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/sec/android/app/launcher/views/OpenFolderView;->setVisibility(I)V

    instance-of v0, v5, Lcom/sec/daliviews/views/ClippedContainerView;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    invoke-static {}, Lcom/sec/daliviews/utils/LayerManager;->instance()Lcom/sec/daliviews/utils/LayerManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/daliviews/utils/LayerManager;->updateLayers()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->setOpenedWidgetFolderView(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/sec/daliviews/views/AdapterView;->setAdapter(Lcom/sec/daliviews/views/Adapter;)V

    new-instance v18, Lcom/sec/android/app/launcher/views/WidgetFolderView$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/views/WidgetFolderView$1;-><init>(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/sec/daliviews/views/AdapterView;->setOnItemClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->updateOpenWidgetFolderLayout()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setShadowVisible(IZ)V

    const/16 v18, 0x0

    const/high16 v19, 0x3e800000    # 0.25f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityAnimated(IF)V

    new-instance v18, Lcom/sec/android/app/launcher/views/WidgetFolderView$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/launcher/views/WidgetFolderView$2;-><init>(Lcom/sec/android/app/launcher/views/WidgetFolderView;Lcom/sec/daliviews/views/ContainerView;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/sec/daliviews/views/ContainerView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mRootView:Lcom/sec/daliviews/views/NativeViewBase;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderBackgroundAlpha:F

    move/from16 v19, v0

    const/high16 v20, 0x3e800000    # 0.25f

    invoke-virtual/range {v18 .. v20}, Lcom/sec/daliviews/views/NativeViewBase;->setOpacityAnimated(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f090009

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/sec/daliviews/views/ContainerView;->setBackgroundColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v18

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    invoke-virtual {v9}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v12

    check-cast v12, Lcom/sec/daliviews/layouts/GridLayout;

    :goto_1
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/daliviews/layouts/GridLayout;->setClippingVisible(Z)V

    invoke-virtual {v12}, Lcom/sec/daliviews/layouts/GridLayout;->getClippedContainerView()Lcom/sec/daliviews/views/ClippedContainerView;

    move-result-object v6

    const v18, 0x7f0c001f

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/sec/daliviews/views/ClippedContainerView;->setLayerLocation(I)V

    invoke-static {}, Lcom/sec/daliviews/utils/LayerManager;->instance()Lcom/sec/daliviews/utils/LayerManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/daliviews/utils/LayerManager;->updateLayers()V

    new-instance v18, Lcom/sec/android/app/launcher/views/WidgetFolderView$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/views/WidgetFolderView$3;-><init>(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/sec/daliviews/views/AdapterView;->setOnItemLongClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAnimPlayer()Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getOpenAnimSet()Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    move-result-object v11

    invoke-virtual {v14, v10, v11}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    new-instance v18, Lcom/sec/android/app/launcher/views/WidgetFolderView$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/sec/android/app/launcher/views/WidgetFolderView$4;-><init>(Lcom/sec/android/app/launcher/views/WidgetFolderView;Lcom/sec/daliviews/layouts/GridLayout;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->connectToUIAnimationSignal(Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;)V

    invoke-virtual {v14}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setWidgetOpenFolderView(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isKeypadFocusAttached()Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/sec/daliviews/views/ListAdapter;->getItem(I)Lcom/sec/daliviews/views/Item;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->selectArea(Lcom/sec/daliviews/views/NativeViewBase;Z)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mFolderActionListener:Lcom/sec/android/app/launcher/views/WidgetFolderView$WidgetFolderViewListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mFolderActionListener:Lcom/sec/android/app/launcher/views/WidgetFolderView$WidgetFolderViewListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/sec/android/app/launcher/views/WidgetFolderView$WidgetFolderViewListener;->onFolderOpened(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V

    :cond_6
    return-void

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getOpenLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v12

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/daliviews/layouts/GridLayout;->setDancingIcons(Z)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/daliviews/layouts/GridLayout;->setAnimateAddingView(Z)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/daliviews/layouts/GridLayout;->setAnimatePositioning(Z)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/daliviews/layouts/GridLayout;->setBufferSize(I)V

    invoke-virtual {v9, v12}, Lcom/sec/daliviews/views/AdapterView;->setLayout(Lcom/sec/daliviews/layouts/LayoutBase;)V

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/daliviews/layouts/GridLayout;->setScrollBarVisible(Z)V

    new-instance v17, Landroid/util/TypedValue;

    invoke-direct/range {v17 .. v17}, Landroid/util/TypedValue;-><init>()V

    const v18, 0x7f0a008d

    const/16 v19, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v17 .. v17}, Landroid/util/TypedValue;->getFloat()F

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sec/daliviews/layouts/GridLayout;->setFlickDuration(F)V

    goto/16 :goto_1
.end method

.method public updateOpenWidgetFolderLayout()V
    .locals 15

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getOpenFolderView()Lcom/sec/android/app/launcher/views/OpenFolderView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/daliviews/views/AdapterView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/layouts/GridLayout;

    const/high16 v13, 0x3e800000    # 0.25f

    invoke-virtual {v2, v13}, Lcom/sec/daliviews/layouts/GridLayout;->setAnimationDuration(F)V

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lcom/sec/daliviews/layouts/GridLayout;->setAnimateResizing(Z)V

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lcom/sec/daliviews/layouts/GridLayout;->setAnimatePositioning(Z)V

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lcom/sec/daliviews/layouts/GridLayout;->setAnimateAddingView(Z)V

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/GridLayout;->getColumnCount()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v2, v6, v5}, Lcom/sec/daliviews/layouts/GridLayout;->setGridSize(II)V

    iget-object v13, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mWidgetListItem:Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getCellY()I

    move-result v9

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_5

    :cond_0
    const/4 v13, 0x1

    if-ne v6, v13, :cond_4

    const/4 v9, 0x0

    :goto_1
    const/4 v13, 0x2

    if-le v6, v13, :cond_1

    const/4 v6, 0x2

    :cond_1
    :goto_2
    iget-object v13, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v13, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->openFolderY_resId:[I

    aget v13, v13, v9

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-static {}, Lcom/sec/android/app/launcher/views/WidgetOpenFolderView;->getFolderWidth()I

    move-result v11

    invoke-static {}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getCellHeight()I

    move-result v13

    invoke-direct {p0, v6, v13}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getFolderHeight(II)I

    move-result v3

    iget-object v13, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v13}, Lcom/sec/android/app/launcher/utils/Utils;->getScreenDimensions(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v10

    iget v13, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v13, v3

    if-ge v13, v7, :cond_2

    iget v13, v10, Landroid/graphics/Point;->y:I

    sub-int v7, v13, v3

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getOpenFolderView()Lcom/sec/android/app/launcher/views/OpenFolderView;

    move-result-object v1

    iget v13, v10, Landroid/graphics/Point;->x:I

    sub-int/2addr v13, v11

    div-int/lit8 v12, v13, 0x2

    invoke-virtual {v1, v12, v7, v11, v3}, Lcom/sec/android/app/launcher/views/OpenFolderView;->setPosAndSize(IIII)V

    iput v9, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderRows:I

    iput v11, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderWidth:I

    iput v3, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderHeight:I

    :goto_3
    return-void

    :cond_3
    add-int/lit8 v13, v4, -0x1

    div-int/2addr v13, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v13, 0x1

    goto :goto_0

    :cond_4
    const/4 v9, 0x1

    goto :goto_1

    :cond_5
    const/4 v13, 0x1

    if-ne v6, v13, :cond_6

    const/4 v9, 0x0

    :goto_4
    const/4 v13, 0x3

    if-le v6, v13, :cond_1

    const/4 v6, 0x3

    goto :goto_2

    :cond_6
    const/4 v13, 0x2

    if-ne v6, v13, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    const/4 v9, 0x2

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public updateWidgetFolderPosition()V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getOpenFolderView()Lcom/sec/android/app/launcher/views/OpenFolderView;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->openFolderY_resId:[I

    iget v6, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderRows:I

    aget v5, v5, v6

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/launcher/utils/Utils;->getScreenDimensions(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v3

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v4, v5, 0x2

    iget v5, v3, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderHeight:I

    sub-int/2addr v5, v6

    if-ge v5, v1, :cond_0

    iget v5, v3, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderHeight:I

    sub-int v1, v5, v6

    :cond_0
    iget v5, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderWidth:I

    iget v6, p0, Lcom/sec/android/app/launcher/views/WidgetFolderView;->mOpenFolderHeight:I

    invoke-virtual {v0, v4, v1, v5, v6}, Lcom/sec/android/app/launcher/views/OpenFolderView;->setPosAndSize(IIII)V

    return-void
.end method
