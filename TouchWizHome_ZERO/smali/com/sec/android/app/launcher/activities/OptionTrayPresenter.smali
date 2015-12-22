.class public Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;
.super Lcom/sec/android/app/launcher/activities/PresenterBase;
.source "OptionTrayPresenter.java"

# interfaces
.implements Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;
    }
.end annotation


# static fields
.field private static final CELL_HEIGHT_INDEX:I = 0x1

.field private static final CELL_WIDTH_INDEX:I = 0x0

.field private static final GRID_VALUE:[[I

.field private static final TAG:Ljava/lang/String; = "OptionTrayPresenter"

.field private static final THEME_SETTINGS_PACKAGE:Ljava/lang/String; = "com.samsung.android.themecenter"

.field private static mLocale:Ljava/lang/String; = null

.field private static final mOpacity:F = 1.0f

.field private static mScreenGridFormat:Ljava/lang/String; = null

.field private static final mSelectOpacity:F = 0.5f

.field private static mSpanDescriptionFormat:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

.field private mAddWidgetButton:Lcom/sec/daliviews/views/ContainerView;

.field private mCurrentButton:I

.field private mCurrentView:Lcom/sec/daliviews/views/ContainerView;

.field private mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

.field private mOptionTrayViewsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/ContainerView;",
            ">;"
        }
    .end annotation
.end field

.field private mPageAnimDuration:F

.field private mScreenGridButton:Lcom/sec/daliviews/views/ContainerView;

.field private mScreenGridOption1:Lcom/sec/daliviews/views/ContainerView;

.field private mScreenGridOption2:Lcom/sec/daliviews/views/ContainerView;

.field private mScreenGridOption3:Lcom/sec/daliviews/views/ContainerView;

.field private mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

.field private mScreenGridOptionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/ContainerView;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenSettingButton:Lcom/sec/daliviews/views/ContainerView;

.field private mSelectImage1:Lcom/sec/daliviews/views/ImageView;

.field private mSelectImage2:Lcom/sec/daliviews/views/ImageView;

.field private mSelectImage3:Lcom/sec/daliviews/views/ImageView;

.field private mSetWallpaperButton:Lcom/sec/daliviews/views/ContainerView;

.field private mThemeButton:Lcom/sec/daliviews/views/ContainerView;

.field private mUnselectImage1:Lcom/sec/daliviews/views/ImageView;

.field private mUnselectImage2:Lcom/sec/daliviews/views/ImageView;

.field private mUnselectImage3:Lcom/sec/daliviews/views/ImageView;

.field private mZeroPageSetting:Lcom/sec/daliviews/views/ContainerView;

.field private mZeroPageSettingView:Lcom/sec/daliviews/views/ContainerView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mLocale:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->GRID_VALUE:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x5
    .end array-data

    :array_2
    .array-data 4
        0x5
        0x5
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x6
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/PresenterBase;-><init>(Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mZeroPageSettingView:Lcom/sec/daliviews/views/ContainerView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mZeroPageSetting:Lcom/sec/daliviews/views/ContainerView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mCurrentView:Lcom/sec/daliviews/views/ContainerView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayViewsList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionsList:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mCurrentButton:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mPageAnimDuration:F

    check-cast p1, Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0239

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mPageAnimDuration:F

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mLocale:Ljava/lang/String;

    const v1, 0x7f0d004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridFormat:Ljava/lang/String;

    const v1, 0x7f0d00be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSpanDescriptionFormat:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->startWallpaper()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->updateBtnForScreenGrid(I)V

    return-void
.end method

.method static synthetic access$400()[[I
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->GRID_VALUE:[[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mZeroPageSettingView:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method private hideOptionTrayAllViews()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mPageAnimDuration:F

    invoke-virtual {v0, v2, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityAnimated(IF)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mPageAnimDuration:F

    invoke-virtual {v0, v2, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityAnimated(IF)V

    :cond_1
    return-void
.end method

.method private startWallpaper()V
    .locals 5

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.wallpapers.WallpaperPickerActivity"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->registerActivityResultListener(Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityResultListener;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const/16 v4, 0xa

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateBtnForScreenGrid()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->GRID_VALUE:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget v1, v1, v2

    sget v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->GRID_VALUE:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    sget v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->updateBtnForScreenGrid(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateBtnForScreenGrid(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v3, 0x7f0b00eb

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSelectImage1:Lcom/sec/daliviews/views/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v3, 0x7f0b00ef

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSelectImage2:Lcom/sec/daliviews/views/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v3, 0x7f0b00f3

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSelectImage3:Lcom/sec/daliviews/views/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v3, 0x7f0b00ec

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mUnselectImage1:Lcom/sec/daliviews/views/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v3, 0x7f0b00f0

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mUnselectImage2:Lcom/sec/daliviews/views/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v3, 0x7f0b00f4

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mUnselectImage3:Lcom/sec/daliviews/views/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSelectImage1:Lcom/sec/daliviews/views/ImageView;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mUnselectImage1:Lcom/sec/daliviews/views/ImageView;

    if-nez p1, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSelectImage2:Lcom/sec/daliviews/views/ImageView;

    if-ne p1, v6, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mUnselectImage2:Lcom/sec/daliviews/views/ImageView;

    if-ne p1, v6, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSelectImage3:Lcom/sec/daliviews/views/ImageView;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mUnselectImage3:Lcom/sec/daliviews/views/ImageView;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_5

    :goto_5
    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption1:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p0, v0, v4, v4}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->setSpanDescription(Lcom/sec/daliviews/views/ContainerView;II)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption2:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p0, v0, v4, v5}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->setSpanDescription(Lcom/sec/daliviews/views/ContainerView;II)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption3:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p0, v0, v5, v5}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->setSpanDescription(Lcom/sec/daliviews/views/ContainerView;II)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v2, v1

    goto :goto_5
.end method

.method private updateScreenGrid()V
    .locals 12

    const v11, 0x7f0a022f

    const v10, 0x7f0a022e

    const v9, 0x7f0a022d

    const v8, 0x7f0a022c

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    const v4, 0x7f0a0228

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    const v4, 0x7f0a004e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v7, v7, v7, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0a022a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0a022b

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v4, v5, v7, v6, v7}, Lcom/sec/daliviews/views/ContainerView;->setPadding(IIII)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v4, v1}, Lcom/sec/daliviews/views/ContainerView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0b00eb

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ImageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v7, v4, v7, v5}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0b00ec

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ImageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    const v4, 0x7f0a0232

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    const v4, 0x7f0a0231

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    const v4, 0x7f0a0234

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0a0233

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v7, v4, v7, v5}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0b00ed

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/TextView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    const v4, 0x7f0a0230

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/views/TextView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0b00ef

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ImageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v7, v4, v7, v5}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0b00f0

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ImageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    const v4, 0x7f0a0232

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    const v4, 0x7f0a0231

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    const v4, 0x7f0a0234

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0a0233

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v7, v4, v7, v5}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0b00f1

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/TextView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    const v4, 0x7f0a0230

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/views/TextView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0b00f3

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ImageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v7, v4, v7, v5}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0b00f4

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ImageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    const v4, 0x7f0a0232

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    const v4, 0x7f0a0231

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    const v4, 0x7f0a0234

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0a0233

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v7, v4, v7, v5}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0b00f5

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/TextView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    const v4, 0x7f0a0230

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/views/TextView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public applyScreenGridText(Lcom/sec/daliviews/views/TextView;II)V
    .locals 4

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridFormat:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public changeVisibilityScreenGridView(Z)V
    .locals 3

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mPageAnimDuration:F

    invoke-virtual {v0, v2, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityAnimated(IF)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mPageAnimDuration:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityAnimated(IF)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public getCurrentTrayView()Lcom/sec/daliviews/views/ContainerView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    goto :goto_0
.end method

.method public getCurrentView()Lcom/sec/daliviews/views/ContainerView;
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mCurrentButton:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption1:Lcom/sec/daliviews/views/ContainerView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mCurrentView:Lcom/sec/daliviews/views/ContainerView;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mCurrentView:Lcom/sec/daliviews/views/ContainerView;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSetWallpaperButton:Lcom/sec/daliviews/views/ContainerView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mCurrentView:Lcom/sec/daliviews/views/ContainerView;

    goto :goto_0
.end method

.method public getMaxOptions()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayViewsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getNextView()Lcom/sec/daliviews/views/ContainerView;
    .locals 2

    iget v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mCurrentButton:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mCurrentButton:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getMaxOptions()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mCurrentButton:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mCurrentButton:I

    :cond_0
    iget v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mCurrentButton:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getView(I)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    return-object v0
.end method

.method public getPrevView()Lcom/sec/daliviews/views/ContainerView;
    .locals 2

    iget v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mCurrentButton:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mCurrentButton:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getMaxOptions()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mCurrentButton:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mCurrentButton:I

    :cond_0
    iget v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mCurrentButton:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getView(I)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Lcom/sec/daliviews/views/ContainerViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method public getView(I)Lcom/sec/daliviews/views/ContainerView;
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getMaxOptions()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mCurrentView:Lcom/sec/daliviews/views/ContainerView;

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mCurrentView:Lcom/sec/daliviews/views/ContainerView;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayViewsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mCurrentView:Lcom/sec/daliviews/views/ContainerView;

    goto :goto_1
.end method

.method public moveOptionTrayToTop()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    instance-of v1, v1, Lcom/sec/daliviews/views/ClippedContainerView;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentFragmentId()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    iget v2, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mPageAnimDuration:F

    invoke-virtual {v1, v0, v2}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityAnimated(IF)V

    const-string v2, "OptionTrayPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOptionTrayView is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_2

    const-string v1, "Visible"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/daliviews/utils/LayerManager;->instance()Lcom/sec/daliviews/utils/LayerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/utils/LayerManager;->updateLayers()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const-string v1, "Invisible"

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onBackPressed()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v4, 0x4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    iget v2, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mPageAnimDuration:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityAnimated(IF)V

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mZeroPageSettingView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mZeroPageSettingView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mZeroPageSettingView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public onHomePressed()Z
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mZeroPageSettingView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mZeroPageSettingView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mZeroPageSettingView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public onItemAdded(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemBadgeUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemDeleted(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
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

.method public refreshContentDescriptions()V
    .locals 8

    const v7, 0x7f0d0029

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v4, 0x7f0d0085

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSetWallpaperButton:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSetWallpaperButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/ContainerView;->setContentDescription(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v4, 0x7f0d0084

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridButton:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/ContainerView;->setContentDescription(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v4, 0x7f0d0081

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mAddWidgetButton:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mAddWidgetButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/ContainerView;->setContentDescription(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v4, 0x7f0d0087

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mThemeButton:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mThemeButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/ContainerView;->setContentDescription(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v4, 0x7f0d0061

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenSettingButton:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenSettingButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/ContainerView;->setContentDescription(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public setAccessibilityMode(Z)V
    .locals 0

    return-void
.end method

.method public setCurrentButton(I)V
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getMaxOptions()I

    move-result v0

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mCurrentButton:I

    :cond_0
    return-void
.end method

.method public setOpacity(Lcom/sec/daliviews/views/ContainerView;Z)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/ContainerView;->setOpacity(F)V

    :cond_0
    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public setOptionTray()V
    .locals 14

    const/16 v13, 0x8

    const v12, 0x7f0d0029

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v6

    const v7, 0x7f03004d

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v6

    check-cast v6, Lcom/sec/daliviews/views/ContainerView;

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    new-instance v7, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$1;-><init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)V

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityChangeListener(Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    const v7, 0x7f0b00f7

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v6

    check-cast v6, Lcom/sec/daliviews/views/ContainerView;

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSetWallpaperButton:Lcom/sec/daliviews/views/ContainerView;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v6, v12}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v9, 0x7f0d0085

    invoke-virtual {v8, v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSetWallpaperButton:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSetWallpaperButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimatePositioning(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->setWallpaperButtonVisible()V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSetWallpaperButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6, v1}, Lcom/sec/daliviews/views/ContainerView;->setContentDescription(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSetWallpaperButton:Lcom/sec/daliviews/views/ContainerView;

    new-instance v7, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$2;

    invoke-direct {v7, p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$2;-><init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)V

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ContainerView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    new-instance v6, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSetWallpaperButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-direct {v6, p0, v7}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;-><init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;Lcom/sec/daliviews/views/ContainerView;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSetWallpaperButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayViewsList:Ljava/util/List;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSetWallpaperButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    const v7, 0x7f0b00fa

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v6

    check-cast v6, Lcom/sec/daliviews/views/ContainerView;

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mAddWidgetButton:Lcom/sec/daliviews/views/ContainerView;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v6, v12}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v9, 0x7f0d0081

    invoke-virtual {v8, v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mAddWidgetButton:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mAddWidgetButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimatePositioning(Z)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mAddWidgetButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6, v1}, Lcom/sec/daliviews/views/ContainerView;->setContentDescription(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mAddWidgetButton:Lcom/sec/daliviews/views/ContainerView;

    new-instance v7, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$3;

    invoke-direct {v7, p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$3;-><init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)V

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ContainerView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    new-instance v6, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mAddWidgetButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-direct {v6, p0, v7}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;-><init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;Lcom/sec/daliviews/views/ContainerView;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mAddWidgetButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayViewsList:Ljava/util/List;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mAddWidgetButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    const v7, 0x7f0b0106

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/ContainerView;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimatePositioning(Z)V

    new-instance v6, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$4;

    invoke-direct {v6, p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$4;-><init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)V

    invoke-virtual {v4, v6}, Lcom/sec/daliviews/views/ContainerView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayViewsList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    const v7, 0x7f0b00fd

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v6

    check-cast v6, Lcom/sec/daliviews/views/ContainerView;

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mThemeButton:Lcom/sec/daliviews/views/ContainerView;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v6, v12}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v9, 0x7f0d0087

    invoke-virtual {v8, v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v3, 0x1

    :try_start_0
    const-string v6, "com.samsung.android.themecenter"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mThemeButton:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mThemeButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimatePositioning(Z)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mThemeButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6, v1}, Lcom/sec/daliviews/views/ContainerView;->setContentDescription(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mThemeButton:Lcom/sec/daliviews/views/ContainerView;

    new-instance v7, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$5;

    invoke-direct {v7, p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$5;-><init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)V

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ContainerView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    new-instance v6, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mThemeButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-direct {v6, p0, v7}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;-><init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;Lcom/sec/daliviews/views/ContainerView;)V

    if-nez v3, :cond_3

    sget-boolean v6, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportTheme:Z

    if-eqz v6, :cond_9

    :cond_3
    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isOwner()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isKnoxMode()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mThemeButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6, v10}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mThemeButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayViewsList:Ljava/util/List;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mThemeButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    const v7, 0x7f0b0100

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v6

    check-cast v6, Lcom/sec/daliviews/views/ContainerView;

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridButton:Lcom/sec/daliviews/views/ContainerView;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v6, v12}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v9, 0x7f0d0084

    invoke-virtual {v8, v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridButton:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimatePositioning(Z)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6, v1}, Lcom/sec/daliviews/views/ContainerView;->setContentDescription(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->supportHomeModeChange()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6, v13}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayViewsList:Ljava/util/List;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    const v7, 0x7f0b0103

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v6

    check-cast v6, Lcom/sec/daliviews/views/ContainerView;

    iput-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenSettingButton:Lcom/sec/daliviews/views/ContainerView;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenSettingButton:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenSettingButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimatePositioning(Z)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenSettingButton:Lcom/sec/daliviews/views/ContainerView;

    new-instance v7, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$8;

    invoke-direct {v7, p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$8;-><init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)V

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ContainerView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenSettingButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6, v11}, Lcom/sec/daliviews/views/ContainerView;->setLongClickable(Z)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenSettingButton:Lcom/sec/daliviews/views/ContainerView;

    new-instance v7, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$9;

    invoke-direct {v7, p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$9;-><init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)V

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ContainerView;->setOnLongPressListener(Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;)V

    new-instance v6, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenSettingButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-direct {v6, p0, v7}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;-><init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;Lcom/sec/daliviews/views/ContainerView;)V

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->supportHomeModeChange()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenSettingButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6, v10}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenSettingButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayViewsList:Ljava/util/List;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenSettingButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v6}, Lcom/sec/daliviews/views/ContainerView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void

    :catch_0
    move-exception v2

    const-string v6, "OptionTrayPresenter"

    const-string v7, "Theme package com.samsung.android.themecenter not founded"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mThemeButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6, v13}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->getSystemPropertyForSprintExt()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridButton:Lcom/sec/daliviews/views/ContainerView;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ContainerView;->setOpacity(F)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridButton:Lcom/sec/daliviews/views/ContainerView;

    new-instance v7, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$6;

    invoke-direct {v7, p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$6;-><init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)V

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ContainerView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->supportDefaultHomeOnlyMode()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6, v11}, Lcom/sec/daliviews/views/ContainerView;->setLongClickable(Z)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridButton:Lcom/sec/daliviews/views/ContainerView;

    new-instance v7, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$7;

    invoke-direct {v7, p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$7;-><init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)V

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ContainerView;->setOnLongPressListener(Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;)V

    :cond_b
    new-instance v6, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-direct {v6, p0, v7}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;-><init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;Lcom/sec/daliviews/views/ContainerView;)V

    goto/16 :goto_2

    :cond_c
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridButton:Lcom/sec/daliviews/views/ContainerView;

    const v7, 0x3ee66666    # 0.45f

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ContainerView;->setOpacity(F)V

    goto/16 :goto_2
