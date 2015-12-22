.class public Lcom/android/settings/drawable/CircleFramedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircleFramedDrawable.java"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/RectF;

.field private final mFrameColor:I

.field private mFramePath:Landroid/graphics/Path;

.field private mFrameRect:Landroid/graphics/RectF;

.field private final mFrameShadowColor:I

.field private final mHighlightColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mPressed:Z

.field private mScale:F

.field private final mShadowRadius:F

.field private final mSize:I

.field private mSrcRect:Landroid/graphics/Rect;

.field private final mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIFIFI)V
    .locals 13

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p2, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mSize:I

    move/from16 v0, p6

    iput v0, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mShadowRadius:F

    move/from16 v0, p3

    iput v0, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mFrameColor:I

    move/from16 v0, p5

    iput v0, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mFrameShadowColor:I

    move/from16 v0, p4

    iput v0, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mStrokeWidth:F

    move/from16 v0, p7

    iput v0, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mHighlightColor:I

    iget v8, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mSize:I

    iget v9, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mSize:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-instance v3, Landroid/graphics/Rect;

    sub-int v8, v7, v6

    div-int/lit8 v8, v8, 0x2

    sub-int v9, v5, v6

    div-int/lit8 v9, v9, 0x2

    invoke-direct {v3, v8, v9, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v11, v11

    invoke-direct {v2, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v8, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mStrokeWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v9, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mStrokeWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    iget v8, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mShadowRadius:F

    iget v9, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mShadowRadius:F

    invoke-virtual {v2, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    const/4 v8, 0x0

    const/high16 v9, 0x43b40000    # 360.0f

    invoke-virtual {v4, v2, v8, v9}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v8, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v8, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v8, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v8, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v3, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v8, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mScale:F

    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mSize:I

    iget v12, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mSize:I

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v11, v11

    iget v12, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    new-instance v8, Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    invoke-direct {v8, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v8, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    return-void
.end method

.method public static createCircularClip(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v11, 0x0

    if-nez p0, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    new-instance v8, Landroid/graphics/BitmapShader;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v8, p0, v9, v10}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v3

    int-to-float v9, v2

    invoke-direct {v7, v11, v11, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v8, p1

    int-to-float v9, p2

    invoke-direct {v1, v11, v11, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v4, v7, v1, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v3, 0x2

    int-to-float v10, v10

    invoke-virtual {v0, v8, v9, v10, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static encircle(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0, v0, v0}, Lcom/android/settings/drawable/CircleFramedDrawable;->createCircularClip(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/drawable/CircleFramedDrawable;
    .locals 10

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v1, 0x7f0d00c6

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    const v1, 0x7f0d00c7

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const v1, 0x7f0d00c8

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const v1, 0x7f090065

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const v1, 0x7f090066

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const v1, 0x7f090067

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    new-instance v0, Lcom/android/settings/drawable/CircleFramedDrawable;

    float-to-int v2, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/drawable/CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;IIFIFI)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    iget v2, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mScale:F

    iget v3, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v3, v3

    mul-float v0, v2, v3

    iget v2, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    div-float v1, v2, v6

    iget-object v2, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget v4, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v2, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mStrokeWidth:F

    div-float/2addr v3, v6

    iget v4, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mStrokeWidth:F

    div-float/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v2, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mShadowRadius:F

    iget v4, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mShadowRadius:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v2, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    const/high16 v4, 0x43b40000    # 360.0f

    invoke-virtual {v2, v3, v7, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-boolean v2, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mPressed:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0x54

    iget v4, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mHighlightColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget v5, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mHighlightColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mHighlightColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mStrokeWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mPressed:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mHighlightColor:I

    :goto_0
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mShadowRadius:F

    iget v4, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mFrameShadowColor:I

    invoke-virtual {v2, v3, v7, v7, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v2, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    iget v2, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mFrameColor:I

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/android/settings/drawable/CircleFramedDrawable;->mSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
