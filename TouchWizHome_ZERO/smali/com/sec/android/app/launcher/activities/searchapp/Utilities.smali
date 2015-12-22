.class final Lcom/sec/android/app/launcher/activities/searchapp/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field public static final DEBUG_VIEWS_AND_SIZES:Z

.field private static mBgPaint:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private static sBlackPaint:Landroid/graphics/Paint;

.field private static final sBlurPaint:Landroid/graphics/Paint;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field static sColorIndex:I

.field static sColors:[I

.field private static final sDisabledPaint:Landroid/graphics/Paint;

.field private static final sGlowColorFocusedPaint:Landroid/graphics/Paint;

.field private static final sGlowColorPressedPaint:Landroid/graphics/Paint;

.field private static sIconHeight:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sIconWidth:I

    sput v0, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sIconHeight:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sOldBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->mBgPaint:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sColors:[I

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sColorIndex:I

    return-void

    :array_0
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14

    const/4 v13, 0x0

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v11, 0x0

    sget-object v9, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v9

    :try_start_0
    sget v8, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sIconWidth:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->initStatics(Landroid/content/Context;)V

    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v8, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v8, :cond_4

    move-object v4, p0

    check-cast v4, Landroid/graphics/drawable/PaintDrawable;

    sget v8, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sIconWidth:I

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    sget v8, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sIconHeight:I

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    :cond_1
    :goto_0
    sget-object v8, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v8}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    if-lez v7, :cond_2

    if-gtz v6, :cond_5

    :cond_2
    sget v7, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sIconWidth:I

    sget v6, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sIconHeight:I

    sget v8, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sIconWidth:I

    sget v9, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sIconHeight:I

    invoke-virtual {p0, v11, v11, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    :goto_1
    sget v8, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sIconWidth:I

    sub-int v2, v8, v7

    sget v8, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sIconHeight:I

    sub-int v3, v8, v6

    sget v8, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sIconWidth:I

    sget v9, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sIconHeight:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v8, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v13}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    sget-object v8, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v8, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sCanvas:Landroid/graphics/Canvas;

    int-to-float v9, v2

    mul-float/2addr v9, v12

    int-to-float v10, v3

    mul-float/2addr v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v8, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    sget-object v8, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v8, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    sget-object v8, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0

    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    :cond_4
    instance-of v8, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v11, v11, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget v8, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sIconWidth:I

    if-gt v7, v8, :cond_6

    sget v8, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sIconHeight:I

    if-le v6, v8, :cond_3

    :cond_6
    sget v8, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sIconWidth:I

    int-to-float v8, v8

    int-to-float v9, v7

    div-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sIconHeight:I

    int-to-float v9, v9

    int-to-float v10, v6

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    int-to-float v8, v7

    mul-float/2addr v8, v5

    float-to-int v7, v8

    int-to-float v8, v6

    mul-float/2addr v8, v5

    float-to-int v6, v8

    goto :goto_1
.end method

.method static drawSelectedAllAppsBitmap(Landroid/graphics/Canvas;IIZLandroid/graphics/Bitmap;)V
    .locals 8

    sget-object v5, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v5

    :try_start_0
    sget v4, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sIconWidth:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Assertion failed: Utilities not initialized"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    const/4 v4, 0x0

    :try_start_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v4, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v4, 0x2

    new-array v3, v4, [I

    sget-object v4, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, v4, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, p1, v4

    div-int/lit8 v1, v4, 0x2

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, p2, v4

    div-int/lit8 v2, v4, 0x2

    const/4 v4, 0x0

    aget v4, v3, v4

    add-int/2addr v4, v1

    int-to-float v6, v4

    const/4 v4, 0x1

    aget v4, v3, v4

    add-int/2addr v4, v2

    int-to-float v7, v4

    if-eqz p3, :cond_1

    sget-object v4, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p0, v0, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    monitor-exit v5

    return-void

    :cond_1
    sget-object v4, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static drawVerticalLine(Landroid/view/View;Landroid/graphics/Canvas;I)V
    .locals 8

    invoke-static {}, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->ensureBlackPaint()V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v7

    add-int v0, v6, p2

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    int-to-float v2, v7

    add-int v0, v6, p2

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v4, v0

    sget-object v5, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static ensureBlackPaint()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method private static ensureViewBgPaint(Landroid/view/View;)Landroid/graphics/Paint;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->mBgPaint:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/16 v2, 0x7f

    const/16 v3, 0x9b

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->getRandomColor(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->mBgPaint:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method static generateRandomId()I
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method static getIconHeight()I
    .locals 1

    sget v0, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sIconHeight:I

    return v0
.end method

.method public static getLocationWithRespectTo([ILandroid/view/ViewParent;Landroid/view/View;)V
    .locals 9

    const/4 v5, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    array-length v4, p0

    if-ge v4, v5, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "location must be an array of two integers"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-array v1, v5, [F

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    aput v4, v1, v6

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    aput v4, v1, v7

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    :goto_0
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_3

    if-eq v3, p1, :cond_3

    move-object v2, v3

    check-cast v2, Landroid/view/View;

    aget v4, v1, v6

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v1, v6

    aget v4, v1, v7

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v1, v7

    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_2
    aget v4, v1, v6

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v1, v6

    aget v4, v1, v7

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v1, v7

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    :cond_3
    aget v4, v1, v6

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p0, v6

    aget v4, v1, v7

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p0, v7

    return-void
.end method

.method public static getRandomColor(III)I
    .locals 4

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v2, v3, p1

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v1, v3, p1

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v0, v3, p1

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method

.method public static getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v3, p1, Landroid/graphics/Point;->y:I

    const/high16 v4, 0x42400000    # 48.0f

    mul-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :pswitch_1
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x42280000    # 42.0f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->x:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 10

    const/16 v9, 0x1e

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    const v4, 0x7f0a0127

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sIconHeight:I

    sput v4, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sIconWidth:I

    sget-object v4, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v1

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    sget-object v4, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x3d00

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    sget-object v4, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x7200

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    sget-object v4, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    sget-object v4, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public static onDestroy()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->mBgPaint:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public static onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;Z)V
    .locals 13

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v11

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v12

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {p0}, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->ensureViewBgPaint(Landroid/view/View;)Landroid/graphics/Paint;

    move-result-object v5

    int-to-float v1, v11

    int-to-float v2, v12

    add-int v0, v11, v10

    int-to-float v3, v0

    add-int v0, v12, v7

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->ensureBlackPaint()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    sget-object v1, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    add-float v8, v0, v1

    sget-object v0, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    int-to-float v0, v11

    int-to-float v1, v10

    sub-float/2addr v1, v9

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    add-int v1, v12, v7

    int-to-float v1, v1

    sub-float/2addr v1, v8

    sget-object v2, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .locals 8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V

    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V
    .locals 8

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/launcher/activities/searchapp/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V

    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V
    .locals 4

    if-eqz p1, :cond_1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p6, p6}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    add-int v2, p2, p4

    add-int v3, p3, p5

    invoke-virtual {p0, p2, p3, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v2, -0x1

    if-eq p7, v2, :cond_0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p7, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method static roundToPow2(I)I
    .locals 3

    move v1, p0

    shr-int/lit8 p0, p0, 0x1

    const/high16 v0, 0x8000000

    :goto_0
    if-eqz v0, :cond_0

    and-int v2, p0, v0

    if-nez v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    or-int/2addr p0, v0

    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    if-eq p0, v1, :cond_2

    shl-int/lit8 p0, p0, 0x1

    :cond_2
    return p0
.end method