.end method

.method public setScreenGridView()V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mLocale:Ljava/lang/String;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mLocale:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_0
    sput-object v1, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mLocale:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v3

    const v4, 0x7f03004c

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/ContainerView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v4, 0x7f0b00ea

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/ContainerView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption1:Lcom/sec/daliviews/views/ContainerView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption1:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v4, 0x7f0b00ed

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/TextView;

    invoke-virtual {p0, v2, v5, v5}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->applyScreenGridText(Lcom/sec/daliviews/views/TextView;II)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption1:Lcom/sec/daliviews/views/ContainerView;

    new-instance v4, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$10;

    invoke-direct {v4, p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$10;-><init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)V

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/ContainerView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    new-instance v3, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption1:Lcom/sec/daliviews/views/ContainerView;

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;-><init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;Lcom/sec/daliviews/views/ContainerView;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption1:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionsList:Ljava/util/List;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption1:Lcom/sec/daliviews/views/ContainerView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v4, 0x7f0b00ee

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/ContainerView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption2:Lcom/sec/daliviews/views/ContainerView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption2:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v4, 0x7f0b00f1

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/TextView;

    invoke-virtual {p0, v2, v5, v6}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->applyScreenGridText(Lcom/sec/daliviews/views/TextView;II)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption2:Lcom/sec/daliviews/views/ContainerView;

    new-instance v4, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$11;

    invoke-direct {v4, p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$11;-><init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)V

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/ContainerView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    new-instance v3, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption2:Lcom/sec/daliviews/views/ContainerView;

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;-><init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;Lcom/sec/daliviews/views/ContainerView;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption2:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionsList:Ljava/util/List;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption2:Lcom/sec/daliviews/views/ContainerView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v4, 0x7f0b00f2

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/ContainerView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption3:Lcom/sec/daliviews/views/ContainerView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption3:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    const v4, 0x7f0b00f5

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/TextView;

    invoke-virtual {p0, v2, v6, v6}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->applyScreenGridText(Lcom/sec/daliviews/views/TextView;II)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption3:Lcom/sec/daliviews/views/ContainerView;

    new-instance v4, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$12;

    invoke-direct {v4, p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$12;-><init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)V

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/ContainerView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    new-instance v3, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption3:Lcom/sec/daliviews/views/ContainerView;

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$setOptionTouchListener;-><init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;Lcom/sec/daliviews/views/ContainerView;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption3:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionsList:Ljava/util/List;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOption3:Lcom/sec/daliviews/views/ContainerView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mScreenGridOptionView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/ContainerView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->updateBtnForScreenGrid()V

    return-void
