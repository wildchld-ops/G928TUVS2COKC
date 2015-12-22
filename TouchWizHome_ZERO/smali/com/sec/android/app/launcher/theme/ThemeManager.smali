.class public Lcom/sec/android/app/launcher/theme/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/theme/ThemeManager$1;,
        Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;,
        Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;,
        Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;,
        Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;
    }
.end annotation


# static fields
.field private static final DEFAULT_THEME_SCROLL_EFFECT:I = 0x4

.field private static final MAX_TRANSITION_EFFECT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "ThemeManager"

.field private static THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

.field private static sBadgeSize:I

.field private static sIconHeight:I

.field private static sIconWidth:I


# instance fields
.field public mChangeableStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;

.field private final mContext:Landroid/content/Context;

.field public mFolderStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

.field private mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

.field public mThemeStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    sput v0, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    sput v0, Lcom/sec/android/app/launcher/theme/ThemeManager;->sBadgeSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mChangeableStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;

    iput-object p1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/sec/android/app/launcher/theme/ThemeLoader;

    invoke-direct {v1, p1}, Lcom/sec/android/app/launcher/theme/ThemeLoader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    sget v1, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    if-eq v1, v2, :cond_0

    sget v1, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    sput v1, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    const v1, 0x7f0a014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/launcher/theme/ThemeManager;->sBadgeSize:I

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->setStyleByDecision()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/theme/ThemeManager;)Lcom/sec/android/app/launcher/theme/ThemeLoader;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/theme/ThemeManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforDrawableType(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/theme/ThemeManager;Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforDrawableType(Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/theme/ThemeManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getEachItemforDrawableType(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getItemDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getEachItemforDrawableType(Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getItemDrawable(Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private initChangeableTheme()V
    .locals 3

    new-instance v1, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;-><init>(Lcom/sec/android/app/launcher/theme/ThemeManager;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mChangeableStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mChangeableStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->setTheme()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportTheme:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->loadHomeThemeAppList()V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    sput v1, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->load3rdpartyIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/launcher/theme/ThemeManager;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->loadThemeAppList()V

    goto :goto_0
.end method

.method private setStyleByDecision()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;-><init>(Lcom/sec/android/app/launcher/theme/ThemeManager;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->setTheme()V

    new-instance v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;-><init>(Lcom/sec/android/app/launcher/theme/ThemeManager;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mFolderStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mFolderStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->setFolderTheme()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    sget-object v1, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getChangedTheme(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    sget-object v1, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getChangedTheme(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->initChangeableTheme()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getChangeableStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mChangeableStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getEachItemforBitmapType(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, p2}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getItemBitmap(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getEachItemforBitmapType(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getItemBitmap(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getEachItemforBooleanType(Ljava/lang/String;ZI)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getItemBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public getEachItemforColorType(Ljava/lang/String;I)I
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, p2}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getItemColor(Ljava/lang/String;ZI)I

    move-result v0

    return v0
.end method

.method public getEachItemforColorType(Ljava/lang/String;ZI)I
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getItemColor(Ljava/lang/String;ZI)I

    move-result v0

    return v0
.end method

.method getEachItemforIntegerType(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getItemInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getEachItemforStringType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getItemString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFolderStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mFolderStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    return-object v0
.end method

.method public getFontStyle(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThemeAppIcon(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .locals 10

    if-nez p2, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    sget-object v7, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-boolean v6, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportTheme:Z

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/android/app/launcher/theme/ThemeManager;->loadAppIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mChangeableStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;

    if-nez v6, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->initChangeableTheme()V

    :cond_3
    if-nez v4, :cond_4

    sget-boolean v6, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportTheme:Z

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->getIconDpi()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sget v7, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    sget v8, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeIconWithBg(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    if-eqz p3, :cond_5

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v0, Landroid/graphics/Rect;

    sget v6, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    sget v7, Lcom/sec/android/app/launcher/theme/ThemeManager;->sBadgeSize:I

    sub-int/2addr v6, v7

    sget v7, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    sget v8, Lcom/sec/android/app/launcher/theme/ThemeManager;->sBadgeSize:I

    sub-int/2addr v7, v8

    sget v8, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    sget v9, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v2, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v2, p3, v0, v6}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :cond_5
    :goto_2
    if-nez v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_0

    :cond_6
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->getIconDpi()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sget v7, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    sget v8, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    :cond_7
    invoke-static {p1, p2, p3}, Lcom/sec/android/app/launcher/utils/Utils;->getIcon(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v6, "ThemeManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getThemeAppIcon ( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ) failed! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getThemeAppIconWithBg()Landroid/graphics/Bitmap;
    .locals 7

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getAllapps()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    sget-boolean v4, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportTheme:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->loadAllAppsIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    iget-object v5, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    sget-object v6, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->ALL_APPS_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getItemDrawableforDefaultResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget v4, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    sget v5, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    invoke-static {v1, v4, v5}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeIconWithBg(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    iget-object v5, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    sget-object v6, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->ALL_APPS_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getItemDrawableforDefaultResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v4, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    sget v5, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    invoke-static {v1, v4, v5}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1
.end method

.method public getThemeIconWithBg(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mChangeableStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->initChangeableTheme()V

    :cond_0
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mChangeableStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->getIconBgScope()I

    move-result v0

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$IconBgScope;->THIRD_PARTY:Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$IconBgScope;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$IconBgScope;->value()I

    move-result v2

    if-eq v0, v2, :cond_1

    sget-boolean v2, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportTheme:Z

    if-eqz v2, :cond_5

    :cond_1
    if-nez p2, :cond_3

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->load3rdpartyIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    :cond_2
    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    sget v3, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    sget v4, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    invoke-static {p1, v2, v3, v4}, Lcom/sec/android/app/launcher/theme/ThemeUtils;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    move-object v1, p1

    :cond_4
    return-object v1

    :cond_5
    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$IconBgScope;->ALL:Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$IconBgScope;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$IconBgScope;->value()I

    move-result v2

    if-ne v0, v2, :cond_3

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->load3rdpartyIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    :cond_6
    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    sget v3, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    sget v4, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    invoke-static {p1, v2, v3, v4}, Lcom/sec/android/app/launcher/theme/ThemeUtils;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    return-object v0
.end method

.method public getThemeShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    sget-object v4, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p4

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mChangeableStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->initChangeableTheme()V

    :cond_1
    const/4 v7, 0x0

    if-eqz p4, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mChangeableStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->getIconBgScope()I

    move-result v8

    sget-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$IconBgScope;->ALL:Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$IconBgScope;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$IconBgScope;->value()I

    move-result v0

    if-eq v8, v0, :cond_2

    sget-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$IconBgScope;->THIRD_PARTY:Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$IconBgScope;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle$IconBgScope;->value()I

    move-result v0

    if-eq v8, v0, :cond_2

    sget-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportTheme:Z

    if-eqz v0, :cond_6

    :cond_2
    if-eqz p4, :cond_4

    sget-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->load3rdpartyIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    :cond_3
    sget-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    sget v4, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    sget v5, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    invoke-static {p4, v0, v4, v5}, Lcom/sec/android/app/launcher/theme/ThemeUtils;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_4
    :goto_1
    if-nez v7, :cond_5

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_5
    move-object p4, v7

    goto :goto_0

    :cond_6
    move-object v7, p4

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p3, v0, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mContext:Landroid/content/Context;

    const/16 v4, 0xc0

    const/16 v5, 0xc0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/launcher/utils/Utils;->loadBitmap(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    return-object v0
.end method

.method public isFirstLoadingThemeforGrid(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 5

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    sget-object v3, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getChangedTheme(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mChangeableStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->getCellX()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mChangeableStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->getCellY()I

    move-result v0

    if-eq v1, v4, :cond_0

    if-ne v0, v4, :cond_0

    :cond_0
    return-void
.end method

.method public load3rdpartyIconBitmap()Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v2, "ic_icon_bg"

    :try_start_0
    sget-boolean v5, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportTheme:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    const-string v6, "3rd_party_icon"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getPackageIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    sget v5, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    if-eq v5, v8, :cond_0

    sget v5, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    if-ne v5, v8, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sput v5, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    sput v5, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    :cond_1
    sget v5, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    sget v6, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    invoke-static {v1, v5, v6}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapWithTheme(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_2
    return-object v3

    :cond_3
    :try_start_1
    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v5

    invoke-direct {p0, v2, v5}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforDrawableType(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "ThemeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load3rdpartyIconBitmap failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadAllAppsIconBitmap()Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    const-string v5, "homescreen_apps_icon"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getPackageIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    sget v4, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    if-eq v4, v7, :cond_0

    sget v4, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    if-ne v4, v7, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    sput v4, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    :cond_1
    sget v4, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    sget v5, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    invoke-static {v1, v4, v5}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapWithTheme(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_2
    return-object v2

    :catch_0
    move-exception v0

    const-string v4, "ThemeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAllAppsIconBitmap failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadAppIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, -0x1

    if-nez p1, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getPackageIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    sget v4, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    if-eq v4, v7, :cond_2

    sget v4, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    if-ne v4, v7, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    sput v4, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    :cond_3
    sget v4, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    sget v5, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    invoke-static {v1, v4, v5}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "ThemeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppIconBitmap( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) failed! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public loadIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v8, -0x1

    iget-object v5, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    sget-object v6, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    sget-object v6, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v6

    invoke-virtual {v5, p1, v6}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getItemDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    sget v5, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    if-eq v5, v8, :cond_2

    sget v5, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    if-ne v5, v8, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sput v5, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    sput v5, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    :cond_3
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconWidth:I

    sget v7, Lcom/sec/android/app/launcher/theme/ThemeManager;->sIconHeight:I

    invoke-static {v2, v6, v7}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "ThemeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadIconDrawable( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ) failed! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setThemeTransitionEffect(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v0, Lcom/sec/android/app/launcher/activities/HomeFragment;->DEFAULT_SCROLL_EFFECT:I

    :goto_0
    invoke-virtual {p1, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setThemeTransitionEffect(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getTransitionEffect()I

    move-result v0

    goto :goto_0
.end method

.method public updateIconThemePackageName()V
    .locals 7

    iget-object v5, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;

    sget-object v6, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getThemePackageName(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "themePreference"

    const-string v3, "prevAppIconTheme"

    iget-object v5, p0, Lcom/sec/android/app/launcher/theme/ThemeManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
