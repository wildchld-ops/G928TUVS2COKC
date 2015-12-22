.class public Lcom/sec/android/app/launcher/views/HomeItemView;
.super Lcom/sec/daliviews/views/IconView;
.source "HomeItemView.java"

# interfaces
.implements Lcom/sec/android/app/launcher/views/IconDropContainer$IconDropAnimatable;


# static fields
.field private static final DEBUGGABLE:Z

.field private static final ICONMODE_TRANSITION_TIME:F = 0.25f

.field private static final TAG:Ljava/lang/String;

.field private static mOutlineDuration:F


# instance fields
.field private defaultBadgeBg:Landroid/graphics/drawable/Drawable;

.field private mBadge:Lcom/sec/daliviews/views/TextView;

.field private mBadgeBg:Lcom/sec/daliviews/views/ImageView;

.field private mBadgeBgHeight:I

.field private mBadgeBgWidth:I

.field private mBadgeBorderFraction:F

.field private mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

.field private mBadgePadding:I

.field private mBadgeSlideDuration:F

.field private mBadgeTalkBack:Landroid/widget/TextView;

.field private mBadgeTypeface:Landroid/graphics/Typeface;

.field private mBgView:Lcom/sec/daliviews/views/NativeViewBase;

.field private mChecked:Z

.field private mCreateFolderAnim:Lcom/sec/daliviews/animation/NativeAnimation;

.field private mDropContainer:Lcom/sec/android/app/launcher/views/IconDropContainer;

.field private mEnableTitleText:Z

.field private mFolderItemTalkBack:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIconImage:Lcom/sec/daliviews/views/NativeViewBase;

.field private mIconImageContainer:Lcom/sec/daliviews/views/ContainerView;

.field private mLiveView:Lcom/sec/android/app/launcher/views/LiveView;

.field private mRecyclable:Z

.field private mTitle:Lcom/sec/daliviews/views/TextView;

.field private mTypeface:Landroid/graphics/Typeface;

.field private mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

.field private mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

.field private mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

.field private mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

.field private mWidgetItem:Lcom/sec/android/app/launcher/data/AppWidgetItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/launcher/views/HomeItemView;->DEBUGGABLE:Z

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/launcher/views/HomeItemView;->mOutlineDuration:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mIconImage:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mIconImageContainer:Lcom/sec/daliviews/views/ContainerView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mLiveView:Lcom/sec/android/app/launcher/views/LiveView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadge:Lcom/sec/daliviews/views/TextView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeTalkBack:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mFolderItemTalkBack:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeSlideDuration:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBorderFraction:F

    iput v5, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBgWidth:I

    iput v5, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBgHeight:I

    iput v5, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgePadding:I

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mWidgetItem:Lcom/sec/android/app/launcher/data/AppWidgetItem;

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mRecyclable:Z

    iput-boolean v5, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mChecked:Z

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTypeface:Landroid/graphics/Typeface;

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mEnableTitleText:Z

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeTypeface:Landroid/graphics/Typeface;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mDropContainer:Lcom/sec/android/app/launcher/views/IconDropContainer;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBgView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mCreateFolderAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const v2, 0x7f0a00c3

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/views/HomeItemView;->mOutlineDuration:F

    const v2, 0x7f0a00c8

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeSlideDuration:F

    const v2, 0x7f0a00c7

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBorderFraction:F

    const v2, 0x7f0a0164

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBgWidth:I

    const v2, 0x7f0a0160

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBgHeight:I

    const v2, 0x7f0a0168

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgePadding:I

    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/views/HomeItemView;->addAllowedViewType(I)V

    const v2, 0x7f020058

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->defaultBadgeBg:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->setThemeStyle()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/views/HomeItemView;)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mIconImage:Lcom/sec/daliviews/views/NativeViewBase;

    return-object v0
.end method

.method static synthetic access$100()F
    .locals 1

    sget v0, Lcom/sec/android/app/launcher/views/HomeItemView;->mOutlineDuration:F

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/views/HomeItemView;Lcom/sec/android/app/launcher/data/HomeItem;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/views/HomeItemView;->isInClosedFolder(Lcom/sec/android/app/launcher/data/HomeItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/launcher/views/HomeItemView;Lcom/sec/android/app/launcher/data/HomeItem;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/views/HomeItemView;->isAppsItemView(Lcom/sec/android/app/launcher/data/HomeItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/launcher/views/HomeItemView;)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/launcher/views/HomeItemView;)Lcom/sec/daliviews/views/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/launcher/views/HomeItemView;)Lcom/sec/daliviews/views/FixedContainer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    return-object v0
.end method

