.class public Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "CandidateExpandSpellScrollView.java"


# instance fields
.field protected mFontManager:Lcom/ime/framework/common/FontManager;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field mPhoneticSpellLayout:Landroid/widget/LinearLayout;

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

.field private mPhoneticSpellScrollViewBtnGap:I

.field private mPhoneticSpellScrollViewBtnHeight:I

.field private mPhoneticSpellScrollViewBtnTextSize:F

.field private mPhoneticSpellScrollViewBtnWidth:I

.field private mPhoneticSpellScrollViewHeight:I

.field private mPhoneticSpellScrollViewWidth:I

.field private mPhoneticSpellViewSelectedColor:I

.field protected mRepository:Lcom/ime/framework/repository/Repository;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mRepository:Lcom/ime/framework/repository/Repository;

    iput-object v2, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iput-object v2, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mFontManager:Lcom/ime/framework/common/FontManager;

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewHeight:I

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewWidth:I

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewBtnWidth:I

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewBtnHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewBtnTextSize:F

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewBtnGap:I

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellViewSelectedColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mRepository:Lcom/ime/framework/repository/Repository;

    iput-object v2, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iput-object v2, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mFontManager:Lcom/ime/framework/common/FontManager;

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewHeight:I

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewWidth:I

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewBtnWidth:I

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewBtnHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewBtnTextSize:F

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewBtnGap:I

    iput v1, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellViewSelectedColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method


# virtual methods
.method public initView()V
    .locals 4

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-static {}, Lcom/ime/framework/common/FontManagerImpl;->getInstance()Lcom/ime/framework/common/FontManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mFontManager:Lcom/ime/framework/common/FontManager;

    iget-object v0, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mRepository:Lcom/ime/framework/repository/Repository;

    const v0, 0x7f100064

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellViewSelectedColor:I

    iget-object v0, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getCandidateViewHeight()I

    move-result v0

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewHeight:I

    iget-object v0, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v0

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewWidth:I

    :goto_0
    iget-object v0, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getCandidateViewHeight()I

    move-result v0

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewBtnHeight:I

    const-string v0, "candidate_view_height"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewBtnWidth:I

    sget-boolean v0, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME_UnifiedIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpandCandidateSpell: initView mPhoneticSpellLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPhoneticSpellScrollViewWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPhoneticSpellScrollViewHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewWidth:I

    iget v3, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090efb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewBtnGap:I

    return-void

    :cond_1
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v0

    iput v0, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewWidth:I

    goto :goto_0
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

    iput-object p1, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellList:Ljava/util/ArrayList;

    return-void
.end method

.method public setSpellToSpellLayout(Z)V
    .locals 14

    iget-object v10, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v12, -0x1

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    iget-object v10, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellList:Ljava/util/ArrayList;

    if-nez v10, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v10, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v10, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v2, v4, :cond_6

    move v3, v2

    new-instance v0, Landroid/widget/Button;

    iget-object v10, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object v10, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_2

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090a34

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v0, v10, v11}, Landroid/widget/Button;->setTextSize(IF)V

    :goto_2
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0021

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setTextColor(I)V

    const v10, 0x7f0202ad

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    if-nez p1, :cond_1

    iget-object v10, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    :cond_1
    if-ne v5, v2, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0024

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setTextColor(I)V

    new-instance v1, Landroid/text/SpannableString;

    iget-object v10, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-direct {v1, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v10, Landroid/text/style/UnderlineSpan;

    invoke-direct {v10}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v10, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    invoke-virtual {v0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v8, v10

    iget v10, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewBtnGap:I

    const/4 v11, 0x0

    iget v12, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewBtnGap:I

    const/4 v13, 0x0

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    iget v11, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewBtnGap:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v8

    iget v12, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellScrollViewBtnHeight:I

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView$1;

    invoke-direct {v10, p0, v3}, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView$1;-><init>(Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;I)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/view/View;

    iget-object v10, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    iget-object v10, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v10

    const/4 v11, 0x3

    if-lt v10, v11, :cond_5

    iget-object v10, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, 0x1

    const/4 v11, -0x1

    invoke-direct {v6, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_4
    invoke-virtual {v9, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b003d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v10, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_2
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090eda

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v0, v10, v11}, Landroid/widget/Button;->setTextSize(IF)V

    goto/16 :goto_2

    :cond_3
    iget-object v10, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_4
    iget-object v10, p0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->mPhoneticSpellList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_5
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-direct {v6, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0
.end method
