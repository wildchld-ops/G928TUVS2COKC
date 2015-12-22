.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewVignetting.java"


# static fields
.field private static BOTTOM_DIM_ALPHA:I = 0x0

.field private static final BOTTOM_TO_TOP:I = 0x1

.field private static final DEFAULT_COLOR:I = 0x6e

.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewVignetting"

.field private static TOP_DIM_ALPHA:I

.field private static final TOP_TO_BOTTOM:I

.field private static VIGNETTING_BOTTOM_RATIO:F

.field private static VIGNETTING_TOP_RATIO:F


# instance fields
.field private final LIMITTED_VALUE:I

.field private mDefaultColor:I

.field private mFilterImageView:Landroid/widget/ImageView;

.field private mWindowHeight:I

.field private mWindowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x4d

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->TOP_DIM_ALPHA:I

    const/16 v0, 0x33

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->BOTTOM_DIM_ALPHA:I

    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_TOP_RATIO:F

    const v0, 0x3def9db2    # 0.117f

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_BOTTOM_RATIO:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x6e

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->LIMITTED_VALUE:I

    const/16 v2, 0xff

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mDefaultColor:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mWindowWidth:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mWindowHeight:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mWindowWidth:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mWindowHeight:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->init()V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->addView(Landroid/view/View;)V

    return-void
.end method

.method private calcGradientArea(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    int-to-float v3, v1

    sget v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_TOP_RATIO:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    sget v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_BOTTOM_RATIO:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private convertToAlphaValue(I)I
    .locals 1

    mul-int/lit16 v0, p1, 0xff

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method private getBitmapCenterCropRect(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;
    .locals 10

    const/4 v9, 0x0

    const-string v7, "KeyguardEffectViewVignetting"

    const-string v8, "getCenterCropRect()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v7, p2

    int-to-float v8, p3

    div-float v4, v7, v8

    int-to-float v7, v2

    int-to-float v8, v0

    div-float v1, v7, v8

    cmpl-float v7, v1, v4

    if-lez v7, :cond_0

    const-string v7, "KeyguardEffectViewVignetting"

    const-string v8, "left and rigth are cropped"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v7, v0

    mul-float/2addr v7, v4

    float-to-int v6, v7

    sub-int v7, v2, v6

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v3, v7, v9, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object v3

    :cond_0
    const-string v7, "KeyguardEffectViewVignetting"

    const-string v8, "top and bottom are cropped"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v7, v2

    div-float/2addr v7, v4

    float-to-int v5, v7

    sub-int v7, v0, v5

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v3, v9, v7, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
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
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v31

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

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

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v39, v0

    :goto_2
    move-object/from16 v0, p2

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
    move-object/from16 v0, p1

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

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mDefaultColor:I

    move/from16 v27, v0
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

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mDefaultColor:I

    move/from16 v27, v0

    goto :goto_7
.end method

.method private init()V
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->convertToAlphaValue(I)I

    move-result v0

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->TOP_DIM_ALPHA:I

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->convertToAlphaValue(I)I

    move-result v0

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->BOTTOM_DIM_ALPHA:I

    const v0, 0x3de147ae    # 0.11f

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_TOP_RATIO:F

    const v0, 0x3e0f5c29    # 0.14f

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_BOTTOM_RATIO:F

    :cond_0
    return-void
.end method


# virtual methods
.method public applyBlendedFilter(Landroid/graphics/Bitmap;)V
    .locals 17

    const-string v3, "KeyguardEffectViewVignetting"

    const-string v4, "applyBlendedFilter()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mWindowWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mWindowHeight:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->getBitmapCenterCropRect(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;

    move-result-object v11

    new-instance v13, Landroid/graphics/ImageFilterSet;

    invoke-direct {v13}, Landroid/graphics/ImageFilterSet;-><init>()V

    const/16 v3, 0x34

    invoke-static {v3}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v2

    check-cast v2, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    const/16 v3, 0x34

    invoke-static {v3}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v10

    check-cast v10, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->calcGradientArea(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v12

    const-string v3, "KeyguardEffectViewVignetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractedColor of top = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v12, 0x10

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    shr-int/lit8 v3, v12, 0x10

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xc8

    if-le v3, v4, :cond_2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    sget v5, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->TOP_DIM_ALPHA:I

    const/16 v6, 0x6e

    const/16 v7, 0x6e

    const/16 v8, 0x6e

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    sget v8, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_TOP_RATIO:F

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    const/16 v9, 0x6e

    const/16 v15, 0x6e

    const/16 v16, 0x6e

    move/from16 v0, v16

    invoke-static {v8, v9, v15, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    :goto_1
    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->calcGradientArea(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v12

    const-string v3, "KeyguardEffectViewVignetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractedColor of bottom = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v12, 0x10

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    shr-int/lit8 v3, v12, 0x10

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xc8

    if-le v3, v4, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->BOTTOM_DIM_ALPHA:I

    const/16 v6, 0x6e

    const/16 v7, 0x6e

    const/16 v8, 0x6e

    invoke-static {v3, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/4 v7, 0x0

    sget v8, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_BOTTOM_RATIO:F

    const/4 v3, 0x0

    const/16 v9, 0x6e

    const/16 v15, 0x6e

    const/16 v16, 0x6e

    move/from16 v0, v16

    invoke-static {v3, v9, v15, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    move-object v3, v10

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    :goto_2
    invoke-virtual {v13, v2}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    invoke-virtual {v13, v10}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setImageFilter(Landroid/graphics/ImageFilter;)Z

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    sget v5, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->TOP_DIM_ALPHA:I

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    sget v8, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_TOP_RATIO:F

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v15

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v16

    move/from16 v0, v16

    invoke-static {v8, v9, v15, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    goto/16 :goto_1

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->BOTTOM_DIM_ALPHA:I

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v3, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/4 v7, 0x0

    sget v8, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_BOTTOM_RATIO:F

    const/4 v3, 0x0

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v15

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v16

    move/from16 v0, v16

    invoke-static {v3, v9, v15, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    move-object v3, v10

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    goto :goto_2
.end method

.method public resetBlendedFilter()V
    .locals 6

    const/16 v5, 0x34

    const-string v3, "KeyguardEffectViewVignetting"

    const-string v4, "resetBlendedFilter()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/graphics/ImageFilterSet;

    invoke-direct {v1}, Landroid/graphics/ImageFilterSet;-><init>()V

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

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageFilter(Landroid/graphics/ImageFilter;)Z

    goto :goto_0
.end method
