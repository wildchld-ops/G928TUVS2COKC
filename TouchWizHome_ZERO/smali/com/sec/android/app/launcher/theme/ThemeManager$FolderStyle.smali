.class public Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/theme/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;,
        Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;
    }
.end annotation


# static fields
.field public static final CLOSE_FOLDER_COLOR2:I = -0x1378e6

.field public static final CLOSE_FOLDER_COLOR3:I = -0x1d4df5

.field public static final CLOSE_FOLDER_COLOR4:I = -0x6637d6

.field public static final CLOSE_FOLDER_COLOR5:I = -0x525253

.field public static final CLOSE_FOLDER_TYPE_COLOR:I = 0x0

.field public static final CLOSE_FOLDER_TYPE_IMAGE:I = 0x1

.field public static final DEFAULT_CLOSE_FOLDER_COLOR:I = -0xea4643

.field public static final DEFAULT_COLOR_INDEX:I = 0x0

.field public static final DEFAULT_FOLDER_COLOR:I = -0xf96a68

.field public static final DEFAULT_FOLDER_TEXT_COLOR:I = -0x1000000

.field public static final DEFAULT_OPEN_FOLDER_BG_COLOR:I = -0x50506

.field public static final DEFAULT_SHAPE:I = 0x0

.field public static final FOLDER_COLOR2:I = -0x1277fb

.field public static final FOLDER_COLOR3:I = -0x1c4df6

.field public static final FOLDER_COLOR4:I = -0x7a43fc

.field public static final FOLDER_COLOR5:I = -0x757576

.field public static final INVALID_COLOR:I = 0x1ffffff

.field public static final INVALID_SHAPE:I = -0x1

.field private static final INVALID_TYPE:I = -0x1

.field public static final NUM_FOLDER_COLOR:I = 0x5

.field public static final NUM_SHAPE:I = 0x5

.field public static final OPEN_FOLDER_TYPE_COLOR_CHANGE:I = 0x1

.field public static final OPEN_FOLDER_TYPE_DEFAULT:I = 0x0

.field public static final OPEN_FOLDER_TYPE_IMAGE:I = 0x2

