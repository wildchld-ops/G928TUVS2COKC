.class public abstract Lcom/ime/framework/view/candidate/AbstractCandidateLayout;
.super Lcom/ime/framework/view/candidate/HorizontalListView;
.source "AbstractCandidateLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/view/candidate/AbstractCandidateLayout$ContactDisplayListener;,
        Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;
    }
.end annotation


# instance fields
.field private KNOB_SHOW_CANDIDATES_COUNT:I

.field private mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;

.field private mCandidateAdded:Z

.field private mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

.field private mContactInfoDialog:Landroid/app/AlertDialog;

.field private mDividerWidth:I

.field private mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

.field private mExplainer:Lcom/sec/android/inputmethod/databases/CandidateExplainer;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIgnorePick:Z

.field protected mInputManager:Lcom/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field private mIsBackupPadding:Z

.field protected mIsKorMode:Z

.field protected mIsPopupCandidateLayout:Z

.field private mIsSwiftKeyMode:Z

.field private mLearnWordInfoDialog:Landroid/app/AlertDialog;

.field private mOriginLeftPadding:I

.field private mOriginRightPadding:I

.field protected mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field protected mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

.field private mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionsAdapter:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

.field private mTipsDialog:Lcom/ime/framework/view/TipsDialog;

.field private mWordSequenceData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field protected mXt9Version:I

.field private misLeftScrolled:Z

.field private misRightScrolled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1}, Lcom/ime/framework/view/candidate/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateAdded:Z

    iput v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->KNOB_SHOW_CANDIDATES_COUNT:I

    new-instance v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    invoke-direct {v0, p0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Lcom/ime/framework/view/candidate/AbstractCandidateLayout$1;)V

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionsAdapter:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/view/candidate/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateAdded:Z

    iput v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->KNOB_SHOW_CANDIDATES_COUNT:I

    new-instance v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Lcom/ime/framework/view/candidate/AbstractCandidateLayout$1;)V

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionsAdapter:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->initialize()V

    return-void
.end method

