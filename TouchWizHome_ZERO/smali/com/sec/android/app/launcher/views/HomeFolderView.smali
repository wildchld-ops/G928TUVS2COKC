.class public Lcom/sec/android/app/launcher/views/HomeFolderView;
.super Lcom/sec/android/app/launcher/views/FolderView;
.source "HomeFolderView.java"

# interfaces
.implements Lcom/sec/android/app/launcher/views/IconDropContainer$IconDropAnimatable;
.implements Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;


# static fields
.field private static final DEBUGGABLE:Z

.field private static final ICONMODE_TRANSITION_TIME:F = 0.25f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isUninstallTouched:Z

.field private mAdapterView:Lcom/sec/daliviews/views/AdapterView;

.field private mAdapterViewSeat:Lcom/sec/daliviews/views/ContainerView;

.field private mBadgeBg:Lcom/sec/daliviews/views/ImageView;

.field private mBadgeBgWidth:I

.field private mBadgeBorderFraction:F

.field private mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

.field private mBadgePadding:I

.field private mBadgeTalkBack:Landroid/widget/TextView;

.field private mBadgeTypeface:Landroid/graphics/Typeface;

.field private mBadgeView:Lcom/sec/daliviews/views/TextView;

.field private mBgView:Lcom/sec/daliviews/views/ImageView;

.field private mContainerView:Lcom/sec/daliviews/views/ContainerViewBase;

.field private mCreateFolderAnim:Lcom/sec/daliviews/animation/NativeAnimation;

.field private mEnableTitleText:Z

.field private mFBgView:Lcom/sec/daliviews/views/NativeViewBase;

.field private mIconImageContainerView:Lcom/sec/daliviews/views/ContainerViewBase;

.field private mTitleView:Lcom/sec/daliviews/views/TextView;

.field private mTypeface:Landroid/graphics/Typeface;

.field private mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

.field private mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

.field private mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

.field private mUninstallImageView:Lcom/sec/daliviews/views/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/views/FolderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mAdapterViewSeat:Lcom/sec/daliviews/views/ContainerView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mContainerView:Lcom/sec/daliviews/views/ContainerViewBase;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mIconImageContainerView:Lcom/sec/daliviews/views/ContainerViewBase;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBgView:Lcom/sec/daliviews/views/ImageView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeTypeface:Landroid/graphics/Typeface;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeTalkBack:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBorderFraction:F

    iput v4, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBgWidth:I

    iput v4, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgePadding:I

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mTypeface:Landroid/graphics/Typeface;

    iput-boolean v5, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mEnableTitleText:Z

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mFBgView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mCreateFolderAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->isUninstallTouched:Z

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00c7

    invoke-virtual {v0, v2, v1, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBorderFraction:F

    const v2, 0x7f0a0164

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBgWidth:I

    const v2, 0x7f0a0168

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgePadding:I

    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/views/HomeFolderView;->addAllowedViewType(I)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->setThemeStyle()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/views/HomeFolderView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->isOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/views/HomeFolderView;)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/views/HomeFolderView;)Lcom/sec/daliviews/views/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/views/HomeFolderView;)Lcom/sec/daliviews/views/FixedContainer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/launcher/views/HomeFolderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->isUninstallTouched:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/launcher/views/HomeFolderView;)Lcom/sec/daliviews/views/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBgView:Lcom/sec/daliviews/views/ImageView;

    return-object v0
.end method

.method private cleanupJavaSide()V
    .locals 3

    sget-boolean v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanupJavaSide() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mFBgView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mFBgView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/views/NativeViewBase;->unregisterDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mFBgView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->unparentAndDestroy()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mCreateFolderAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mCreateFolderAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/FixedContainer;->destroy()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_6
    return-void

    :cond_7
    sget-object v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanupJavaSide() - null title, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getFolderBackgroundView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mFBgView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    const v1, 0x7f03001b

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mFBgView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mFBgView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v1, p0}, Lcom/sec/daliviews/views/NativeViewBase;->registerDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mFBgView:Lcom/sec/daliviews/views/NativeViewBase;

    return-object v1
