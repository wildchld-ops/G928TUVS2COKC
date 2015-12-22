.class Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;
.super Landroid/widget/ImageView;
.source "KeyguardShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortcutImageView"
.end annotation


# instance fields
.field private mBadgeCount:I

.field private mBoundsRect:Landroid/graphics/Rect;

.field private mDistanceRatio:D

.field private mIsPressed:Z

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mIsPressed:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBadgeCount:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mIsPressed:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBadgeCount:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sFontSizeDefault:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2600()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mBadgeCountColor:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2700()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method public createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 21

    if-nez p1, :cond_0

    const/16 v18, 0x0

    :goto_0
    return-object v18

    :cond_0
    const/16 v18, 0x64

    move/from16 v0, p1

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sFontSizeSmall:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3800()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_1
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3900()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v14, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v15, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v16, v14, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v13, v15, v18

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3900()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    sub-int v11, v18, v16

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3900()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    sub-int v10, v18, v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v5, v1, v2, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/16 v18, 0x64

    move/from16 v0, p1

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/android/keyguard/R$integer;->badge_paddingX_small:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    add-int v9, v18, v19

    :goto_2
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ge v9, v11, :cond_1

    move v9, v11

    :cond_1
    if-ge v8, v10, :cond_2

    sub-int v18, v10, v8

    div-int/lit8 v18, v18, 0x2

    add-int v15, v15, v18

    move v8, v10

    :cond_2
    add-int v17, v9, v16

    add-int v12, v8, v13

    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3900()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3900()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    div-int/lit8 v18, v9, 0x2

    add-int v18, v18, v14

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v19, v15, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v7, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v18, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sFontSizeDefault:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2600()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v18

    add-int/lit8 v9, v18, 0xa

    goto/16 :goto_2
.end method

.method public getBadgeCount()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBadgeCount:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBadgeCount:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getPaddingTop()I

    move-result v12

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sIconTopToTopOffset:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2800()I

    move-result v13

    add-int v10, v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getWidth()I

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v12, v11, 0x2

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sIconCenterXOffset:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2900()I

    move-result v13

    add-int v5, v12, v13

    add-int v12, v5, v8

    if-le v12, v11, :cond_0

    add-int v12, v5, v8

    sub-int/2addr v12, v11

    sub-int/2addr v5, v12

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getScrollX()I

    move-result v12

    add-int/2addr v5, v12

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    add-int/2addr v12, v5

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    add-int/2addr v13, v10

    invoke-virtual {v7, v5, v10, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mIsPressed:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v12

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sCoarseClipTable:Landroid/graphics/MaskFilter;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3000()Landroid/graphics/MaskFilter;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v12

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mOuterGlowColor:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3200()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_3

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v12

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v12

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    const/4 v12, 0x0

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v12, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v13, 0x4

    const/4 v14, 0x2

    invoke-direct {v12, v13, v14}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v9, 0x2

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewWidth:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3400()I

    move-result v12

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewHeight:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3500()I

    move-result v13

    sub-int/2addr v12, v13

    div-int/lit8 v6, v12, 0x2

    const/4 v12, 0x0

    new-instance v13, Landroid/graphics/Rect;

    add-int v14, v9, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getWidth()I

    move-result v15

    sub-int/2addr v15, v9

    sub-int/2addr v15, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getHeight()I

    move-result v16

    sub-int v16, v16, v9

    move/from16 v0, v16

    invoke-direct {v13, v14, v9, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3600()Landroid/graphics/Paint;

    move-result-object v12

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mTempOffset:[I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3700()[I

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v12, 0x0

    new-instance v13, Landroid/graphics/Rect;

    neg-int v14, v9

    add-int/2addr v14, v6

    neg-int v15, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getWidth()I

    move-result v16

    add-int v16, v16, v9

    sub-int v16, v16, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getHeight()I

    move-result v17

    add-int v17, v17, v9

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_4

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    const-wide v14, 0x3fe999999999999aL    # 0.8

    cmpg-double v12, v12, v14

    if-gez v12, :cond_4

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v12

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v12

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_5

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v12

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    const-wide v14, 0x3ff4cccccccccccdL    # 1.3

    cmpg-double v12, v12, v14

    if-gez v12, :cond_6

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v12

    const-wide v14, 0x4055400000000000L    # 85.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    const-wide v16, 0x3fb999999999999aL    # 0.1

    div-double v14, v14, v16

    double-to-int v13, v14

    rsub-int v13, v13, 0xff

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    :cond_6
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0
.end method

.method public onPressed(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mIsPressed:Z

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->postInvalidate()V

    return-void
.end method

.method public setBadgeCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBadgeCount:I

    return-void
.end method

.method public setDistanceRatio(D)V
    .locals 1

    iput-wide p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->postInvalidate()V

    return-void
.end method
