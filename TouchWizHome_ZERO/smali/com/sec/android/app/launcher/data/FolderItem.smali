.class public Lcom/sec/android/app/launcher/data/FolderItem;
.super Lcom/sec/android/app/launcher/data/LauncherItem;
.source "FolderItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;,
        Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;,
        Lcom/sec/android/app/launcher/data/FolderItem$IFolderEditListener;,
        Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;
    }
.end annotation


# static fields
.field private static final CLOSE_FOLDER_DELAY_IN_MS:J = 0x64L

.field public static final DEFAULT_COLOR:I = -0xffc8b3

.field public static final DEFAULT_COLOR_INDEX:I = 0x0

.field private static final DELETE_OPEN_FOLDER_DELAY_MS:J = 0x1388L

.field public static final NUM_FOLDER_COLOR:I = 0x5

.field private static final SNAPSHOT_ID_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static mCloseFolderWidth:I

.field private static mFolderStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

.field private static mOpenCellHeight:I

.field private static mOpenFolderLayerPos:I

.field public static mOpenFolderLayoutColumns:I

.field public static mOpenFolderLayoutMaxColumns:I

.field public static final mOpenFolderLayoutMaxRows:I

.field public static final mOpenFolderLayoutMinColumns:I

.field public static final mOpenFolderLayoutMinRows:I

.field private static mRootViewAlphaInOpenFolderMode:F

