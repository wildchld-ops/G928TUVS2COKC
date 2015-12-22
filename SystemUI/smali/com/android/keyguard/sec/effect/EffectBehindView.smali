.class public Lcom/android/keyguard/sec/effect/EffectBehindView;
.super Landroid/widget/FrameLayout;
.source "EffectBehindView.java"


# instance fields
.field private mBgImageView:Landroid/widget/ImageView;

.field private mCustomBackground:Landroid/graphics/Bitmap;

.field private mOnVisibilityChangedRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private setLiveWallpaperBg()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/EffectBehindView;->mBgImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/EffectBehindView;->mCustomBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/EffectBehindView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/EffectBehindView;->mBgImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/EffectBehindView;->mBgImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/EffectBehindView;->mBgImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/EffectBehindView;->mCustomBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/EffectBehindView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/keyguard/sec/effect/EffectBehindView;->addView(Landroid/view/View;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/EffectBehindView;->mCustomBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/EffectBehindView;->mBgImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/EffectBehindView;->mCustomBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/EffectBehindView;->mBgImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/EffectBehindView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/EffectBehindView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/EffectBehindView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/EffectBehindView;->removeView(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/EffectBehindView;->mBgImageView:Landroid/widget/ImageView;

    goto :goto_0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/EffectBehindView;->mOnVisibilityChangedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/EffectBehindView;->mOnVisibilityChangedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setLiveWallpaperBg(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/EffectBehindView;->mCustomBackground:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/EffectBehindView;->mCustomBackground:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/EffectBehindView;->setLiveWallpaperBg()V

    :cond_0
    return-void
.end method

.method public setOnVisibilityChangedRunnable(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/EffectBehindView;->mOnVisibilityChangedRunnable:Ljava/lang/Runnable;

    return-void
.end method
