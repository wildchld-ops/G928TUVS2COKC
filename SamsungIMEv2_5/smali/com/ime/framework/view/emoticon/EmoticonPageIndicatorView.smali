.class public Lcom/ime/framework/view/emoticon/EmoticonPageIndicatorView;
.super Landroid/view/View;
.source "EmoticonPageIndicatorView.java"


# instance fields
.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageIndicatorView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Lcom/ime/framework/view/emoticon/EmoticonPageIndicatorView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    const/4 v7, 0x0

    move v4, v6

    iget v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageIndicatorView;->mIndicatorLeft:I

    int-to-float v1, v0

    const/4 v2, 0x0

    iget v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageIndicatorView;->mIndicatorRight:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/ime/framework/view/emoticon/EmoticonPageIndicatorView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setCategoryPageId(II)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/emoticon/EmoticonPageIndicatorView;->mIndicatorLeft:I

    iput p2, p0, Lcom/ime/framework/view/emoticon/EmoticonPageIndicatorView;->mIndicatorRight:I

    invoke-virtual {p0}, Lcom/ime/framework/view/emoticon/EmoticonPageIndicatorView;->invalidate()V

    return-void
.end method

.method public setColors(I)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonPageIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