.method private cleanupJavaSide()V
    .locals 3

    sget-boolean v0, Lcom/sec/android/app/launcher/views/HomeItemView;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanupJavaSide() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBgView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBgView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->destroy()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/FixedContainer;->destroy()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mCreateFolderAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mCreateFolderAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_7
    return-void

    :cond_8
    sget-object v0, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanupJavaSide() - null title, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getBackgroundView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBgView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v1, :cond_0

    const v1, 0x7f03002e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->inflateViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBgView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getFolderStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->getCloseFolderBackground(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBgView:Lcom/sec/daliviews/views/NativeViewBase;

    check-cast v1, Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBgView:Lcom/sec/daliviews/views/NativeViewBase;

    return-object v1
.end method

.method private getBadgeView()V
    .locals 14

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadge:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v0, :cond_7

    :cond_0
    sget-object v0, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    const-string v2, "Badge is being inflated"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v10

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    const-string v0, "/system/fonts/SECRobotoLight-Bold.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->isAppsItemView()Z

    move-result v6

    sget-object v0, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apps_icon? : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadge:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadge:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->deleteView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iput-object v4, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadge:Lcom/sec/daliviews/views/TextView;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->deleteView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iput-object v4, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->deleteView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iput-object v4, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_4
    if-eqz v6, :cond_8

    const v0, 0x7f03002d

    invoke-virtual {v10, v0}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    const v2, 0x7f0b0095

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/NativeViewBase;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadge:Lcom/sec/daliviews/views/TextView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    const v2, 0x7f0b0094

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/NativeViewBase;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->BADGE:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    const-string v2, "HomeItemView::getBadgeView() theme"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getNinePatchBadgeBg()Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v7}, Lcom/sec/daliviews/views/ImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ImageView;->setPremultiplied(Z)V

    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    new-instance v2, Lcom/sec/android/app/launcher/views/HomeItemView$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/views/HomeItemView$2;-><init>(Lcom/sec/android/app/launcher/views/HomeItemView;)V

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibilityChangeListener(Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadge:Lcom/sec/daliviews/views/TextView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_7
    return-void

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    sget-object v0, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    const-string v2, "System font is not enable."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const v0, 0x7f03002c

    invoke-virtual {v10, v0}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_1

    :cond_9
    invoke-virtual {v12}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getBadgeBg()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getBadgeChunk()[B

    move-result-object v8

    if-eqz v1, :cond_a

    if-nez v8, :cond_d

    :cond_a
    if-nez v1, :cond_b

    sget-object v0, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    const-string v2, "HomeItemView::getBadgeView() themeBg is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-nez v8, :cond_c

    sget-object v0, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    const-string v2, "HomeItemView::getBadgeView() themeBg chunk null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {v12}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->setBadgeImage()V

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getBadgeBg()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getBadgeChunk()[B

    move-result-object v8

    :cond_d
    if-eqz v1, :cond_5

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    if-eqz v8, :cond_5

    sget-object v0, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    const-string v2, "HomeItemView::getBadgeView() setNinePatchImage"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getBadgeChunk()[B

    move-result-object v0

    invoke-static {v0, v11}, Lcom/sec/android/app/launcher/utils/Utils;->decodeNinePatchChunk([BLandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    iget v2, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget v4, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/sec/daliviews/views/ImageView;->setNinePatchImage(Landroid/graphics/Bitmap;IIII)V

    goto/16 :goto_2

    :cond_e
    sget-object v0, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    const-string v2, "getBadgeView. mBadgeBg is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private getDropContainer()Lcom/sec/android/app/launcher/views/IconDropContainer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mDropContainer:Lcom/sec/android/app/launcher/views/IconDropContainer;

    if-nez v0, :cond_0

    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/IconDropContainer;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mDropContainer:Lcom/sec/android/app/launcher/views/IconDropContainer;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mDropContainer:Lcom/sec/android/app/launcher/views/IconDropContainer;

    return-object v0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getImageViewContainer()Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mIconImageContainer:Lcom/sec/daliviews/views/ContainerView;

    if-nez v0, :cond_0

    const v0, 0x7f0b008d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mIconImageContainer:Lcom/sec/daliviews/views/ContainerView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mIconImageContainer:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method public static getOutlineDuration()F
    .locals 1

    sget v0, Lcom/sec/android/app/launcher/views/HomeItemView;->mOutlineDuration:F

    return v0
.end method

.method private isAppsItemView()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getItemId()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    if-nez v0, :cond_0

    sget-object v1, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item id is invalid. getItem from tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->isAppsItemView(Lcom/sec/android/app/launcher/data/HomeItem;)Z

    move-result v1

    return v1
.end method

.method private isAppsItemView(Lcom/sec/android/app/launcher/data/HomeItem;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInClosedFolder(Lcom/sec/android/app/launcher/data/HomeItem;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerType()I

    move-result v0

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getCurrentMode()I

    move-result v2

    const v3, 0x7f0b00e0

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setFolderItemTalkbackContentInsideFolder(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mFolderItemTalkBack:Landroid/widget/TextView;

    if-nez v3, :cond_0

    new-instance v3, Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mFolderItemTalkBack:Landroid/widget/TextView;

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getItemId()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-nez v1, :cond_1

    sget-object v3, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item id is invalid. getItem from tag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/HomeItem;

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerType()I

    move-result v0

    const-string v2, ""

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    const v4, 0x7f0d00b4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v3, ""

    if-eq v2, v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mFolderItemTalkBack:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mFolderItemTalkBack:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_3
    return-void
.end method

.method private setThemeStyle()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getFontStyle()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTypeface:Landroid/graphics/Typeface;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->isEnableAppTitle()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mEnableTitleText:Z

    return-void
.end method

.method private setUninstallDisableTalkbakContent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 12

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/Accessibility;->getFocusedView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/daliviews/views/NativeViewBase;->getItemId()I

    move-result v5

    const/4 v3, 0x0

    const/4 v6, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getItemsAtCurrentPage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v7}, Lcom/sec/daliviews/views/Item;->getId()J

    move-result-wide v8

    int-to-long v10, v5

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/data/HomeItem;

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->isBlockUninstall()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemApp()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d00ca

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_1
    :goto_1
    if-nez v6, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0021

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemApp()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->isNonDisable()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemSigned()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0054

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private setUninstallDisableTalkbakContentInsideFolder(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 16

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/Accessibility;->getFocusedView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/daliviews/views/NativeViewBase;->getItemId()I

    move-result v9

    const/4 v6, 0x0

    const/4 v10, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getFolderItems()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    check-cast v3, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/Item;->getId()J

    move-result-wide v12

    int-to-long v14, v9

    cmp-long v11, v12, v14

    if-nez v11, :cond_1

    move-object v6, v0

    check-cast v6, Lcom/sec/android/app/launcher/data/HomeItem;

    const/4 v5, 0x1

    :cond_2
    if-eqz v5, :cond_0

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/HomeItem;->isBlockUninstall()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemApp()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d00ca

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_4
    :goto_0
    if-nez v10, :cond_5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0021

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v11, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v12

    const v13, 0x7f0d00b4

    invoke-virtual {v12, v13}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_6
    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemApp()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/HomeItem;->isNonDisable()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemSigned()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0054

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0
.end method


# virtual methods
.method public animateOnDragEnter()V
    .locals 6

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getBackgroundView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getImageView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/NativeViewBase;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getImageView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/NativeViewBase;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/NativeViewBase;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getImageViewContainer()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/daliviews/views/ContainerView;->addBackgroundView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getItemId()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/data/HomeItem;

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerType()I

    move-result v1

    :cond_0
    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v4

    if-ne v1, v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v4

    const v5, 0x7f040001

    invoke-static {v4, v5}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mCreateFolderAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mCreateFolderAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v4, v0}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mCreateFolderAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    if-nez v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v4

    const v5, 0x7f040012

    invoke-static {v4, v5}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mCreateFolderAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mCreateFolderAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v4}, Lcom/sec/daliviews/animation/NativeAnimation;->reset()V

    goto :goto_0
.end method

.method public animateOnDragExit()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mCreateFolderAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mCreateFolderAnim:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v1}, Lcom/sec/daliviews/animation/NativeAnimation;->reset()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getBackgroundView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBgView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getImageViewContainer()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBgView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->detachView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/daliviews/views/IconView;->destroy()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->cleanupJavaSide()V

    return-void
.end method

.method public getImageView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mIconImage:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v0, :cond_0

    const v0, 0x7f0b008e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mIconImage:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mIconImage:Lcom/sec/daliviews/views/NativeViewBase;

    return-object v0
.end method

.method public getIsNativeModes()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getModedViewType()I
    .locals 1

    const v0, 0x7f0b0003

    return v0
.end method

.method public getNodeInfo(Landroid/util/SparseIntArray;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/daliviews/views/IconView;->getNodeInfo(Landroid/util/SparseIntArray;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getTitle()Lcom/sec/daliviews/views/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getUninstallView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    return-object v0
.end method

.method public hasWidget()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mWidgetItem:Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideGlowEffect()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mIconImage:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getGlowEffect()Lcom/sec/daliviews/effects/GlowEffect;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mIconImage:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/effects/GlowEffect;->remove(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    return-void
.end method

.method public inflateUninstallView(Lcom/sec/android/app/launcher/data/HomeItem;)V
    .locals 4

    sget-boolean v1, Lcom/sec/android/app/launcher/views/HomeItemView;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    sget-object v2, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inflateUninstall : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", view exist? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->deleteView(Lcom/sec/daliviews/views/NativeViewBase;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    const v1, 0x7f03002a

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/FixedContainer;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    const v2, 0x7f0b0092

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/FixedContainer;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->updateMode()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/FixedContainer;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    new-instance v2, Lcom/sec/android/app/launcher/views/HomeItemView$3;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/launcher/views/HomeItemView$3;-><init>(Lcom/sec/android/app/launcher/views/HomeItemView;Lcom/sec/android/app/launcher/data/HomeItem;)V

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/FixedContainer;->setVisibilityChangeListener(Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v1

    const v2, 0x7f04003e

    invoke-static {v1, v2}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    new-instance v2, Lcom/sec/android/app/launcher/views/HomeItemView$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/views/HomeItemView$4;-><init>(Lcom/sec/android/app/launcher/views/HomeItemView;)V

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/animation/NativeAnimation;->addListener(Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v1

    const v2, 0x7f04003d

    invoke-static {v1, v2}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    new-instance v2, Lcom/sec/android/app/launcher/views/HomeItemView$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/views/HomeItemView$5;-><init>(Lcom/sec/android/app/launcher/views/HomeItemView;)V

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/animation/NativeAnimation;->addListener(Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public inflateViewById(I)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    return-object v1
.end method

.method public isAppsEditMode(Lcom/sec/android/app/launcher/data/HomeItem;)Z
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListMode()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLiveView()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mLiveView:Lcom/sec/android/app/launcher/views/LiveView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecyclable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mRecyclable:Z

    return v0
.end method

.method public onDragEnd()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getDropContainer()Lcom/sec/android/app/launcher/views/IconDropContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getDropContainer()Lcom/sec/android/app/launcher/views/IconDropContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/IconDropContainer;->onDragEnd()V

    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0b008f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getCurrentMode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeTalkBack:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeTalkBack:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/FixedContainer;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->getFocusedView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/views/HomeItemView;->setUninstallDisableTalkbakContent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeTalkBack:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeTalkBack:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/views/HomeItemView;->setFolderItemTalkbackContentInsideFolder(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/FixedContainer;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->getFocusedView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/views/HomeItemView;->setUninstallDisableTalkbakContentInsideFolder(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/FixedContainer;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7f0b00d7 -> :sswitch_1
        0x7f0b00d8 -> :sswitch_1
        0x7f0b00d9 -> :sswitch_4
        0x7f0b00da -> :sswitch_3
        0x7f0b00dc -> :sswitch_1
        0x7f0b00dd -> :sswitch_1
        0x7f0b00de -> :sswitch_1
        0x7f0b00df -> :sswitch_1
        0x7f0b00e0 -> :sswitch_0
        0x7f0b00e1 -> :sswitch_2
        0x7f0b00e4 -> :sswitch_1
        0x7f0b00e5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onVisibilityChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/sec/daliviews/views/IconView;->onVisibilityChanged(I)V

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mLiveView:Lcom/sec/android/app/launcher/views/LiveView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerViewBase;->getDefaultMode()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mLiveView:Lcom/sec/android/app/launcher/views/LiveView;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/LiveView;->getDefaultMode()I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mLiveView:Lcom/sec/android/app/launcher/views/LiveView;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/views/LiveView;->changeMode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    const-string v3, "HomeItemView.onVisibilityChanged() > trying to change LiveView mode but parent is null!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->stopAnim()V

    goto :goto_0
.end method

.method public removeAll()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->detachAllViews()V

    return-void
.end method

.method protected resetPeer()V
    .locals 3

    sget-boolean v0, Lcom/sec/android/app/launcher/views/HomeItemView;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetPeer() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/sec/daliviews/views/IconView;->resetPeer()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->cleanupJavaSide()V

    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    const-string v1, "resetPeer()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBadge(I)V
    .locals 12

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadge:Lcom/sec/daliviews/views/TextView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadge:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/launcher/views/HomeItemView;->deleteView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iput-object v8, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadge:Lcom/sec/daliviews/views/TextView;

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/launcher/views/HomeItemView;->deleteView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iput-object v8, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/launcher/views/HomeItemView;->deleteView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iput-object v8, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_2
    iput-object v8, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeTalkBack:Landroid/widget/TextView;

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadge:Lcom/sec/daliviews/views/TextView;

    if-eqz v8, :cond_10

    move v3, v6

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getBadgeView()V

    const-string v8, " %d "

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0xa

    if-lt p1, v8, :cond_5

    const-string v8, " "

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadge:Lcom/sec/daliviews/views/TextView;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadge:Lcom/sec/daliviews/views/TextView;

    iget v9, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBorderFraction:F

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/daliviews/views/TextView;->setCurvedBorder(FF)V

    iget-object v8, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadge:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v8, v5}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadge:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v8}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_6
    sget-object v8, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setBadge. valueStrcount :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", created :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-ne p1, v7, :cond_11

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    const v8, 0x7f0d0075

    invoke-virtual {v7, v8}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v7, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeTalkBack:Landroid/widget/TextView;

    if-nez v7, :cond_7

    new-instance v7, Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeTalkBack:Landroid/widget/TextView;

    :cond_7
    iget-object v7, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeTalkBack:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadge:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v7}, Lcom/sec/daliviews/views/TextView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadge:Lcom/sec/daliviews/views/TextView;

    const/high16 v8, 0x3e800000    # 0.25f

    invoke-virtual {v7, v6, v8}, Lcom/sec/daliviews/views/TextView;->setVisibilityAnimated(IF)V

    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadge:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/TextView;->getWidth()I

    move-result v2

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadge:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/TextView;->getHeight()I

    move-result v1

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ImageView;->getWidth()I

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ImageView;->getHeight()I

    move-result v6

    if-nez v6, :cond_a

    :cond_9
    sget-object v6, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    const-string v7, "setBadge. mBadgeBg needs to set again"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    iget-object v7, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->defaultBadgeBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    iget v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgePadding:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v2

    iget v7, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBgWidth:I

    if-lt v6, v7, :cond_12

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    iget v7, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgePadding:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    invoke-virtual {v6, v7, v1}, Lcom/sec/daliviews/views/ImageView;->setSize(II)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    iget v7, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgePadding:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    invoke-virtual {v6, v7, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setSize(II)V

    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getItemId()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/launcher/data/HomeItem;

    if-nez v4, :cond_c

    sget-object v6, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "item id is invalid. getItem from tag : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/launcher/data/HomeItem;

    :cond_c
    if-eqz v3, :cond_d

    invoke-direct {p0, v4}, Lcom/sec/android/app/launcher/views/HomeItemView;->isInClosedFolder(Lcom/sec/android/app/launcher/data/HomeItem;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->updateMode()V

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v6, :cond_d

    invoke-direct {p0, v4}, Lcom/sec/android/app/launcher/views/HomeItemView;->isAppsItemView(Lcom/sec/android/app/launcher/data/HomeItem;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/launcher/views/HomeItemView;->isAppsEditMode(Lcom/sec/android/app/launcher/data/HomeItem;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/FixedContainer;->setVisibility(I)V

    :cond_d
    invoke-direct {p0, v4}, Lcom/sec/android/app/launcher/views/HomeItemView;->isInClosedFolder(Lcom/sec/android/app/launcher/data/HomeItem;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-direct {p0, v4}, Lcom/sec/android/app/launcher/views/HomeItemView;->isAppsItemView(Lcom/sec/android/app/launcher/data/HomeItem;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {p0, v4}, Lcom/sec/android/app/launcher/views/HomeItemView;->isAppsEditMode(Lcom/sec/android/app/launcher/data/HomeItem;)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_e
    iget-object v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    :cond_f
    sget-boolean v6, Lcom/sec/android/app/launcher/views/HomeItemView;->DEBUGGABLE:Z

    if-eqz v6, :cond_3

    sget-object v7, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "item.containerType : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", itemId : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomeItem;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_5
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", title : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", badge count : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadge:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v8}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    move v3, v7

    goto/16 :goto_1

    :cond_11
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v8

    const v9, 0x7f0d0076

    invoke-virtual {v8, v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v6

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_12
    iget-object v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBg:Lcom/sec/daliviews/views/ImageView;

    iget v7, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBgWidth:I

    invoke-virtual {v6, v7, v1}, Lcom/sec/daliviews/views/ImageView;->setSize(II)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    iget v7, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeBgWidth:I

    invoke-virtual {v6, v7, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setSize(II)V

    goto/16 :goto_3

    :cond_13
    const-string v6, "null item"

    goto :goto_4

    :cond_14
    const-string v6, "null itemId"

    goto :goto_5

    :cond_15
    const-string v6, "null title"

    goto :goto_6
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mChecked:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mChecked:Z

    :cond_0
    return-void
.end method

.method public setIconBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    sget-object v0, Lcom/sec/daliviews/views/ImageView$TransitionEffectType;->TRANSITIONEFFECT_NONE:Lcom/sec/daliviews/views/ImageView$TransitionEffectType;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ImageView$TransitionEffectType;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->setIconBitmap(Landroid/graphics/Bitmap;IF)V

    return-void
.end method

.method public setIconBitmap(Landroid/graphics/Bitmap;IF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getImageView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/daliviews/views/ImageView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;IF)V

    :cond_0
    return-void
.end method

.method public setIconBitmap(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getImageView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/daliviews/views/ImageView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ImageView;->setImagePath(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setLiveView(Lcom/sec/android/app/launcher/views/LiveView;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mLiveView:Lcom/sec/android/app/launcher/views/LiveView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mLiveView:Lcom/sec/android/app/launcher/views/LiveView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mIconImage:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getImageViewContainer()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    const v1, 0x7f0b008e

    invoke-virtual {v0, p1, v1}, Lcom/sec/daliviews/views/ContainerView;->replaceView(Lcom/sec/daliviews/views/NativeViewBase;I)V

    return-void
.end method

.method public setPremultiplied(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getImageView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/daliviews/views/ImageView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ImageView;->setPremultiplied(Z)V

    :cond_0
    return-void
.end method

.method public setRecyclable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mRecyclable:Z

    return-void
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

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0b008f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mEnableTitleText:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_2
    return-void
.end method

.method public setTitle(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0b008f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mEnableTitleText:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v0

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v0

    if-eq p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->setTextBg()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_3
    return-void
.end method

.method public setTitleAttribute(II)V
    .locals 2

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mTitle:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->setTextBg()V

    goto :goto_0
.end method

.method public setUninstallView(Lcom/sec/android/app/launcher/data/HomeItem;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->setUninstallView(Lcom/sec/android/app/launcher/data/HomeItem;ZZZ)V

    return-void
.end method

.method public setUninstallView(Lcom/sec/android/app/launcher/data/HomeItem;ZZZ)V
    .locals 4

    const/4 v3, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->canUninstallOrDisable()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/sec/android/app/launcher/views/HomeItemView;->DEBUGGABLE:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/android/app/launcher/views/HomeItemView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uninstall, mUninstallButton :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", forceReinflate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v0, :cond_4

    if-eqz p4, :cond_5

    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/HomeItemView;->inflateUninstallView(Lcom/sec/android/app/launcher/data/HomeItem;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/FixedContainer;->setVisibility(I)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/FixedContainer;->setVisibility(I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v0, :cond_8

    if-eqz p3, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/views/HomeItemView;->isInClosedFolder(Lcom/sec/android/app/launcher/data/HomeItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mBadgeContainer:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/FixedContainer;->setVisibility(I)V

    goto :goto_1
.end method

.method public setWidgetItem(Lcom/sec/android/app/launcher/data/AppWidgetItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mWidgetItem:Lcom/sec/android/app/launcher/data/AppWidgetItem;

    return-void
.end method

.method public showGlowEffectIfNeeded(Landroid/view/MotionEvent;Lcom/sec/daliviews/views/ContainerViewBase;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mIconImage:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/sec/daliviews/views/ContainerViewBase;->suppressOutlinesOnItems()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/HomeItemView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/launcher/views/HomeItemView$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/views/HomeItemView$1;-><init>(Lcom/sec/android/app/launcher/views/HomeItemView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public startAnim()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mLiveView:Lcom/sec/android/app/launcher/views/LiveView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mLiveView:Lcom/sec/android/app/launcher/views/LiveView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/LiveView;->startAnim()V

    :cond_0
    return-void
.end method

.method public stopAnim()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mLiveView:Lcom/sec/android/app/launcher/views/LiveView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/HomeItemView;->mLiveView:Lcom/sec/android/app/launcher/views/LiveView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/LiveView;->stopAnim()V

    :cond_0
    return-void
.end method
