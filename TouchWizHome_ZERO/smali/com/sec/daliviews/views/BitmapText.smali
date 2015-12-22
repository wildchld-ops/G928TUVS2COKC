.class public Lcom/sec/daliviews/views/BitmapText;
.super Ljava/lang/Object;
.source "BitmapText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/views/BitmapText$TextBitmapCache;,
        Lcom/sec/daliviews/views/BitmapText$TextCache;
    }
.end annotation


# instance fields
.field mHeight:I

.field mTextBitmapCache:Lcom/sec/daliviews/views/BitmapText$TextBitmapCache;

.field public mTextCache:Lcom/sec/daliviews/views/BitmapText$TextCache;

.field mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/daliviews/views/BitmapText$TextCache;

    invoke-direct {v0, p0}, Lcom/sec/daliviews/views/BitmapText$TextCache;-><init>(Lcom/sec/daliviews/views/BitmapText;)V

    iput-object v0, p0, Lcom/sec/daliviews/views/BitmapText;->mTextCache:Lcom/sec/daliviews/views/BitmapText$TextCache;

    iput v1, p0, Lcom/sec/daliviews/views/BitmapText;->mWidth:I

    iput v1, p0, Lcom/sec/daliviews/views/BitmapText;->mHeight:I

    new-instance v0, Lcom/sec/daliviews/views/BitmapText$TextBitmapCache;

    invoke-direct {v0, p0}, Lcom/sec/daliviews/views/BitmapText$TextBitmapCache;-><init>(Lcom/sec/daliviews/views/BitmapText;)V

    iput-object v0, p0, Lcom/sec/daliviews/views/BitmapText;->mTextBitmapCache:Lcom/sec/daliviews/views/BitmapText$TextBitmapCache;

    return-void
.end method

.method private drawTextToBitmap(Landroid/graphics/Canvas;Ljava/lang/String;FFILandroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 12

    new-instance v3, Landroid/text/TextPaint;

    move-object/from16 v0, p7

    invoke-direct {v3, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    new-instance v1, Landroid/text/StaticLayout;

    mul-int/lit8 v4, p5, 0x2

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p2

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v11

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v11, :cond_0

    invoke-virtual {v1, v9}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v2

    invoke-virtual {v1, v9}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v4

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p6

    iget v2, v0, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    add-float/2addr v2, p3

    move/from16 v0, p4

    float-to-int v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p7

    invoke-virtual {p1, v10, v2, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method GetTextAndPaintHash(Ljava/lang/String;Landroid/graphics/Paint;)J
    .locals 10

    const-wide/16 v2, 0x1505

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    aget-byte v0, v4, v1

    const/4 v5, 0x5

    shl-long v6, v2, v5

    add-long/2addr v6, v2

    int-to-long v8, v0

    add-long v2, v6, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public createBitmapFromText(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/RectF;FFI)V
    .locals 9

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, p1, v0, v2, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/high16 v0, 0x44870000    # 1080.0f

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    const/4 p4, 0x0

    :cond_0
    iget v0, v6, Landroid/graphics/Rect;->right:I

    iget v2, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v2, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/daliviews/views/BitmapText;->mWidth:I

    iget v0, p0, Lcom/sec/daliviews/views/BitmapText;->mWidth:I

    if-nez v0, :cond_1

    if-ge v8, p6, :cond_2

    :goto_0
    iput v8, p0, Lcom/sec/daliviews/views/BitmapText;->mWidth:I

    :cond_1
    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v0, p5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/daliviews/views/BitmapText;->mHeight:I

    iget-object v0, p0, Lcom/sec/daliviews/views/BitmapText;->mTextBitmapCache:Lcom/sec/daliviews/views/BitmapText$TextBitmapCache;

    iget v2, p0, Lcom/sec/daliviews/views/BitmapText;->mWidth:I

    iget v3, v6, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, p5, v3

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/daliviews/views/BitmapText$TextBitmapCache;->getResizedCanvas(IIZ)Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {v7, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget v5, p0, Lcom/sec/daliviews/views/BitmapText;->mWidth:I

    move-object v0, p0

    move-object v2, p1

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/daliviews/views/BitmapText;->drawTextToBitmap(Landroid/graphics/Canvas;Ljava/lang/String;FFILandroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    :cond_2
    move v8, p6

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/BitmapText;->mTextBitmapCache:Lcom/sec/daliviews/views/BitmapText$TextBitmapCache;

    iget-object v0, v0, Lcom/sec/daliviews/views/BitmapText$TextBitmapCache;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapNativeHandle(Ljava/lang/String;Landroid/graphics/Paint;)J
    .locals 2

    iget-object v0, p0, Lcom/sec/daliviews/views/BitmapText;->mTextCache:Lcom/sec/daliviews/views/BitmapText$TextCache;

    invoke-virtual {v0, p1, p2}, Lcom/sec/daliviews/views/BitmapText$TextCache;->getBitmapNativeHandle(Ljava/lang/String;Landroid/graphics/Paint;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/BitmapText;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/BitmapText;->mWidth:I

    return v0
.end method
