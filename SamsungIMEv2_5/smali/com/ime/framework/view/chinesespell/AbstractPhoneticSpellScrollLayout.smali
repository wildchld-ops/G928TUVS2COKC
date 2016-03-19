.class public abstract Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;
.super Landroid/widget/FrameLayout;
.source "AbstractPhoneticSpellScrollLayout.java"


# instance fields
.field private final BG_TOP_GAP:I

.field private final MAX_SCROLL_SPELL_NUMBER:I

.field private mCandidateScrollEffectImgDown:Landroid/view/View;

.field private mCandidateScrollEffectImgUp:Landroid/view/View;

.field protected mFontManager:Lcom/ime/framework/common/FontManager;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mPhoneticSpellLayout:Landroid/widget/LinearLayout;

.field mPhoneticSpellList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneticSpellScrollViewBtnHeight:I

.field private mPhoneticSpellScrollViewBtnTextSize:F

.field private mPhoneticSpellScrollViewBtnVGap:I

.field private mPhoneticSpellScrollViewBtnWidth:I

.field private mPhoneticSpellScrollViewHeight:I

.field private mPhoneticSpellScrollViewWidth:I

.field private mPhoneticSpellViewSelectedColor:I

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field private mScrollView:Landroid/widget/ScrollView;

.field private spellButtons:[Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->BG_TOP_GAP:I

    const/16 v0, 0x13

    iput v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->MAX_SCROLL_SPELL_NUMBER:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->spellButtons:[Landroid/widget/Button;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->BG_TOP_GAP:I

    const/16 v0, 0x13

    iput v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->MAX_SCROLL_SPELL_NUMBER:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->spellButtons:[Landroid/widget/Button;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method private addViewToPhoneticSpellLayout(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private computeRealScrollViewHeight()I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private setPhoneticSpellScrollViewLayout_height()V
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getBackgroundColor()I
.end method

.method protected abstract getFloatingPhoneticSpellScrollViewBtnHeight()I
.end method

.method protected abstract getFloatingPhoneticSpellScrollViewBtnLabelSize()I
.end method

.method protected abstract getFloatingPhoneticSpellScrollViewBtnWidth()I
.end method

.method protected abstract getFloatingPhoneticSpellScrollViewHeight()I
.end method

.method public getFloatingPhoneticSpellScrollViewWidth()I
    .locals 3

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ad6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ad7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090acf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method protected getFont(I)Landroid/graphics/Typeface;
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mFontManager:Lcom/ime/framework/common/FontManager;

    const-string v1, "SAMSUNGSANS_KEYPAD"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getOnehandPhoneticSpellScrollViewHeight()I
.end method

.method public getPhoeticSpellScrollViewList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected abstract getPhoneticSpellScrollEffectImgDownRscId()I
.end method

.method protected abstract getPhoneticSpellScrollEffectImgUpRscId()I
.end method

.method protected abstract getPhoneticSpellScrollViewBtnBgRscId()I
.end method

.method protected abstract getPhoneticSpellScrollViewBtnGap()I
.end method

.method protected abstract getPhoneticSpellScrollViewBtnHeight()I
.end method

.method protected abstract getPhoneticSpellScrollViewBtnLabelColor()I
.end method

.method protected abstract getPhoneticSpellScrollViewBtnLabelSelectedColor()I
.end method

.method protected abstract getPhoneticSpellScrollViewBtnLabelSize()I
.end method

.method protected abstract getPhoneticSpellScrollViewBtnWidth()I
.end method

.method protected abstract getPhoneticSpellScrollViewDivideImgRscId()I
.end method

.method protected abstract getPhoneticSpellScrollViewDividerColor()I
.end method

.method protected abstract getPhoneticSpellScrollViewHeight()I
.end method

.method protected abstract getPhoneticSpellScrollViewRscId()I
.end method

.method protected abstract getPhoneticSpellScrollViewSelectColor()I
.end method

.method public getPhoneticSpellScrollViewShown()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getPhoneticSpellScrollViewWidth()I
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090d0b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090d20

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ec9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ea4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ec1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public initView(Landroid/widget/LinearLayout;)V
    .locals 8

    const/16 v6, 0x13

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-static {}, Lcom/ime/framework/common/FontManagerImpl;->getInstance()Lcom/ime/framework/common/FontManager;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mFontManager:Lcom/ime/framework/common/FontManager;

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mRepository:Lcom/ime/framework/repository/Repository;

    new-array v3, v6, [Landroid/widget/Button;

    iput-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->spellButtons:[Landroid/widget/Button;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_0

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->spellButtons:[Landroid/widget/Button;

    new-instance v4, Landroid/widget/Button;

    iget-object v5, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->spellButtons:[Landroid/widget/Button;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollViewBtnBgRscId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->spellButtons:[Landroid/widget/Button;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getBackgroundColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollViewRscId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollEffectImgUpRscId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mCandidateScrollEffectImgUp:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollEffectImgDownRscId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mCandidateScrollEffectImgDown:Landroid/view/View;

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getFloatingPhoneticSpellScrollViewWidth()I

    move-result v3

    iput v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewWidth:I

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getFloatingPhoneticSpellScrollViewHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewHeight:I

    :goto_1
    iget v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewWidth:I

    iput v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnWidth:I

    iget v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewHeight:I

    int-to-double v4, v3

    const-wide v6, 0x4014cccccccccccdL    # 5.2

    div-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnHeight:I

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewWidth:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewHeight:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewHeight:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollViewBtnGap()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnVGap:I

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollViewSelectColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellViewSelectedColor:I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollViewHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getOnehandPhoneticSpellScrollViewHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_2
    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightLevel()I

    move-result v2

    if-nez v2, :cond_3

    int-to-float v3, v0

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewHeight:I

    :goto_2
    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollViewWidth()I

    move-result v3

    iput v3, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewWidth:I

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    int-to-float v3, v0

    const v4, 0x3f733333    # 0.95f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    iput v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewHeight:I

    goto :goto_2

    :cond_4
    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    int-to-float v3, v0

    const v4, 0x3f866666    # 1.05f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    iput v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewHeight:I

    goto :goto_2

    :cond_5
    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    int-to-float v3, v0

    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    iput v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewHeight:I

    goto :goto_2

    :cond_6
    iput v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewHeight:I

    goto :goto_2
.end method

.method public requestLayout()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mCandidateScrollEffectImgDown:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mCandidateScrollEffectImgUp:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->computeScroll()V

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_2
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isUsingChinesePhoneticSpellEffect()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->computeRealScrollViewHeight()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mCandidateScrollEffectImgDown:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mCandidateScrollEffectImgUp:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mCandidateScrollEffectImgDown:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mCandidateScrollEffectImgUp:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mCandidateScrollEffectImgDown:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mCandidateScrollEffectImgUp:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public setPhoeticSpellScrollViewList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    return-void
.end method

.method public setPhoneticSpellScrollViewShown(Z)V
    .locals 5

    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    invoke-interface {v1, v2, v4}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0, v3}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    invoke-interface {v1, v2, v4}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_3
    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setSpellToSpellLayout(Z)V
    .locals 13

    const/4 v12, -0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v9, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    invoke-interface {v8, v9, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    iget-object v8, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    iget-object v8, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    if-nez v8, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v2, v4, :cond_7

    const/16 v8, 0x13

    if-ge v2, v8, :cond_1

    move v3, v2

    iget-object v8, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->spellButtons:[Landroid/widget/Button;

    aget-object v0, v8, v2

    iget-object v8, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getFloatingPhoneticSpellScrollViewBtnLabelSize()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0, v11, v8}, Landroid/widget/Button;->setTextSize(IF)V

    :goto_2
    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollViewBtnLabelColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setTextColor(I)V

    if-nez p1, :cond_3

    iget-object v8, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    :cond_3
    if-ne v5, v2, :cond_5

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollViewBtnLabelSelectedColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setTextColor(I)V

    new-instance v1, Landroid/text/SpannableString;

    iget-object v8, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-direct {v1, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/text/style/UnderlineSpan;

    invoke-direct {v8}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v9

    invoke-virtual {v1, v8, v11, v9, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    iget v9, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnWidth:I

    iget v10, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnHeight:I

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;

    invoke-direct {v8, p0, v3}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;-><init>(Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;I)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->addViewToPhoneticSpellLayout(Landroid/view/View;)V

    new-instance v7, Landroid/view/View;

    iget-object v8, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, 0x2

    invoke-direct {v6, v12, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollViewDividerColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0, v7}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->addViewToPhoneticSpellLayout(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollViewBtnLabelSize()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0, v11, v8}, Landroid/widget/Button;->setTextSize(IF)V

    goto/16 :goto_2

    :cond_5
    iget-object v8, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    iget-object v8, p0, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0
.end method
