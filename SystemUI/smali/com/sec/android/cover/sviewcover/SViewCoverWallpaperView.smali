.class public Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;
.super Landroid/widget/FrameLayout;
.source "SViewCoverWallpaperView.java"


# static fields
.field static COLOR_LIMIT_RATIO:F = 0.0f

.field static DEFAULT_BLENDING_ALPHA:F = 0.0f

.field static final DEFAULT_COLOR:I = 0x6e

.field private static final SETTING_WALLPAPER_COVER:Ljava/lang/String; = "white_cover_wallpaper"

.field private static final TAG:Ljava/lang/String; = "SViewCoverWallpaperView"

.field static final TOP_DIM_ALPHA:I = 0x73

.field static final VIGNETTING_TOP_RATIO:F = 0.2f

.field static WHITE_IMAGE_DEFAULT_COLOR:I

.field static WHITE_IMAGE_THRESHOLD:I


# instance fields
.field private mBgImageView:Landroid/widget/ImageView;

.field private mBlendingColor:I

.field private mCurCustomWallpaperPath:Ljava/lang/String;

.field private mCurWallpaperType:I

.field private mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x6e

    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_DEFAULT_COLOR:I

    const v0, 0x3e4ccccd    # 0.2f

    sput v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->DEFAULT_BLENDING_ALPHA:F

    const/16 v0, 0xc8

    sput v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_THRESHOLD:I

    const/high16 v0, 0x3e800000    # 0.25f

    sput v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->init()V

    return-void
.end method