.end method

.method public setSpanDescription(Lcom/sec/daliviews/views/ContainerView;II)V
    .locals 7

    const/4 v5, 0x4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v4, 0x7f0d00a8

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v4, 0x7f0d007b

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-ne p2, v5, :cond_4

    if-ne p3, v5, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSelectImage1:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v5, 0x7f0d00be

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSpanDescriptionFormat:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object v3, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSpanDescriptionFormat:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/daliviews/views/ContainerView;->setContentDescription(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSelectImage2:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    move-object v1, v2

    :goto_1
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSelectImage3:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    move-object v1, v2

    :goto_2
    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_2
.end method

.method public setWallpaperButtonVisible()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSetWallpaperButton:Lcom/sec/daliviews/views/ContainerView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "true"

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSettingsChangesAllowed"

    invoke-static {v2, v3, v4, v1}, Lcom/sec/android/app/launcher/utils/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSetWallpaperButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSetWallpaperButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2, v7}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-ne v0, v6, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSetWallpaperButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v2

    if-ne v2, v7, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mSetWallpaperButton:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2, v5}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setZeroPageSettingView()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mZeroPageSettingView:Lcom/sec/daliviews/views/ContainerView;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v1

    const v2, 0x7f030067

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mZeroPageSettingView:Lcom/sec/daliviews/views/ContainerView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mZeroPageSettingView:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b00ea

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ContainerView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mZeroPageSetting:Lcom/sec/daliviews/views/ContainerView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mZeroPageSetting:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mZeroPageSetting:Lcom/sec/daliviews/views/ContainerView;

    new-instance v2, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$13;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$13;-><init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)V

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mZeroPageSettingView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_1
    return-void