.field private static final snapshotIds:[I


# instance fields
.field private mAddIcon:Lcom/sec/android/app/launcher/data/HomeItem;

.field private mCloseTransitionTime:F

.field private mEditListener:Lcom/sec/android/app/launcher/data/FolderItem$IFolderEditListener;

.field private mFolderColorIndex:I

.field mIsPopulated:Z

.field private mOpenListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenTransitionTime:F

.field private mPreLoadedItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const-class v2, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/launcher/data/FolderItem;->TAG:Ljava/lang/String;

    sput v3, Lcom/sec/android/app/launcher/data/FolderItem;->mCloseFolderWidth:I

    sput v3, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenCellHeight:I

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/sec/android/app/launcher/data/FolderItem;->snapshotIds:[I

    const/4 v2, 0x0

    sput v2, Lcom/sec/android/app/launcher/data/FolderItem;->mRootViewAlphaInOpenFolderMode:F

    sput v3, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenFolderLayerPos:I

    sput v3, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenFolderLayoutColumns:I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const v2, 0x7f0a01f8

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/data/FolderItem;->mRootViewAlphaInOpenFolderMode:F

    const v2, 0x7f0c001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenFolderLayerPos:I

    const v2, 0x7f0c0028

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenFolderLayoutMinColumns:I

    const v2, 0x7f0c0027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenFolderLayoutMaxColumns:I

    const v2, 0x7f0c0029

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenFolderLayoutMinRows:I

    const v2, 0x7f0c002a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenFolderLayoutMaxRows:I

    sget v2, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenFolderLayoutMaxColumns:I

    sput v2, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenFolderLayoutColumns:I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getFolderStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/launcher/data/FolderItem;->mFolderStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    return-void

    :array_0
    .array-data 4
        0x7f0b008e
        0x7f0b00c3
        0x7f0b00b8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/LauncherItem;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mFolderColorIndex:I

    iput-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mEditListener:Lcom/sec/android/app/launcher/data/FolderItem$IFolderEditListener;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenListeners:Ljava/util/Set;

    iput-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mAddIcon:Lcom/sec/android/app/launcher/data/HomeItem;

    iput-object v4, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;

    const v3, 0x3ecccccd    # 0.4f

    iput v3, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mCloseTransitionTime:F

    const v3, 0x3e4ccccd    # 0.2f

    iput v3, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenTransitionTime:F

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->createPresenter()V

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mItemType:I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const v3, 0x7f0a021f

    invoke-virtual {v2, v3, v1, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenTransitionTime:F

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const v3, 0x7f0a0053

    invoke-virtual {v2, v3, v0, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mCloseTransitionTime:F

    return-void
.end method

.method static synthetic access$1500()[I
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/FolderItem;->snapshotIds:[I

    return-object v0
.end method

.method static synthetic access$2100()I
    .locals 1

    sget v0, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenFolderLayerPos:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/launcher/data/FolderItem;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderLayoutMaxColumns()I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/launcher/data/FolderItem;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mCloseTransitionTime:F

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/launcher/data/FolderItem;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenTransitionTime:F

    return v0
.end method

.method static synthetic access$3000()F
    .locals 1

    sget v0, Lcom/sec/android/app/launcher/data/FolderItem;->mRootViewAlphaInOpenFolderMode:F

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/launcher/data/FolderItem;)Lcom/sec/android/app/launcher/data/HomeItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mAddIcon:Lcom/sec/android/app/launcher/data/HomeItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/launcher/data/FolderItem;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/FolderItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/launcher/data/FolderItem;)Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/launcher/data/FolderItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/launcher/data/FolderItem;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mFolderColorIndex:I

    return v0
.end method

.method private cloneItems(Ljava/util/List;)V
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

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->cloneItems(Ljava/util/List;)V

    return-void
.end method

.method private createPresenter()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;-><init>(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/data/FolderItem;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    return-void
.end method

.method public static getBackground(I)Landroid/graphics/Bitmap;
    .locals 2

    sget-object v1, Lcom/sec/android/app/launcher/data/FolderItem;->mFolderStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->getCloseFolderBackground(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getCloseFolderWidth()I
    .locals 2

    sget v1, Lcom/sec/android/app/launcher/data/FolderItem;->mCloseFolderWidth:I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/launcher/data/FolderItem;->mCloseFolderWidth:I

    :cond_0
    sget v1, Lcom/sec/android/app/launcher/data/FolderItem;->mCloseFolderWidth:I

    return v1
.end method

.method public static getFolderColor(I)I
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/FolderItem;->mFolderStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v0

    return v0
.end method

.method public static getHighlightedBackground(I)Landroid/graphics/Bitmap;
    .locals 2

    sget-object v1, Lcom/sec/android/app/launcher/data/FolderItem;->mFolderStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->getHighlightedBackground(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getOpenCellHeight()I
    .locals 2

    sget v1, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenCellHeight:I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenCellHeight:I

    :cond_0
    sget v1, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenCellHeight:I

    return v1
.end method

.method public static getOpenFolderBackground(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/FolderItem;->mFolderStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->getOpenFolderBackground(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getOpenFolderBackgroundColor(I)I
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/FolderItem;->mFolderStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->getOpenFolderBackgroundColor(I)I

    move-result v0

    return v0
.end method

.method public static getOpenFolderChunk(I)[B
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/FolderItem;->mFolderStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->getOpenFolderBackgroundChunk(I)[B

    move-result-object v0

    return-object v0
.end method

.method private getOpenFolderLayoutMaxColumns()I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    sget v1, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenFolderLayoutMaxColumns:I

    goto :goto_0
.end method

.method public static getSupportedColors()[I
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/FolderItem;->mFolderStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->getSupportedColors()[I

    move-result-object v0

    return-object v0
.end method

.method private getSupportedModes()[I
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x7f0b00d7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0b00db

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0b00e4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0b00d8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0b00e5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getTextColor(I)I
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/FolderItem;->mFolderStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->getTextColor(I)I

    move-result v0

    return v0
.end method

.method public static getTitleColor(I)I
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/FolderItem;->mFolderStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->getTitleColor(I)I

    move-result v0

    return v0
.end method

.method private sumItemsBadgeCount()I
    .locals 9

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerType()I

    move-result v6

    sget-object v7, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    check-cast v3, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/LauncherItem;->getBadgeCount()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    move-object v6, v3

    check-cast v6, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/LauncherItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    check-cast v3, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/LauncherItem;->getBadgeCount()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    sget-object v6, Lcom/sec/android/app/launcher/data/FolderItem;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sumItemsBadgeCount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public UpdateGridSize(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;->changeGridSize(I)V

    return-void
.end method

.method public addItem(Lcom/sec/daliviews/views/Item;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/launcher/data/FolderItem;->addItem(Lcom/sec/daliviews/views/Item;Z)V

    return-void
.end method

.method public addItem(Lcom/sec/daliviews/views/Item;Z)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->addItem(Lcom/sec/daliviews/views/Item;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->updateBadgeIfNeeded()V

    goto :goto_0
.end method

.method public addItems(Ljava/util/List;)V
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

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/launcher/data/FolderItem;->addItems(Ljava/util/List;Z)V

    return-void
.end method

.method public addItems(Ljava/util/List;Z)V
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

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->addItems(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->updateBadgeIfNeeded()V

    goto :goto_0
.end method

.method public cancelClosingFolder()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->cancelClosingFolder()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sec/android/app/launcher/data/LauncherItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/FolderItem;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->setDbId(I)V

    invoke-direct {v0}, Lcom/sec/android/app/launcher/data/FolderItem;->createPresenter()V

    iget v1, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mFolderColorIndex:I

    iput v1, v0, Lcom/sec/android/app/launcher/data/FolderItem;->mFolderColorIndex:I

    iput-object v2, v0, Lcom/sec/android/app/launcher/data/FolderItem;->mPreLoadedItems:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->cloneItems(Ljava/util/List;)V

    iput-object v2, v0, Lcom/sec/android/app/launcher/data/FolderItem;->mAddIcon:Lcom/sec/android/app/launcher/data/HomeItem;

    return-object v0
.end method

.method public closeFolder(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->closeFolder(Z)V

    return-void
.end method

.method public closeFolderDelayed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->closeFolderDelayed(Z)V

    return-void
.end method

.method public closeFolderSnapRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->closeFolderSnapRefresh()V

    return-void
.end method

.method public containItem(Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->containItem(Lcom/sec/daliviews/views/Item;)Z

    move-result v0

    return v0
.end method

.method public containsKeyword(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/views/Item;->containsKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public createOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # invokes: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->createOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$300(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/launcher/data/LauncherItem;->destroy()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->destroy()V

    return-void
.end method

.method public destroyOpenFolderView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->destroyOpenFolderView()V

    return-void
.end method

.method public detachAllItems(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->detachAllItems(Z)V

    return-void
.end method

.method public declared-synchronized detachItem(Lcom/sec/daliviews/views/Item;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->detachItem(Lcom/sec/daliviews/views/Item;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->updateBadgeIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized detachItems(Ljava/util/List;)V
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

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->detachItems(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->updateBadgeIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAdapter()Lcom/sec/daliviews/views/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getAdapter()Lcom/sec/android/app/launcher/data/FolderItem$FolderListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapterView()Lcom/sec/daliviews/views/AdapterView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # invokes: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getAdapterView()Lcom/sec/daliviews/views/AdapterView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$200(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/daliviews/views/AdapterView;

    move-result-object v0

    return-object v0
.end method

.method public getAddIcon()Lcom/sec/android/app/launcher/data/HomeItem;
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mAddIcon:Lcom/sec/android/app/launcher/data/HomeItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/data/FolderItem$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/data/FolderItem$1;-><init>(Lcom/sec/android/app/launcher/data/FolderItem;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mAddIcon:Lcom/sec/android/app/launcher/data/HomeItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mAddIcon:Lcom/sec/android/app/launcher/data/HomeItem;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/HomeItem;->setMovability(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mAddIcon:Lcom/sec/android/app/launcher/data/HomeItem;

    const v1, 0x7f0b00e1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/HomeItem;->setCurrentMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mAddIcon:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/data/HomeItem;->setSpanX(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mAddIcon:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/data/HomeItem;->setSpanY(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mAddIcon:Lcom/sec/android/app/launcher/data/HomeItem;

    return-object v0
.end method

.method public getCloseFolderView()Lcom/sec/android/app/launcher/views/FolderView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getCloseFolderView()Lcom/sec/android/app/launcher/views/FolderView;

    move-result-object v0

    return-object v0
.end method

.method getColorIndex(I)I
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/FolderItem;->mFolderStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->getColorIndex(I)I

    move-result v0

    return v0
.end method

.method public getFolderColor()I
    .locals 2

    sget-object v0, Lcom/sec/android/app/launcher/data/FolderItem;->mFolderStyle:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    iget v1, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mFolderColorIndex:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->getCloseFolderColor(I)I

    move-result v0

    return v0
.end method

.method public getFolderColorIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mFolderColorIndex:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItems()Ljava/util/List;
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

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    return-object v0
.end method

.method public getOpenViewPosition()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->getOpenViewPosition()Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized hasItems()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->hasItems()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isClosedViewPopulated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mIsPopulated:Z

    return v0
.end method

.method public isCompatable(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/launcher/views/HomeFolderView;

    return v0
.end method

.method public isContainerItem()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFolderOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->isFolderOpen()Z

    move-result v0

    return v0
.end method

.method public mapItemTypeToContainerType()I
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v0

    return v0
.end method

.method public onColorSelected(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/data/FolderItem;->setFolderColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mEditListener:Lcom/sec/android/app/launcher/data/FolderItem$IFolderEditListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mEditListener:Lcom/sec/android/app/launcher/data/FolderItem$IFolderEditListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$IFolderEditListener;->onColorSelected(Lcom/sec/android/app/launcher/data/FolderItem;I)V

    :cond_0
    return-void
.end method

.method public onCreateItemView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # invokes: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->createCloseFolderView()Lcom/sec/android/app/launcher/views/HomeFolderView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$000(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;)Lcom/sec/android/app/launcher/views/HomeFolderView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    if-ne v1, v2, :cond_0

    sget-boolean v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseFolderPopup:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->inflateUninstallView()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    # invokes: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->populateCloseFolderView(Lcom/sec/android/app/launcher/views/HomeFolderView;)V
    invoke-static {v1, v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$100(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;Lcom/sec/android/app/launcher/views/HomeFolderView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerType()I

    move-result v1

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/sec/android/app/launcher/data/FolderItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->getCustomPos()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem;->onCreateItemViewListener:Lcom/sec/android/app/launcher/data/LauncherItem$OnCreateItemViewListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem;->onCreateItemViewListener:Lcom/sec/android/app/launcher/data/LauncherItem$OnCreateItemViewListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/launcher/data/LauncherItem$OnCreateItemViewListener;->onCreateItemView(Lcom/sec/daliviews/views/IconView;)V

    :cond_2
    return-object v0
.end method

.method public onDonePressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mEditListener:Lcom/sec/android/app/launcher/data/FolderItem$IFolderEditListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mEditListener:Lcom/sec/android/app/launcher/data/FolderItem$IFolderEditListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/launcher/data/FolderItem$IFolderEditListener;->onKeyDonePressed(Lcom/sec/android/app/launcher/data/FolderItem;)V

    :cond_0
    return-void
.end method

.method public onSelectItems()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mEditListener:Lcom/sec/android/app/launcher/data/FolderItem$IFolderEditListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mEditListener:Lcom/sec/android/app/launcher/data/FolderItem$IFolderEditListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/launcher/data/FolderItem$IFolderEditListener;->onAddIconClick(Lcom/sec/android/app/launcher/data/FolderItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/data/FolderItem;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mEditListener:Lcom/sec/android/app/launcher/data/FolderItem$IFolderEditListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mEditListener:Lcom/sec/android/app/launcher/data/FolderItem$IFolderEditListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$IFolderEditListener;->onTitleChanged(Lcom/sec/android/app/launcher/data/FolderItem;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public openFolder(ZLandroid/graphics/Rect;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    sget-object v1, Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;->NORMAL:Lcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;

    invoke-virtual {v0, p1, v1, p2}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->openFolder(ZLcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;Landroid/graphics/Rect;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    return-object v0
.end method

.method public openFolder(ZLcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;Landroid/graphics/Rect;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->openFolder(ZLcom/sec/android/app/launcher/views/HomeOpenFolderView$OpenFolderMode;Landroid/graphics/Rect;)Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    return-object v0
.end method

.method public populateView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 2

    instance-of v0, p1, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/views/HomeFolderView;

    # invokes: Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->populateCloseFolderView(Lcom/sec/android/app/launcher/views/HomeFolderView;)V
    invoke-static {v1, v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->access$100(Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;Lcom/sec/android/app/launcher/views/HomeFolderView;)V

    check-cast p1, Lcom/sec/android/app/launcher/views/HomeFolderView;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->getSupportedModes()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/launcher/views/HomeFolderView;->setSupportedModes([I)V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->refresh()V

    return-void
.end method

.method public registerFolderOpenListener(Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized removeItem(Lcom/sec/daliviews/views/Item;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->removeItem(Lcom/sec/daliviews/views/Item;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->updateBadgeIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeItems(Ljava/util/List;)V
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

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->removeItems(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->updateBadgeIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public replaceItem(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/launcher/data/FolderItem;->replaceItem(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;Z)V

    return-void
.end method

.method public declared-synchronized replaceItem(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;Z)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/daliviews/views/Item;->setPosition(III)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/Item;->setCustomPos(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->removeItem(Lcom/sec/daliviews/views/Item;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->addItem(Lcom/sec/daliviews/views/Item;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->updateBadgeIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBadgeCount(I)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/launcher/data/FolderItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBadgeCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/data/LauncherItem;->setBadgeCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->setBadgeCount(I)V

    return-void
.end method

.method public setDragEventInterest(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->setDragEventInterest(I)V

    return-void
.end method

.method public setFastClose(Z)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const v2, 0x7f0a021f

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mCloseTransitionTime:F

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mCloseTransitionTime:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mCloseTransitionTime:F

    :cond_0
    return-void
.end method

.method public setFolderColor(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/android/app/launcher/data/FolderItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFolderColor():invalid color index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mFolderColorIndex:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mFolderColorIndex:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->setFolderColor(I)V

    :cond_2
    return-void
.end method

.method public setFolderEditListener(Lcom/sec/android/app/launcher/data/FolderItem$IFolderEditListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mEditListener:Lcom/sec/android/app/launcher/data/FolderItem$IFolderEditListener;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/data/LauncherItem;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->setFolderTitle(Ljava/lang/String;)V

    return-void
.end method

.method public sortItemsInAlphabeticOrder()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->sortItemsInAlphabeticOrder()V

    return-void
.end method

.method public sortItemsInCustomPosOrder()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->sortItemsInCustomPosOrder()V

    return-void
.end method

.method public unregisterFolderOpenListener(Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mOpenListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateBadgeIfNeeded()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->getBadgeCount()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->sumItemsBadgeCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/FolderItem;->setBadgeCount(I)V

    return-void
.end method

.method public declared-synchronized updateItem(Lcom/sec/daliviews/views/Item;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->updateItem(Lcom/sec/daliviews/views/Item;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->updateBadgeIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateItems(Ljava/util/List;)V
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

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->updateItems(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/FolderItem;->updateBadgeIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateOpenViewPosition()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/FolderItem;->mPresenter:Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/FolderItem$LocalPresenter;->updateOpenViewPosition()V

    :cond_0
    return-void
.end method
