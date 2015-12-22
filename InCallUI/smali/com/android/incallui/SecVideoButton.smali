.class public Lcom/android/incallui/SecVideoButton;
.super Landroid/widget/Button;
.source "SecVideoButton.java"


# instance fields
.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mRippleEffectHeight:I

.field private mRippleEffectWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVideoButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVideoButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVideoButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const v2, 0x7f0a02be

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecVideoButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecVideoButton;->mRippleEffectHeight:I

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/SecVideoButton;->mMeasuredWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecVideoButton;->mMeasuredHeight:I

    const-string v0, "concept_usa_common"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "concept_canada_common"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecVideoButton;->mMeasuredHeight:I

    iget v0, p0, Lcom/android/incallui/SecVideoButton;->mMeasuredHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/SecVideoButton;->mMeasuredHeight:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a019d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecVideoButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a019e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecVideoButton;->mRippleEffectHeight:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/incallui/SecVideoButton;->mMeasuredHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/SecVideoButton;->mMeasuredHeight:I

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecVideoButton;->mMeasuredHeight:I

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/android/incallui/SecVideoButton;->mMeasuredWidth:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoButton;->getMeasuredWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/incallui/SecVideoButton;->mMeasuredWidth:I

    iget v0, p0, Lcom/android/incallui/SecVideoButton;->mMeasuredHeight:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoButton;->getMeasuredHeight()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/incallui/SecVideoButton;->mMeasuredHeight:I

    iget v0, p0, Lcom/android/incallui/SecVideoButton;->mMeasuredWidth:I

    iget v1, p0, Lcom/android/incallui/SecVideoButton;->mMeasuredHeight:I

    iget v2, p0, Lcom/android/incallui/SecVideoButton;->mRippleEffectWidth:I

    iget v3, p0, Lcom/android/incallui/SecVideoButton;->mRippleEffectHeight:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/incallui/InCallUtils;->setRippleSize(Landroid/view/View;IIII)V

    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/incallui/SecVideoButton;->mMeasuredWidth:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/incallui/SecVideoButton;->mMeasuredHeight:I

    goto :goto_1
.end method
