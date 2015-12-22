.class public Lcom/android/incallui/SecEasyVideoToggleButton;
.super Landroid/widget/ToggleButton;
.source "SecEasyVideoToggleButton.java"


# instance fields
.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mRippleEffectHeight:I

.field private mRippleEffectWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecEasyVideoToggleButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecEasyVideoToggleButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecEasyVideoToggleButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecEasyVideoToggleButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecEasyVideoToggleButton;->mRippleEffectHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/SecEasyVideoToggleButton;->mMeasuredWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a021f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecEasyVideoToggleButton;->mMeasuredHeight:I

    const-string v0, "VGA"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0220

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecEasyVideoToggleButton;->mMeasuredHeight:I

    :cond_0
    iget v0, p0, Lcom/android/incallui/SecEasyVideoToggleButton;->mMeasuredHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0221

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/SecEasyVideoToggleButton;->mMeasuredHeight:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/android/incallui/SecEasyVideoToggleButton;->mMeasuredWidth:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyVideoToggleButton;->getMeasuredWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/incallui/SecEasyVideoToggleButton;->mMeasuredWidth:I

    iget v0, p0, Lcom/android/incallui/SecEasyVideoToggleButton;->mMeasuredHeight:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecEasyVideoToggleButton;->getMeasuredHeight()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/incallui/SecEasyVideoToggleButton;->mMeasuredHeight:I

    iget v0, p0, Lcom/android/incallui/SecEasyVideoToggleButton;->mMeasuredWidth:I

    iget v1, p0, Lcom/android/incallui/SecEasyVideoToggleButton;->mMeasuredHeight:I

    iget v2, p0, Lcom/android/incallui/SecEasyVideoToggleButton;->mRippleEffectWidth:I

    iget v3, p0, Lcom/android/incallui/SecEasyVideoToggleButton;->mRippleEffectHeight:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/incallui/InCallUtils;->setRippleSize(Landroid/view/View;IIII)V

    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/incallui/SecEasyVideoToggleButton;->mMeasuredWidth:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/incallui/SecEasyVideoToggleButton;->mMeasuredHeight:I

    goto :goto_1
.end method
