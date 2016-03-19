.class public abstract Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;
.super Landroid/widget/LinearLayout;
.source "AbstractCandidateExpandLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;,
        Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;
    }
.end annotation


# static fields
.field private static final DEFAULT_VISIBLE_EXPAND_CANDIDATE_COUNT:I = 0x28


# instance fields
.field private ItemWidthType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

.field private mCandidateSeperatorWidth:I

.field protected mCountOfRow:I

.field private mDividerWidth:I

.field private mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

.field private mExpandCandSeperatorViews:[Landroid/widget/TextView;

.field private mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

.field public mExpandGridViewHandler:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;

.field private mExplainer:Lcom/sec/android/inputmethod/databases/CandidateExplainer;

.field private mIgnorePick:Z

.field protected mInputManager:Lcom/ime/framework/common/InputManager;

.field private mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field private mIsBackupPadding:Z

.field private mIsChnMode:Z

.field private mIsSwiftKeyMode:Z

.field private mLastRowStart:I

.field private mLastRowlayout:Landroid/widget/LinearLayout;

.field private mOriginLeftPadding:I

.field private mOriginRightPadding:I

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field private mScrollView:Landroid/widget/ScrollView;

.field protected mScrollViewLayout:Landroid/widget/LinearLayout;

.field protected mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mXt9Version:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsChnMode:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mDividerWidth:I

    iput v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mXt9Version:I

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsChnMode:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mDividerWidth:I

    iput v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mXt9Version:I

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->initialize()V

    return-void
.end method

.method static synthetic access$002(Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIgnorePick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;)Lcom/ime/framework/engine/InputEngineManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;IIZ)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->setCHNCandidates(IIZ)I

    move-result v0

    return v0
.end method

.method private createCandidateCellView()Lcom/ime/framework/view/candidate/CandidateTextView;
    .locals 7

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionFontSize()F

    move-result v0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    new-instance v1, Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/ime/framework/view/candidate/CandidateTextView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Lcom/ime/framework/view/candidate/CandidateTextView;->setTextSize(IF)V

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/candidate/CandidateTextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ime/framework/view/candidate/CandidateTextView;->setHeight(I)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getTextColor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ime/framework/view/candidate/CandidateTextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getInputedTextColor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ime/framework/view/candidate/CandidateTextView;->setInputedTextColor(I)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getPressedTextColor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ime/framework/view/candidate/CandidateTextView;->setPressedTextColor(I)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getHighlightTextColor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getBackgroundResourceId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/ime/framework/view/candidate/CandidateTextView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getLeftPaddingSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getTopPaddingSize()I

    move-result v4

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getRightPaddingSize()I

    move-result v5

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getBottomPaddingSize()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/ime/framework/view/candidate/CandidateTextView;->setPadding(IIII)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Lcom/ime/framework/view/candidate/CandidateTextView;->setGravity(I)V

    return-object v1
.end method

.method private createSeparatorView()Landroid/widget/TextView;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mDividerWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    iget-boolean v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getTopPaddingSize()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getBottomPaddingSize()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getTopPaddingSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getBottomPaddingSize()I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSplitResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto :goto_0
.end method

.method private initialize()V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mRepository:Lcom/ime/framework/repository/Repository;

    iget-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    iget-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v5

    iput-boolean v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    iget-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v5

    iput-boolean v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsChnMode:Z

    iget-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v5

    iput v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mXt9Version:I

    new-instance v5, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isChineseStrokeModeOn()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v5

    const v6, 0x7a68484b

    if-eq v5, v6, :cond_4

    move v1, v3

    :goto_0
    iget-boolean v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsChnMode:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getKeyboardViewHeight()I

    move-result v5

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCandidateViewHeight()I

    move-result v6

    sub-int v0, v5, v6

    iget-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090725

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    :cond_0
    iget-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    const/high16 v5, 0x3000000

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->setScrollBarStyle(I)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getExpandScrollViewRightPadding()I

    move-result v2

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v4, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v3}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mDividerWidth:I

    iget-boolean v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsChnMode:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0, v7}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->setBackgroundColor(I)V

    new-instance v3, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;

    invoke-direct {v3, p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;)V

    iput-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandGridViewHandler:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090104

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCandidateSeperatorWidth:I

    iget-boolean v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsChnMode:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->getInstance(Landroid/content/Context;)Lcom/sec/android/inputmethod/databases/CandidateExplainer;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExplainer:Lcom/sec/android/inputmethod/databases/CandidateExplainer;

    :cond_3
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->createExpandCandidateViewsChn()V

    return-void

    :cond_4
    move v1, v4

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method