.end method

.method private isOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->isFolderOpen()Z

    move-result v0

    return v0
.end method

.method private setThemeStyle()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getFontStyle()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mTypeface:Landroid/graphics/Typeface;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->isEnableAppTitle()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mEnableTitleText:Z

    return-void
.end method


# virtual methods
.method public animateOnDragEnter()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getBackgroundView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getFolderBackgroundView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getImageContainerView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/views/ContainerViewBase;->addBackgroundView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->matchSize(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mCreateFolderAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v2

    const/high16 v3, 0x7f040000

    invoke-static {v2, v3}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mCreateFolderAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mCreateFolderAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mCreateFolderAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v2}, Lcom/sec/daliviews/animation/NativeAnimation;->reset()V

    goto :goto_0
.end method

.method public animateOnDragExit()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getBackgroundView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mCreateFolderAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mCreateFolderAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v2}, Lcom/sec/daliviews/animation/NativeAnimation;->reset()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getFolderBackgroundView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mFBgView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getImageContainerView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mFBgView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ContainerViewBase;->detachView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_1
    return-void
.end method

.method public applyFolderColor(I)V
    .locals 11

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const v5, 0x3f7d70a4    # 0.99f

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getFolderStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->getFolderType()I

    move-result v0

    if-ne v0, v10, :cond_2

    invoke-static {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getBackground(I)Landroid/graphics/Bitmap;

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getBackgroundView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7, v6}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v10}, Lcom/sec/daliviews/views/ImageView;->setPremultiplied(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getFolderBackgroundView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v8

    instance-of v0, v8, Lcom/sec/daliviews/views/ImageView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getBackground(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getFolderColor(I)I

    move-result v3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapWithStroke(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_4

    move-object v0, v8

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setPremultiplied(Z)V

    check-cast v8, Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v8, v9}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getBackground(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getFolderColor(I)I

    move-result v3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapWithStroke(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getBackground(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getFolderColor(I)I

    move-result v3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapWithStroke(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    :cond_4
    check-cast v8, Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v8, v6}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_5
    check-cast v8, Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v8, v6}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public attachAdapterView(Lcom/sec/daliviews/views/AdapterView;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getAdapterViewSeat()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    const v1, 0x7f0b00e0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/AdapterView;->setDefaultMode(I)V

    return-void
.end method

.method protected destroy(J)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/views/FolderView;->destroy(J)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->cleanupJavaSide()V

    return-void
.end method

.method public detachAdapterView()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getAdapterViewSeat()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->detachView(Lcom/sec/daliviews/views/NativeViewBase;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    return-void
.end method

.method public getAdapterView()Lcom/sec/daliviews/views/AdapterView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    return-object v0
.end method

.method public getAdapterViewSeat()Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mAdapterViewSeat:Lcom/sec/daliviews/views/ContainerView;

    if-nez v0, :cond_0

    const v0, 0x7f0b006e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mAdapterViewSeat:Lcom/sec/daliviews/views/ContainerView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mAdapterViewSeat:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method public getBackgroundView()Lcom/sec/daliviews/views/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBgView:Lcom/sec/daliviews/views/ImageView;

    if-nez v0, :cond_0

    const v0, 0x7f0b006d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBgView:Lcom/sec/daliviews/views/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBgView:Lcom/sec/daliviews/views/ImageView;

    return-object v0
.end method

.method public getContainerView()Lcom/sec/daliviews/views/ContainerViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mContainerView:Lcom/sec/daliviews/views/ContainerViewBase;

    if-nez v0, :cond_0

    const v0, 0x7f0b0070

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerViewBase;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mContainerView:Lcom/sec/daliviews/views/ContainerViewBase;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mContainerView:Lcom/sec/daliviews/views/ContainerViewBase;

    return-object v0
.end method

.method public getDefaultMode()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mAdapterView:Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/AdapterView;->getDefaultMode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getImageContainerView()Lcom/sec/daliviews/views/ContainerViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mIconImageContainerView:Lcom/sec/daliviews/views/ContainerViewBase;

    if-nez v0, :cond_0

    const v0, 0x7f0b006c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerViewBase;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mIconImageContainerView:Lcom/sec/daliviews/views/ContainerViewBase;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mIconImageContainerView:Lcom/sec/daliviews/views/ContainerViewBase;

    return-object v0
.end method

.method public getIsNativeModes()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getModedViewType()I
    .locals 1

    const v0, 0x7f0b0002

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTitleView()Lcom/sec/daliviews/views/TextView;
    .locals 2

    const v1, 0x7f0b005f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/HomeFolderView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/daliviews/views/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    return-object v1
.end method

.method public getUninstallView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    return-object v0
.end method

.method public inflateUninstallView()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/HomeFolderView;->deleteView(Lcom/sec/daliviews/views/NativeViewBase;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    const v1, 0x7f03002a

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/FixedContainer;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    const v2, 0x7f0b0092

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/FixedContainer;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/HomeFolderView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->updateMode()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/FixedContainer;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    new-instance v2, Lcom/sec/android/app/launcher/views/HomeFolderView$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/views/HomeFolderView$2;-><init>(Lcom/sec/android/app/launcher/views/HomeFolderView;)V

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/FixedContainer;->setVisibilityChangeListener(Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v1

    const v2, 0x7f04003e

    invoke-static {v1, v2}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    new-instance v2, Lcom/sec/android/app/launcher/views/HomeFolderView$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/views/HomeFolderView$3;-><init>(Lcom/sec/android/app/launcher/views/HomeFolderView;)V

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/animation/NativeAnimation;->addListener(Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v1

    const v2, 0x7f04003d

    invoke-static {v1, v2}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    new-instance v2, Lcom/sec/android/app/launcher/views/HomeFolderView$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/views/HomeFolderView$4;-><init>(Lcom/sec/android/app/launcher/views/HomeFolderView;)V

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/animation/NativeAnimation;->addListener(Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;)V

    :cond_1
    return-void
.end method

.method public isAppsEditMode()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerType()I

    move-result v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListMode()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUninstallTouched()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->isUninstallTouched:Z

    return v0
.end method

.method public onDragEnd()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getContainerView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getContainerView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerViewBase;->onDragEnd()V

    :cond_0
    return-void
.end method

.method protected onModeChanged()V
    .locals 4

    const/4 v3, 0x5

    invoke-super {p0}, Lcom/sec/android/app/launcher/views/FolderView;->onModeChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getItemCount()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getAdapterViewSeat()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/sec/daliviews/views/ContainerViewBase;->setPadding(IIII)V

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    :cond_0
    return-void
.end method

.method public onPeerDestroyed(Lcom/sec/daliviews/views/PeerBase;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mFBgView:Lcom/sec/daliviews/views/NativeViewBase;

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/TextView;->getAccessibilityText()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v0, "%s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f0d004b

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getCurrentMode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeTalkBack:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeTalkBack:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b00d7 -> :sswitch_0
        0x7f0b00e4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected resetPeer()V
    .locals 3

    sget-boolean v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetPeer() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/sec/android/app/launcher/views/FolderView;->resetPeer()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->cleanupJavaSide()V

    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->TAG:Ljava/lang/String;

    const-string v1, "resetPeer()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBadge(I)V
    .locals 23

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->isAppsEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/launcher/views/HomeFolderView;->setUninstallView(ZZ)V

    :cond_0
    if-nez p1, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/HomeFolderView;->deleteView(Lcom/sec/daliviews/views/NativeViewBase;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/HomeFolderView;->deleteView(Lcom/sec/daliviews/views/NativeViewBase;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/HomeFolderView;->deleteView(Lcom/sec/daliviews/views/NativeViewBase;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeTalkBack:Landroid/widget/TextView;

    :cond_4
    :goto_0
    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    if-eqz v2, :cond_18

    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v2, :cond_d

    :cond_6
    sget-object v2, Lcom/sec/android/app/launcher/views/HomeFolderView;->TAG:Ljava/lang/String;

    const-string v4, "Badge is being inflated"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_7

    const-string v2, "/system/fonts/SECRobotoLight-Bold.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/HomeFolderView;->deleteView(Lcom/sec/daliviews/views/NativeViewBase;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/HomeFolderView;->deleteView(Lcom/sec/daliviews/views/NativeViewBase;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/HomeFolderView;->deleteView(Lcom/sec/daliviews/views/NativeViewBase;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_a
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v16

    const v2, 0x7f03002c

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    const v4, 0x7f0b0095

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/views/NativeViewBase;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    const v4, 0x7f0b0094

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/views/NativeViewBase;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->BADGE:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/sec/android/app/launcher/views/HomeFolderView;->TAG:Ljava/lang/String;

    const-string v4, "HomeFolderView::getBadgeView() theme"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getNinePatchBadgeBg()Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v8

    if-eqz v8, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v2, v8}, Lcom/sec/daliviews/views/ImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/views/ImageView;->setPremultiplied(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    new-instance v4, Lcom/sec/android/app/launcher/views/HomeFolderView$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/launcher/views/HomeFolderView$1;-><init>(Lcom/sec/android/app/launcher/views/HomeFolderView;)V

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibilityChangeListener(Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeTypeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/views/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/HomeFolderView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    if-eqz v2, :cond_4

    const-string v2, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v2, 0xa

    move/from16 v0, p1

    if-ge v0, v2, :cond_e

    const-string v2, " %d "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBorderFraction:F

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/sec/daliviews/views/TextView;->setCurvedBorder(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->BADGE:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getBadgeTextColor()I

    move-result v10

    const v2, 0x1ffffff

    if-eq v10, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v10}, Lcom/sec/daliviews/views/TextView;->setDefaultTextColor(I)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    sget-object v2, Lcom/sec/android/app/launcher/views/HomeFolderView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "settext done. valueStrcount :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", created :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_1e

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    const v4, 0x7f0d0075

    invoke-virtual {v2, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeTalkBack:Landroid/widget/TextView;

    if-nez v2, :cond_10

    new-instance v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeTalkBack:Landroid/widget/TextView;

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeTalkBack:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    const/4 v4, 0x0

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-virtual {v2, v4, v5}, Lcom/sec/daliviews/views/TextView;->setVisibilityAnimated(IF)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->getWidth()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->getHeight()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ImageView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ImageView;->getHeight()I

    move-result v2

    if-nez v2, :cond_13

    :cond_12
    sget-object v2, Lcom/sec/android/app/launcher/views/HomeFolderView;->TAG:Ljava/lang/String;

    const-string v4, "folder setBadge. mBadgeBg needs to set again"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/views/ImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgePadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBgWidth:I

    if-lt v2, v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgePadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v12

    invoke-virtual {v2, v4, v11}, Lcom/sec/daliviews/views/ImageView;->setSize(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgePadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v12

    invoke-virtual {v2, v4, v11}, Lcom/sec/daliviews/views/NativeViewBase;->setSize(II)V

    :goto_5
    if-eqz v14, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->updateMode()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->isAppsEditMode()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/views/FixedContainer;->setVisibility(I)V

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->isAppsEditMode()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v17

    sget-object v4, Lcom/sec/android/app/launcher/views/HomeFolderView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item.containerType : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v17, :cond_21

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", item : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v17, :cond_22

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/FolderItem;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_7
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", badge count : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " visible? "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/NativeViewBase;->getVisibility()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_18
    const/4 v14, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/launcher/views/HomeFolderView;->TAG:Ljava/lang/String;

    const-string v4, "System font is not enable."

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_19
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getBadgeBg()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getBadgeChunk()[B

    move-result-object v13

    if-eqz v3, :cond_1a

    if-nez v13, :cond_1d

    :cond_1a
    if-nez v3, :cond_1b

    sget-object v2, Lcom/sec/android/app/launcher/views/HomeFolderView;->TAG:Ljava/lang/String;

    const-string v4, "HomeFolderView::getBadgeView() themeBg is null"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    if-nez v13, :cond_1c

    sget-object v2, Lcom/sec/android/app/launcher/views/HomeFolderView;->TAG:Ljava/lang/String;

    const-string v4, "HomeFolderView::getBadgeView() themeBg chunk null"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->setBadgeImage()V

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getBadgeBg()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getBadgeChunk()[B

    move-result-object v13

    :cond_1d
    if-eqz v3, :cond_b

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    if-eqz v13, :cond_b

    sget-object v2, Lcom/sec/android/app/launcher/views/HomeFolderView;->TAG:Ljava/lang/String;

    const-string v4, "HomeFolderView::getBadgeView() setNinePatchImage"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getBadgeChunk()[B

    move-result-object v2

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/sec/android/app/launcher/utils/Utils;->decodeNinePatchChunk([BLandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v7, v7, v22

    invoke-virtual/range {v2 .. v7}, Lcom/sec/daliviews/views/ImageView;->setNinePatchImage(Landroid/graphics/Bitmap;IIII)V

    goto/16 :goto_3

    :cond_1e
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    const v4, 0x7f0d0076

    invoke-virtual {v2, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBgWidth:I

    invoke-virtual {v2, v4, v11}, Lcom/sec/daliviews/views/ImageView;->setSize(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeBgWidth:I

    invoke-virtual {v2, v4, v11}, Lcom/sec/daliviews/views/NativeViewBase;->setSize(II)V

    goto/16 :goto_5

    :cond_20
    sget-object v2, Lcom/sec/android/app/launcher/views/HomeFolderView;->TAG:Ljava/lang/String;

    const-string v4, "folder setBadge. mBadgeBg is null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_21
    const-string v2, "null item"

    goto/16 :goto_6

    :cond_22
    const-string v2, "null itemId"

    goto/16 :goto_7
.end method

.method public setTextBg()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getAppTitleBg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setTextSize(I)V
    .locals 3

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    if-ne p1, v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/views/TextView;->setTextSize(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mEnableTitleText:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setTitleAttribute(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mEnableTitleText:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->setTextBg()V

    :cond_0
    return-void
.end method

.method public setUninstallStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->isUninstallTouched:Z

    return-void
.end method

.method public setUninstallView(ZZ)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->isClone()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/FixedContainer;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_6

    sget-boolean v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseFolderPopup:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->inflateUninstallView()V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/FixedContainer;->setVisibility(I)V

    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/FixedContainer;->setFocusableInTouchMode(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/FixedContainer;->setContentDescription(Ljava/lang/String;)V

    sget-boolean v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseFolderPopup:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    new-instance v2, Lcom/sec/android/app/launcher/views/HomeFolderView$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/views/HomeFolderView$5;-><init>(Lcom/sec/android/app/launcher/views/HomeFolderView;)V

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/FixedContainer;->setOnInterceptTouchListener(Lcom/sec/daliviews/views/ContainerViewBase$OnInterceptTouchListener;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v1, :cond_7

    if-eqz p2, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/FixedContainer;->setVisibility(I)V

    goto :goto_1
.end method

.method public showGlowEffectIfNeeded(Landroid/view/MotionEvent;Lcom/sec/daliviews/views/ContainerViewBase;)V
    .locals 6

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/sec/daliviews/views/ContainerViewBase;->suppressOutlinesOnItems()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sec/android/app/launcher/views/HomeFolderView$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/views/HomeFolderView$6;-><init>(Lcom/sec/android/app/launcher/views/HomeFolderView;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateBadge()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->updateBadge(Z)V

    return-void
.end method

.method public updateBadge(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->isAppsEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->getFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerType()I

    move-result v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->isAppsEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/launcher/views/HomeFolderView;->setUninstallView(ZZ)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeFolderView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/launcher/views/HomeFolderView;->setUninstallView(ZZ)V

    goto :goto_1
.end method
