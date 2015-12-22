.class public Lcom/android/incallui/SecVoiceToggleButton;
.super Landroid/widget/ToggleButton;
.source "SecVoiceToggleButton.java"


# instance fields
.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mRippleEffectHeight:I

.field private mRippleEffectWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceToggleButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceToggleButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceToggleButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecVoiceToggleButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecVoiceToggleButton;->mRippleEffectHeight:I

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/SecVoiceToggleButton;->mMeasuredWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0177

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecVoiceToggleButton;->mMeasuredHeight:I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0308

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecVoiceToggleButton;->mMeasuredHeight:I

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0441

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecVoiceToggleButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0442

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecVoiceToggleButton;->mRippleEffectHeight:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a019b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecVoiceToggleButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a019c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecVoiceToggleButton;->mRippleEffectHeight:I

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/android/incallui/SecVoiceToggleButton;->mMeasuredWidth:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceToggleButton;->getMeasuredWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/incallui/SecVoiceToggleButton;->mMeasuredWidth:I

    iget v0, p0, Lcom/android/incallui/SecVoiceToggleButton;->mMeasuredHeight:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceToggleButton;->getMeasuredHeight()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/incallui/SecVoiceToggleButton;->mMeasuredHeight:I

    iget v0, p0, Lcom/android/incallui/SecVoiceToggleButton;->mMeasuredWidth:I

    iget v1, p0, Lcom/android/incallui/SecVoiceToggleButton;->mMeasuredHeight:I

    iget v2, p0, Lcom/android/incallui/SecVoiceToggleButton;->mRippleEffectWidth:I

    iget v3, p0, Lcom/android/incallui/SecVoiceToggleButton;->mRippleEffectHeight:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/incallui/InCallUtils;->setRippleSize(Landroid/view/View;IIII)V

    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/incallui/SecVoiceToggleButton;->mMeasuredWidth:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/incallui/SecVoiceToggleButton;->mMeasuredHeight:I

    goto :goto_1
.end method