.method private isBstHandwriteMode()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isShownExpandView(II)Z
    .locals 11

    const/4 v8, 0x0

    int-to-float v9, p1

    const/high16 v10, 0x40000000    # 2.0f

    div-float v4, v9, v10

    const/4 v1, 0x0

    new-instance v7, Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/ime/framework/view/candidate/CandidateTextView;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt p2, v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    return v9

    :cond_0
    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v0, p2

    :goto_1
    if-ge v0, v3, :cond_3

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getLeftPaddingSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getRightPaddingSize()I

    move-result v6

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionFontSize()F

    move-result v10

    invoke-virtual {v7, v9, v10}, Lcom/ime/framework/view/candidate/CandidateTextView;->setTextSize(IF)V

    invoke-virtual {v7}, Lcom/ime/framework/view/candidate/CandidateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    int-to-float v10, v2

    add-float/2addr v9, v10

    int-to-float v10, v6

    add-float v8, v9, v10

    cmpl-float v9, v8, v4

    if-lez v9, :cond_1

    const/4 v1, 0x1

    :cond_3
    move v9, v1

    goto :goto_0
.end method

.method private setCHNCandidates(IIZ)I
    .locals 42

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getMaxWidth()I

    move-result v20

    move/from16 v6, p1

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v38, v0

    if-nez v38, :cond_0

    const-string v38, "SamsungIME_UnifiedIME"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "setCHNCandidates mInputModeManager: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v38

    add-int v39, v6, p2

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_2

    add-int v31, v6, p2

    :goto_0
    sub-int v9, v31, v6

    if-gtz v9, :cond_3

    const/4 v13, 0x0

    :cond_1
    :goto_1
    return v13

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v31

    goto :goto_0

    :cond_3
    const/16 v34, 0x0

    const/16 v18, 0x0

    const/16 v25, 0x0

    const/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v37, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v29, 0x0

    const/4 v7, 0x0

    const/16 v36, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v38

    if-eqz v38, :cond_11

    if-eqz v10, :cond_4

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v10, v0, :cond_f

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getMaxWidth()I

    move-result v38

    div-int/lit8 v38, v38, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCandidateSeperatorWidth:I

    move/from16 v39, v0

    sub-int v38, v38, v39

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getMaxWidth()I

    move-result v38

    div-int/lit8 v38, v38, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCandidateSeperatorWidth:I

    move/from16 v39, v0

    sub-int v38, v38, v39

    move/from16 v0, v38

    int-to-float v7, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getMaxWidth()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v36, v0

    const/16 v23, 0x6

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mLastRowlayout:Landroid/widget/LinearLayout;

    move-object/from16 v38, v0

    if-eqz v38, :cond_6

    if-eqz p3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mLastRowlayout:Landroid/widget/LinearLayout;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v38

    check-cast v38, Landroid/view/View;

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_6
    if-eqz p3, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mLastRowStart:I

    move/from16 v25, v0

    :goto_3
    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->addNewLine(Z)Landroid/widget/LinearLayout;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionHeight()I

    move-result v8

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v38, -0x2

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-direct {v5, v0, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v28, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCandidateSeperatorWidth:I

    move/from16 v38, v0

    const/16 v39, -0x1

    const/16 v40, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v13, 0x0

    :goto_4
    add-int v38, v25, v24

    move/from16 v0, v38

    move/from16 v1, v31

    if-ge v0, v1, :cond_24

    add-int v13, v25, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    if-ge v13, v0, :cond_15

    if-nez p3, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v38, v0

    add-int/lit8 v39, v6, -0x1

    sub-int v39, v13, v39

    aget-object v32, v38, v39

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/CharSequence;

    const/16 v40, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v13, v3}, Lcom/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    add-int/lit8 v38, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_16

    if-nez p3, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v38, v0

    add-int/lit8 v39, v13, 0x1

    add-int/lit8 v40, v6, -0x1

    sub-int v39, v39, v40

    aget-object v33, v38, v39

    :goto_6
    add-int/lit8 v38, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    add-int/lit8 v39, v13, 0x1

    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/CharSequence;

    add-int/lit8 v40, v13, 0x1

    const/16 v41, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, v40

    move/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v25

    move/from16 v1, v38

    if-ge v0, v1, :cond_17

    if-nez p3, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v38, v0

    add-int/lit8 v39, v6, -0x1

    sub-int v39, v25, v39

    aget-object v35, v38, v39

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/CharSequence;

    const/16 v40, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, v25

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lcom/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v38

    if-eqz v38, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lcom/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v38

    if-eqz v38, :cond_9

    invoke-virtual/range {v32 .. v32}, Lcom/ime/framework/view/candidate/CandidateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExplainer:Lcom/sec/android/inputmethod/databases/CandidateExplainer;

    move-object/from16 v38, v0

    if-eqz v38, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExplainer:Lcom/sec/android/inputmethod/databases/CandidateExplainer;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->isAvailable()Z

    move-result v38

    if-eqz v38, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExplainer:Lcom/sec/android/inputmethod/databases/CandidateExplainer;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->getDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    :cond_8
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandSeperatorViews:[Landroid/widget/TextView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    if-ge v13, v0, :cond_18

    if-nez p3, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandSeperatorViews:[Landroid/widget/TextView;

    move-object/from16 v38, v0

    add-int/lit8 v39, v6, -0x1

    sub-int v39, v13, v39

    aget-object v27, v38, v39

    :goto_8
    invoke-virtual/range {v32 .. v32}, Lcom/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v11

    invoke-virtual/range {v33 .. v33}, Lcom/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v12

    invoke-virtual/range {v35 .. v35}, Lcom/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v15

    if-eqz v34, :cond_a

    invoke-virtual/range {v34 .. v34}, Lcom/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v14

    :cond_a
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    cmpg-float v38, v11, v29

    if-gez v38, :cond_19

    move/from16 v16, v29

    sget-object v38, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;->singleCellType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->ItemWidthType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    add-int/lit8 v23, v23, -0x1

    :goto_9
    const/16 v38, 0x1

    move/from16 v0, v23

    move/from16 v1, v38

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v38

    if-eqz v38, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->ItemWidthType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    move-object/from16 v38, v0

    sget-object v39, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;->doubleCellType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_b

    cmpl-float v38, v14, v29

    if-lez v38, :cond_b

    float-to-int v0, v7

    move/from16 v38, v0

    move-object/from16 v0, v35

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setWidth(I)V

    const/16 v38, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    const/16 v38, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-float v37, v37, v29

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->ItemWidthType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    move-object/from16 v38, v0

    sget-object v39, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;->doubleCellType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_c

    cmpg-float v38, v14, v29

    if-gez v38, :cond_c

    float-to-int v0, v7

    move/from16 v38, v0

    move-object/from16 v0, v34

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setWidth(I)V

    mul-int/lit8 v38, v24, 0x2

    add-int/lit8 v38, v38, -0x2

    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    mul-int/lit8 v38, v24, 0x2

    add-int/lit8 v38, v38, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-float v37, v37, v29

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->ItemWidthType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    move-object/from16 v38, v0

    sget-object v39, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;->singleCellType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_d

    cmpl-float v38, v12, v29

    if-lez v38, :cond_d

    move/from16 v16, v7

    :cond_d
    :goto_a
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v38, v0

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setWidth(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCandidateSeperatorWidth:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    add-float v16, v16, v38

    add-float v38, v37, v16

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v39, v0

    cmpg-float v38, v38, v39

    if-lez v38, :cond_e

    if-nez v24, :cond_21

    :cond_e
    add-float v37, v37, v16

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {v26 .. v28}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v18, v27

    move-object/from16 v34, v32

    goto/16 :goto_4

    :cond_f
    const/16 v38, 0x8

    move/from16 v0, v38

    if-ne v10, v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getMaxWidth()I

    move-result v38

    div-int/lit8 v38, v38, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCandidateSeperatorWidth:I

    move/from16 v39, v0

    sub-int v38, v38, v39

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getMaxWidth()I

    move-result v38

    div-int/lit8 v38, v38, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCandidateSeperatorWidth:I

    move/from16 v39, v0

    sub-int v38, v38, v39

    move/from16 v0, v38

    int-to-float v7, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getMaxWidth()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v36, v0

    const/16 v23, 0x4

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v38

    if-eqz v38, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getMaxWidth()I

    move-result v22

    div-int/lit8 v38, v22, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCandidateSeperatorWidth:I

    move/from16 v39, v0

    sub-int v38, v38, v39

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v29, v0

    div-int/lit8 v38, v22, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCandidateSeperatorWidth:I

    move/from16 v39, v0

    sub-int v38, v38, v39

    move/from16 v0, v38

    int-to-float v7, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v36, v0

    const/16 v23, 0x6

    goto/16 :goto_2

    :cond_11
    if-eqz v10, :cond_12

    const/16 v38, 0x1

    move/from16 v0, v38

    if-eq v10, v0, :cond_12

    const/16 v38, 0x8

    move/from16 v0, v38

    if-ne v10, v0, :cond_13

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getMaxWidth()I

    move-result v38

    div-int/lit8 v38, v38, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCandidateSeperatorWidth:I

    move/from16 v39, v0

    sub-int v38, v38, v39

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getMaxWidth()I

    move-result v38

    div-int/lit8 v38, v38, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCandidateSeperatorWidth:I

    move/from16 v39, v0

    sub-int v38, v38, v39

    move/from16 v0, v38

    int-to-float v7, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getMaxWidth()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v36, v0

    :goto_b
    const/16 v23, 0x4

    goto/16 :goto_2

    :cond_13
    div-int/lit8 v38, v20, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCandidateSeperatorWidth:I

    move/from16 v39, v0

    sub-int v38, v38, v39

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v29, v0

    div-int/lit8 v38, v20, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCandidateSeperatorWidth:I

    move/from16 v39, v0

    sub-int v38, v38, v39

    move/from16 v0, v38

    int-to-float v7, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v36, v0

    goto :goto_b

    :cond_14
    move/from16 v25, v6

    goto/16 :goto_3

    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->createCandidateCellView()Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v32

    goto/16 :goto_5

    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->createCandidateCellView()Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v33

    goto/16 :goto_6

    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->createCandidateCellView()Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v35

    goto/16 :goto_7

    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->createSeparatorView()Landroid/widget/TextView;

    move-result-object v27

    goto/16 :goto_8

    :cond_19
    cmpg-float v38, v11, v7

    if-gez v38, :cond_1a

    move/from16 v16, v7

    sget-object v38, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;->doubleCellType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->ItemWidthType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    add-int/lit8 v23, v23, -0x2

    goto/16 :goto_9

    :cond_1a
    cmpg-float v38, v11, v36

    if-gez v38, :cond_1b

    move/from16 v16, v36

    sget-object v38, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;->wholeLineType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->ItemWidthType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    const/16 v23, 0x0

    goto/16 :goto_9

    :cond_1b
    sget-object v38, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;->wrongData:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->ItemWidthType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    const-string v38, ""

    const-string v39, "The itemWidth is wrong, have a check!!!"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->ItemWidthType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    move-object/from16 v38, v0

    sget-object v39, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;->doubleCellType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_1d

    if-eqz v34, :cond_1d

    float-to-int v0, v7

    move/from16 v38, v0

    move-object/from16 v0, v34

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setWidth(I)V

    mul-int/lit8 v38, v24, 0x2

    add-int/lit8 v38, v38, -0x2

    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    mul-int/lit8 v38, v24, 0x2

    add-int/lit8 v38, v38, -0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-float v37, v37, v29

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->ItemWidthType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    move-object/from16 v38, v0

    sget-object v39, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;->singleCellType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_d

    cmpl-float v38, v12, v29

    if-lez v38, :cond_d

    move/from16 v16, v7

    goto/16 :goto_a

    :cond_1e
    const/16 v38, 0x2

    move/from16 v0, v23

    move/from16 v1, v38

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v38

    if-eqz v38, :cond_1f

    if-eqz v10, :cond_20

    :cond_1f
    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v10, v0, :cond_d

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->ItemWidthType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    move-object/from16 v38, v0

    sget-object v39, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;->singleCellType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_d

    cmpg-float v38, v15, v29

    if-gez v38, :cond_d

    cmpl-float v38, v14, v29

    if-lez v38, :cond_d

    float-to-int v0, v7

    move/from16 v38, v0

    move-object/from16 v0, v35

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setWidth(I)V

    move/from16 v16, v7

    const/16 v38, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    const/16 v38, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-float v37, v37, v29

    goto/16 :goto_a

    :cond_21
    if-eqz v18, :cond_22

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_22
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v38, v0

    sub-float v21, v38, v37

    move/from16 v19, v21

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mLastRowlayout:Landroid/widget/LinearLayout;

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mLastRowStart:I

    add-int v25, v25, v24

    const/16 v24, 0x0

    const/16 v37, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v38

    if-eqz v38, :cond_23

    const/16 v23, 0x6

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->addNewLine()Landroid/widget/LinearLayout;

    move-result-object v26

    goto/16 :goto_4

    :cond_23
    const/16 v23, 0x4

    goto :goto_c

    :cond_24
    invoke-virtual/range {v26 .. v26}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v38

    if-lez v38, :cond_29

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v38, v0

    sub-float v38, v38, v37

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v39, v0

    div-float v38, v38, v39

    const/high16 v39, 0x40000000    # 2.0f

    div-float v21, v38, v39

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v38, v0

    sub-float v38, v38, v37

    cmpl-float v38, v38, v17

    if-lez v38, :cond_27

    cmpg-float v38, v19, v21

    if-gtz v38, :cond_25

    move/from16 v21, v19

    :cond_25
    :goto_d
    move/from16 v19, v21

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mLastRowlayout:Landroid/widget/LinearLayout;

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mLastRowStart:I

    :cond_26
    :goto_e
    add-int/lit8 v38, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->addNewLine()Landroid/widget/LinearLayout;

    move-result-object v26

    goto/16 :goto_1

    :cond_27
    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-ne v0, v1, :cond_28

    const/16 v21, 0x0

    goto :goto_d

    :cond_28
    if-eqz v18, :cond_25

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_d

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mLastRowlayout:Landroid/widget/LinearLayout;

    move-object/from16 v38, v0

    if-eqz v38, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mLastRowlayout:Landroid/widget/LinearLayout;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v38

    check-cast v38, Landroid/view/View;

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_e
.end method


# virtual methods
.method protected addNewLine()Landroid/widget/LinearLayout;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->addNewLine(Z)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected addNewLine(Z)Landroid/widget/LinearLayout;
    .locals 10

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getCandidateLineResourceId()I

    move-result v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getCandidateListLineResourceId()I

    move-result v3

    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    if-eqz v3, :cond_2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    iget v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mDividerWidth:I

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getExpandScrollViewDividerLineRightPadding()I

    move-result v4

    iget-boolean v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsChnMode:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSplitResourceId()I

    move-result v3

    const/4 v4, 0x0

    :cond_1
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public createExpandCandidateViewsChn()V
    .locals 11

    const/4 v4, 0x0

    const/16 v10, 0x11

    const/16 v9, 0x28

    const/4 v8, 0x0

    iget-boolean v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsChnMode:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    new-array v3, v9, [Lcom/ime/framework/view/candidate/CandidateTextView;

    iput-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    new-array v3, v9, [Landroid/widget/TextView;

    iput-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandSeperatorViews:[Landroid/widget/TextView;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v9, :cond_4

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    new-instance v4, Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/ime/framework/view/candidate/CandidateTextView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v10}, Lcom/ime/framework/view/candidate/CandidateTextView;->setGravity(I)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionFontSize()F

    move-result v0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v8, v0}, Lcom/ime/framework/view/candidate/CandidateTextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lcom/ime/framework/view/candidate/CandidateTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/candidate/CandidateTextView;->setHeight(I)V

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/candidate/CandidateTextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getInputedTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/candidate/CandidateTextView;->setInputedTextColor(I)V

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getPressedTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/candidate/CandidateTextView;->setPressedTextColor(I)V

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getHighlightTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getBackgroundResourceId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/candidate/CandidateTextView;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getLeftPaddingSize()I

    move-result v4

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getTopPaddingSize()I

    move-result v5

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getRightPaddingSize()I

    move-result v6

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getBottomPaddingSize()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ime/framework/view/candidate/CandidateTextView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandSeperatorViews:[Landroid/widget/TextView;

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandSeperatorViews:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    const-string v4, " "

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandSeperatorViews:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    iget v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mDividerWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setWidth(I)V

    iget-boolean v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandSeperatorViews:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getTopPaddingSize()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getBottomPaddingSize()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHeight(I)V

    :goto_1
    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandSeperatorViews:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getTopPaddingSize()I

    move-result v4

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getBottomPaddingSize()I

    move-result v5

    invoke-virtual {v3, v8, v4, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandSeperatorViews:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSplitResourceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandSeperatorViews:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandSeperatorViews:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHeight(I)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    if-eqz v3, :cond_3

    iput-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    :cond_3
    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandSeperatorViews:[Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iput-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandSeperatorViews:[Landroid/widget/TextView;

    :cond_4
    return-void
.end method

.method protected abstract getBackgroundResourceId()I
.end method

.method protected abstract getBottomPaddingSize()I
.end method

.method protected abstract getCandidateLeftRightGapForOneHand()I
.end method

.method protected abstract getCandidateLineResourceId()I
.end method

.method protected abstract getCandidateListLineResourceId()I
.end method

.method public getExpandCandidateScrollView()Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method protected abstract getExpandScrollViewDividerLineRightPadding()I
.end method

.method protected abstract getExpandScrollViewRightPadding()I
.end method

.method protected abstract getFloatingKeyboardLeftEdge()I
.end method

.method protected abstract getFloatingKeyboardRightEdge()I
.end method

.method protected abstract getHighlightTextColor()I
.end method

.method protected getHoverListener()Landroid/view/View$OnHoverListener;
    .locals 1

    new-instance v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$4;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$4;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;)V

    return-object v0
.end method

.method protected abstract getInputedTextColor()I
.end method

.method protected abstract getLeftPaddingSize()I
.end method

.method protected abstract getMaxWidth()I
.end method

.method protected abstract getOneHandKeyboardViewWidth()I
.end method

.method protected abstract getPressedTextColor()I
.end method

.method protected abstract getRightPaddingSize()I
.end method

.method protected getRowCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    :cond_0
    return v0
.end method

.method protected abstract getSplitResourceId()I
.end method

.method protected abstract getSuggestionFontSize()F
.end method

.method protected abstract getSuggestionHeight()I
.end method

.method protected abstract getSuggestionTypeface()Landroid/graphics/Typeface;
.end method

.method protected abstract getTextColor()I
.end method

.method protected abstract getTopPaddingSize()I
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/ime/framework/view/candidate/CandidateTextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIgnorePick:Z

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIgnorePick:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsChnMode:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->setCandidateExpandedFlag(Z)V

    :goto_1
    iget-boolean v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsChnMode:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_2
    check-cast p1, Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {p1}, Lcom/ime/framework/view/candidate/CandidateTextView;->getIndex()I

    move-result v0

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_3

    if-ltz v0, :cond_3

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v3, v0, v2}, Lcom/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    :cond_3
    iget-boolean v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsChnMode:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_4
    iget-boolean v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsChnMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/ime/framework/common/InputManager;->setContactCandidateUpdate(Z)V

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/ime/framework/common/InputManager;->setCloudCandidateUpdate(Z)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/ime/framework/common/InputManager;->setCandidateExpandedFlag(Z)V

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setCandidates(Ljava/util/ArrayList;I)I
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)I"
        }
    .end annotation

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCountOfRow:I

    if-nez p1, :cond_0

    const-string v32, "SamsungIME"

    const-string v33, "suggestions array is null in setCandidates API"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v8, p2

    :goto_0
    return v8

    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsChnMode:Z

    move/from16 v32, v0

    if-eqz v32, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v32

    if-nez v32, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v32

    if-eqz v32, :cond_9

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->isBstHandwriteMode()Z

    move-result v32

    if-eqz v32, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    if-eqz v32, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v32

    if-lez v32, :cond_3

    move/from16 v8, p2

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v32, v0

    if-nez v32, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    if-eqz v32, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-interface/range {v32 .. v33}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v32

    check-cast v32, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual/range {v32 .. v32}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateExpandCandidateLayout()V

    :cond_4
    const/4 v11, 0x0

    :goto_1
    const/16 v32, 0x28

    move/from16 v0, v32

    if-ge v11, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v32, v0

    aget-object v32, v32, v11

    if-eqz v32, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v32, v0

    aget-object v32, v32, v11

    invoke-virtual/range {v32 .. v32}, Lcom/ime/framework/view/candidate/CandidateTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    if-eqz v32, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v32, v0

    aget-object v32, v32, v11

    invoke-virtual/range {v32 .. v32}, Lcom/ime/framework/view/candidate/CandidateTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v33, v0

    aget-object v33, v33, v11

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandSeperatorViews:[Landroid/widget/TextView;

    move-object/from16 v32, v0

    aget-object v32, v32, v11

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    if-eqz v32, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandSeperatorViews:[Landroid/widget/TextView;

    move-object/from16 v32, v0

    aget-object v32, v32, v11

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandCandSeperatorViews:[Landroid/widget/TextView;

    move-object/from16 v33, v0

    aget-object v33, v33, v11

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, p2

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandGridViewHandler:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->stopPrepareCandidatesTimer()V

    move/from16 v8, p2

    goto/16 :goto_0

    :cond_8
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mLastRowlayout:Landroid/widget/LinearLayout;

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mLastRowStart:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandGridViewHandler:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->prepareCandidates(I)V

    move/from16 v8, p2

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v32, v0

    const-string v33, "SWIFTKEY_VERBATIM_INDEX"

    const/16 v34, -0x1

    invoke-interface/range {v32 .. v34}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v32

    if-eqz v32, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getPaddingTop()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getPaddingBottom()I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsBackupPadding:Z

    move/from16 v32, v0

    if-nez v32, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getPaddingLeft()I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginLeftPadding:I

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getPaddingRight()I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginRightPadding:I

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsBackupPadding:Z

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    move/from16 v32, v0

    if-eqz v32, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v32

    if-nez v32, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v32

    if-eqz v32, :cond_10

    :cond_c
    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v32

    if-eqz v32, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v32

    if-nez v32, :cond_d

    if-eqz v6, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getCandidateLeftRightGapForOneHand()I

    move-result v21

    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginLeftPadding:I

    move/from16 v32, v0

    add-int v32, v32, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginRightPadding:I

    move/from16 v33, v0

    add-int v33, v33, v22

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v23

    move/from16 v3, v33

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    if-eqz v32, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, p2

    move/from16 v1, v32

    if-ge v0, v1, :cond_27

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->addNewLine(Z)Landroid/widget/LinearLayout;

    move-result-object v7

    const/16 v32, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionFontSize()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionTypeface()Landroid/graphics/Typeface;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionHeight()I

    move-result v10

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v32

    if-eqz v32, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSYMCandidate()Z

    move-result v32

    if-eqz v32, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getMaxWidth()I

    move-result v18

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->getSuggestionActiveIndex()I

    move-result v5

    const/16 v29, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsChnMode:Z

    move/from16 v32, v0

    if-eqz v32, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v32

    if-eqz v32, :cond_14

    const/16 v32, 0x8

    move/from16 v0, v32

    if-eq v12, v0, :cond_14

    div-int/lit8 v19, v18, 0x6

    :goto_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v32

    if-nez v32, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v32

    if-nez v32, :cond_19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->isShownExpandView(II)Z

    move-result v15

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v32

    if-eqz v32, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v32

    if-eqz v32, :cond_e

    add-int/lit8 p2, p2, -0x1

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v11, p2

    :goto_7
    move/from16 v0, v17

    if-ge v11, v0, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    if-nez v32, :cond_1a

    :cond_f
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getCandidateLeftRightGapForOneHand()I

    move-result v22

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v32

    if-eqz v32, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v32

    if-eqz v32, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getMaxWidth()I

    move-result v18

    goto/16 :goto_4

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getMaxWidth()I

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getExpandScrollViewRightPadding()I

    move-result v33

    mul-int/lit8 v33, v33, 0x2

    sub-int v18, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginLeftPadding:I

    move/from16 v32, v0

    add-int v32, v32, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginRightPadding:I

    move/from16 v33, v0

    add-int v32, v32, v33

    add-int v32, v32, v22

    sub-int v18, v18, v32

    goto/16 :goto_4

    :cond_14
    div-int/lit8 v19, v18, 0x3

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v32

    if-eqz v32, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSYMCandidate()Z

    move-result v32

    if-eqz v32, :cond_16

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f09074b

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v33

    const/high16 v34, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f09074a

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v35

    mul-float v34, v34, v35

    add-float v33, v33, v34

    sub-float v32, v32, v33

    const/high16 v33, 0x40e00000    # 7.0f

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v19, v0

    goto/16 :goto_5

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v32

    if-eqz v32, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v32

    if-eqz v32, :cond_17

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f09073c

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v33

    const/high16 v34, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f09073b

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v35

    mul-float v34, v34, v35

    add-float v33, v33, v34

    sub-float v32, v32, v33

    const/high16 v33, 0x41000000    # 8.0f

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v19, v0

    goto/16 :goto_5

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v32

    if-eqz v32, :cond_18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f09073e

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v33

    sub-float v32, v32, v33

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f09073d

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v33

    sub-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    div-int/lit8 v19, v32, 0x3

    goto/16 :goto_5

    :cond_18
    div-int/lit8 v19, v18, 0x3

    goto/16 :goto_5

    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_6

    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->createCandidateCellView()Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v26

    if-ne v11, v5, :cond_20

    if-lez v11, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    move/from16 v32, v0

    if-nez v32, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/CharSequence;

    const/16 v34, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v11, v3}, Lcom/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v32

    if-nez v32, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v32

    if-nez v32, :cond_23

    if-eqz v15, :cond_21

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v32

    const/high16 v33, 0x3f800000    # 1.0f

    add-float v32, v32, v33

    add-float v29, v29, v32

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v32, v29, v32

    if-lez v32, :cond_1c

    const/16 v32, 0x1

    const/16 v33, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    const/16 v32, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setSingleLine(Z)V

    sget-object v32, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-eqz v14, :cond_1b

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    const/4 v14, 0x0

    :cond_1b
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lcom/ime/framework/view/candidate/CandidateTextView;->setHeight(I)V

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/CandidateTextView;->getPaddingLeft()I

    move-result v27

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/CandidateTextView;->getPaddingRight()I

    move-result v28

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v23

    move/from16 v3, v28

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ime/framework/view/candidate/CandidateTextView;->setPadding(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->addNewLine()Landroid/widget/LinearLayout;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCountOfRow:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCountOfRow:I

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v32

    const/high16 v33, 0x3f800000    # 1.0f

    add-float v29, v32, v33

    :cond_1c
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->createSeparatorView()Landroid/widget/TextView;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v16, v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v32

    if-nez v32, :cond_25

    move/from16 v0, v31

    if-eq v11, v0, :cond_25

    if-nez v13, :cond_25

    new-instance v32, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$1;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$1;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v32, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$2;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$2;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1d
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mXt9Version:I

    move/from16 v32, v0

    if-eqz v32, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v32

    if-nez v32, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v32

    if-nez v32, :cond_26

    move/from16 v0, v31

    if-eq v11, v0, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/engine/InputEngineManager;->getCurrentEngineIndex()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_26

    new-instance v32, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$3;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$3;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1e
    :goto_c
    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-lez v11, :cond_1f

    add-int/lit8 v32, v11, 0x1

    move/from16 v0, v32

    move/from16 v1, v17

    if-ge v0, v1, :cond_1f

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v14, 0x1

    :cond_1f
    add-int/lit8 p2, p2, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsChnMode:Z

    move/from16 v32, v0

    if-eqz v32, :cond_f

    add-int/lit8 v32, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->addNewLine()Landroid/widget/LinearLayout;

    goto/16 :goto_8

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/CharSequence;

    const/16 v34, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v11, v3}, Lcom/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_9

    :cond_21
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v29, v29, v32

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setWidth(I)V

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v33

    div-float v24, v32, v33

    const/high16 v32, 0x3f800000    # 1.0f

    cmpg-float v32, v24, v32

    if-gez v32, :cond_22

    :goto_d
    const/16 v32, 0x0

    mul-float v33, v9, v24

    move-object/from16 v0, v26

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/candidate/CandidateTextView;->setTextSize(IF)V

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v32, v29, v32

    if-lez v32, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->addNewLine()Landroid/widget/LinearLayout;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCountOfRow:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCountOfRow:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    goto/16 :goto_a

    :cond_22
    const/high16 v24, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_23
    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v32

    const/high16 v33, 0x3f800000    # 1.0f

    add-float v32, v32, v33

    add-float v29, v29, v32

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v32, v29, v32

    if-lez v32, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsChnMode:Z

    move/from16 v32, v0

    if-eqz v32, :cond_24

    if-eqz v16, :cond_24

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->addNewLine()Landroid/widget/LinearLayout;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCountOfRow:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCountOfRow:I

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v32

    const/high16 v33, 0x3f800000    # 1.0f

    add-float v29, v32, v33

    goto/16 :goto_a

    :cond_25
    const/16 v32, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_b

    :cond_26
    const/16 v32, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_c

    :cond_27
    move/from16 v8, p2

    goto/16 :goto_0
.end method
