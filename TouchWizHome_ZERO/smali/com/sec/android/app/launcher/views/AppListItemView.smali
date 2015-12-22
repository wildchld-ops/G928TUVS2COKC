.class public Lcom/sec/android/app/launcher/views/AppListItemView;
.super Lcom/sec/daliviews/views/IconView;
.source "AppListItemView.java"


# instance fields
.field private mImageView:Lcom/sec/daliviews/views/ImageView;

.field private mTextView:Lcom/sec/daliviews/views/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/IconView;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/AppListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/AppListItemView;->mTextView:Lcom/sec/daliviews/views/TextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/AppListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/AppListItemView;->mTextView:Lcom/sec/daliviews/views/TextView;

    return-void
.end method


# virtual methods
.method public getModedViewType()I
    .locals 1

    const/high16 v0, 0x7f0b0000

    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppListItemView;->mTextView:Lcom/sec/daliviews/views/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0b0046

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/AppListItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/AppListItemView;->mTextView:Lcom/sec/daliviews/views/TextView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppListItemView;->mTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public setIconImage(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    if-nez v0, :cond_0

    const v0, 0x7f0b0045

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/AppListItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/AppListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppListItemView;->mTextView:Lcom/sec/daliviews/views/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0b0046

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/AppListItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/AppListItemView;->mTextView:Lcom/sec/daliviews/views/TextView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppListItemView;->mTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppListItemView;->mTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    return-void
.end method
