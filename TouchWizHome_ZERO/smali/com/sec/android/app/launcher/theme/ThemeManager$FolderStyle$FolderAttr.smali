.class Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderAttr"
.end annotation


# instance fields
.field private mCloseFolderColor:I

.field private mCloseFolderImage:Landroid/graphics/Bitmap;

.field private mOpenFolderBgColor:I

.field private mOpenFolderImage:Landroid/graphics/drawable/Drawable;

.field private mOpenFolderTextColor:I

.field private mOpenFolderTitleColor:I

.field final synthetic this$0:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;Lcom/sec/android/app/launcher/theme/ThemeManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;-><init>(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;IILandroid/graphics/drawable/Drawable;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->set(IILandroid/graphics/drawable/Drawable;II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->getCloseFolderColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->getCloseFolderImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->getOpenFolderImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->getOpenFolderTitleColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->getOpenFolderTextColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->getOpenFolderBgColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->set(IIIII)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->set(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;Landroid/graphics/drawable/Drawable;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->set(Landroid/graphics/drawable/Drawable;III)V

    return-void
.end method

.method private getCloseFolderColor()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mCloseFolderColor:I

    return v0
.end method

.method private getCloseFolderImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getOpenFolderBgColor()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderBgColor:I

    return v0
.end method

.method private getOpenFolderImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getOpenFolderTextColor()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderTextColor:I

    return v0
.end method

.method private getOpenFolderTitleColor()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderTitleColor:I

    return v0
.end method

.method private set(IIIII)V
    .locals 6

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    iget-object v2, v2, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput p2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mCloseFolderColor:I

    iput p4, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderTitleColor:I

    iput p5, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderTextColor:I

    iput p3, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderBgColor:I

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    iget-object v2, v2, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    # getter for: Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;
    invoke-static {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->access$000(Lcom/sec/android/app/launcher/theme/ThemeManager;)Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    iget-object v3, v3, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->key:[Ljava/lang/String;

    sget-object v4, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->OPEN_FOLDER_BG:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->value()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getItemDrawableforDefaultResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    iget-object v2, v2, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    # getter for: Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;
    invoke-static {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->access$000(Lcom/sec/android/app/launcher/theme/ThemeManager;)Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    iget-object v3, v3, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->key:[Ljava/lang/String;

    sget-object v4, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->OPEN_FOLDER_BG:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->value()I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getItemBitmap(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    # setter for: Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mOpenFolderImageChunk:[B
    invoke-static {v2, v3}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->access$402(Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;[B)[B

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderBgColor:I

    const v3, 0x1ffffff

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderBgColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    # getter for: Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderShapeRes:[I
    invoke-static {}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->access$500()[I

    move-result-object v2

    aget v2, v2, p1

    invoke-static {v0, v2, p2}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapWithColor(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method private set(IILandroid/graphics/drawable/Drawable;II)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    iget-object v1, v1, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput p2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mCloseFolderColor:I

    # getter for: Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mFolderShapeRes:[I
    invoke-static {}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->access$500()[I

    move-result-object v1

    aget v1, v1, p1

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapWithColor(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    iput p4, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderTitleColor:I

    iput p5, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderTextColor:I

    return-void
.end method

.method private set(Landroid/graphics/drawable/Drawable;III)V
    .locals 3

    invoke-static {p1}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderBgColor:I

    iput p3, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderTitleColor:I

    iput p4, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderTextColor:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    iget-object v0, v0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->mThemeManager:Lcom/sec/android/app/launcher/theme/ThemeManager;

    # getter for: Lcom/sec/android/app/launcher/theme/ThemeManager;->mThemeLoader:Lcom/sec/android/app/launcher/theme/ThemeLoader;
    invoke-static {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->access$000(Lcom/sec/android/app/launcher/theme/ThemeManager;)Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    iget-object v1, v1, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->key:[Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->OPEN_FOLDER_BG:Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderStyleItems;->value()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getItemDrawableforDefaultResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderBgColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method private set(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderTitleColor:I

    iput p4, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle$FolderAttr;->mOpenFolderTextColor:I

    return-void
.end method
