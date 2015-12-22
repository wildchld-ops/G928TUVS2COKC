.class public Lcom/android/keyguard/sec/effect/VignettingEffect;
.super Ljava/lang/Object;
.source "VignettingEffect.java"


# static fields
.field private static BOTTOM_DIM_ALPHA:I = 0x0

.field private static final BOTTOM_TO_TOP:I = 0x1

.field private static final DEFAULT_COLOR:I = 0x6e

.field private static final LIMITTED_VALUE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "VignettingEffect"

.field private static TOP_DIM_ALPHA:I

.field private static final TOP_TO_BOTTOM:I

.field private static VIGNETTING_BOTTOM_RATIO:F

.field private static VIGNETTING_TOP_RATIO:F

.field private static mDefaultColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x6e

    const/16 v0, 0x4d

    sput v0, Lcom/android/keyguard/sec/effect/VignettingEffect;->TOP_DIM_ALPHA:I

    const/16 v0, 0x33

    sput v0, Lcom/android/keyguard/sec/effect/VignettingEffect;->BOTTOM_DIM_ALPHA:I

    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lcom/android/keyguard/sec/effect/VignettingEffect;->VIGNETTING_TOP_RATIO:F

    const v0, 0x3def9db2    # 0.117f

    sput v0, Lcom/android/keyguard/sec/effect/VignettingEffect;->VIGNETTING_BOTTOM_RATIO:F

    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/keyguard/sec/effect/VignettingEffect;->mDefaultColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyBlendedFilter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14

    if-nez p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-static {}, Lcom/android/keyguard/sec/effect/VignettingEffect;->init()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    invoke-static {v10, v0, p0}, Lcom/android/keyguard/sec/effect/VignettingEffect;->calcGradientArea(Landroid/graphics/Rect;ILandroid/graphics/Bitmap;)V

    invoke-static {p0, v10}, Lcom/android/keyguard/sec/effect/VignettingEffect;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v9

    shr-int/lit8 v0, v9, 0x10

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xc8

    if-le v0, v1, :cond_1

    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget v5, Lcom/android/keyguard/sec/effect/VignettingEffect;->TOP_DIM_ALPHA:I

    const/16 v6, 0x6e

    const/16 v7, 0x6e

    const/16 v12, 0x6e

    invoke-static {v5, v6, v7, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x6e

    const/16 v12, 0x6e

    const/16 v13, 0x6e

    invoke-static {v6, v7, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_1
    invoke-virtual {v8, v10, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x1

    invoke-static {v10, v0, p0}, Lcom/android/keyguard/sec/effect/VignettingEffect;->calcGradientArea(Landroid/graphics/Rect;ILandroid/graphics/Bitmap;)V

    invoke-static {p0, v10}, Lcom/android/keyguard/sec/effect/VignettingEffect;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v9

    shr-int/lit8 v0, v9, 0x10

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xc8

    if-le v0, v1, :cond_2

    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    const/4 v5, 0x0

    const/16 v6, 0x6e

    const/16 v7, 0x6e

    const/16 v12, 0x6e

    invoke-static {v5, v6, v7, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    sget v6, Lcom/android/keyguard/sec/effect/VignettingEffect;->BOTTOM_DIM_ALPHA:I

    const/16 v7, 0x6e

    const/16 v12, 0x6e

    const/16 v13, 0x6e

    invoke-static {v6, v7, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_2
    invoke-virtual {v8, v10, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget v5, Lcom/android/keyguard/sec/effect/VignettingEffect;->TOP_DIM_ALPHA:I

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    invoke-static {v5, v6, v7, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v12

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    invoke-static {v6, v7, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_1

    :cond_2
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    invoke-static {v5, v6, v7, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    sget v6, Lcom/android/keyguard/sec/effect/VignettingEffect;->BOTTOM_DIM_ALPHA:I

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v12

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    invoke-static {v6, v7, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_2
.end method

.method public static applyBlendedFilter(Landroid/widget/ImageView;)V
    .locals 15

    const/16 v5, 0x34

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/16 v8, 0x6e

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    if-eqz v13, :cond_0

    new-instance v11, Landroid/graphics/ImageFilterSet;

    invoke-direct {v11}, Landroid/graphics/ImageFilterSet;-><init>()V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-static {v5}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    invoke-static {v5}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v9

    check-cast v9, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    invoke-static {}, Lcom/android/keyguard/sec/effect/VignettingEffect;->init()V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v12, v14, v13}, Lcom/android/keyguard/sec/effect/VignettingEffect;->calcGradientArea(Landroid/graphics/Rect;ILandroid/graphics/Bitmap;)V

    invoke-static {v13, v12}, Lcom/android/keyguard/sec/effect/VignettingEffect;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v10

    const-string v3, "VignettingEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractedColor of top = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v10, 0x10

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    shr-int/lit8 v3, v10, 0x10

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xc8

    if-le v3, v4, :cond_2

    sget v3, Lcom/android/keyguard/sec/effect/VignettingEffect;->TOP_DIM_ALPHA:I

    invoke-static {v3, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    sget v4, Lcom/android/keyguard/sec/effect/VignettingEffect;->VIGNETTING_TOP_RATIO:F

    sub-float v5, v2, v4

    invoke-static {v14, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    :goto_1
    const/4 v12, 0x0

    const/4 v10, 0x0

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x1

    invoke-static {v12, v2, v13}, Lcom/android/keyguard/sec/effect/VignettingEffect;->calcGradientArea(Landroid/graphics/Rect;ILandroid/graphics/Bitmap;)V

    invoke-static {v13, v12}, Lcom/android/keyguard/sec/effect/VignettingEffect;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v10

    const-string v2, "VignettingEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractedColor of bottom = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v4, v10, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    shr-int/lit8 v2, v10, 0x10

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xc8

    if-le v2, v3, :cond_3

    sget v2, Lcom/android/keyguard/sec/effect/VignettingEffect;->BOTTOM_DIM_ALPHA:I

    invoke-static {v2, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    sget v7, Lcom/android/keyguard/sec/effect/VignettingEffect;->VIGNETTING_BOTTOM_RATIO:F

    invoke-static {v14, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move-object v2, v9

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    :goto_2
    invoke-virtual {v11, v0}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    invoke-virtual {v11, v9}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    invoke-virtual {p0, v11}, Landroid/widget/ImageView;->setImageFilter(Landroid/graphics/ImageFilter;)Z

    goto/16 :goto_0

    :cond_2
    sget v3, Lcom/android/keyguard/sec/effect/VignettingEffect;->TOP_DIM_ALPHA:I

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    sget v4, Lcom/android/keyguard/sec/effect/VignettingEffect;->VIGNETTING_TOP_RATIO:F

    sub-float v5, v2, v4

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v14, v4, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    goto :goto_1

    :cond_3
    sget v2, Lcom/android/keyguard/sec/effect/VignettingEffect;->BOTTOM_DIM_ALPHA:I

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    sget v7, Lcom/android/keyguard/sec/effect/VignettingEffect;->VIGNETTING_BOTTOM_RATIO:F

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v14, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move-object v2, v9

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    goto :goto_2
.end method

.method private static calcGradientArea(Landroid/graphics/Rect;ILandroid/graphics/Bitmap;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    :goto_0
    return-void

    :pswitch_0
    iput v2, p0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    sget v3, Lcom/android/keyguard/sec/effect/VignettingEffect;->VIGNETTING_TOP_RATIO:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_1
    iput v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    sget v3, Lcom/android/keyguard/sec/effect/VignettingEffect;->VIGNETTING_BOTTOM_RATIO:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, v0, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static convertToAlphaValue(I)I
    .locals 1

    mul-int/lit16 v0, p0, 0xff

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 42

    const/high16 v19, 0x3e800000    # 0.25f

    const-wide/16 v36, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v31

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v40, v0

    const/high16 v41, 0x42c80000    # 100.0f

    div-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v30, v0

    :goto_0
    if-gtz v30, :cond_0

    const/16 v30, 0x1

    :cond_0
    const/16 v38, 0x0

    :goto_1
    move/from16 v0, v38

    move/from16 v1, v31

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v39, v0

    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_9

    if-eqz v38, :cond_1

    if-nez v39, :cond_3

    :cond_1
    :goto_3
    add-int v39, v39, v30

    goto :goto_2

    :cond_2
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v40, v0

    const/high16 v41, 0x42c80000    # 100.0f

    div-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v30, v0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v40

    move/from16 v0, v40

    int-to-long v10, v0

    add-long v36, v36, v10

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v40

    move/from16 v0, v40

    int-to-long v8, v0

    add-long v34, v34, v8

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v40

    move/from16 v0, v40

    int-to-long v6, v0

    add-long v32, v32, v6

    const-wide/16 v40, 0x1

    add-long v28, v28, v40

    cmp-long v40, v24, v10

    if-gtz v40, :cond_4

    const-wide/16 v40, 0x0

    cmp-long v40, v24, v40

    if-nez v40, :cond_5

    :cond_4
    move-wide/from16 v24, v10

    :cond_5
    cmp-long v40, v22, v8

    if-gtz v40, :cond_6

    const-wide/16 v40, 0x0

    cmp-long v40, v22, v40

    if-nez v40, :cond_7

    :cond_6
    move-wide/from16 v22, v8

    :cond_7
    cmp-long v40, v20, v6

    if-gtz v40, :cond_8

    const-wide/16 v40, 0x0

    cmp-long v40, v20, v40

    if-nez v40, :cond_1

    :cond_8
    move-wide/from16 v20, v6

    goto :goto_3

    :cond_9
    add-int v38, v38, v30

    goto :goto_1

    :cond_a
    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    div-long v40, v36, v28

    move-wide/from16 v0, v40

    long-to-int v14, v0

    div-long v40, v34, v28

    move-wide/from16 v0, v40

    long-to-int v13, v0

    div-long v40, v32, v28

    move-wide/from16 v0, v40

    long-to-int v12, v0

    const/16 v26, 0x0

    int-to-long v0, v14

    move-wide/from16 v40, v0

    cmp-long v40, v40, v24

    if-lez v40, :cond_10

    int-to-long v0, v14

    move-wide/from16 v40, v0

    sub-long v40, v40, v24

    move-wide/from16 v0, v40

    long-to-float v0, v0

    move/from16 v40, v0

    int-to-float v0, v14

    move/from16 v41, v0

    div-float v26, v40, v41

    cmpl-float v40, v26, v19

    if-lez v40, :cond_b

    move/from16 v26, v19

    :cond_b
    const/16 v40, 0x0

    cmpl-float v40, v26, v40

    if-lez v40, :cond_f

    const/high16 v40, 0x3f800000    # 1.0f

    sub-float v40, v40, v26

    int-to-float v0, v14

    move/from16 v41, v0

    mul-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v17, v0

    :goto_4
    int-to-long v0, v13

    move-wide/from16 v40, v0

    cmp-long v40, v40, v22

    if-lez v40, :cond_12

    int-to-long v0, v13

    move-wide/from16 v40, v0

    sub-long v40, v40, v22

    move-wide/from16 v0, v40

    long-to-float v0, v0

    move/from16 v40, v0

    int-to-float v0, v13

    move/from16 v41, v0

    div-float v26, v40, v41

    cmpl-float v40, v26, v19

    if-lez v40, :cond_c

    move/from16 v26, v19

    :cond_c
    const/16 v40, 0x0

    cmpl-float v40, v26, v40

    if-lez v40, :cond_11

    const/high16 v40, 0x3f800000    # 1.0f

    sub-float v40, v40, v26

    int-to-float v0, v13

    move/from16 v41, v0

    mul-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v16, v0

    :goto_5
    int-to-long v0, v12

    move-wide/from16 v40, v0

    cmp-long v40, v40, v20

    if-lez v40, :cond_14

    int-to-long v0, v12

    move-wide/from16 v40, v0

    sub-long v40, v40, v20

    move-wide/from16 v0, v40

    long-to-float v0, v0

    move/from16 v40, v0

    int-to-float v0, v12

    move/from16 v41, v0

    div-float v26, v40, v41

    cmpl-float v40, v26, v19

    if-lez v40, :cond_d

    move/from16 v26, v19

    :cond_d
    const/16 v40, 0x0

    cmpl-float v40, v26, v40

    if-lez v40, :cond_13

    const/high16 v40, 0x3f800000    # 1.0f

    sub-float v40, v40, v26

    int-to-float v0, v12

    move/from16 v41, v0

    mul-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v15, v0

    :goto_6
    const/16 v40, 0xff

    move/from16 v0, v40

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v27

    const/16 v40, 0xc8

    move/from16 v0, v17

    move/from16 v1, v40

    if-le v0, v1, :cond_e

    const/16 v40, 0xc8

    move/from16 v0, v16

    move/from16 v1, v40

    if-le v0, v1, :cond_e

    const/16 v40, 0xc8

    move/from16 v0, v40

    if-le v15, v0, :cond_e

    sget v27, Lcom/android/keyguard/sec/effect/VignettingEffect;->mDefaultColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_e
    :goto_7
    return v27

    :cond_f
    move/from16 v17, v14

    goto/16 :goto_4

    :cond_10
    move/from16 v17, v14

    goto/16 :goto_4

    :cond_11
    move/from16 v16, v13

    goto :goto_5

    :cond_12
    move/from16 v16, v13

    goto :goto_5

    :cond_13
    move v15, v12

    goto :goto_6

    :cond_14
    move v15, v12

    goto :goto_6

    :catch_0
    move-exception v5

    sget v27, Lcom/android/keyguard/sec/effect/VignettingEffect;->mDefaultColor:I

    goto :goto_7
.end method

.method public static init()V
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTabAProject()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/VignettingEffect;->convertToAlphaValue(I)I

    move-result v0

    sput v0, Lcom/android/keyguard/sec/effect/VignettingEffect;->TOP_DIM_ALPHA:I

    const/16 v0, 0x41

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/VignettingEffect;->convertToAlphaValue(I)I

    move-result v0

    sput v0, Lcom/android/keyguard/sec/effect/VignettingEffect;->BOTTOM_DIM_ALPHA:I

    const v0, 0x3de147ae    # 0.11f

    sput v0, Lcom/android/keyguard/sec/effect/VignettingEffect;->VIGNETTING_TOP_RATIO:F

    const v0, 0x3e0f5c29    # 0.14f

    sput v0, Lcom/android/keyguard/sec/effect/VignettingEffect;->VIGNETTING_BOTTOM_RATIO:F

    :cond_0
    return-void
.end method

.method public static resetBlendedFilter(Landroid/widget/ImageView;)V
    .locals 6

    const/16 v5, 0x34

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/graphics/ImageFilterSet;

    invoke-direct {v1}, Landroid/graphics/ImageFilterSet;-><init>()V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-static {v5}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v2

    check-cast v2, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    invoke-static {v5}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    invoke-virtual {v2}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    invoke-virtual {v0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    invoke-virtual {v1, v2}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    invoke-virtual {v1, v0}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageFilter(Landroid/graphics/ImageFilter;)Z

    goto :goto_0
.end method
