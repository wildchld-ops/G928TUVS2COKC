.class public Lcom/sec/daliviews/views/ImageView;
.super Lcom/sec/daliviews/views/ItemView;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/views/ImageView$TransitionEffectType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/views/ItemView;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v2, Lcom/sec/daliviews/R$styleable;->ImageView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/sec/daliviews/R$styleable;->ImageView_android_src:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/sec/daliviews/views/ImageView;->setDrawable(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    sget v2, Lcom/sec/daliviews/R$styleable;->ImageView_scaleType:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/daliviews/views/ImageView;->setScaleType(I)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private native addResizeAnimPixelArea(JJFFFFFFFFI)V
.end method

.method private native contractAnimation(J)V
.end method

.method private native expandAnimation(J)V
.end method

.method private native initParams(JLjava/lang/String;I)V
.end method

.method private native setBitmap(JLandroid/graphics/Bitmap;Z)V
.end method

.method private native setImagePath(JLjava/lang/String;IF)V
.end method

.method private native setNinePatchImage(JLandroid/graphics/Bitmap;IIII)V
.end method

.method private native setPixelArea(JIIII)V
.end method

.method private native setPremultiplied(JZ)V
.end method

.method private native setScaleType(JI)V
.end method

.method private native setTransition(JIF)V
.end method


# virtual methods
.method public addResizeAnimPixelArea(Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;FFFFFFFFI)V
    .locals 15

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ImageView;->getPeer()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->getPeer()J

    move-result-wide v4

    move-object v1, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-direct/range {v1 .. v14}, Lcom/sec/daliviews/views/ImageView;->addResizeAnimPixelArea(JJFFFFFFFFI)V

    return-void
.end method

.method public clone()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sec/daliviews/views/ItemView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ImageView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method public contractAnimation()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ImageView;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/ImageView;->contractAnimation(J)V

    return-void
.end method

.method protected native create()J
.end method

.method public expandAnimation()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ImageView;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/ImageView;->expandAnimation(J)V

    return-void
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/daliviews/views/ItemView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public recycleBitmap()V
    .locals 0

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    sget-object v0, Lcom/sec/daliviews/views/ImageView$TransitionEffectType;->TRANSITIONEFFECT_NONE:Lcom/sec/daliviews/views/ImageView$TransitionEffectType;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ImageView$TransitionEffectType;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;IF)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;IF)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;ZIF)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Lcom/sec/daliviews/views/ImageView$TransitionEffectType;F)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/sec/daliviews/views/ImageView$TransitionEffectType;->ordinal()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;ZIF)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ImageView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ImageView;->getPeer()J

    move-result-wide v0

    sget-object v2, Lcom/sec/daliviews/views/ImageView$TransitionEffectType;->TRANSITIONEFFECT_NONE:Lcom/sec/daliviews/views/ImageView$TransitionEffectType;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ImageView$TransitionEffectType;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/ImageView;->setTransition(JIF)V

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ImageView;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/ImageView;->setBitmap(JLandroid/graphics/Bitmap;Z)V

    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;ZIF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ImageView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ImageView;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/sec/daliviews/views/ImageView;->setTransition(JIF)V

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ImageView;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/ImageView;->setBitmap(JLandroid/graphics/Bitmap;Z)V

    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/daliviews/views/ImageView;->setDrawable(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 7

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_1

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-static {p1, v6}, Lcom/sec/daliviews/utils/BitmapUtils;->decodeNinePatch(Landroid/graphics/drawable/NinePatchDrawable;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, v6, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->right:I

    iget v4, v6, Landroid/graphics/Rect;->top:I

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/daliviews/views/ImageView;->setNinePatchImage(Landroid/graphics/Bitmap;IIII)V

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/ImageView;->setPremultiplied(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/daliviews/utils/BitmapUtils;->convertToBitmap(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sec/daliviews/views/ImageView$TransitionEffectType;->TRANSITIONEFFECT_NONE:Lcom/sec/daliviews/views/ImageView$TransitionEffectType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/daliviews/views/ImageView;->setImagePath(Ljava/lang/String;Lcom/sec/daliviews/views/ImageView$TransitionEffectType;F)V

    return-void
.end method

.method public setImagePath(Ljava/lang/String;Lcom/sec/daliviews/views/ImageView$TransitionEffectType;F)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ImageView;->getPeer()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/sec/daliviews/views/ImageView$TransitionEffectType;->ordinal()I

    move-result v5

    move-object v1, p0

    move-object v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/ImageView;->setImagePath(JLjava/lang/String;IF)V

    return-void
.end method

.method public setNinePatchImage(Landroid/graphics/Bitmap;IIII)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ImageView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ImageView;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/views/ImageView;->setNinePatchImage(JLandroid/graphics/Bitmap;IIII)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Dali_ImageView"

    const-string v1, "ImageView::setNinePatchImage() isValidPeer() is false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPixelArea(IIII)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ImageView;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/views/ImageView;->setPixelArea(JIIII)V

    return-void
.end method

.method public setPremultiplied(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ImageView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ImageView;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/ImageView;->setPremultiplied(JZ)V

    :cond_0
    return-void
.end method

.method public setScaleType(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ImageView;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/ImageView;->setScaleType(JI)V

    :cond_0
    return-void
.end method