.field public static final folder_colors:[I

.field private static final mDefaultCloseFolderColor:[I

.field private static final mDefaultFolderTitleColor:[I

.field private static final mFolderShapeRes:[I


# instance fields
.field key:[Ljava/lang/String;

.field public mFolderAttr:[Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;

.field private mFolderType:I

.field private mOpenFolderImageChunk:[B

.field private mOpenFolderType:I

.field mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x5

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->folder_colors:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mDefaultFolderTitleColor:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mDefaultCloseFolderColor:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderShapeRes:[I

    return-void

    :array_0
    .array-data 4
        0x7f0d0044
        0x7f0d0048
        0x7f0d0049
        0x7f0d0045
        0x7f0d0046
    .end array-data

    :array_1
    .array-data 4
        -0xf96a68
        -0x1277fb
        -0x1c4df6
        -0x7a43fc
        -0x757576
    .end array-data

    :array_2
    .array-data 4
        -0xea4643
        -0x1378e6
        -0x1d4df5
        -0x6637d6
        -0x525253
    .end array-data

    :array_3
    .array-data 4
        0x7f020055
        0x7f020031
        0x7f020032
        0x7f020033
        0x7f020034
    .end array-data
.end method

.method constructor <init>(Lcom/sec/android/app/launcher/theme/ThemeManager;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderType:I

    iput v3, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mOpenFolderType:I

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "homescreen_ic_folder_default"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "home_ic_folder_gray"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "home_ic_folder_red"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "home_ic_folder_yellow"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "home_ic_folder_green"

    aput-object v3, v1, v2

    const-string v2, "close_folder_type"

    aput-object v2, v1, v4

    const/4 v2, 0x6

    const-string v3, "close_folder_shape"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "close_folder_color1"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "close_folder_color2"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "close_folder_color3"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "close_folder_color4"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "close_folder_color5"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "open_folder_type"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "home_folder_bg_default"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "folder_popup_bg_color"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "open_folder_title_color"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "open_folder_text_color"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->key:[Ljava/lang/String;

    new-array v1, v4, [Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;

    iput-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderAttr:[Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;

    iput-object v5, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    iput-object p1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderAttr:[Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;

    new-instance v2, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;

    invoke-direct {v2, p0, v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;-><init>(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;Lcom/sec/android/app/launcher/theme/ThemeManager$1;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$402(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mOpenFolderImageChunk:[B

    return-object p1
.end method

.method static synthetic access$500()[I
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderShapeRes:[I

    return-object v0
.end method


# virtual methods
.method public getCloseFolderBackground(I)Landroid/graphics/Bitmap;
    .locals 3

    iget v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderAttr:[Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;

    aget-object v1, v1, p1

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->getCloseFolderImage()Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->access$1200(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    if-ltz p1, :cond_2

    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getCloseFolderColor(I)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderAttr:[Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;

    aget-object v0, v0, p1

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->getCloseFolderColor()I
    invoke-static {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->access$1100(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;)I

    move-result v0

    return v0

    :cond_1
    if-ltz p1, :cond_2

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getColorIndex(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderAttr:[Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;

    aget-object v2, v2, v1

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->getCloseFolderColor()I
    invoke-static {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->access$1100(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;)I

    move-result v2

    if-ne v2, p1, :cond_1

    move v0, v1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getFolderType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderType:I

    return v0
.end method

.method public getHighlightedBackground(I)Landroid/graphics/Bitmap;
    .locals 3

    iget v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderAttr:[Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;

    aget-object v1, v1, p1

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->getCloseFolderImage()Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->access$1200(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    if-ltz p1, :cond_2

    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getOpenFolderBackground(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderAttr:[Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->getOpenFolderImage()Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->access$1300(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getOpenFolderBackgroundChunk(I)[B
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mOpenFolderImageChunk:[B

    return-object v0
.end method

.method public getOpenFolderBackgroundColor(I)I
    .locals 3

    iget v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderAttr:[Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;

    aget-object v1, v1, p1

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->getOpenFolderBgColor()I
    invoke-static {v1}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->access$1600(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;)I

    move-result v0

    return v0

    :cond_1
    if-ltz p1, :cond_2

    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getOpenFolderType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mOpenFolderType:I

    return v0
.end method

.method public getSupportedColors()[I
    .locals 5

    const/4 v4, 0x5

    iget v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-array v0, v4, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderAttr:[Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;

    aget-object v2, v2, v1

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->getCloseFolderColor()I
    invoke-static {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->access$1100(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getTextColor(I)I
    .locals 3

    iget v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderAttr:[Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;

    aget-object v1, v1, p1

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->getOpenFolderTextColor()I
    invoke-static {v1}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->access$1500(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;)I

    move-result v0

    return v0

    :cond_1
    if-ltz p1, :cond_2

    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getTitleColor(I)I
    .locals 3

    iget v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderAttr:[Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;

    aget-object v1, v1, p1

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->getOpenFolderTitleColor()I
    invoke-static {v1}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->access$1400(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;)I

    move-result v0

    return v0

    :cond_1
    if-ltz p1, :cond_2

    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderAttr:[Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;

    aget-object v0, v0, v6

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mDefaultCloseFolderColor:[I

    aget v2, v2, v6

    const v3, 0x1ffffff

    sget-object v4, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mDefaultFolderTitleColor:[I

    aget v4, v4, v6

    const/high16 v5, -0x1000000

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->set(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->access$700(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;IIIII)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderType:I

    return-void
.end method

.method public setFolder(I[IIII)V
    .locals 10

    const v9, 0x1ffffff

    const/4 v8, 0x0

    if-ne p4, v9, :cond_0

    const/4 v8, 0x1

    :cond_0
    const v6, 0x1ffffff

    const/4 v7, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge v7, v0, :cond_6

    aget v0, p2, v7

    if-ne v0, v9, :cond_1

    sget-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mDefaultCloseFolderColor:[I

    aget v0, v0, v7

    aput v0, p2, v7

    :cond_1
    if-eqz v8, :cond_2

    aget p4, p2, v7

    :cond_2
    if-ne p5, v9, :cond_3

    const/high16 p5, -0x1000000

    :cond_3
    if-ne p3, v9, :cond_4

    const p3, -0x50506

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderAttr:[Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;

    aget-object v0, v0, v7

    aget v2, p2, v7

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->set(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->access$700(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;IIIII)V

    aget v0, p2, v7

    if-eq v6, v0, :cond_5

    if-lez v7, :cond_5

    const v6, 0x1ffffff

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    aget v6, p2, v7

    goto :goto_1

    :cond_6
    if-eq v6, v9, :cond_7

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderType:I

    :cond_7
    return-void
.end method

.method public setFolder(I[ILandroid/graphics/drawable/Drawable;II)V
    .locals 9

    const v8, 0x1ffffff

    const v6, 0x1ffffff

    const/4 v7, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge v7, v0, :cond_4

    aget v0, p2, v7

    if-ne v0, v8, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mDefaultCloseFolderColor:[I

    aget v0, v0, v7

    aput v0, p2, v7

    :cond_0
    if-ne p4, v8, :cond_1

    const/4 v0, 0x0

    aget p4, p2, v0

    :cond_1
    if-ne p5, v8, :cond_2

    const/high16 p5, -0x1000000

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderAttr:[Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;

    aget-object v0, v0, v7

    aget v2, p2, v7

    move v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->set(IILandroid/graphics/drawable/Drawable;II)V
    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->access$1000(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;IILandroid/graphics/drawable/Drawable;II)V

    aget v0, p2, v7

    if-eq v6, v0, :cond_3

    if-lez v7, :cond_3

    const v6, 0x1ffffff

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    aget v6, p2, v7

    goto :goto_1

    :cond_4
    if-eq v6, v8, :cond_5

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderType:I

    :cond_5
    return-void
.end method

.method public setFolder(Landroid/graphics/drawable/Drawable;III)V
    .locals 3

    const/4 v2, 0x0

    const v1, 0x1ffffff

    if-ne p3, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mDefaultCloseFolderColor:[I

    aget p3, v0, v2

    :cond_0
    if-ne p4, v1, :cond_1

    const/high16 p4, -0x1000000

    :cond_1
    if-ne p2, v1, :cond_2

    const p4, -0x50506

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderAttr:[Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;

    aget-object v0, v0, v2

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->set(Landroid/graphics/drawable/Drawable;III)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->access$900(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;Landroid/graphics/drawable/Drawable;III)V

    return-void
.end method

.method public setFolder(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 3

    const v2, 0x1ffffff

    const/4 v1, 0x0

    if-ne p3, v2, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mDefaultCloseFolderColor:[I

    aget p3, v0, v1

    :cond_0
    if-ne p4, v2, :cond_1

    const/high16 p4, -0x1000000

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderAttr:[Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;

    aget-object v0, v0, v1

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->set(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->access$800(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    return-void
.end method

.method setFolderTheme()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    # getter for: Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;
    invoke-static {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->access$000(Lcom/sec/android/app/launcher/theme/ThemeManager;)Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v2

    sget-object v8, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->init()V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x5

    new-array v4, v2, [I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->key:[Ljava/lang/String;

    sget-object v9, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->CLOSE_FOLDER_TYPE:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->value()I

    move-result v9

    aget-object v8, v8, v9

    sget-object v9, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforIntegerType(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderType:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->key:[Ljava/lang/String;

    sget-object v9, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->OPEN_FOLDER_TITLE_COLOR:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->value()I

    move-result v9

    aget-object v8, v8, v9

    const/4 v9, 0x0

    sget-object v10, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v10

    invoke-virtual {v2, v8, v9, v10}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforColorType(Ljava/lang/String;ZI)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->key:[Ljava/lang/String;

    sget-object v9, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->OPEN_FOLDER_TEXT_COLOR:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->value()I

    move-result v9

    aget-object v8, v8, v9

    const/4 v9, 0x0

    sget-object v10, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v10

    invoke-virtual {v2, v8, v9, v10}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforColorType(Ljava/lang/String;ZI)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->key:[Ljava/lang/String;

    sget-object v9, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->OPEN_FOLDER_BG:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->value()I

    move-result v9

    aget-object v8, v8, v9

    const/4 v9, 0x0

    sget-object v10, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v10

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforDrawableType(Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v8, v9, v10}, Lcom/sec/android/app/launcher/theme/ThemeManager;->access$200(Lcom/sec/android/app/launcher/theme/ThemeManager;Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->key:[Ljava/lang/String;

    sget-object v9, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->OPEN_FOLDER_BG_COLOR:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->value()I

    move-result v9

    aget-object v8, v8, v9

    const/4 v9, 0x0

    sget-object v10, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v10

    invoke-virtual {v2, v8, v9, v10}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforColorType(Ljava/lang/String;ZI)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->key:[Ljava/lang/String;

    sget-object v9, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->OPEN_FOLDER_TYPE:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->value()I

    move-result v9

    aget-object v8, v8, v9

    sget-object v9, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforIntegerType(Ljava/lang/String;I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->key:[Ljava/lang/String;

    sget-object v9, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->CLOSE_FOLDER_ICON1:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->value()I

    move-result v9

    aget-object v8, v8, v9

    sget-object v9, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v9

    # invokes: Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforDrawableType(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v8, v9}, Lcom/sec/android/app/launcher/theme/ThemeManager;->access$100(Lcom/sec/android/app/launcher/theme/ThemeManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    instance-of v2, v5, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    # getter for: Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;
    invoke-static {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->access$000(Lcom/sec/android/app/launcher/theme/ThemeManager;)Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->key:[Ljava/lang/String;

    sget-object v9, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->OPEN_FOLDER_BG:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->value()I

    move-result v9

    aget-object v8, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v10

    invoke-virtual {v2, v8, v9, v10}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getItemBitmap(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v16

    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mOpenFolderImageChunk:[B

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_2

    const/16 v17, 0x0

    :cond_2
    const v2, 0x1ffffff

    if-ne v6, v2, :cond_3

    const v6, -0xf96a68

    :cond_3
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mOpenFolderType:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderType:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_7

    if-eqz v14, :cond_7

    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_4

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5, v6, v7}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->setFolder(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    goto/16 :goto_0

    :cond_4
    if-eqz v17, :cond_5

    const v2, 0x1ffffff

    if-eq v11, v2, :cond_5

    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_6

    if-nez v5, :cond_6

    :cond_5
    const v11, -0x50506

    if-nez v17, :cond_6

    const v6, 0x1ffffff

    const/high16 v7, -0x1000000

    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11, v6, v7}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->setFolder(Landroid/graphics/drawable/Drawable;III)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->key:[Ljava/lang/String;

    sget-object v9, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->CLOSE_FOLDER_SHAPE:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->value()I

    move-result v9

    aget-object v8, v8, v9

    sget-object v9, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforIntegerType(Ljava/lang/String;I)I

    move-result v3

    const/4 v2, -0x1

    if-eq v3, v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderType:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_9

    if-nez v14, :cond_9

    :cond_8
    const/4 v3, 0x0

    :cond_9
    const/4 v15, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v15, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->key:[Ljava/lang/String;

    sget-object v9, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->CLOSE_FOLDER_COLOR1:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->value()I

    move-result v9

    add-int/2addr v9, v15

    aget-object v8, v8, v9

    sget-object v9, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getEachItemforColorType(Ljava/lang/String;I)I

    move-result v2

    aput v2, v4, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_a
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_b

    if-eqz v5, :cond_b

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->setFolder(I[ILandroid/graphics/drawable/Drawable;II)V

    goto/16 :goto_0

    :cond_b
    if-eqz v17, :cond_c

    const v2, 0x1ffffff

    if-eq v11, v2, :cond_c

    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_d

    if-nez v5, :cond_d

    :cond_c
    const v11, -0x50506

    if-nez v17, :cond_d

    const v6, 0x1ffffff

    const/high16 v7, -0x1000000

    :cond_d
    move-object/from16 v8, p0

    move v9, v3

    move-object v10, v4

    move v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->setFolder(I[IIII)V

    goto/16 :goto_0
.end method