.method static synthetic access$100(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionsAdapter:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->KNOB_SHOW_CANDIDATES_COUNT:I

    return v0
.end method

.method static synthetic access$1302(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/sec/android/inputmethod/databases/CandidateExplainer;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mExplainer:Lcom/sec/android/inputmethod/databases/CandidateExplainer;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->misLeftScrolled:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->misLeftScrolled:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->misRightScrolled:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->misRightScrolled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mWordSequenceData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mWordSequenceData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIsBackupPadding:Z

    return v0
.end method

.method static synthetic access$302(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIsBackupPadding:Z

    return p1
.end method

.method static synthetic access$400(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I

    return v0
.end method

.method static synthetic access$402(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;I)I
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I

    return p1
.end method

.method static synthetic access$500(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginRightPadding:I

    return v0
.end method

.method static synthetic access$502(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;I)I
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginRightPadding:I

    return p1
.end method

.method static synthetic access$600(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Ljava/util/ArrayList;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->isShownExpandView(Ljava/util/ArrayList;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mDividerWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/engine/InputEngineManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    return-object v0
.end method

.method private initGestureDetector()V
    .locals 3

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$3;

    invoke-direct {v2, p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$3;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private initialize()V
    .locals 7

    const/4 v6, 0x7

    const/16 v5, 0xb2

    const/4 v4, 0x0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mRepository:Lcom/ime/framework/repository/Repository;

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    invoke-static {}, Lcom/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/ime/framework/common/PrivateImeOptionsController;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-static {}, Lcom/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v2

    iput v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mDividerWidth:I

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->initGestureDetector()V

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    if-ne v2, v6, :cond_0

    invoke-virtual {p0, v4}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->setMotionEventSplittingEnabled(Z)V

    :cond_0
    new-instance v2, Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ime/framework/view/candidate/CandidateTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isUsePopupKeyboard()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    if-eq v0, v6, :cond_2

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->setPopupCandidateLayout()V

    :cond_3
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getTopPaddingSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getBottomPaddingSize()I

    move-result v3

    invoke-virtual {p0, v4, v2, v4, v3}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->setPadding(IIII)V

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v3, 0x7f080048

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->getFractionOrientedheight(I)I

    move-result v1

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v3, 0x7f080046

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->getFractionOrientedWidth(I)I

    move-result v2

    iput v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mDividerWidth:I

    invoke-virtual {p0, v1, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->setDividerPadding(II)V

    const/16 v2, 0x4c

    invoke-static {v2, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iget v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mDividerWidth:I

    invoke-virtual {p0, v2, v3}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->setDivider(II)V

    :goto_0
    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionsAdapter:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    invoke-virtual {p0, v2}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->getInstance(Landroid/content/Context;)Lcom/sec/android/inputmethod/databases/CandidateExplainer;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mExplainer:Lcom/sec/android/inputmethod/databases/CandidateExplainer;

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getTopPaddingSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getBottomPaddingSize()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->setDividerPadding(II)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getSplitResourceId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mDividerWidth:I

    invoke-virtual {p0, v2}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->setDividerWidth(I)V

    goto :goto_0
.end method

.method private isShownExpandView(Ljava/util/ArrayList;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)Z"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v8, 0x0

    int-to-float v9, p2

    const/high16 v10, 0x40000000    # 2.0f

    div-float v5, v9, v10

    const/4 v2, 0x0

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSYMCandidate()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v0, 0x6

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getLeftPaddingSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getRightPaddingSize()I

    move-result v7

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionFontSize()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/candidate/CandidateTextView;->setTextSize(IF)V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v9}, Lcom/ime/framework/view/candidate/CandidateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    int-to-float v10, v3

    add-float/2addr v9, v10

    int-to-float v10, v7

    add-float v8, v9, v10

    cmpl-float v9, v8, v5

    if-lez v9, :cond_2

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private setThemeBuilder()Landroid/app/AlertDialog$Builder;
    .locals 3

    const/4 v1, 0x0

    const/4 v1, 0x5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method protected abstract getBackgroundResourceId()I
.end method

.method protected abstract getBottomPaddingSize()I
.end method

.method protected abstract getCandidateLeftRightGapForOneHand()I
.end method

.method protected abstract getHighlightTextColor()I
.end method

.method protected getHoverListener()Landroid/view/View$OnHoverListener;
    .locals 1

    new-instance v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$2;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$2;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)V

    return-object v0
.end method

.method protected abstract getInputedTextColor()I
.end method

.method protected abstract getLeftPaddingSize()I
.end method

.method protected abstract getMaxWidth(Z)I
.end method

.method protected abstract getOneHandKeyboardViewWidth()I
.end method

.method protected abstract getPressedTextColor()I
.end method

.method protected abstract getPreviewSuggestionTypeface()Landroid/graphics/Typeface;
.end method

.method protected abstract getRightPaddingSize()I
.end method

.method protected abstract getSelecedBackgroundResourceId()I
.end method

.method protected abstract getSplitResourceId()I
.end method

.method protected abstract getSuggestionFontSize()F
.end method

.method protected abstract getSuggestionHeight()I
.end method

.method protected abstract getSuggestionTypeface()Landroid/graphics/Typeface;
.end method

.method public getSuggestionViews()[Lcom/ime/framework/view/candidate/CandidateTextView;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    return-object v0
.end method

.method protected abstract getTextColor()I
.end method

.method protected abstract getTopPaddingSize()I
.end method

.method protected getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    new-instance v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$1;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$1;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)V

    return-object v0
.end method

.method public hideContactDialog()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mContactInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mContactInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v7, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_3

    move v4, v8

    :goto_1
    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    if-eqz p1, :cond_9

    instance-of v7, p1, Lcom/ime/framework/view/candidate/CandidateTextView;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v7, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v7, :cond_2

    check-cast v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0, v8}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateExpandCandViews(Z)V

    :cond_2
    :goto_2
    move-object v7, p1

    check-cast v7, Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v7, v8}, Lcom/ime/framework/view/candidate/CandidateTextView;->setSoundEffectsEnabled(Z)V

    iget-boolean v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z

    if-eqz v7, :cond_5

    iput-boolean v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z

    goto :goto_0

    :cond_3
    move v4, v9

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/ime/framework/common/InputManager;->setCandidateExpandedFlag(Z)V

    goto :goto_2

    :cond_5
    move-object v7, p1

    check-cast v7, Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v7}, Lcom/ime/framework/view/candidate/CandidateTextView;->getIndex()I

    move-result v3

    invoke-static {}, Lcom/ime/framework/view/TipsDialog;->getInstance()Lcom/ime/framework/view/TipsDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, p1

    check-cast v7, Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v7}, Lcom/ime/framework/view/candidate/CandidateTextView;->getIconType()I

    move-result v7

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getContactCandidateUpdate()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getContactDBInstance()Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->getContactData()[Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    aget-object v10, v2, v9

    iget-object v10, v10, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->name:Ljava/lang/String;

    invoke-virtual {v7, v3, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_6
    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v3, :cond_9

    if-ltz v3, :cond_9

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    invoke-virtual {v7}, Lcom/ime/framework/view/TipsDialog;->isDiscoverabilityShown()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v7

    if-eq v7, v8, :cond_7

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "first_auto_replacement_tap_execution"

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isEnableAutoCorrectionDA()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    if-ne v3, v8, :cond_7

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    const/4 v8, 0x0

    invoke-virtual {v7, v9, p1, v8}, Lcom/ime/framework/view/TipsDialog;->showDiscoverability(ILandroid/view/View;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_7
    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    invoke-virtual {v7}, Lcom/ime/framework/view/TipsDialog;->isDiscoverabilityShown()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    invoke-virtual {v7}, Lcom/ime/framework/view/TipsDialog;->closeDiscoverability()V

    :cond_8
    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v8, v3, v7}, Lcom/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9, v9}, Lcom/ime/framework/common/InputManager;->setSelectionBgOnCandidateList(IZ)V

    :cond_9
    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/ime/framework/common/InputManager;->setContactCandidateUpdate(Z)V

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/ime/framework/common/InputManager;->setCloudCandidateUpdate(Z)V

    goto/16 :goto_0
.end method

.method public setCandidates(Ljava/util/ArrayList;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionsAdapter:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->setSuggestions(Ljava/util/ArrayList;Z)I

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setIsFinishingHanjaShowing(Z)V

    :cond_0
    return v0
.end method

.method public setPopupCandidateLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIsPopupCandidateLayout:Z

    return-void
.end method

.method public setSuggestionSelectionBg(IZ)V
    .locals 4

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getSuggestionActiveIndex()I

    move-result v0

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionsAdapter:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    invoke-virtual {v3, v0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->checkSwapPosition(I)I

    move-result v0

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getSuggestionActiveIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getChild(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getBackgroundResourceId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionsAdapter:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    invoke-virtual {v3, p1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->checkSwapPosition(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getChild(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getSelecedBackgroundResourceId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method

.method public showContactDialog(Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 13

    const v12, 0x7f0d035e

    const v11, 0x7f0d0355

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getContactDBInstance()Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->getContactData()[Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v8, "SamsungIME_UnifiedIME"

    const-string v9, "AbstractCandidateLayout, contactData NULL"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->setThemeBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    aget-object v8, v2, p2

    iget v4, v8, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->dataCount:I

    new-array v5, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v8, v2, p2

    iget-object v8, v8, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->data:[Ljava/lang/String;

    aget-object v8, v8, v3

    aput-object v8, v5, v3

    aget-object v8, v2, p2

    iget-object v8, v8, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->mimeType:[Ljava/lang/String;

    aget-object v8, v8, v3

    const-string v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    aget-object v8, v2, p2

    iget-object v8, v8, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->dataType:[I

    aget v8, v8, v3

    packed-switch v8, :pswitch_data_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0350

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto :goto_2

    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0354

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto :goto_2

    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d035b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :pswitch_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d034f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :pswitch_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d034e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :pswitch_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0357

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :pswitch_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :pswitch_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d034b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :pswitch_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d034c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :pswitch_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d034d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :pswitch_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0351

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :pswitch_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0352

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :pswitch_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0356

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :pswitch_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0358

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :pswitch_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0359

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :pswitch_f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d035a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :pswitch_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d035c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :pswitch_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d035d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :pswitch_12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d034a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :pswitch_13
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0353

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :cond_3
    aget-object v8, v2, p2

    iget-object v8, v8, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->mimeType:[Ljava/lang/String;

    aget-object v8, v8, v3

    const-string v9, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    aget-object v8, v2, p2

    iget-object v8, v8, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->dataType:[I

    aget v8, v8, v3

    packed-switch v8, :pswitch_data_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :pswitch_14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d035f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :pswitch_15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0361

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :pswitch_16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :pswitch_17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0360

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    goto/16 :goto_2

    :cond_4
    aget-object v8, v2, p2

    iget-object v8, v8, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$contactInfoItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v5, p1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v8, 0x1040000

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mContactInfoDialog:Landroid/app/AlertDialog;

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mContactInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v8, 0x7d8

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v7, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/high16 v8, 0x20000

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mContactInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method
