.class public Lcom/sec/android/app/launcher/theme/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeUtils"

.field private static THIRD_APP_SCALE_RATE:F

.field private static mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/launcher/theme/ThemeUtils;->THIRD_APP_SCALE_RATE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v0, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method private static getAverageColor(Landroid/graphics/Bitmap;)I
    .locals 14

    const/4 v2, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int v12, v0, v3

    new-array v1, v12, [I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_0

    aget v9, v1, v11

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v0

    add-int/2addr v13, v0

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v0

    add-int/2addr v10, v0

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    add-int/2addr v8, v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    div-int v0, v13, v12

    div-int v2, v10, v12

    div-int v3, v8, v12

    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static getNinepatchDrawableWithColor(Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/Drawable;
    .locals 14

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v12}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v13

    invoke-static {v13}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ThemeUtils"

    const-string v2, "Not a valid ninepatch chunk"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v6, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v3

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    return-object v6

    :cond_0
    const-string v1, "ThemeUtils"

    const-string v2, "Ninepatch chunk is valid"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getNinepatchWithColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v2, p0, v1, v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2, v6, v6, v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p1, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    return-object v3
.end method

.method private static initPaint()V
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v0, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method public static load3rdAppIconBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget v5, Lcom/sec/android/app/launcher/theme/ThemeUtils;->THIRD_APP_SCALE_RATE:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getChangeableStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->getIconScale()F

    move-result v5

    sput v5, Lcom/sec/android/app/launcher/theme/ThemeUtils;->THIRD_APP_SCALE_RATE:F

    :cond_1
    if-eqz p1, :cond_4

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    if-nez v5, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/theme/ThemeUtils;->initPaint()V

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v2, p2, :cond_3

    sget v5, Lcom/sec/android/app/launcher/theme/ThemeUtils;->THIRD_APP_SCALE_RATE:F

    int-to-float v6, p2

    mul-float/2addr v5, v6

    int-to-float v6, v2

    div-float v4, v5, v6

    :goto_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    int-to-float v5, p2

    div-float/2addr v5, v7

    int-to-float v6, p3

    div-float/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int v5, v2

    int-to-float v5, v5

    div-float/2addr v5, v7

    neg-int v6, v1

    int-to-float v6, v6

    div-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_3
    sget v4, Lcom/sec/android/app/launcher/theme/ThemeUtils;->THIRD_APP_SCALE_RATE:F

    goto :goto_1

    :cond_4
    move-object v0, p0

    goto :goto_0
.end method

.method public static load3rdAppIconBitmapForExtractBG(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget v3, Lcom/sec/android/app/launcher/theme/ThemeUtils;->THIRD_APP_SCALE_RATE:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getChangeableStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager$ChangeableStyle;->getIconScale()F

    move-result v3

    sput v3, Lcom/sec/android/app/launcher/theme/ThemeUtils;->THIRD_APP_SCALE_RATE:F

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/launcher/theme/ThemeUtils;->roundBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v3, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/theme/ThemeUtils;->initPaint()V

    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v3, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, p1

    div-float/2addr v3, v5

    int-to-float v4, p2

    div-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    sget v3, Lcom/sec/android/app/launcher/theme/ThemeUtils;->THIRD_APP_SCALE_RATE:F

    sget v4, Lcom/sec/android/app/launcher/theme/ThemeUtils;->THIRD_APP_SCALE_RATE:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int v3, p1

    int-to-float v3, v3

    div-float/2addr v3, v5

    neg-int v4, p2

    int-to-float v4, v4

    div-float/2addr v4, v5

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_3
    move-object v0, p0

    goto :goto_0
.end method

.method public static roundBitmap(III)Landroid/graphics/Bitmap;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    const/high16 v4, 0x40000000    # 2.0f

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/theme/ThemeUtils;->initPaint()V

    :cond_0
    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    packed-switch p0, :pswitch_data_0

    :goto_0
    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, p1

    div-float/2addr v2, v4

    int-to-float v3, p2

    div-float/2addr v3, v4

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object v1

    :pswitch_0
    const/high16 p0, -0x1000000

    goto :goto_0

    :pswitch_1
    const p0, -0x1277fb

    goto :goto_0

    :pswitch_2
    const p0, -0x1c4df6

    goto :goto_0

    :pswitch_3
    const p0, -0x7a43fc

    goto :goto_0

    :pswitch_4
    const p0, -0x757576

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static roundBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    const/high16 v4, 0x40000000    # 2.0f

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/theme/ThemeUtils;->initPaint()V

    :cond_0
    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-static {p0}, Lcom/sec/android/app/launcher/theme/ThemeUtils;->getAverageColor(Landroid/graphics/Bitmap;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, p1

    div-float/2addr v2, v4

    int-to-float v3, p2

    div-float/2addr v3, v4

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method public static strokeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-gtz v7, :cond_1

    :cond_0
    move-object v4, v6

    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-le v7, v8, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int v1, v7, v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int v2, v7, v8

    :goto_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p0, v9, v9, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {v0, p1, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int v1, v7, v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int v2, v7, v8

    goto :goto_1
.end method
