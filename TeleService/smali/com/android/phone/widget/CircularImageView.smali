.class public Lcom/android/phone/widget/CircularImageView;
.super Landroid/widget/ImageView;
.source "CircularImageView.java"


# instance fields
.field private mBorderWidth:I

.field private mCanvasSize:I

.field private mImage:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintBorder:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/widget/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const v0, 0x7f01000d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/widget/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/phone/widget/CircularImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/phone/widget/CircularImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/phone/widget/CircularImageView;->mPaintBorder:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/phone/widget/CircularImageView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Lcom/android/phone/R$styleable;->CircularImageView:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/android/phone/widget/CircularImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/phone/widget/CircularImageView;->setBorderWidth(I)V

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/phone/widget/CircularImageView;->setBorderColor(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private measureHeight(I)I
    .locals 4
    .param p1    # I

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    move v0, v2

    :goto_0
    add-int/lit8 v3, v0, 0x2

    return v3

    :cond_0
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/phone/widget/CircularImageView;->mCanvasSize:I

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 4
    .param p1    # I

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/phone/widget/CircularImageView;->mCanvasSize:I

    goto :goto_0
.end method


# virtual methods
.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1    # Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;

    const/high16 v6, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/android/phone/widget/CircularImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/widget/CircularImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/widget/CircularImageView;->mImage:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/phone/widget/CircularImageView;->mImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/phone/widget/CircularImageView;->mCanvasSize:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/phone/widget/CircularImageView;->mCanvasSize:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/phone/widget/CircularImageView;->mCanvasSize:I

    :cond_0
    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/android/phone/widget/CircularImageView;->mImage:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/phone/widget/CircularImageView;->mCanvasSize:I

    iget v4, p0, Lcom/android/phone/widget/CircularImageView;->mCanvasSize:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget-object v2, p0, Lcom/android/phone/widget/CircularImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v2, p0, Lcom/android/phone/widget/CircularImageView;->mCanvasSize:I

    iget v3, p0, Lcom/android/phone/widget/CircularImageView;->mBorderWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    iget v2, p0, Lcom/android/phone/widget/CircularImageView;->mBorderWidth:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/android/phone/widget/CircularImageView;->mBorderWidth:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/android/phone/widget/CircularImageView;->mCanvasSize:I

    iget v5, p0, Lcom/android/phone/widget/CircularImageView;->mBorderWidth:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/phone/widget/CircularImageView;->mBorderWidth:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v6

    iget-object v5, p0, Lcom/android/phone/widget/CircularImageView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/android/phone/widget/CircularImageView;->mBorderWidth:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/android/phone/widget/CircularImageView;->mBorderWidth:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/android/phone/widget/CircularImageView;->mCanvasSize:I

    iget v5, p0, Lcom/android/phone/widget/CircularImageView;->mBorderWidth:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v4, v6

    iget-object v5, p0, Lcom/android/phone/widget/CircularImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1}, Lcom/android/phone/widget/CircularImageView;->measureWidth(I)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/android/phone/widget/CircularImageView;->measureHeight(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/widget/CircularImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/widget/CircularImageView;->mPaintBorder:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/widget/CircularImageView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/widget/CircularImageView;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/phone/widget/CircularImageView;->mBorderWidth:I

    invoke-virtual {p0}, Lcom/android/phone/widget/CircularImageView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/phone/widget/CircularImageView;->invalidate()V

    return-void
.end method
