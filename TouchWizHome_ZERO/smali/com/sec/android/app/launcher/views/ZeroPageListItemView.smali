.class public Lcom/sec/android/app/launcher/views/ZeroPageListItemView;
.super Lcom/sec/daliviews/views/IconView;
.source "ZeroPageListItemView.java"


# instance fields
.field private mImageView:Lcom/sec/daliviews/views/ImageView;

.field private mTitleView:Lcom/sec/daliviews/views/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/IconView;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    return-void
.end method


# virtual methods
.method public getImageView()Lcom/sec/daliviews/views/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    if-nez v0, :cond_0

    const v0, 0x7f0b013c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setPremultiplied(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    return-object v0
.end method

.method public getModedViewType()I
    .locals 1

    const v0, 0x7f0b0009

    return v0
.end method

.method public getTitleView()Lcom/sec/daliviews/views/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    return-object v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public resizeBitmapImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    move v3, v1

    move v2, v0

    const/4 v4, 0x0

    div-int v5, v1, v0

    div-int v6, p2, p3

    if-le v5, v6, :cond_1

    if-ge p2, v1, :cond_0

    int-to-float v5, p2

    int-to-float v6, v1

    div-float v4, v5, v6

    int-to-float v5, v0

    mul-float/2addr v5, v4

    float-to-int v2, v5

    move v3, p2

    :cond_0
    :goto_0
    const/4 v5, 0x1

    invoke-static {p1, v3, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5

    :cond_1
    if-ge p3, v0, :cond_0

    int-to-float v5, p3

    int-to-float v6, v0

    div-float v4, v5, v6

    int-to-float v5, v1

    mul-float/2addr v5, v4

    float-to-int v3, v5

    move v2, p3

    goto :goto_0
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    if-nez v1, :cond_0

    const v1, 0x7f0b013c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ImageView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->resizeBitmapImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/daliviews/views/ImageView;->setSize(II)V

    :cond_1
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    if-nez v0, :cond_0

    const v0, 0x7f0b013c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setPremultiplied(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ImageView;->setImagePath(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->setTitle(Ljava/lang/String;Lcom/sec/daliviews/views/TextView$ColourMap;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;Lcom/sec/daliviews/views/TextView$ColourMap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0b013d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, p2}, Lcom/sec/daliviews/views/TextView;->addTitleColourMap(Lcom/sec/daliviews/views/TextView$ColourMap;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/ZeroPageListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    return-void
.end method