.method public static getDominentColor(Landroid/graphics/Bitmap;)I
    .locals 42

    if-nez p0, :cond_0

    const/16 v39, 0x0

    :goto_0
    return v39

    :cond_0
    const-wide/16 v34, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v36

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v39, v0

    const/high16 v40, 0x42c80000    # 100.0f

    div-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v25, v0

    :goto_1
    if-gtz v25, :cond_1

    const/16 v25, 0x1

    :cond_1
    const/16 v37, 0x0

    :goto_2
    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_b

    const/16 v38, 0x0

    :goto_3
    move/from16 v0, v38

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    if-eqz v37, :cond_2

    if-nez v38, :cond_4

    :cond_2
    :goto_4
    add-int v38, v38, v25

    goto :goto_3

    :cond_3
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v39, v0

    const/high16 v40, 0x42c80000    # 100.0f

    div-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v25, v0

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v39

    move/from16 v0, v39

    int-to-long v10, v0

    add-long v34, v34, v10

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v39

    move/from16 v0, v39

    int-to-long v8, v0

    add-long v32, v32, v8

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v39

    move/from16 v0, v39

    int-to-long v6, v0

    add-long v30, v30, v6

    const-wide/16 v40, 0x1

    add-long v26, v26, v40

    cmp-long v39, v22, v10

    if-gtz v39, :cond_5

    const-wide/16 v40, 0x0

    cmp-long v39, v22, v40

    if-nez v39, :cond_6

    :cond_5
    move-wide/from16 v22, v10

    :cond_6
    cmp-long v39, v20, v8

    if-gtz v39, :cond_7

    const-wide/16 v40, 0x0

    cmp-long v39, v20, v40

    if-nez v39, :cond_8

    :cond_7
    move-wide/from16 v20, v8

    :cond_8
    cmp-long v39, v18, v6

    if-gtz v39, :cond_9

    const-wide/16 v40, 0x0

    cmp-long v39, v18, v40

    if-nez v39, :cond_2

    :cond_9
    move-wide/from16 v18, v6

    goto :goto_4

    :cond_a
    add-int v37, v37, v25

    goto :goto_2

    :cond_b
    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    div-long v40, v34, v26

    move-wide/from16 v0, v40

    long-to-int v13, v0

    div-long v40, v32, v26

    move-wide/from16 v0, v40

    long-to-int v12, v0

    div-long v40, v30, v26

    move-wide/from16 v0, v40

    long-to-int v5, v0

    const/16 v24, 0x0

    int-to-long v0, v13

    move-wide/from16 v40, v0

    cmp-long v39, v40, v22

    if-lez v39, :cond_10

    int-to-long v0, v13

    move-wide/from16 v40, v0

    sub-long v40, v40, v22

    move-wide/from16 v0, v40

    long-to-float v0, v0

    move/from16 v39, v0

    int-to-float v0, v13

    move/from16 v40, v0

    div-float v24, v39, v40

    sget v39, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    cmpl-float v39, v24, v39

    if-lez v39, :cond_c

    sget v24, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    :cond_c
    const/16 v39, 0x0

    cmpl-float v39, v24, v39

    if-lez v39, :cond_f

    const/high16 v39, 0x3f800000    # 1.0f

    sub-float v39, v39, v24

    int-to-float v0, v13

    move/from16 v40, v0

    mul-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v16, v0

    :goto_5
    int-to-long v0, v12

    move-wide/from16 v40, v0

    cmp-long v39, v40, v20

    if-lez v39, :cond_12

    int-to-long v0, v12

    move-wide/from16 v40, v0

    sub-long v40, v40, v20

    move-wide/from16 v0, v40

    long-to-float v0, v0

    move/from16 v39, v0

    int-to-float v0, v12

    move/from16 v40, v0

    div-float v24, v39, v40

    sget v39, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    cmpl-float v39, v24, v39

    if-lez v39, :cond_d

    sget v24, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    :cond_d
    const/16 v39, 0x0

    cmpl-float v39, v24, v39

    if-lez v39, :cond_11

    const/high16 v39, 0x3f800000    # 1.0f

    sub-float v39, v39, v24

    int-to-float v0, v12

    move/from16 v40, v0

    mul-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v15, v0

    :goto_6
    int-to-long v0, v5

    move-wide/from16 v40, v0

    cmp-long v39, v40, v18

    if-lez v39, :cond_14

    int-to-long v0, v5

    move-wide/from16 v40, v0

    sub-long v40, v40, v18

    move-wide/from16 v0, v40

    long-to-float v0, v0

    move/from16 v39, v0

    int-to-float v0, v5

    move/from16 v40, v0

    div-float v24, v39, v40

    sget v39, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    cmpl-float v39, v24, v39

    if-lez v39, :cond_e

    sget v24, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    :cond_e
    const/16 v39, 0x0

    cmpl-float v39, v24, v39

    if-lez v39, :cond_13

    const/high16 v39, 0x3f800000    # 1.0f

    sub-float v39, v39, v24

    int-to-float v0, v5

    move/from16 v40, v0

    mul-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v14, v0

    :goto_7
    sget v39, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_THRESHOLD:I

    move/from16 v0, v16

    move/from16 v1, v39

    if-le v0, v1, :cond_15

    sget v39, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_THRESHOLD:I

    move/from16 v0, v39

    if-le v15, v0, :cond_15

    sget v39, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_THRESHOLD:I

    move/from16 v0, v39

    if-le v14, v0, :cond_15

    sget v39, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_DEFAULT_COLOR:I

    goto/16 :goto_0

    :cond_f
    move/from16 v16, v13

    goto :goto_5

    :cond_10
    move/from16 v16, v13

    goto :goto_5

    :cond_11
    move v15, v12

    goto :goto_6

    :cond_12
    move v15, v12

    goto :goto_6

    :cond_13
    move v14, v5

    goto :goto_7

    :cond_14
    move v14, v5

    goto :goto_7

    :cond_15
    const/16 v39, 0xff

    move/from16 v0, v39

    move/from16 v1, v16

    invoke-static {v0, v1, v15, v14}, Landroid/graphics/Color;->argb(IIII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v39

    goto/16 :goto_0

    :catch_0
    move-exception v39

    sget v39, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_DEFAULT_COLOR:I

    goto/16 :goto_0
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->mainbg_pattern_mainarea:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static isWhiteCoverWallpaper(Landroid/graphics/Bitmap;)Z
    .locals 15

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v13, 0x3

    :try_start_0
    new-array v3, v13, [F

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v10, v2, :cond_1

    int-to-float v13, v2

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    float-to-int v6, v13

    :goto_0
    if-gtz v6, :cond_0

    const/4 v6, 0x1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_3

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v2, :cond_2

    invoke-virtual {p0, v11, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v13

    invoke-static {v13, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v13, 0x1

    aget v13, v3, v13

    add-float/2addr v7, v13

    const/4 v13, 0x2

    aget v13, v3, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-float/2addr v8, v13

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v12, v6

    goto :goto_2

    :cond_1
    int-to-float v13, v10

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    float-to-int v6, v13

    goto :goto_0

    :cond_2
    add-int/2addr v11, v6

    goto :goto_1

    :cond_3
    int-to-float v13, v4

    div-float v5, v7, v13

    int-to-float v13, v4

    div-float v9, v8, v13

    const v13, 0x3cf5c28f    # 0.03f

    cmpg-float v13, v5, v13

    if-gez v13, :cond_4

    const v13, 0x3f6147ae    # 0.88f

    cmpl-float v13, v9, v13

    if-ltz v13, :cond_4

    const/4 v13, 0x1

    :goto_3
    return v13

    :catch_0
    move-exception v13

    :cond_4
    const/4 v13, 0x0

    goto :goto_3
.end method

.method private setPreLoadWallpaperImage()V
    .locals 7

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperIndex()I

    move-result v3

    add-int/lit8 v1, v3, -0xa

    const-string v3, "SViewCoverWallpaperView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SViewCoverWallpaperView wallpaper DB values :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getPreloadWallpaperResId(I)I

    move-result v0

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->isWhiteCoverWallpaper(Landroid/graphics/Bitmap;)Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "white_cover_wallpaper"

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setVisibility(I)V

    const/4 v3, 0x5

    iput v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    return-void

    :cond_1
    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method public getCurrentWallpaperType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    return v0
.end method

.method public setAlphaBlending()V
    .locals 14

    const/high16 v2, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v13, 0x437f0000    # 255.0f

    const/4 v1, 0x0

    const/16 v12, 0x6e

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v9, Landroid/graphics/ImageFilterSet;

    invoke-direct {v9}, Landroid/graphics/ImageFilterSet;-><init>()V

    const/16 v3, 0x34

    invoke-static {v3}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v8

    check-cast v8, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    const/16 v3, 0x34

    invoke-static {v3}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v11, v3

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v10, v3

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v7, v3

    div-float/2addr v11, v13

    div-float/2addr v10, v13

    div-float/2addr v7, v13

    sget v3, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->DEFAULT_BLENDING_ALPHA:F

    invoke-virtual {v8, v11, v10, v7, v3}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setColor(FFFF)V

    invoke-virtual {v0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xc8

    if-le v3, v4, :cond_0

    const/16 v3, 0x73

    invoke-static {v3, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    :goto_0
    invoke-virtual {v9, v0}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    invoke-virtual {v9, v8}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageFilter(Landroid/graphics/ImageFilter;)Z

    return-void

    :cond_0
    const/16 v3, 0x73

    iget v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    iget v12, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    invoke-static {v3, v4, v6, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/4 v4, 0x0

    iget v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    iget v12, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v12

    iget v13, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    invoke-static {v4, v6, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    goto :goto_0
.end method

.method public setCustomWallpaperImage(Ljava/lang/String;Z)V
    .locals 18

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-virtual {v15}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getCustomWallpaperFilePathName()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v15, "SViewCoverWallpaperView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setCustomWallpaperImage : Current wallpaper type = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Path="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Force="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurCustomWallpaperPath:Ljava/lang/String;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurCustomWallpaperPath:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    :cond_1
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_7

    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_pager_width:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v13, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_height:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v12, v15

    move-object/from16 v0, p1

    invoke-static {v0, v13, v12}, Lcom/sec/android/cover/CoverUtils;->getAppropriateSampleSize(Ljava/lang/String;II)I

    move-result v15

    iput v15, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_0
    return-void

    :cond_2
    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    if-le v4, v13, :cond_3

    if-le v3, v12, :cond_3

    if-lt v13, v12, :cond_4

    int-to-float v15, v13

    int-to-float v0, v4

    move/from16 v16, v0

    div-float v10, v15, v16

    int-to-float v15, v3

    mul-float/2addr v15, v10

    float-to-int v9, v15

    const/4 v15, 0x1

    invoke-static {v2, v13, v9, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_3
    :goto_1
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->isWhiteCoverWallpaper(Landroid/graphics/Bitmap;)Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "white_cover_wallpaper"

    if-eqz v7, :cond_5

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v15}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-direct {v14, v15, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->getDominentColor(Landroid/graphics/Bitmap;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setVisibility(I)V

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurCustomWallpaperPath:Ljava/lang/String;

    goto :goto_0

    :cond_4
    int-to-float v15, v12

    int-to-float v0, v3

    move/from16 v16, v0

    div-float v10, v15, v16

    int-to-float v15, v4

    mul-float/2addr v15, v10

    float-to-int v11, v15

    const/4 v15, 0x1

    :try_start_1
    invoke-static {v2, v11, v12, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    :cond_5
    const/4 v15, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    const v16, 0x106000c

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    const/16 v16, 0x4d

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_3

    :cond_7
    const-string v15, "SViewCoverWallpaperView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setCustomWallpaperImage : Custom wallpaper file not exist : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string v15, "SViewCoverWallpaperView"

    const-string v16, "setCustomWallpaperImage : Wallpaer update skipped"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setEmergencyModeWallpaperImage(Z)V
    .locals 4

    const/4 v3, 0x4

    const-string v0, "SViewCoverWallpaperView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEmergencyModeWallpaperImage : Use emergency mode wallpaper - Current wallpaper type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    if-eq v0, v3, :cond_1

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setVisibility(I)V

    iput v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    :cond_1
    return-void
.end method

.method public setKidsModeWallpaperImage(Z)V
    .locals 10

    const/4 v9, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "SViewCoverWallpaperView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setKidsModeWallpaperImage : Use kids mode wallpaper - Current wallpaper type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v4, :cond_0

    iget v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    if-eq v6, v9, :cond_3

    :cond_0
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/sec/android/sviewcover/R$drawable;->sview_cover_kids_wallpaper:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v3, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->getDominentColor(Landroid/graphics/Bitmap;)I

    move-result v6

    iput v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    :goto_1
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->isWhiteCoverWallpaper(Landroid/graphics/Bitmap;)Z

    move-result v2

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "white_cover_wallpaper"

    if-eqz v2, :cond_5

    :goto_2
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setVisibility(I)V

    :cond_2
    iput v9, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    :cond_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    const v7, 0x106000c

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_2
.end method

.method public setProperWallpaper(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setEmergencyModeWallpaperImage(Z)V

    :goto_0
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setAlphaBlending()V

    :cond_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setKidsModeWallpaperImage(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->isCustomWallpaperEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setCustomWallpaperImage(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setPreLoadWallpaperImage()V

    const/4 v1, 0x1

    goto :goto_0
.end method