.end method

.method public switchMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq p2, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->hideOptionTrayAllViews()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->moveOptionTrayToTop()V

    goto :goto_0
.end method

.method public switchZeroPageSettingView(Z)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->setZeroPageSettingView()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mZeroPageSettingView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mZeroPageSettingView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mZeroPageSettingView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mZeroPageSettingView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateLayoutView()V
    .locals 12

    const v7, 0x7f0a0225

    const v11, 0x7f0a0238

    const v10, 0x7f0a0236

    const v9, 0x7f0a0223

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ContainerView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    const v4, 0x7f0a0224

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0a0226

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0a0227

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v4, v5, v8, v6, v8}, Lcom/sec/daliviews/views/ContainerView;->setPadding(IIII)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v4, v1}, Lcom/sec/daliviews/views/ContainerView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0b00f8

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ImageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0b00f9

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/TextView;->setTextSize(I)V

    invoke-virtual {v3}, Lcom/sec/daliviews/views/TextView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v8, v4, v8, v8}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/views/TextView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0b00fb

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ImageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0b00fc

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/TextView;->setTextSize(I)V

    invoke-virtual {v3}, Lcom/sec/daliviews/views/TextView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v8, v4, v8, v8}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/views/TextView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0b00fe

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ImageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0b00ff

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/TextView;->setTextSize(I)V

    invoke-virtual {v3}, Lcom/sec/daliviews/views/TextView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v8, v4, v8, v8}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/views/TextView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0b0101

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ImageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0b0102

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/TextView;->setTextSize(I)V

    invoke-virtual {v3}, Lcom/sec/daliviews/views/TextView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v8, v4, v8, v8}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/views/TextView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0b0104

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ImageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0b0105

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/TextView;->setTextSize(I)V

    invoke-virtual {v3}, Lcom/sec/daliviews/views/TextView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v8, v4, v8, v8}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/views/TextView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0b0107

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ImageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mOptionTrayView:Lcom/sec/daliviews/views/ContainerView;

    const v5, 0x7f0b0108

    invoke-virtual {v4, v5}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/TextView;->setTextSize(I)V

    invoke-virtual {v3}, Lcom/sec/daliviews/views/TextView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v8, v4, v8, v8}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/views/TextView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->updateScreenGrid()V

    goto/16 :goto_0
.end method
